OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
OPTFLAGS += -sparsification-and-bufferization
OPTFLAGS += -sparse-tensor-codegen
OPTFLAGS += -sparse-storage-specifier-to-llvm


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

