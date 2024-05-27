; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_4x3xf64 = private constant [4 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 3.000000e+00], [3 x double] [double 0.000000e+00, double 2.000000e+00, double 4.000000e+00], [3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 5.000000e+00]], align 64
@__constant_3x2xf64 = private constant [3 x [2 x double]] [[2 x double] [double 1.000000e+00, double 4.000000e+00], [2 x double] zeroinitializer, [2 x double] [double 0.000000e+00, double 6.000000e+00]], align 64

declare ptr @malloc(i64)

declare void @endLexInsert(ptr)

define private void @lexInsertF64(ptr %0, ptr %1, ptr %2, i64 %3, i64 %4, i64 %5, ptr %6, ptr %7, i64 %8) {
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %2, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %3, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 %4, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 %5, 4, 0
  %15 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, ptr %15, align 8
  %16 = insertvalue { ptr, ptr, i64 } undef, ptr %6, 0
  %17 = insertvalue { ptr, ptr, i64 } %16, ptr %7, 1
  %18 = insertvalue { ptr, ptr, i64 } %17, i64 %8, 2
  %19 = alloca { ptr, ptr, i64 }, i64 1, align 8
  store { ptr, ptr, i64 } %18, ptr %19, align 8
  call void @_mlir_ciface_lexInsertF64(ptr %0, ptr %15, ptr %19)
  ret void
}

declare void @_mlir_ciface_lexInsertF64(ptr, ptr, ptr)

define private ptr @newSparseTensor(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %20, ptr %21, i64 %22, i64 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, ptr %29) {
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, ptr %1, 1
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %2, 2
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 %3, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 %4, 4, 0
  %36 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, ptr %36, align 8
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %6, 1
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 %7, 2
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %8, 3, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %9, 4, 0
  %42 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, ptr %42, align 8
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %11, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %12, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %13, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %14, 4, 0
  %48 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, ptr %48, align 8
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, ptr %16, 1
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %17, 2
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %18, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 %19, 4, 0
  %54 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %54, align 8
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, ptr %21, 1
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %22, 2
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %23, 3, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 %24, 4, 0
  %60 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, ptr %60, align 8
  %61 = call ptr @_mlir_ciface_newSparseTensor(ptr %36, ptr %42, ptr %48, ptr %54, ptr %60, i32 %25, i32 %26, i32 %27, i32 %28, ptr %29)
  ret ptr %61
}

declare ptr @_mlir_ciface_newSparseTensor(ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr)

