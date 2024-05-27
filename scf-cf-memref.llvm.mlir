module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_4x3xf64(dense<[[1.000000e+00, 0.000000e+00, 3.000000e+00], [0.000000e+00, 2.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00, 0.000000e+00], [0.000000e+00, 0.000000e+00, 5.000000e+00]]> : tensor<4x3xf64>) {addr_space = 0 : i32} : !llvm.array<4 x array<3 x f64>>
  llvm.mlir.global private constant @__constant_3x2xf64(dense<[[1.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00], [0.000000e+00, 6.000000e+00]]> : tensor<3x2xf64>) {addr_space = 0 : i32} : !llvm.array<3 x array<2 x f64>>
  func.func @main() -> memref<4x2xf64> {
    %0 = llvm.mlir.constant(3 : index) : i64
    %1 = llvm.mlir.constant(2 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(6 : index) : i64
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %6 = llvm.ptrtoint %5 : !llvm.ptr to i64
    %7 = llvm.mlir.addressof @__constant_3x2xf64 : !llvm.ptr
    %8 = llvm.getelementptr %7[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x array<2 x f64>>
    %9 = llvm.mlir.constant(3735928559 : index) : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr
    %11 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %12 = llvm.insertvalue %10, %11[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %8, %12[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.insertvalue %14, %13[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %0, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %1, %16[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %1, %17[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %2, %18[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.mlir.constant(3 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(12 : index) : i64
    %24 = llvm.mlir.zero : !llvm.ptr
    %25 = llvm.getelementptr %24[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.addressof @__constant_4x3xf64 : !llvm.ptr
    %28 = llvm.getelementptr %27[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x array<3 x f64>>
    %29 = llvm.mlir.constant(3735928559 : index) : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %28, %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %20, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %21, %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %22, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(8 : index) : i64
    %44 = llvm.mlir.zero : !llvm.ptr
    %45 = llvm.getelementptr %44[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.mlir.constant(64 : index) : i64
    %48 = llvm.add %46, %47  : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.sub %47, %51  : i64
    %53 = llvm.add %50, %52  : i64
    %54 = llvm.urem %53, %47  : i64
    %55 = llvm.sub %53, %54  : i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr
    %57 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.insertvalue %49, %57[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %40, %61[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %41, %62[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %41, %63[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %42, %64[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(4 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(8 : index) : i64
    %70 = llvm.mlir.zero : !llvm.ptr
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.mlir.constant(64 : index) : i64
    %74 = llvm.add %72, %73  : i64
    %75 = llvm.call @malloc(%74) : (i64) -> !llvm.ptr
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.sub %73, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.urem %79, %73  : i64
    %81 = llvm.sub %79, %80  : i64
    %82 = llvm.inttoptr %81 : i64 to !llvm.ptr
    %83 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %84 = llvm.insertvalue %75, %83[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.insertvalue %66, %87[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.insertvalue %67, %88[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.insertvalue %67, %89[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.insertvalue %68, %90[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = builtin.unrealized_conversion_cast %91 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<4x2xf64>
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.mul %93, %94  : i64
    %96 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.mul %95, %96  : i64
    %98 = llvm.mlir.zero : !llvm.ptr
    %99 = llvm.getelementptr %98[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.mul %97, %100  : i64
    %102 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.extractvalue %65[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.getelementptr %102[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %105 = llvm.extractvalue %91[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.extractvalue %91[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.getelementptr %105[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%107, %104, %101) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%108: index):  // 2 preds: ^bb0, ^bb8
    %109 = builtin.unrealized_conversion_cast %108 : index to i64
    %110 = arith.cmpi slt, %108, %c4 : index
    llvm.cond_br %110, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    cf.br ^bb3(%c0_0 : index)
  ^bb3(%111: index):  // 2 preds: ^bb2, ^bb7
    %112 = builtin.unrealized_conversion_cast %111 : index to i64
    %113 = arith.cmpi slt, %111, %c2 : index
    llvm.cond_br %113, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %c0_2 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1_3 = arith.constant 1 : index
    cf.br ^bb5(%c0_2 : index)
  ^bb5(%114: index):  // 2 preds: ^bb4, ^bb6
    %115 = builtin.unrealized_conversion_cast %114 : index to i64
    %116 = arith.cmpi slt, %114, %c3 : index
    llvm.cond_br %116, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %117 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.mlir.constant(3 : index) : i64
    %119 = llvm.mul %109, %118  : i64
    %120 = llvm.add %119, %115  : i64
    %121 = llvm.getelementptr %117[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %122 = llvm.load %121 : !llvm.ptr -> f64
    %123 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %115, %124  : i64
    %126 = llvm.add %125, %112  : i64
    %127 = llvm.getelementptr %123[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %128 = llvm.load %127 : !llvm.ptr -> f64
    %129 = llvm.extractvalue %91[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %109, %130  : i64
    %132 = llvm.add %131, %112  : i64
    %133 = llvm.getelementptr %129[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %134 = llvm.load %133 : !llvm.ptr -> f64
    %135 = llvm.fmul %122, %128  : f64
    %136 = llvm.fadd %134, %135  : f64
    %137 = llvm.extractvalue %91[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %109, %138  : i64
    %140 = llvm.add %139, %112  : i64
    %141 = llvm.getelementptr %137[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %136, %141 : f64, !llvm.ptr
    %142 = arith.addi %114, %c1_3 : index
    cf.br ^bb5(%142 : index)
  ^bb7:  // pred: ^bb5
    %143 = arith.addi %111, %c1_1 : index
    cf.br ^bb3(%143 : index)
  ^bb8:  // pred: ^bb3
    %144 = arith.addi %108, %c1 : index
    cf.br ^bb1(%144 : index)
  ^bb9:  // pred: ^bb1
    return %92 : memref<4x2xf64>
  }
}

