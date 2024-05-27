OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
OPTFLAGS += -func-bufferize
OPTFLAGS += -eliminate-empty-tensors
OPTFLAGS += -empty-tensor-to-alloc-tensor
OPTFLAGS += -one-shot-bufferize

#Specific flags
OPTFLAGS += -convert-index-to-llvm
OPTFLAGS += -linalg-generalize-named-ops
OPTFLAGS += -convert-tensor-to-linalg
OPTFLAGS += -tensor-bufferize
OPTFLAGS += -linalg-bufferize
OPTFLAGS += -arith-bufferize
OPTFLAGS += -convert-linalg-to-loops
OPTFLAGS += -lower-affine
OPTFLAGS += -affine-loop-normalize
OPTFLAGS += -convert-arith-to-llvm
OPTFLAGS += -convert-index-to-llvm
OPTFLAGS += -canonicalize

OPTFLAGS += -affine-parallelize
OPTFLAGS += -scf-bufferize
OPTFLAGS += -convert-scf-to-cf
OPTFLAGS += -convert-cf-to-llvm
OPTFLAGS += -convert-func-to-llvm
OPTFLAGS += -finalize-memref-to-llvm
OPTFLAGS += -reconcile-unrealized-casts

.PRECIOUS: %.llvm.mlir

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.x: %.ll
	clang -o $@ $<

