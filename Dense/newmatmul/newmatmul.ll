; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_3x2xf64 = private constant [3 x [2 x double]] [[2 x double] [double 1.000000e+00, double 4.000000e+00], [2 x double] zeroinitializer, [2 x double] [double 0.000000e+00, double 6.000000e+00]], align 64
@__constant_4x3xf64 = private constant [4 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 3.000000e+00], [3 x double] [double 0.000000e+00, double 2.000000e+00, double 4.000000e+00], [3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 5.000000e+00]], align 64

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20) {
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %1, 1
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 %2, 2
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %3, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %5, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %4, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %6, 4, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %8, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %9, 2
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %10, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %12, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %11, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %13, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %14, 0
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, ptr %15, 1
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %16, 2
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %17, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 %19, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %18, 3, 1
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %20, 4, 1
  %43 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (double, ptr null, i32 8) to i64), i64 64))
  %44 = ptrtoint ptr %43 to i64
  %45 = add i64 %44, 63
  %46 = urem i64 %45, 64
  %47 = sub i64 %45, %46
  %48 = inttoptr i64 %47 to ptr
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %43, 0
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, ptr %48, 1
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, i64 0, 2
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, i64 4, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %52, i64 2, 3, 1
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, i64 2, 4, 0
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 1, 4, 1
  %56 = mul i64 %17, 1
  %57 = mul i64 %56, %18
  %58 = mul i64 %57, ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)
  %59 = getelementptr double, ptr %15, i64 %16
  %60 = getelementptr double, ptr %48, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %60, ptr %59, i64 %58, i1 false)
  br label %61

61:                                               ; preds = %93, %21
  %62 = phi i64 [ %94, %93 ], [ 0, %21 ]
  %63 = icmp slt i64 %62, 4
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %91, %64
  %66 = phi i64 [ %92, %91 ], [ 0, %64 ]
  %67 = icmp slt i64 %66, 2
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %72, %68
  %70 = phi i64 [ %90, %72 ], [ 0, %68 ]
  %71 = icmp slt i64 %70, 3
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = mul i64 %62, 3
  %74 = add i64 %73, %70
  %75 = getelementptr double, ptr %1, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = mul i64 %70, 2
  %78 = add i64 %77, %66
  %79 = getelementptr double, ptr %8, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = mul i64 %62, 2
  %82 = add i64 %81, %66
  %83 = getelementptr double, ptr %48, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = fmul double %76, %80
  %86 = fadd double %84, %85
  %87 = mul i64 %62, 2
  %88 = add i64 %87, %66
  %89 = getelementptr double, ptr %48, i64 %88
  store double %86, ptr %89, align 8
  %90 = add i64 %70, 1
  br label %69

91:                                               ; preds = %69
  %92 = add i64 %66, 1
  br label %65

93:                                               ; preds = %65
  %94 = add i64 %62, 1
  br label %61

95:                                               ; preds = %61
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %55
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
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %21 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_4x3xf64, i64 0, i64 4, i64 3, i64 3, i64 1, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_3x2xf64, i64 0, i64 3, i64 2, i64 2, i64 1, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20)
  ret i64 1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
