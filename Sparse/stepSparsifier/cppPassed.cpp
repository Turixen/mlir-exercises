//===- SparseTensorPipelines.cpp - Pipelines for sparse tensor code -------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "mlir/Dialect/SparseTensor/Pipelines/Passes.h"

#include "mlir/Conversion/GPUToNVVM/GPUToNVVMPass.h"
#include "mlir/Conversion/Passes.h"
#include "mlir/Dialect/Arith/Transforms/Passes.h"
#include "mlir/Dialect/Bufferization/Transforms/Bufferize.h"
#include "mlir/Dialect/Bufferization/Transforms/OneShotAnalysis.h"
#include "mlir/Dialect/Bufferization/Transforms/Passes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/GPU/Transforms/Passes.h"
#include "mlir/Dialect/LLVMIR/NVVMDialect.h"
#include "mlir/Dialect/Linalg/Passes.h"
#include "mlir/Dialect/MemRef/Transforms/Passes.h"
#include "mlir/Dialect/SparseTensor/IR/SparseTensor.h"
#include "mlir/Dialect/SparseTensor/Transforms/Passes.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Transforms/Passes.h"

//===----------------------------------------------------------------------===//
// Pipeline implementation.
//===----------------------------------------------------------------------===//
void mlir::sparse_tensor::buildSparsifier(OpPassManager &pm,
                                          const SparsifierOptions &options) {
  // Rewrite named linalg ops into generic ops and apply fusion.
  -linalg-generalize-named-ops
  createLinalgGeneralizeNamedOpsPass());
  -linalg-fuse-elementwise-ops
  createLinalgElementwiseOpFusionPass());
  // Sparsification and bufferization mini-pipeline.
  -sparsification-and-bufferization
  pm.addPass(createSparsificationAndBufferizationPass(
      getBufferizationOptionsForSparsification(
          options.testBufferizationAnalysisOnly),
      options.sparsificationOptions(), options.createSparseDeallocs,
      options.enableRuntimeLibrary, options.enableBufferInitialization,
      options.vectorLength,
      /*enableVLAVectorization=*/options.armSVE,
      /*enableSIMDIndex32=*/options.force32BitVectorIndices,
      options.enableGPULibgen));

  // Bail-early for test setup.
  if (options.testBufferizationAnalysisOnly)
    return;

  // Storage specifier lowering and bufferization wrap-up.
  -sparse-storage-specifier-to-llvm
  pm.addPass(createStorageSpecifierToLLVMPass());
  -canonicalize
  pm.addNestedPass<func::FuncOp>(createCanonicalizerPass());
  -finalizing-bufferize
  pm.addNestedPass<func::FuncOp>(
      mlir::bufferization::createFinalizingBufferizePass());

 
  // Progressively lower to LLVM. Note that the convert-vector-to-llvm
  // pass is repeated on purpose.
  // TODO(springerm): Add sparse support to the BufferDeallocation pass and add
  // it to this pipeline.
  -convert-linalg-to-loops
  pm.addNestedPass<func::FuncOp>(createConvertLinalgToLoopsPass());
  -convert-vector-to-scf
  pm.addNestedPass<func::FuncOp>(createConvertVectorToSCFPass());
  -expand-realloc
  pm.addNestedPass<func::FuncOp>(memref::createExpandReallocPass());
  -convert-scf-to-cf
  pm.addNestedPass<func::FuncOp>(createConvertSCFToCFPass());
  -expand-strided-metadata
  pm.addPass(memref::createExpandStridedMetadataPass());
  -lower-affine
  pm.addPass(createLowerAffinePass());
  -convert-vector-to-llvm
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));
  -finalize-memref-to-llvm
  pm.addPass(createFinalizeMemRefToLLVMConversionPass());
  -convert-complex-to-standard
  pm.addNestedPass<func::FuncOp>(createConvertComplexToStandardPass());
  -arith-expand
  pm.addNestedPass<func::FuncOp>(arith::createArithExpandOpsPass());
  -convert-math-to-llvm
  pm.addNestedPass<func::FuncOp>(createConvertMathToLLVMPass());
  -convert-math-to-libm
  pm.addPass(createConvertMathToLibmPass());
  -convert-complex-to-libm
  pm.addPass(createConvertComplexToLibmPass());
  -convert-vector-to-llvm
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));
  -convert-complex-to-llvm
  pm.addPass(createConvertComplexToLLVMPass());
  -convert-vector-to-llvm
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));
  -convert-func-to-llvm
  pm.addPass(createConvertFuncToLLVMPass());



  // Ensure all casts are realized.
  -reconcile-unrealized-casts
  pm.addPass(createReconcileUnrealizedCastsPass());
}

//===----------------------------------------------------------------------===//
// Pipeline registration.
//===----------------------------------------------------------------------===//

void mlir::sparse_tensor::registerSparseTensorPipelines() {
  PassPipelineRegistration<SparsifierOptions>(
      "sparsifier",
      "The standard pipeline for taking sparsity-agnostic IR using the"
      " sparse-tensor type, and lowering it to LLVM IR with concrete"
      " representations and algorithms for sparse tensors.",
      buildSparsifier);
}