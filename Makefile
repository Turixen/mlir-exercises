OPT = mlir-opt
TRANSLATE = mlir-translate

# Allow specifying additional flags before the default flags
OPTFLAGS += 

# Default optimization flags
OPTFLAGS += --eliminate-empty-tensors
OPTFLAGS += --empty-tensor-to-alloc-tensor
OPTFLAGS += --one-shot-bufferize="bufferize-function-boundaries allow-return-allocs"
# ...

.PRECIOUS: %.llvm.mlir

%.llvm.mlir: %.mlir $(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir $(TRANSLATE) --mlir-to-llvmir -o $@ $<
