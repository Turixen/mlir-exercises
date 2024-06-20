module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_3x2xf64(dense<[[1.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00], [0.000000e+00, 6.000000e+00]]> : tensor<3x2xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<3 x array<2 x f64>>
  llvm.mlir.global private constant @__constant_4x3xf64(dense<[[1.000000e+00, 0.000000e+00, 3.000000e+00], [0.000000e+00, 2.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00, 0.000000e+00], [0.000000e+00, 0.000000e+00, 5.000000e+00]]> : tensor<4x3xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x array<3 x f64>>
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(3 : index) : i64
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(8 : index) : i64
    %33 = llvm.mlir.zero : !llvm.ptr
    %34 = llvm.getelementptr %33[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.mlir.constant(64 : index) : i64
    %37 = llvm.add %35, %36  : i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr
    %39 = llvm.ptrtoint %38 : !llvm.ptr to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %36, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %36  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %29, %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %30, %51[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %30, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %31, %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mul %arg17, %55  : i64
    %57 = llvm.mul %56, %arg18  : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mul %57, %60  : i64
    %62 = llvm.getelementptr %arg15[%arg16] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %63 = llvm.getelementptr %45[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    "llvm.intr.memcpy"(%63, %62, %61) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb1(%24 : i64)
  ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb8
    %65 = llvm.icmp "slt" %64, %25 : i64
    llvm.cond_br %65, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%24 : i64)
  ^bb3(%66: i64):  // 2 preds: ^bb2, ^bb7
    %67 = llvm.icmp "slt" %66, %27 : i64
    llvm.cond_br %67, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%24 : i64)
  ^bb5(%68: i64):  // 2 preds: ^bb4, ^bb6
    %69 = llvm.icmp "slt" %68, %28 : i64
    llvm.cond_br %69, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %70 = llvm.mlir.constant(3 : index) : i64
    %71 = llvm.mul %64, %70  : i64
    %72 = llvm.add %71, %68  : i64
    %73 = llvm.getelementptr %arg1[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %74 = llvm.load %73 : !llvm.ptr -> f64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mul %68, %75  : i64
    %77 = llvm.add %76, %66  : i64
    %78 = llvm.getelementptr %arg8[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %79 = llvm.load %78 : !llvm.ptr -> f64
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mul %64, %80  : i64
    %82 = llvm.add %81, %66  : i64
    %83 = llvm.getelementptr %45[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.load %83 : !llvm.ptr -> f64
    %85 = llvm.fmul %74, %79  : f64
    %86 = llvm.fadd %84, %85  : f64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mul %64, %87  : i64
    %89 = llvm.add %88, %66  : i64
    %90 = llvm.getelementptr %45[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %86, %90 : f64, !llvm.ptr
    %91 = llvm.add %68, %26  : i64
    llvm.br ^bb5(%91 : i64)
  ^bb7:  // pred: ^bb5
    %92 = llvm.add %66, %26  : i64
    llvm.br ^bb3(%92 : i64)
  ^bb8:  // pred: ^bb3
    %93 = llvm.add %64, %26  : i64
    llvm.br ^bb1(%93 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return %54 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @main() -> i64 {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(2 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.zero : !llvm.ptr
    %6 = llvm.getelementptr %5[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %7 = llvm.ptrtoint %6 : !llvm.ptr to i64
    %8 = llvm.mlir.constant(64 : index) : i64
    %9 = llvm.add %7, %8  : i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.sub %8, %12  : i64
    %14 = llvm.add %11, %13  : i64
    %15 = llvm.urem %14, %8  : i64
    %16 = llvm.sub %14, %15  : i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %10, %18[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %1, %22[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %2, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %2, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %3, %25[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.mlir.constant(3 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(12 : index) : i64
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = llvm.getelementptr %31[12] : (!llvm.ptr) -> !llvm.ptr, f64
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.mlir.addressof @__constant_4x3xf64 : !llvm.ptr
    %35 = llvm.getelementptr %34[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x array<3 x f64>>
    %36 = llvm.mlir.constant(3735928559 : index) : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %35, %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %27, %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %28, %43[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %28, %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %29, %45[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(3 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(6 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[6] : (!llvm.ptr) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.addressof @__constant_3x2xf64 : !llvm.ptr
    %55 = llvm.getelementptr %54[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x array<2 x f64>>
    %56 = llvm.mlir.constant(3735928559 : index) : i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr
    %58 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.insertvalue %55, %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %47, %62[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %48, %63[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %48, %64[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %49, %65[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %46[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %66[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %66[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.extractvalue %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.extractvalue %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.call @matmul(%67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.return %0 : i64
  }
}

