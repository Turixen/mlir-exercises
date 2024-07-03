; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_3x2xf64 = private constant [3 x [2 x double]] [[2 x double] [double 1.000000e+00, double 4.000000e+00], [2 x double] zeroinitializer, [2 x double] [double 0.000000e+00, double 6.000000e+00]], align 64
@__constant_4xindex_0 = private constant [4 x i64] [i64 0, i64 1, i64 3, i64 4], align 64
@__constant_4xindex = private constant [4 x i64] [i64 1, i64 0, i64 2, i64 2], align 64
@__constant_4xf64 = private constant [4 x double] [double 3.000000e+00, double 5.000000e+00, double 7.000000e+00, double 4.000000e+00], align 64

declare ptr @malloc(i64)

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

define private { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseValuesF64(ptr %0) {
  %2 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  call void @_mlir_ciface_sparseValuesF64(ptr %2, ptr %0)
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  ret { ptr, ptr, i64, [1 x i64], [1 x i64] } %3
}

declare void @_mlir_ciface_sparseValuesF64(ptr, ptr)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, ptr %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, ptr %8, ptr %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14) {
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %8, 0
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %9, 1
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 %10, 2
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 %11, 3, 0
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 %13, 4, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 %12, 3, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 %14, 4, 1
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, ptr %2, 1
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %3, 2
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %4, 3, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %6, 4, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %5, 3, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %7, 4, 1
  %30 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseValuesF64(ptr %0)
  %31 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparsePositions0(ptr %0, i64 1)
  %32 = call { ptr, ptr, i64, [1 x i64], [1 x i64] } @sparseCoordinates0(ptr %0, i64 1)
  br label %33

33:                                               ; preds = %77, %15
  %34 = phi i64 [ %78, %77 ], [ 0, %15 ]
  %35 = icmp slt i64 %34, 3
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, 1
  %38 = getelementptr i64, ptr %37, i64 %34
  %39 = load i64, ptr %38, align 4
  %40 = add i64 %34, 1
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, 1
  %42 = getelementptr i64, ptr %41, i64 %40
  %43 = load i64, ptr %42, align 4
  br label %44

44:                                               ; preds = %75, %36
  %45 = phi i64 [ %76, %75 ], [ %39, %36 ]
  %46 = icmp slt i64 %45, %43
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 1
  %49 = getelementptr i64, ptr %48, i64 %45
  %50 = load i64, ptr %49, align 4
  %51 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 1
  %52 = getelementptr double, ptr %51, i64 %45
  %53 = load double, ptr %52, align 8
  br label %54

54:                                               ; preds = %57, %47
  %55 = phi i64 [ %74, %57 ], [ 0, %47 ]
  %56 = icmp slt i64 %55, 2
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
  %59 = mul i64 %50, 2
  %60 = add i64 %59, %55
  %61 = getelementptr double, ptr %58, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 1
  %64 = mul i64 %34, 2
  %65 = add i64 %64, %55
  %66 = getelementptr double, ptr %63, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fmul double %53, %67
  %69 = fadd double %62, %68
  %70 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
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
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %22
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
  %14 = call ptr @test_assemble()
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %22 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %14, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_3x2xf64, i64 0, i64 3, i64 2, i64 2, i64 1, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  ret i64 1
}

define ptr @test_assemble() {
  %1 = alloca i64, i64 2, align 8
  %2 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, i64 2, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, i64 1, 4, 0
  %7 = getelementptr i64, ptr %1, i64 0
  store i64 65536, ptr %7, align 4
  %8 = getelementptr i64, ptr %1, i64 1
  store i64 262144, ptr %8, align 4
  %9 = alloca i64, i64 2, align 8
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %9, 1
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 2, 3, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  %15 = getelementptr i64, ptr %9, i64 0
  store i64 3, ptr %15, align 4
  %16 = getelementptr i64, ptr %9, i64 1
  store i64 4, ptr %16, align 4
  %17 = alloca i64, i64 2, align 8
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, ptr %17, 1
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 0, 2
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 2, 3, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 1, 4, 0
  %23 = getelementptr i64, ptr %17, i64 0
  store i64 0, ptr %23, align 4
  %24 = getelementptr i64, ptr %17, i64 1
  store i64 1, ptr %24, align 4
  %25 = alloca i64, i64 3, align 8
  %26 = getelementptr i64, ptr %25, i64 0
  store i64 ptrtoint (ptr @__constant_4xindex_0 to i64), ptr %26, align 4
  %27 = getelementptr i64, ptr %25, i64 1
  store i64 ptrtoint (ptr @__constant_4xindex to i64), ptr %27, align 4
  %28 = getelementptr i64, ptr %25, i64 2
  store i64 ptrtoint (ptr @__constant_4xf64 to i64), ptr %28, align 4
  %29 = ptrtoint ptr %25 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 0
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 2
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 0
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 2
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %40 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 0
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %43 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 2
  %44 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 3, 0
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 4, 0
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 0
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 1
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 2
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 3, 0
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 4, 0
  %51 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 0
  %52 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 1
  %53 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 2
  %54 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 3, 0
  %55 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 4, 0
  %56 = call ptr @newSparseTensor(ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, ptr %36, ptr %37, i64 %38, i64 %39, i64 %40, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45, ptr %46, ptr %47, i64 %48, i64 %49, i64 %50, ptr %51, ptr %52, i64 %53, i64 %54, i64 %55, i32 0, i32 0, i32 1, i32 2, ptr %30)
  ret ptr %56
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
