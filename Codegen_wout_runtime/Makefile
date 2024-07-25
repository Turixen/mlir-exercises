OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
#OPTFLAGS += -linalg-generalize-named-opsà
#OPTFLAGS += -sparsification-and-bufferization
#OPTFLAGS += -sparse-tensor-codegen
#OPTFLAGS += -sparse-storage-specifier-to-llvm
#OPTFLAGS += -finalize-memref-to-llvm
#OPTFLAGS += -canonicalize 
#OPTFLAGS += -cse
OPTFLAGS += -linalg-generalize-named-ops
OPTFLAGS += -linalg-fuse-elementwise-ops
OPTFLAGS += -sparsification-and-bufferization
OPTFLAGS += -sparse-storage-specifier-to-llvm
OPTFLAGS += -sparse-tensor-codegen
OPTFLAGS += -canonicalize
OPTFLAGS += -finalizing-bufferize
OPTFLAGS += -sparse-gpu-codegen
OPTFLAGS += -convert-linalg-to-loops
OPTFLAGS += -expand-realloc
OPTFLAGS += -convert-scf-to-cf
OPTFLAGS += -expand-strided-metadata
OPTFLAGS += -lower-affine
OPTFLAGS += -convert-vector-to-llvm
OPTFLAGS += -finalize-memref-to-llvm
OPTFLAGS += -convert-complex-to-standard
OPTFLAGS += -arith-expand
OPTFLAGS += -convert-math-to-llvm
OPTFLAGS += -convert-math-to-libm
OPTFLAGS += -convert-complex-to-libm
OPTFLAGS += -convert-vector-to-llvm
OPTFLAGS += -convert-complex-to-llvm
OPTFLAGS += -convert-vector-to-llvm
OPTFLAGS += -convert-func-to-llvm
OPTFLAGS += -reconcile-unrealized-casts


.PRECIOUS: %.llvm.mlir
.PRECIOUS: %.ll

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.s: %.ll
	clang -S -target riscv64 -Ofast -o $@ $<

%: %.ll
	clang -o $@ $<

