OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
OPTFLAGS += -canonicalize
OPTFLAGS += -generate-runtime-verification
OPTFLAGS += -sparsification
OPTFLAGS += -sparsifier='enable-runtime-library=true enable-index-optimizations enable-buffer-initialization'

.PRECIOUS: %.llvm.mlir
.PRECIOUS: %.ll

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.s: %.ll
	clang-18 -S -target riscv64 -Ofast -o $@ $<

%: %.ll
	clang-18 -o $@ $<


