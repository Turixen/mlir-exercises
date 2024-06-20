module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_4x3xf64(dense<[[1.000000e+00, 0.000000e+00, 3.000000e+00], [0.000000e+00, 2.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00, 0.000000e+00], [0.000000e+00, 0.000000e+00, 5.000000e+00]]> : tensor<4x3xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x array<3 x f64>>
  llvm.mlir.global private constant @__constant_3x2xf64(dense<[[1.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00], [0.000000e+00, 6.000000e+00]]> : tensor<3x2xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<3 x array<2 x f64>>
  llvm.func @endLexInsert(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func private @lexInsertF64(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg1, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg2, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg3, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg4, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.alloca %6 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %5, %7 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %9 = llvm.insertvalue %arg6, %8[0] : !llvm.struct<(ptr, ptr, i64)> 
    %10 = llvm.insertvalue %arg7, %9[1] : !llvm.struct<(ptr, ptr, i64)> 
    %11 = llvm.insertvalue %arg8, %10[2] : !llvm.struct<(ptr, ptr, i64)> 
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.alloca %12 x !llvm.struct<(ptr, ptr, i64)> : (i64) -> !llvm.ptr
    llvm.store %11, %13 : !llvm.struct<(ptr, ptr, i64)>, !llvm.ptr
    llvm.call @_mlir_ciface_lexInsertF64(%arg0, %7, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_lexInsertF64(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func private @newSparseTensor(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr, %arg21: !llvm.ptr, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: !llvm.ptr) -> !llvm.ptr attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.alloca %6 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %5, %7 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg5, %8[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg7, %10[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.alloca %14 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %13, %15 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %arg10, %16[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg11, %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg12, %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg13, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg14, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.alloca %22 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %21, %23 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %arg15, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %arg16, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %arg17, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %arg18, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %arg19, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.alloca %30 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %29, %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %arg20, %32[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %arg21, %33[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %arg22, %34[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %arg23, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %arg24, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.alloca %38 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %37, %39 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %40 = llvm.call @_mlir_ciface_newSparseTensor(%7, %15, %23, %31, %39, %arg25, %arg26, %arg27, %arg28, %arg29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32, !llvm.ptr) -> !llvm.ptr
    llvm.return %40 : !llvm.ptr
  }
  llvm.func @_mlir_ciface_newSparseTensor(!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32, !llvm.ptr) -> !llvm.ptr attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func private @sparseValuesF64(%arg0: !llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.call @_mlir_ciface_sparseValuesF64(%1, %arg0) : (!llvm.ptr, !llvm.ptr) -> ()
    %2 = llvm.load %1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.return %2 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  llvm.func @_mlir_ciface_sparseValuesF64(!llvm.ptr, !llvm.ptr) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func private @sparseCoordinates0(%arg0: !llvm.ptr, %arg1: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.call @_mlir_ciface_sparseCoordinates0(%1, %arg0, %arg1) : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %2 = llvm.load %1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.return %2 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  llvm.func @_mlir_ciface_sparseCoordinates0(!llvm.ptr, !llvm.ptr, i64) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func private @sparsePositions0(%arg0: !llvm.ptr, %arg1: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.call @_mlir_ciface_sparsePositions0(%1, %arg0, %arg1) : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %2 = llvm.load %1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.return %2 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  llvm.func @_mlir_ciface_sparsePositions0(!llvm.ptr, !llvm.ptr, i64) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: !llvm.ptr, %arg9: !llvm.ptr, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg1, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg2, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg3, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg4, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg5, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg8, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg9, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg11, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(3 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.call @sparsePositions0(%arg0, %20) : (!llvm.ptr, i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.call @sparseCoordinates0(%arg0, %20) : (!llvm.ptr, i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.call @sparseValuesF64(%arg0) : (!llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%19 : i64)
  ^bb1(%24: i64):  // 2 preds: ^bb0, ^bb8
    %25 = llvm.icmp "slt" %24, %17 : i64
    llvm.cond_br %25, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %26 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.getelementptr %26[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %28 = llvm.load %27 : !llvm.ptr -> i64
    %29 = llvm.add %24, %20  : i64
    %30 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.getelementptr %30[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %32 = llvm.load %31 : !llvm.ptr -> i64
    llvm.br ^bb3(%28 : i64)
  ^bb3(%33: i64):  // 2 preds: ^bb2, ^bb7
    %34 = llvm.icmp "slt" %33, %32 : i64
    llvm.cond_br %34, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %35 = llvm.extractvalue %22[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %35[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.getelementptr %38[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.load %39 : !llvm.ptr -> f64
    llvm.br ^bb5(%19 : i64)
  ^bb5(%41: i64):  // 2 preds: ^bb4, ^bb6
    %42 = llvm.icmp "slt" %41, %18 : i64
    llvm.cond_br %42, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %43 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mul %37, %16  : i64
    %45 = llvm.add %44, %41  : i64
    %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %47 = llvm.load %46 : !llvm.ptr -> f64
    %48 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mul %24, %16  : i64
    %50 = llvm.add %49, %41  : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %52 = llvm.load %51 : !llvm.ptr -> f64
    %53 = llvm.fmul %40, %52  : f64
    %54 = llvm.fadd %47, %53  : f64
    %55 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mul %37, %16  : i64
    %57 = llvm.add %56, %41  : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %54, %58 : f64, !llvm.ptr
    %59 = llvm.add %41, %20  : i64
    llvm.br ^bb5(%59 : i64)
  ^bb7:  // pred: ^bb5
    %60 = llvm.add %33, %20  : i64
    llvm.br ^bb3(%60 : i64)
  ^bb8:  // pred: ^bb3
    %61 = llvm.add %24, %20  : i64
    llvm.br ^bb1(%61 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return %15 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @main() -> i64 {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(3735928559 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(2 : index) : i64
    %6 = llvm.mlir.constant(3 : index) : i64
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(3 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(8 : i8) : i8
    %13 = llvm.mlir.constant(4 : i8) : i8
    %14 = llvm.mlir.constant(8 : i32) : i32
    %15 = llvm.mlir.constant(16 : i8) : i8
    %16 = llvm.mlir.constant(9 : i8) : i8
    %17 = llvm.mlir.constant(1 : i32) : i32
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(18 : i8) : i8
    %20 = llvm.mlir.constant(11 : i8) : i8
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.addressof @__constant_3x2xf64 : !llvm.ptr
    %23 = llvm.getelementptr %22[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x array<2 x f64>>
    %24 = llvm.inttoptr %3 : i64 to !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %23, %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %2, %27[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %6, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %5, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %5, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %4, %31[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.mlir.addressof @__constant_4x3xf64 : !llvm.ptr
    %34 = llvm.getelementptr %33[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x array<3 x f64>>
    %35 = llvm.mlir.zero : !llvm.ptr
    %36 = llvm.getelementptr %35[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.add %37, %0  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.sub %0, %4  : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.urem %42, %0  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %47 = llvm.insertvalue %39, %46[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %2, %48[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %1, %49[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %5, %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %5, %51[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %4, %52[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.alloca %5 x i8 : (i64) -> !llvm.ptr
    %55 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %2, %57[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %5, %58[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %4, %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %54[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %20, %61 : i8, !llvm.ptr
    %62 = llvm.getelementptr %54[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %19, %62 : i8, !llvm.ptr
    %63 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %2, %66[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %5, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %4, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %63[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %70 : i64, !llvm.ptr
    %71 = llvm.getelementptr %63[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %9, %71 : i64, !llvm.ptr
    %72 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %73 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %2, %75[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.insertvalue %5, %76[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %4, %77[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.getelementptr %72[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %79 : i64, !llvm.ptr
    %80 = llvm.getelementptr %72[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %21, %80 : i64, !llvm.ptr
    %81 = llvm.mlir.zero : !llvm.ptr
    %82 = llvm.call @newSparseTensor(%63, %63, %2, %5, %4, %63, %63, %2, %5, %4, %54, %54, %2, %5, %4, %72, %72, %2, %5, %4, %72, %72, %2, %5, %4, %18, %18, %17, %18, %81) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> !llvm.ptr
    %83 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %84 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %2, %86[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %5, %87[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %4, %88[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.alloca %4 x f64 : (i64) -> !llvm.ptr
    %91 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %92 = llvm.insertvalue %90, %91[0] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.insertvalue %90, %92[1] : !llvm.struct<(ptr, ptr, i64)> 
    %94 = llvm.insertvalue %2, %93[2] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.br ^bb1(%11 : i64)
  ^bb1(%95: i64):  // 2 preds: ^bb0, ^bb7
    %96 = llvm.icmp "slt" %95, %9 : i64
    llvm.cond_br %96, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%11 : i64)
  ^bb3(%97: i64):  // 2 preds: ^bb2, ^bb6
    %98 = llvm.icmp "slt" %97, %10 : i64
    llvm.cond_br %98, ^bb4, ^bb7
  ^bb4:  // pred: ^bb3
    %99 = llvm.mul %95, %6  : i64
    %100 = llvm.add %99, %97  : i64
    %101 = llvm.getelementptr %34[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %102 = llvm.load %101 : !llvm.ptr -> f64
    %103 = llvm.fcmp "une" %102, %8 : f64
    llvm.cond_br %103, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %104 = llvm.getelementptr %83[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %97, %104 : i64, !llvm.ptr
    %105 = llvm.getelementptr %83[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %95, %105 : i64, !llvm.ptr
    llvm.store %102, %90 : f64, !llvm.ptr
    llvm.call @lexInsertF64(%82, %83, %83, %2, %5, %4, %90, %90, %2) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %106 = llvm.add %97, %21  : i64
    llvm.br ^bb3(%106 : i64)
  ^bb7:  // pred: ^bb3
    %107 = llvm.add %95, %21  : i64
    llvm.br ^bb1(%107 : i64)
  ^bb8:  // pred: ^bb1
    llvm.call @endLexInsert(%82) : (!llvm.ptr) -> ()
    %108 = llvm.alloca %5 x i8 : (i64) -> !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %2, %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %5, %112[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %4, %113[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %108[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %16, %115 : i8, !llvm.ptr
    %116 = llvm.getelementptr %108[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %15, %116 : i8, !llvm.ptr
    %117 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %118 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %119 = llvm.insertvalue %117, %118[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.insertvalue %117, %119[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %2, %120[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %5, %121[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.insertvalue %4, %122[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %117[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %9, %124 : i64, !llvm.ptr
    %125 = llvm.getelementptr %117[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %125 : i64, !llvm.ptr
    %126 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %127 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.insertvalue %126, %127[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %2, %129[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %5, %130[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %4, %131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %126[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %21, %133 : i64, !llvm.ptr
    %134 = llvm.getelementptr %126[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %134 : i64, !llvm.ptr
    %135 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %136 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %137 = llvm.insertvalue %135, %136[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %135, %137[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %2, %138[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %5, %139[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %4, %140[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %135[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %21, %142 : i64, !llvm.ptr
    %143 = llvm.getelementptr %135[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %143 : i64, !llvm.ptr
    %144 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %145 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %146 = llvm.insertvalue %144, %145[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %2, %147[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %5, %148[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.insertvalue %4, %149[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %144[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %151 : i64, !llvm.ptr
    %152 = llvm.getelementptr %144[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %9, %152 : i64, !llvm.ptr
    %153 = llvm.call @newSparseTensor(%117, %117, %2, %5, %4, %144, %144, %2, %5, %4, %108, %108, %2, %5, %4, %126, %126, %2, %5, %4, %135, %135, %2, %5, %4, %18, %18, %17, %14, %82) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> !llvm.ptr
    %154 = llvm.alloca %5 x i8 : (i64) -> !llvm.ptr
    %155 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %2, %157[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %5, %158[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %4, %159[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %154[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %13, %161 : i8, !llvm.ptr
    %162 = llvm.getelementptr %154[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %12, %162 : i8, !llvm.ptr
    %163 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %164 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %165 = llvm.insertvalue %163, %164[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %2, %166[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %5, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %4, %168[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.getelementptr %163[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %170 : i64, !llvm.ptr
    %171 = llvm.getelementptr %163[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %9, %171 : i64, !llvm.ptr
    %172 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %173 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.insertvalue %172, %173[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %2, %175[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %5, %176[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %4, %177[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %172[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %179 : i64, !llvm.ptr
    %180 = llvm.getelementptr %172[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %21, %180 : i64, !llvm.ptr
    %181 = llvm.mlir.zero : !llvm.ptr
    %182 = llvm.call @newSparseTensor(%163, %163, %2, %5, %4, %163, %163, %2, %5, %4, %154, %154, %2, %5, %4, %172, %172, %2, %5, %4, %172, %172, %2, %5, %4, %18, %18, %17, %18, %181) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> !llvm.ptr
    %183 = llvm.call @sparsePositions0(%153, %11) : (!llvm.ptr, i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.call @sparseCoordinates0(%153, %11) : (!llvm.ptr, i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.call @sparseCoordinates0(%153, %21) : (!llvm.ptr, i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %186 = llvm.call @sparseValuesF64(%153) : (!llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %187 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.getelementptr %187[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %189 = llvm.load %188 : !llvm.ptr -> i64
    %190 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %192 = llvm.load %191 : !llvm.ptr -> i64
    %193 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr
    %194 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.insertvalue %193, %194[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %2, %196[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %5, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %4, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.alloca %4 x f64 : (i64) -> !llvm.ptr
    %201 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %202 = llvm.insertvalue %200, %201[0] : !llvm.struct<(ptr, ptr, i64)> 
    %203 = llvm.insertvalue %200, %202[1] : !llvm.struct<(ptr, ptr, i64)> 
    %204 = llvm.insertvalue %2, %203[2] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.br ^bb9(%189 : i64)
  ^bb9(%205: i64):  // 2 preds: ^bb8, ^bb10
    %206 = llvm.icmp "slt" %205, %192 : i64
    llvm.cond_br %206, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %207 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%205] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %209 = llvm.load %208 : !llvm.ptr -> i64
    %210 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.getelementptr %210[%205] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %212 = llvm.load %211 : !llvm.ptr -> i64
    %213 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.getelementptr %193[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %209, %216 : i64, !llvm.ptr
    %217 = llvm.getelementptr %193[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %212, %217 : i64, !llvm.ptr
    llvm.store %215, %200 : f64, !llvm.ptr
    llvm.call @lexInsertF64(%182, %193, %193, %2, %5, %4, %200, %200, %2) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64) -> ()
    %218 = llvm.add %205, %21  : i64
    llvm.br ^bb9(%218 : i64)
  ^bb11:  // pred: ^bb9
    llvm.call @endLexInsert(%182) : (!llvm.ptr) -> ()
    %219 = llvm.call @matmul(%182, %24, %23, %2, %6, %5, %5, %4, %39, %45, %2, %1, %5, %5, %4) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.return %7 : i64
  }
}

