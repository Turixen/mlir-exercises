OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
OPTFLAGS += -sparsifier

.PRECIOUS: %.llvm.mlir
.PRECIOUS: %.ll

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.s: %.ll
	llc -filetype=asm -o $@ $<

%: %.ll
	clang-18 -o $@ $<