define private { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseValuesF64(ptr %0) {
  %2 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  call void @_mlir_ciface_sparseValuesF64(ptr %2, ptr %0)
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  ret { ptr, ptr, i64, [1 x i64], [1 x i64] } %3
}

declare void @_mlir_ciface_sparseValuesF64(ptr, ptr)

define private { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseCoordinates0(ptr %0, i64 %1) {
  %3 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  call void @_mlir_ciface_sparseCoordinates0(ptr %3, ptr %0, i64 %1)
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  ret { ptr, ptr, i64, [1 x i64], [1 x i64] } %4
}

declare void @_mlir_ciface_sparseCoordinates0(ptr, ptr, i64)

define private { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparsePositions0(ptr %0, i64 %1) {
  %3 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  call void @_mlir_ciface_sparsePositions0(ptr %3, ptr %0, i64 %1)
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  ret { ptr, ptr, i64, [1 x i64], [1 x i64] } %4
}

declare void @_mlir_ciface_sparsePositions0(ptr, ptr, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, ptr %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, ptr %8, ptr %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14) {
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %2, 1
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 %3, 2
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 %4, 3, 0
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 %6, 4, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 %5, 3, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 %7, 4, 1
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %8, 0
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, ptr %9, 1
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %10, 2
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %11, 3, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %13, 4, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %12, 3, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %14, 4, 1
  %30 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparsePositions0(ptr %0, i64 1)
  %31 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseCoordinates0(ptr %0, i64 1)
  %32 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseValuesF64(ptr %0)
  br label %33

33:                                               ; preds = %77, %15
  %34 = phi i64 [ %78, %77 ], [ 0, %15 ]
  %35 = icmp slt i64 %34, 3
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 1
  %38 = getelementptr i64, ptr %37, i64 %34
  %39 = load i64, ptr %38, align 4
  %40 = add i64 %34, 1
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 1
  %42 = getelementptr i64, ptr %41, i64 %40
  %43 = load i64, ptr %42, align 4
  br label %44

44:                                               ; preds = %75, %36
  %45 = phi i64 [ %76, %75 ], [ %39, %36 ]
  %46 = icmp slt i64 %45, %43
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, 1
  %49 = getelementptr i64, ptr %48, i64 %45
  %50 = load i64, ptr %49, align 4
  %51 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 1
  %52 = getelementptr double, ptr %51, i64 %45
  %53 = load double, ptr %52, align 8
  br label %54

54:                                               ; preds = %57, %47
  %55 = phi i64 [ %74, %57 ], [ 0, %47 ]
  %56 = icmp slt i64 %55, 2
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 1
  %59 = mul i64 %50, 2
  %60 = add i64 %59, %55
  %61 = getelementptr double, ptr %58, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
  %64 = mul i64 %34, 2
  %65 = add i64 %64, %55
  %66 = getelementptr double, ptr %63, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fmul double %53, %67
  %69 = fadd double %62, %68
  %70 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 1
  %71 = mul i64 %50, 2
  %72 = add i64 %71, %55
  %73 = getelementptr double, ptr %70, i64 %72
  store double %69, ptr %73, align 8
  %74 = add i64 %55, 1
  br label %54

75:                                               ; preds = %54
  %76 = add i64 %45, 1
  br label %44

77:                                               ; preds = %44
  %78 = add i64 %34, 1
  br label %33

79:                                               ; preds = %33
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %29
}

define i64 @main() {
  %1 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (double, ptr null, i32 8) to i64), i64 64))
  %2 = ptrtoint ptr %1 to i64
  %3 = add i64 %2, 63
  %4 = urem i64 %3, 64
  %5 = sub i64 %3, %4
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, i64 0, 2
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 4, 3, 0
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, i64 2, 3, 1
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 2, 4, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 1, 4, 1
  %14 = alloca i8, i64 2, align 1
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %14, 0
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 0, 2
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, i64 2, 3, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, i64 1, 4, 0
  %20 = getelementptr i8, ptr %14, i64 0
  store i8 11, ptr %20, align 1
  %21 = getelementptr i8, ptr %14, i64 1
  store i8 18, ptr %21, align 1
  %22 = alloca i64, i64 2, align 8
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %22, 0
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, ptr %22, 1
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 0, 2
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 2, 3, 0
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 1, 4, 0
  %28 = getelementptr i64, ptr %22, i64 0
  store i64 3, ptr %28, align 4
  %29 = getelementptr i64, ptr %22, i64 1
  store i64 4, ptr %29, align 4
  %30 = alloca i64, i64 2, align 8
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %30, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, ptr %30, 1
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 0, 2
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 2, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 1, 4, 0
  %36 = getelementptr i64, ptr %30, i64 0
  store i64 0, ptr %36, align 4
  %37 = getelementptr i64, ptr %30, i64 1
  store i64 1, ptr %37, align 4
  %38 = call ptr @newSparseTensor(ptr %22, ptr %22, i64 0, i64 2, i64 1, ptr %22, ptr %22, i64 0, i64 2, i64 1, ptr %14, ptr %14, i64 0, i64 2, i64 1, ptr %30, ptr %30, i64 0, i64 2, i64 1, ptr %30, ptr %30, i64 0, i64 2, i64 1, i32 0, i32 0, i32 1, i32 0, ptr null)
  %39 = alloca i64, i64 2, align 8
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %39, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, ptr %39, 1
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 0, 2
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 2, 3, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 1, 4, 0
  %45 = alloca double, i64 1, align 8
  %46 = insertvalue { ptr, ptr, i64 } undef, ptr %45, 0
  %47 = insertvalue { ptr, ptr, i64 } %46, ptr %45, 1
  %48 = insertvalue { ptr, ptr, i64 } %47, i64 0, 2
  br label %49

49:                                               ; preds = %67, %0
  %50 = phi i64 [ %68, %67 ], [ 0, %0 ]
  %51 = icmp slt i64 %50, 4
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %65, %52
  %54 = phi i64 [ %66, %65 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, 3
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = mul i64 %50, 3
  %58 = add i64 %57, %54
  %59 = getelementptr double, ptr @__constant_4x3xf64, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = fcmp une double %60, 0.000000e+00
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr i64, ptr %39, i64 0
  store i64 %54, ptr %63, align 4
  %64 = getelementptr i64, ptr %39, i64 1
  store i64 %50, ptr %64, align 4
  store double %60, ptr %45, align 8
  call void @lexInsertF64(ptr %38, ptr %39, ptr %39, i64 0, i64 2, i64 1, ptr %45, ptr %45, i64 0)
  br label %65

65:                                               ; preds = %62, %56
  %66 = add i64 %54, 1
  br label %53

67:                                               ; preds = %53
  %68 = add i64 %50, 1
  br label %49

69:                                               ; preds = %49
  call void @endLexInsert(ptr %38)
  %70 = alloca i8, i64 2, align 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %70, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, ptr %70, 1
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 0, 2
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, i64 2, 3, 0
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, i64 1, 4, 0
  %76 = getelementptr i8, ptr %70, i64 0
  store i8 9, ptr %76, align 1
  %77 = getelementptr i8, ptr %70, i64 1
  store i8 16, ptr %77, align 1
  %78 = alloca i64, i64 2, align 8
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %78, 0
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, ptr %78, 1
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 0, 2
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 2, 3, 0
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, i64 1, 4, 0
  %84 = getelementptr i64, ptr %78, i64 0
  store i64 4, ptr %84, align 4
  %85 = getelementptr i64, ptr %78, i64 1
  store i64 3, ptr %85, align 4
  %86 = alloca i64, i64 2, align 8
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %86, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, ptr %86, 1
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 0, 2
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 2, 3, 0
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 1, 4, 0
  %92 = getelementptr i64, ptr %86, i64 0
  store i64 1, ptr %92, align 4
  %93 = getelementptr i64, ptr %86, i64 1
  store i64 0, ptr %93, align 4
  %94 = alloca i64, i64 2, align 8
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %94, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, ptr %94, 1
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 0, 2
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 2, 3, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 1, 4, 0
  %100 = getelementptr i64, ptr %94, i64 0
  store i64 1, ptr %100, align 4
  %101 = getelementptr i64, ptr %94, i64 1
  store i64 0, ptr %101, align 4
  %102 = alloca i64, i64 2, align 8
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %102, 0
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, ptr %102, 1
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 0, 2
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 2, 3, 0
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 1, 4, 0
  %108 = getelementptr i64, ptr %102, i64 0
  store i64 3, ptr %108, align 4
  %109 = getelementptr i64, ptr %102, i64 1
  store i64 4, ptr %109, align 4
  %110 = call ptr @newSparseTensor(ptr %78, ptr %78, i64 0, i64 2, i64 1, ptr %102, ptr %102, i64 0, i64 2, i64 1, ptr %70, ptr %70, i64 0, i64 2, i64 1, ptr %86, ptr %86, i64 0, i64 2, i64 1, ptr %94, ptr %94, i64 0, i64 2, i64 1, i32 0, i32 0, i32 1, i32 8, ptr %38)
  %111 = alloca i8, i64 2, align 1
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %111, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, ptr %111, 1
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 0, 2
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 2, 3, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 1, 4, 0
  %117 = getelementptr i8, ptr %111, i64 0
  store i8 4, ptr %117, align 1
  %118 = getelementptr i8, ptr %111, i64 1
  store i8 8, ptr %118, align 1
  %119 = alloca i64, i64 2, align 8
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %119, 0
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, ptr %119, 1
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 0, 2
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, i64 2, 3, 0
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 1, 4, 0
  %125 = getelementptr i64, ptr %119, i64 0
  store i64 3, ptr %125, align 4
  %126 = getelementptr i64, ptr %119, i64 1
  store i64 4, ptr %126, align 4
  %127 = alloca i64, i64 2, align 8
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %127, 0
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, ptr %127, 1
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 0, 2
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, i64 2, 3, 0
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, i64 1, 4, 0
  %133 = getelementptr i64, ptr %127, i64 0
  store i64 0, ptr %133, align 4
  %134 = getelementptr i64, ptr %127, i64 1
  store i64 1, ptr %134, align 4
  %135 = call ptr @newSparseTensor(ptr %119, ptr %119, i64 0, i64 2, i64 1, ptr %119, ptr %119, i64 0, i64 2, i64 1, ptr %111, ptr %111, i64 0, i64 2, i64 1, ptr %127, ptr %127, i64 0, i64 2, i64 1, ptr %127, ptr %127, i64 0, i64 2, i64 1, i32 0, i32 0, i32 1, i32 0, ptr null)
  %136 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparsePositions0(ptr %110, i64 0)
  %137 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseCoordinates0(ptr %110, i64 0)
  %138 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseCoordinates0(ptr %110, i64 1)
  %139 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseValuesF64(ptr %110)
  %140 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %141 = getelementptr i64, ptr %140, i64 0
  %142 = load i64, ptr %141, align 4
  %143 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %144 = getelementptr i64, ptr %143, i64 1
  %145 = load i64, ptr %144, align 4
  %146 = alloca i64, i64 2, align 8
  %147 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %146, 0
  %148 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, ptr %146, 1
  %149 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %148, i64 0, 2
  %150 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %149, i64 2, 3, 0
  %151 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %150, i64 1, 4, 0
  %152 = alloca double, i64 1, align 8
  %153 = insertvalue { ptr, ptr, i64 } undef, ptr %152, 0
  %154 = insertvalue { ptr, ptr, i64 } %153, ptr %152, 1
  %155 = insertvalue { ptr, ptr, i64 } %154, i64 0, 2
  br label %156

156:                                              ; preds = %159, %69
  %157 = phi i64 [ %171, %159 ], [ %142, %69 ]
  %158 = icmp slt i64 %157, %145
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, 1
  %161 = getelementptr i64, ptr %160, i64 %157
  %162 = load i64, ptr %161, align 4
  %163 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %138, 1
  %164 = getelementptr i64, ptr %163, i64 %157
  %165 = load i64, ptr %164, align 4
  %166 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 1
  %167 = getelementptr double, ptr %166, i64 %157
  %168 = load double, ptr %167, align 8
  %169 = getelementptr i64, ptr %146, i64 0
  store i64 %162, ptr %169, align 4
  %170 = getelementptr i64, ptr %146, i64 1
  store i64 %165, ptr %170, align 4
  store double %168, ptr %152, align 8
  call void @lexInsertF64(ptr %135, ptr %146, ptr %146, i64 0, i64 2, i64 1, ptr %152, ptr %152, i64 0)
  %171 = add i64 %157, 1
  br label %156

172:                                              ; preds = %156
  call void @endLexInsert(ptr %135)
  %173 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %135, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_3x2xf64, i64 0, i64 3, i64 2, i64 2, i64 1, ptr %1, ptr %6, i64 0, i64 4, i64 2, i64 2, i64 1)
  ret i64 1
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
