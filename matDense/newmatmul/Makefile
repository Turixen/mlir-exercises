OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
OPTFLAGS += -one-shot-bufferize
OPTFLAGS += -func-bufferize
#OPTFLAGS += -eliminate-empty-tensors
#OPTFLAGS += -empty-tensor-to-alloc-tensor
#Specific flags
OPTFLAGS += -convert-index-to-llvm
OPTFLAGS += -linalg-generalize-named-ops
OPTFLAGS += -convert-tensor-to-linalg
OPTFLAGS += -tensor-bufferize
OPTFLAGS += -linalg-bufferize
OPTFLAGS += -arith-bufferize
OPTFLAGS += -convert-linalg-to-loops
OPTFLAGS += -lower-affine


OPTFLAGS += -convert-arith-to-llvm
OPTFLAGS += -convert-index-to-llvm
OPTFLAGS += -canonicalize


OPTFLAGS += -scf-bufferize
OPTFLAGS += -convert-scf-to-cf
OPTFLAGS += -convert-cf-to-llvm
OPTFLAGS += -convert-func-to-llvm
OPTFLAGS += -finalize-memref-to-llvm
OPTFLAGS += -reconcile-unrealized-casts

.PRECIOUS: %.llvm.mlir
.PRECIOUS: %.ll

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.o: %.ll
	llc -filetype=obj -o $@ $<

%.x: %.o
	clang-18 -o $@ $<

