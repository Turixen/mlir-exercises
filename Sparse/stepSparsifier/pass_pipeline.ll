; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_4x3xf64 = private constant [4 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 3.000000e+00], [3 x double] [double 0.000000e+00, double 2.000000e+00, double 4.000000e+00], [3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 5.000000e+00]], align 64
@__constant_3x2xf64 = private constant [3 x [2 x double]] [[2 x double] [double 1.000000e+00, double 4.000000e+00], [2 x double] zeroinitializer, [2 x double] [double 0.000000e+00, double 6.000000e+00]], align 64

declare void @free(ptr)

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29) {
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, ptr %1, 1
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %2, 2
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 %3, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 %4, 4, 0
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, ptr %6, 1
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, i64 %7, 2
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 %8, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %9, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, ptr %11, 1
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 %12, 2
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 %13, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %14, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %47 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, ptr %17, 1
  %48 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %47, i64 %18, 2
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, i64 %19, 3, 0
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, i64 %21, 4, 0
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, i64 %20, 3, 1
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, i64 %22, 4, 1
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %23, 0
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, ptr %24, 1
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 %25, 2
  %56 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, i64 %26, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, i64 %28, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, i64 %27, 3, 1
  %59 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %58, i64 %29, 4, 1
  br label %60

60:                                               ; preds = %97, %30
  %61 = phi i64 [ %98, %97 ], [ 0, %30 ]
  %62 = icmp slt i64 %61, 3
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = getelementptr i64, ptr %1, i64 %61
  %65 = load i64, ptr %64, align 4
  %66 = add i64 %61, 1
  %67 = getelementptr i64, ptr %1, i64 %66
  %68 = load i64, ptr %67, align 4
  br label %69

69:                                               ; preds = %95, %63
  %70 = phi i64 [ %96, %95 ], [ %65, %63 ]
  %71 = icmp slt i64 %70, %68
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = getelementptr i64, ptr %6, i64 %70
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr double, ptr %11, i64 %70
  %76 = load double, ptr %75, align 8
  br label %77

77:                                               ; preds = %80, %72
  %78 = phi i64 [ %94, %80 ], [ 0, %72 ]
  %79 = icmp slt i64 %78, 2
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = mul i64 %74, 2
  %82 = add i64 %81, %78
  %83 = getelementptr double, ptr %24, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = mul i64 %61, 2
  %86 = add i64 %85, %78
  %87 = getelementptr double, ptr %17, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = fmul double %76, %88
  %90 = fadd double %84, %89
  %91 = mul i64 %74, 2
  %92 = add i64 %91, %78
  %93 = getelementptr double, ptr %24, i64 %92
  store double %90, ptr %93, align 8
  %94 = add i64 %78, 1
  br label %77

95:                                               ; preds = %77
  %96 = add i64 %70, 1
  br label %69

97:                                               ; preds = %69
  %98 = add i64 %61, 1
  br label %60

99:                                               ; preds = %60
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %59
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, i64 %16, i64 %17, double %18) {
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, ptr %1, 1
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %2, 2
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %3, 3, 0
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 %4, 4, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, ptr %6, 1
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %7, 2
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, i64 %8, 3, 0
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, i64 %9, 4, 0
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, ptr %11, 1
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 %12, 2
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %13, 3, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 %14, 4, 0
  %35 = extractvalue { [2 x i64], [3 x i64] } %15, 1, 1
  %36 = udiv i64 %35, 2
  %37 = add i64 %36, 1
  %38 = getelementptr i64, ptr %1, i32 1
  store i64 %37, ptr %38, align 4
  %39 = extractvalue { [2 x i64], [3 x i64] } %15, 1, 1
  %40 = add i64 %39, 1
  %41 = icmp ugt i64 %40, %8
  br i1 %41, label %42, label %65

42:                                               ; preds = %19
  %43 = mul i64 %8, 2
  %44 = icmp ult i64 %8, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = getelementptr i64, ptr null, i64 %43
  %47 = ptrtoint ptr %46 to i64
  %48 = call ptr @malloc(i64 %47)
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %48, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, ptr %48, 1
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 0, 2
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %43, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 1, 4, 0
  %54 = mul i64 %8, 1
  %55 = mul i64 %54, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %56 = getelementptr i64, ptr %6, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr %48, ptr %56, i64 %55, i1 false)
  call void @free(ptr %5)
  br label %63

57:                                               ; preds = %42
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %6, 1
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 0, 2
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 %43, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 1, 4, 0
  br label %63

63:                                               ; preds = %45, %57
  %64 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %62, %57 ], [ %53, %45 ]
  br label %65

65:                                               ; preds = %63, %19
  %66 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %64, %63 ], [ %29, %19 ]
  br label %67

67:                                               ; preds = %65
  %68 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %66, %65 ]
  br label %69

69:                                               ; preds = %67
  %70 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %71 = getelementptr i64, ptr %70, i64 %39
  store i64 %16, ptr %71, align 4
  %72 = insertvalue { [2 x i64], [3 x i64] } %15, i64 %40, 1, 1
  %73 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 3, 0
  %74 = add i64 %39, 2
  %75 = icmp ugt i64 %74, %73
  br i1 %75, label %76, label %106

76:                                               ; preds = %69
  %77 = mul i64 %73, 2
  %78 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 3, 0
  %79 = icmp ult i64 %78, %77
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = getelementptr i64, ptr null, i64 %77
  %82 = ptrtoint ptr %81 to i64
  %83 = call ptr @malloc(i64 %82)
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %83, 0
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, ptr %83, 1
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 0, 2
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, i64 %77, 3, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 1, 4, 0
  %89 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 3, 0
  %90 = mul i64 %89, 1
  %91 = mul i64 %90, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %92 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 2
  %94 = getelementptr i64, ptr %92, i64 %93
  call void @llvm.memcpy.p0.p0.i64(ptr %83, ptr %94, i64 %91, i1 false)
  %95 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  call void @free(ptr %95)
  br label %104

96:                                               ; preds = %76
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  %98 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %97, 0
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %99, ptr %98, 1
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, i64 0, 2
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, i64 %77, 3, 0
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 1, 4, 0
  br label %104

104:                                              ; preds = %80, %96
  %105 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %103, %96 ], [ %88, %80 ]
  br label %106

106:                                              ; preds = %104, %69
  %107 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %105, %104 ], [ %68, %69 ]
  br label %108

108:                                              ; preds = %106
  %109 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %107, %106 ]
  br label %110

110:                                              ; preds = %108
  %111 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, 1
  %112 = getelementptr i64, ptr %111, i64 %40
  store i64 %17, ptr %112, align 4
  %113 = insertvalue { [2 x i64], [3 x i64] } %72, i64 %74, 1, 1
  %114 = extractvalue { [2 x i64], [3 x i64] } %15, 1, 2
  %115 = add i64 %114, 1
  %116 = icmp ugt i64 %115, %13
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = mul i64 %13, 2
  %119 = icmp ult i64 %13, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = getelementptr double, ptr null, i64 %118
  %122 = ptrtoint ptr %121 to i64
  %123 = call ptr @malloc(i64 %122)
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %123, 0
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, ptr %123, 1
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 0, 2
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 %118, 3, 0
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 1, 4, 0
  %129 = mul i64 %13, 1
  %130 = mul i64 %129, ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)
  %131 = getelementptr double, ptr %11, i64 %12
  call void @llvm.memcpy.p0.p0.i64(ptr %123, ptr %131, i64 %130, i1 false)
  call void @free(ptr %10)
  br label %138

132:                                              ; preds = %117
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, ptr %11, 1
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 0, 2
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 %118, 3, 0
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, i64 1, 4, 0
  br label %138

138:                                              ; preds = %120, %132
  %139 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %137, %132 ], [ %128, %120 ]
  br label %140

140:                                              ; preds = %138, %110
  %141 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %139, %138 ], [ %34, %110 ]
  br label %142

142:                                              ; preds = %140
  %143 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %141, %140 ]
  br label %144

144:                                              ; preds = %142
  %145 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, 1
  %146 = getelementptr double, ptr %145, i64 %114
  store double %18, ptr %146, align 8
  %147 = insertvalue { [2 x i64], [3 x i64] } %113, i64 %115, 1, 2
  %148 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 0
  %149 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %148, { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, 1
  %150 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %149, { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, 2
  %151 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %150, { [2 x i64], [3 x i64] } %147, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %151
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @_insert_dense_compressed_3_4_f64_0_0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, i64 %16, i64 %17, double %18) {
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, ptr %1, 1
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %2, 2
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %3, 3, 0
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 %4, 4, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, ptr %6, 1
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %7, 2
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, i64 %8, 3, 0
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, i64 %9, 4, 0
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, ptr %11, 1
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 %12, 2
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %13, 3, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 %14, 4, 0
  %35 = add i64 %16, 1
  %36 = getelementptr i64, ptr %1, i64 %16
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr i64, ptr %1, i64 %35
  %39 = load i64, ptr %38, align 4
  %40 = extractvalue { [2 x i64], [3 x i64] } %15, 1, 1
  %41 = sub i64 %39, 1
  %42 = icmp ult i64 %37, %39
  br i1 %42, label %43, label %47

43:                                               ; preds = %19
  %44 = getelementptr i64, ptr %6, i64 %41
  %45 = load i64, ptr %44, align 4
  %46 = icmp eq i64 %45, %17
  br label %49

47:                                               ; preds = %19
  %48 = getelementptr i64, ptr %1, i64 %16
  store i64 %40, ptr %48, align 4
  br label %49

49:                                               ; preds = %43, %47
  %50 = phi i1 [ false, %47 ], [ %46, %43 ]
  br label %51

51:                                               ; preds = %49
  br i1 %50, label %52, label %53

52:                                               ; preds = %51
  br label %90

53:                                               ; preds = %51
  %54 = add i64 %40, 1
  %55 = getelementptr i64, ptr %1, i64 %35
  store i64 %54, ptr %55, align 4
  %56 = extractvalue { [2 x i64], [3 x i64] } %15, 1, 1
  %57 = add i64 %56, 1
  %58 = icmp ugt i64 %57, %8
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = mul i64 %8, 2
  %61 = icmp ult i64 %8, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = getelementptr i64, ptr null, i64 %60
  %64 = ptrtoint ptr %63 to i64
  %65 = call ptr @malloc(i64 %64)
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %65, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, ptr %65, 1
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 0, 2
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, i64 %60, 3, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 1, 4, 0
  %71 = mul i64 %8, 1
  %72 = mul i64 %71, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %73 = getelementptr i64, ptr %6, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr %65, ptr %73, i64 %72, i1 false)
  call void @free(ptr %5)
  br label %80

74:                                               ; preds = %59
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, ptr %6, 1
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 0, 2
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 %60, 3, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 1, 4, 0
  br label %80

80:                                               ; preds = %62, %74
  %81 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %79, %74 ], [ %70, %62 ]
  br label %82

82:                                               ; preds = %80, %53
  %83 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %81, %80 ], [ %29, %53 ]
  br label %84

84:                                               ; preds = %82
  %85 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %83, %82 ]
  br label %86

86:                                               ; preds = %84
  %87 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, 1
  %88 = getelementptr i64, ptr %87, i64 %56
  store i64 %17, ptr %88, align 4
  %89 = insertvalue { [2 x i64], [3 x i64] } %15, i64 %57, 1, 1
  br label %90

90:                                               ; preds = %52, %86
  %91 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %85, %86 ], [ %29, %52 ]
  %92 = phi { [2 x i64], [3 x i64] } [ %89, %86 ], [ %15, %52 ]
  br label %93

93:                                               ; preds = %90
  %94 = extractvalue { [2 x i64], [3 x i64] } %92, 1, 2
  %95 = add i64 %94, 1
  %96 = icmp ugt i64 %95, %13
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = mul i64 %13, 2
  %99 = icmp ult i64 %13, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = getelementptr double, ptr null, i64 %98
  %102 = ptrtoint ptr %101 to i64
  %103 = call ptr @malloc(i64 %102)
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %103, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, ptr %103, 1
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 0, 2
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 %98, 3, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 1, 4, 0
  %109 = mul i64 %13, 1
  %110 = mul i64 %109, ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)
  %111 = getelementptr double, ptr %11, i64 %12
  call void @llvm.memcpy.p0.p0.i64(ptr %103, ptr %111, i64 %110, i1 false)
  call void @free(ptr %10)
  br label %118

112:                                              ; preds = %97
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, ptr %11, 1
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 0, 2
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 %98, 3, 0
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 1, 4, 0
  br label %118

118:                                              ; preds = %100, %112
  %119 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %117, %112 ], [ %108, %100 ]
  br label %120

120:                                              ; preds = %118, %93
  %121 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %119, %118 ], [ %34, %93 ]
  br label %122

122:                                              ; preds = %120
  %123 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %121, %120 ]
  br label %124

124:                                              ; preds = %122
  %125 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, 1
  %126 = getelementptr double, ptr %125, i64 %94
  store double %18, ptr %126, align 8
  %127 = insertvalue { [2 x i64], [3 x i64] } %92, i64 %95, 1, 2
  %128 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 0
  %129 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %128, { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, 1
  %130 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %129, { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, 2
  %131 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %130, { [2 x i64], [3 x i64] } %127, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %131
}

define i64 @_sparse_binary_search_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, ptr %3, 1
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0
  br label %18

18:                                               ; preds = %47, %12
  %19 = phi i64 [ %48, %47 ], [ %0, %12 ]
  %20 = phi i64 [ %49, %47 ], [ %1, %12 ]
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = phi i64 [ %19, %18 ]
  %24 = phi i64 [ %20, %18 ]
  %25 = add i64 %23, %24
  %26 = lshr i64 %25, 1
  %27 = add i64 %26, 1
  %28 = mul i64 %1, 2
  %29 = mul i64 %26, 2
  %30 = getelementptr i64, ptr %3, i64 %28
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr i64, ptr %3, i64 %29
  %33 = load i64, ptr %32, align 4
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = icmp ult i64 %31, %33
  br label %45

37:                                               ; preds = %22
  %38 = add i64 %28, 1
  %39 = add i64 %29, 1
  %40 = getelementptr i64, ptr %3, i64 %38
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr i64, ptr %3, i64 %39
  %43 = load i64, ptr %42, align 4
  %44 = icmp ult i64 %41, %43
  br label %45

45:                                               ; preds = %35, %37
  %46 = phi i1 [ %44, %37 ], [ %36, %35 ]
  br label %47

47:                                               ; preds = %45
  %48 = select i1 %46, i64 %23, i64 %27
  %49 = select i1 %46, i64 %26, i64 %24
  br label %18

50:                                               ; preds = %18
  ret i64 %19
}

define void @_sparse_sort_stable_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, ptr %3, 1
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, ptr %8, 1
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 %9, 2
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %10, 3, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %11, 4, 0
  %23 = add i64 %0, 1
  br label %24

24:                                               ; preds = %58, %12
  %25 = phi i64 [ %64, %58 ], [ %23, %12 ]
  %26 = icmp slt i64 %25, %1
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  %28 = call i64 @_sparse_binary_search_0_1_index_coo_0_f64(i64 %0, i64 %25, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11)
  %29 = mul i64 %25, 2
  %30 = getelementptr i64, ptr %3, i64 %29
  %31 = load i64, ptr %30, align 4
  %32 = add i64 %29, 1
  %33 = getelementptr i64, ptr %3, i64 %32
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr double, ptr %8, i64 %25
  %36 = load double, ptr %35, align 8
  %37 = sub i64 %25, %28
  br label %38

38:                                               ; preds = %41, %27
  %39 = phi i64 [ %57, %41 ], [ 0, %27 ]
  %40 = icmp slt i64 %39, %37
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = sub i64 %25, %39
  %43 = sub i64 %42, 1
  %44 = mul i64 %43, 2
  %45 = mul i64 %42, 2
  %46 = getelementptr i64, ptr %3, i64 %44
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr i64, ptr %3, i64 %45
  store i64 %47, ptr %48, align 4
  %49 = add i64 %44, 1
  %50 = add i64 %45, 1
  %51 = getelementptr i64, ptr %3, i64 %49
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr i64, ptr %3, i64 %50
  store i64 %52, ptr %53, align 4
  %54 = getelementptr double, ptr %8, i64 %43
  %55 = load double, ptr %54, align 8
  %56 = getelementptr double, ptr %8, i64 %42
  store double %55, ptr %56, align 8
  %57 = add i64 %39, 1
  br label %38

58:                                               ; preds = %38
  %59 = mul i64 %28, 2
  %60 = getelementptr i64, ptr %3, i64 %59
  store i64 %31, ptr %60, align 4
  %61 = add i64 %59, 1
  %62 = getelementptr i64, ptr %3, i64 %61
  store i64 %34, ptr %62, align 4
  %63 = getelementptr double, ptr %8, i64 %28
  store double %36, ptr %63, align 8
  %64 = add i64 %25, 1
  br label %24

65:                                               ; preds = %24
  ret void
}

define void @_sparse_shift_down_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12) {
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, ptr %3, 1
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %4, 2
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %5, 3, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, i64 %6, 4, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, ptr %8, 1
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %9, 2
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %10, 3, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %11, 4, 0
  %24 = icmp uge i64 %12, 2
  br i1 %24, label %25, label %159

25:                                               ; preds = %13
  %26 = sub i64 %1, %0
  %27 = sub i64 %12, 2
  %28 = lshr i64 %27, 1
  %29 = icmp uge i64 %28, %26
  br i1 %29, label %30, label %158

30:                                               ; preds = %25
  %31 = shl i64 %26, 1
  %32 = add i64 %31, 1
  %33 = add i64 %32, %0
  %34 = add i64 %31, 2
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = add i64 %34, %0
  %38 = mul i64 %33, 2
  %39 = mul i64 %37, 2
  %40 = getelementptr i64, ptr %3, i64 %38
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr i64, ptr %3, i64 %39
  %43 = load i64, ptr %42, align 4
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = icmp ult i64 %41, %43
  br label %55

47:                                               ; preds = %36
  %48 = add i64 %38, 1
  %49 = add i64 %39, 1
  %50 = getelementptr i64, ptr %3, i64 %48
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr i64, ptr %3, i64 %49
  %53 = load i64, ptr %52, align 4
  %54 = icmp ult i64 %51, %53
  br label %55

55:                                               ; preds = %45, %47
  %56 = phi i1 [ %54, %47 ], [ %46, %45 ]
  br label %57

57:                                               ; preds = %55
  %58 = select i1 %56, i64 %34, i64 %32
  %59 = select i1 %56, i64 %37, i64 %33
  br label %61

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %154, %57, %60
  %62 = phi i64 [ %155, %154 ], [ %32, %60 ], [ %58, %57 ]
  %63 = phi i64 [ %156, %154 ], [ %33, %60 ], [ %59, %57 ]
  %64 = phi i64 [ %96, %154 ], [ %1, %60 ], [ %1, %57 ]
  br label %65

65:                                               ; preds = %61
  %66 = phi i64 [ %64, %61 ]
  %67 = phi i64 [ %62, %61 ]
  %68 = phi i64 [ %63, %61 ]
  br label %69

69:                                               ; preds = %65
  %70 = phi i64 [ %66, %65 ]
  %71 = phi i64 [ %67, %65 ]
  %72 = phi i64 [ %68, %65 ]
  %73 = mul i64 %70, 2
  %74 = mul i64 %72, 2
  %75 = getelementptr i64, ptr %3, i64 %73
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr i64, ptr %3, i64 %74
  %78 = load i64, ptr %77, align 4
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = icmp ult i64 %76, %78
  br label %90

82:                                               ; preds = %69
  %83 = add i64 %73, 1
  %84 = add i64 %74, 1
  %85 = getelementptr i64, ptr %3, i64 %83
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr i64, ptr %3, i64 %84
  %88 = load i64, ptr %87, align 4
  %89 = icmp ult i64 %86, %88
  br label %90

90:                                               ; preds = %80, %82
  %91 = phi i1 [ %89, %82 ], [ %81, %80 ]
  br label %92

92:                                               ; preds = %90
  br i1 %91, label %93, label %157

93:                                               ; preds = %92
  %94 = phi i64 [ %70, %92 ]
  %95 = phi i64 [ %71, %92 ]
  %96 = phi i64 [ %72, %92 ]
  %97 = mul i64 %94, 2
  %98 = mul i64 %96, 2
  %99 = getelementptr i64, ptr %3, i64 %97
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr i64, ptr %3, i64 %98
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr i64, ptr %3, i64 %97
  store i64 %102, ptr %103, align 4
  %104 = getelementptr i64, ptr %3, i64 %98
  store i64 %100, ptr %104, align 4
  %105 = add i64 %97, 1
  %106 = add i64 %98, 1
  %107 = getelementptr i64, ptr %3, i64 %105
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr i64, ptr %3, i64 %106
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr i64, ptr %3, i64 %105
  store i64 %110, ptr %111, align 4
  %112 = getelementptr i64, ptr %3, i64 %106
  store i64 %108, ptr %112, align 4
  %113 = getelementptr double, ptr %8, i64 %94
  %114 = load double, ptr %113, align 8
  %115 = getelementptr double, ptr %8, i64 %96
  %116 = load double, ptr %115, align 8
  %117 = getelementptr double, ptr %8, i64 %94
  store double %116, ptr %117, align 8
  %118 = getelementptr double, ptr %8, i64 %96
  store double %114, ptr %118, align 8
  %119 = icmp uge i64 %28, %95
  br i1 %119, label %120, label %154

120:                                              ; preds = %93
  %121 = shl i64 %95, 1
  %122 = add i64 %121, 1
  %123 = add i64 %122, %0
  %124 = add i64 %121, 2
  %125 = icmp ult i64 %124, %12
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = add i64 %124, %0
  %128 = mul i64 %123, 2
  %129 = mul i64 %127, 2
  %130 = getelementptr i64, ptr %3, i64 %128
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr i64, ptr %3, i64 %129
  %133 = load i64, ptr %132, align 4
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = icmp ult i64 %131, %133
  br label %145

137:                                              ; preds = %126
  %138 = add i64 %128, 1
  %139 = add i64 %129, 1
  %140 = getelementptr i64, ptr %3, i64 %138
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr i64, ptr %3, i64 %139
  %143 = load i64, ptr %142, align 4
  %144 = icmp ult i64 %141, %143
  br label %145

145:                                              ; preds = %135, %137
  %146 = phi i1 [ %144, %137 ], [ %136, %135 ]
  br label %147

147:                                              ; preds = %145
  %148 = select i1 %146, i64 %124, i64 %122
  %149 = select i1 %146, i64 %127, i64 %123
  br label %151

150:                                              ; preds = %120
  br label %151

151:                                              ; preds = %147, %150
  %152 = phi i64 [ %122, %150 ], [ %148, %147 ]
  %153 = phi i64 [ %123, %150 ], [ %149, %147 ]
  br label %154

154:                                              ; preds = %151, %93
  %155 = phi i64 [ %152, %151 ], [ %95, %93 ]
  %156 = phi i64 [ %153, %151 ], [ %96, %93 ]
  br label %61

157:                                              ; preds = %92
  br label %158

158:                                              ; preds = %157, %25
  br label %159

159:                                              ; preds = %158, %13
  ret void
}

define void @_sparse_heap_sort_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, ptr %3, 1
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, ptr %8, 1
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 %9, 2
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %10, 3, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %11, 4, 0
  %23 = sub i64 %1, %0
  %24 = sub i64 %23, 2
  %25 = lshr i64 %24, 1
  %26 = add i64 %25, 1
  br label %27

27:                                               ; preds = %30, %12
  %28 = phi i64 [ %33, %30 ], [ 0, %12 ]
  %29 = icmp slt i64 %28, %26
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = sub i64 %25, %28
  %32 = add i64 %0, %31
  call void @_sparse_shift_down_0_1_index_coo_0_f64(i64 %0, i64 %32, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %23)
  %33 = add i64 %28, 1
  br label %27

34:                                               ; preds = %27
  %35 = sub i64 %23, 1
  br label %36

36:                                               ; preds = %39, %34
  %37 = phi i64 [ %66, %39 ], [ 0, %34 ]
  %38 = icmp slt i64 %37, %35
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = sub i64 %23, %37
  %41 = add i64 %0, %40
  %42 = sub i64 %41, 1
  %43 = mul i64 %0, 2
  %44 = mul i64 %42, 2
  %45 = getelementptr i64, ptr %3, i64 %43
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr i64, ptr %3, i64 %44
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr i64, ptr %3, i64 %43
  store i64 %48, ptr %49, align 4
  %50 = getelementptr i64, ptr %3, i64 %44
  store i64 %46, ptr %50, align 4
  %51 = add i64 %43, 1
  %52 = add i64 %44, 1
  %53 = getelementptr i64, ptr %3, i64 %51
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr i64, ptr %3, i64 %52
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr i64, ptr %3, i64 %51
  store i64 %56, ptr %57, align 4
  %58 = getelementptr i64, ptr %3, i64 %52
  store i64 %54, ptr %58, align 4
  %59 = getelementptr double, ptr %8, i64 %0
  %60 = load double, ptr %59, align 8
  %61 = getelementptr double, ptr %8, i64 %42
  %62 = load double, ptr %61, align 8
  %63 = getelementptr double, ptr %8, i64 %0
  store double %62, ptr %63, align 8
  %64 = getelementptr double, ptr %8, i64 %42
  store double %60, ptr %64, align 8
  %65 = sub i64 %40, 1
  call void @_sparse_shift_down_0_1_index_coo_0_f64(i64 %0, i64 %0, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %65)
  %66 = add i64 %37, 1
  br label %36

67:                                               ; preds = %36
  ret void
}

define i64 @_sparse_partition_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, ptr %3, 1
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, ptr %8, 1
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 %9, 2
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %10, 3, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %11, 4, 0
  %23 = add i64 %0, %1
  %24 = lshr i64 %23, 1
  %25 = sub i64 %1, 1
  %26 = sub i64 %1, %0
  %27 = icmp ult i64 %26, 1000
  br i1 %27, label %28, label %161

28:                                               ; preds = %12
  %29 = mul i64 %24, 2
  %30 = mul i64 %0, 2
  %31 = getelementptr i64, ptr %3, i64 %29
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr i64, ptr %3, i64 %30
  %34 = load i64, ptr %33, align 4
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = icmp ult i64 %32, %34
  br label %46

38:                                               ; preds = %28
  %39 = add i64 %29, 1
  %40 = add i64 %30, 1
  %41 = getelementptr i64, ptr %3, i64 %39
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr i64, ptr %3, i64 %40
  %44 = load i64, ptr %43, align 4
  %45 = icmp ult i64 %42, %44
  br label %46

46:                                               ; preds = %36, %38
  %47 = phi i1 [ %45, %38 ], [ %37, %36 ]
  br label %48

48:                                               ; preds = %46
  br i1 %47, label %49, label %72

49:                                               ; preds = %48
  %50 = mul i64 %24, 2
  %51 = mul i64 %0, 2
  %52 = getelementptr i64, ptr %3, i64 %50
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr i64, ptr %3, i64 %51
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr i64, ptr %3, i64 %50
  store i64 %55, ptr %56, align 4
  %57 = getelementptr i64, ptr %3, i64 %51
  store i64 %53, ptr %57, align 4
  %58 = add i64 %50, 1
  %59 = add i64 %51, 1
  %60 = getelementptr i64, ptr %3, i64 %58
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr i64, ptr %3, i64 %59
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr i64, ptr %3, i64 %58
  store i64 %63, ptr %64, align 4
  %65 = getelementptr i64, ptr %3, i64 %59
  store i64 %61, ptr %65, align 4
  %66 = getelementptr double, ptr %8, i64 %24
  %67 = load double, ptr %66, align 8
  %68 = getelementptr double, ptr %8, i64 %0
  %69 = load double, ptr %68, align 8
  %70 = getelementptr double, ptr %8, i64 %24
  store double %69, ptr %70, align 8
  %71 = getelementptr double, ptr %8, i64 %0
  store double %67, ptr %71, align 8
  br label %72

72:                                               ; preds = %49, %48
  %73 = mul i64 %25, 2
  %74 = mul i64 %24, 2
  %75 = getelementptr i64, ptr %3, i64 %73
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr i64, ptr %3, i64 %74
  %78 = load i64, ptr %77, align 4
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = icmp ult i64 %76, %78
  br label %90

82:                                               ; preds = %72
  %83 = add i64 %73, 1
  %84 = add i64 %74, 1
  %85 = getelementptr i64, ptr %3, i64 %83
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr i64, ptr %3, i64 %84
  %88 = load i64, ptr %87, align 4
  %89 = icmp ult i64 %86, %88
  br label %90

90:                                               ; preds = %80, %82
  %91 = phi i1 [ %89, %82 ], [ %81, %80 ]
  br label %92

92:                                               ; preds = %90
  br i1 %91, label %93, label %160

93:                                               ; preds = %92
  %94 = mul i64 %25, 2
  %95 = mul i64 %24, 2
  %96 = getelementptr i64, ptr %3, i64 %94
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr i64, ptr %3, i64 %95
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr i64, ptr %3, i64 %94
  store i64 %99, ptr %100, align 4
  %101 = getelementptr i64, ptr %3, i64 %95
  store i64 %97, ptr %101, align 4
  %102 = add i64 %94, 1
  %103 = add i64 %95, 1
  %104 = getelementptr i64, ptr %3, i64 %102
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr i64, ptr %3, i64 %103
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr i64, ptr %3, i64 %102
  store i64 %107, ptr %108, align 4
  %109 = getelementptr i64, ptr %3, i64 %103
  store i64 %105, ptr %109, align 4
  %110 = getelementptr double, ptr %8, i64 %25
  %111 = load double, ptr %110, align 8
  %112 = getelementptr double, ptr %8, i64 %24
  %113 = load double, ptr %112, align 8
  %114 = getelementptr double, ptr %8, i64 %25
  store double %113, ptr %114, align 8
  %115 = getelementptr double, ptr %8, i64 %24
  store double %111, ptr %115, align 8
  %116 = mul i64 %24, 2
  %117 = mul i64 %0, 2
  %118 = getelementptr i64, ptr %3, i64 %116
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr i64, ptr %3, i64 %117
  %121 = load i64, ptr %120, align 4
  %122 = icmp ne i64 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %93
  %124 = icmp ult i64 %119, %121
  br label %133

125:                                              ; preds = %93
  %126 = add i64 %116, 1
  %127 = add i64 %117, 1
  %128 = getelementptr i64, ptr %3, i64 %126
  %129 = load i64, ptr %128, align 4
  %130 = getelementptr i64, ptr %3, i64 %127
  %131 = load i64, ptr %130, align 4
  %132 = icmp ult i64 %129, %131
  br label %133

133:                                              ; preds = %123, %125
  %134 = phi i1 [ %132, %125 ], [ %124, %123 ]
  br label %135

135:                                              ; preds = %133
  br i1 %134, label %136, label %159

136:                                              ; preds = %135
  %137 = mul i64 %24, 2
  %138 = mul i64 %0, 2
  %139 = getelementptr i64, ptr %3, i64 %137
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr i64, ptr %3, i64 %138
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr i64, ptr %3, i64 %137
  store i64 %142, ptr %143, align 4
  %144 = getelementptr i64, ptr %3, i64 %138
  store i64 %140, ptr %144, align 4
  %145 = add i64 %137, 1
  %146 = add i64 %138, 1
  %147 = getelementptr i64, ptr %3, i64 %145
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr i64, ptr %3, i64 %146
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr i64, ptr %3, i64 %145
  store i64 %150, ptr %151, align 4
  %152 = getelementptr i64, ptr %3, i64 %146
  store i64 %148, ptr %152, align 4
  %153 = getelementptr double, ptr %8, i64 %24
  %154 = load double, ptr %153, align 8
  %155 = getelementptr double, ptr %8, i64 %0
  %156 = load double, ptr %155, align 8
  %157 = getelementptr double, ptr %8, i64 %24
  store double %156, ptr %157, align 8
  %158 = getelementptr double, ptr %8, i64 %0
  store double %154, ptr %158, align 8
  br label %159

159:                                              ; preds = %136, %135, %603, %492
  br label %160

160:                                              ; preds = %159, %92, %449
  br label %604

161:                                              ; preds = %12
  %162 = add i64 %0, %1
  %163 = lshr i64 %162, 1
  %164 = add i64 %24, %1
  %165 = lshr i64 %164, 1
  %166 = mul i64 %163, 2
  %167 = mul i64 %0, 2
  %168 = getelementptr i64, ptr %3, i64 %166
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr i64, ptr %3, i64 %167
  %171 = load i64, ptr %170, align 4
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %161
  %174 = icmp ult i64 %169, %171
  br label %183

175:                                              ; preds = %161
  %176 = add i64 %166, 1
  %177 = add i64 %167, 1
  %178 = getelementptr i64, ptr %3, i64 %176
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr i64, ptr %3, i64 %177
  %181 = load i64, ptr %180, align 4
  %182 = icmp ult i64 %179, %181
  br label %183

183:                                              ; preds = %173, %175
  %184 = phi i1 [ %182, %175 ], [ %174, %173 ]
  br label %185

185:                                              ; preds = %183
  br i1 %184, label %186, label %209

186:                                              ; preds = %185
  %187 = mul i64 %163, 2
  %188 = mul i64 %0, 2
  %189 = getelementptr i64, ptr %3, i64 %187
  %190 = load i64, ptr %189, align 4
  %191 = getelementptr i64, ptr %3, i64 %188
  %192 = load i64, ptr %191, align 4
  %193 = getelementptr i64, ptr %3, i64 %187
  store i64 %192, ptr %193, align 4
  %194 = getelementptr i64, ptr %3, i64 %188
  store i64 %190, ptr %194, align 4
  %195 = add i64 %187, 1
  %196 = add i64 %188, 1
  %197 = getelementptr i64, ptr %3, i64 %195
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr i64, ptr %3, i64 %196
  %200 = load i64, ptr %199, align 4
  %201 = getelementptr i64, ptr %3, i64 %195
  store i64 %200, ptr %201, align 4
  %202 = getelementptr i64, ptr %3, i64 %196
  store i64 %198, ptr %202, align 4
  %203 = getelementptr double, ptr %8, i64 %163
  %204 = load double, ptr %203, align 8
  %205 = getelementptr double, ptr %8, i64 %0
  %206 = load double, ptr %205, align 8
  %207 = getelementptr double, ptr %8, i64 %163
  store double %206, ptr %207, align 8
  %208 = getelementptr double, ptr %8, i64 %0
  store double %204, ptr %208, align 8
  br label %209

209:                                              ; preds = %186, %185
  %210 = mul i64 %24, 2
  %211 = mul i64 %163, 2
  %212 = getelementptr i64, ptr %3, i64 %210
  %213 = load i64, ptr %212, align 4
  %214 = getelementptr i64, ptr %3, i64 %211
  %215 = load i64, ptr %214, align 4
  %216 = icmp ne i64 %213, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = icmp ult i64 %213, %215
  br label %227

219:                                              ; preds = %209
  %220 = add i64 %210, 1
  %221 = add i64 %211, 1
  %222 = getelementptr i64, ptr %3, i64 %220
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr i64, ptr %3, i64 %221
  %225 = load i64, ptr %224, align 4
  %226 = icmp ult i64 %223, %225
  br label %227

227:                                              ; preds = %217, %219
  %228 = phi i1 [ %226, %219 ], [ %218, %217 ]
  br label %229

229:                                              ; preds = %227
  br i1 %228, label %230, label %297

230:                                              ; preds = %229
  %231 = mul i64 %24, 2
  %232 = mul i64 %163, 2
  %233 = getelementptr i64, ptr %3, i64 %231
  %234 = load i64, ptr %233, align 4
  %235 = getelementptr i64, ptr %3, i64 %232
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr i64, ptr %3, i64 %231
  store i64 %236, ptr %237, align 4
  %238 = getelementptr i64, ptr %3, i64 %232
  store i64 %234, ptr %238, align 4
  %239 = add i64 %231, 1
  %240 = add i64 %232, 1
  %241 = getelementptr i64, ptr %3, i64 %239
  %242 = load i64, ptr %241, align 4
  %243 = getelementptr i64, ptr %3, i64 %240
  %244 = load i64, ptr %243, align 4
  %245 = getelementptr i64, ptr %3, i64 %239
  store i64 %244, ptr %245, align 4
  %246 = getelementptr i64, ptr %3, i64 %240
  store i64 %242, ptr %246, align 4
  %247 = getelementptr double, ptr %8, i64 %24
  %248 = load double, ptr %247, align 8
  %249 = getelementptr double, ptr %8, i64 %163
  %250 = load double, ptr %249, align 8
  %251 = getelementptr double, ptr %8, i64 %24
  store double %250, ptr %251, align 8
  %252 = getelementptr double, ptr %8, i64 %163
  store double %248, ptr %252, align 8
  %253 = mul i64 %163, 2
  %254 = mul i64 %0, 2
  %255 = getelementptr i64, ptr %3, i64 %253
  %256 = load i64, ptr %255, align 4
  %257 = getelementptr i64, ptr %3, i64 %254
  %258 = load i64, ptr %257, align 4
  %259 = icmp ne i64 %256, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %230
  %261 = icmp ult i64 %256, %258
  br label %270

262:                                              ; preds = %230
  %263 = add i64 %253, 1
  %264 = add i64 %254, 1
  %265 = getelementptr i64, ptr %3, i64 %263
  %266 = load i64, ptr %265, align 4
  %267 = getelementptr i64, ptr %3, i64 %264
  %268 = load i64, ptr %267, align 4
  %269 = icmp ult i64 %266, %268
  br label %270

270:                                              ; preds = %260, %262
  %271 = phi i1 [ %269, %262 ], [ %261, %260 ]
  br label %272

272:                                              ; preds = %270
  br i1 %271, label %273, label %296

273:                                              ; preds = %272
  %274 = mul i64 %163, 2
  %275 = mul i64 %0, 2
  %276 = getelementptr i64, ptr %3, i64 %274
  %277 = load i64, ptr %276, align 4
  %278 = getelementptr i64, ptr %3, i64 %275
  %279 = load i64, ptr %278, align 4
  %280 = getelementptr i64, ptr %3, i64 %274
  store i64 %279, ptr %280, align 4
  %281 = getelementptr i64, ptr %3, i64 %275
  store i64 %277, ptr %281, align 4
  %282 = add i64 %274, 1
  %283 = add i64 %275, 1
  %284 = getelementptr i64, ptr %3, i64 %282
  %285 = load i64, ptr %284, align 4
  %286 = getelementptr i64, ptr %3, i64 %283
  %287 = load i64, ptr %286, align 4
  %288 = getelementptr i64, ptr %3, i64 %282
  store i64 %287, ptr %288, align 4
  %289 = getelementptr i64, ptr %3, i64 %283
  store i64 %285, ptr %289, align 4
  %290 = getelementptr double, ptr %8, i64 %163
  %291 = load double, ptr %290, align 8
  %292 = getelementptr double, ptr %8, i64 %0
  %293 = load double, ptr %292, align 8
  %294 = getelementptr double, ptr %8, i64 %163
  store double %293, ptr %294, align 8
  %295 = getelementptr double, ptr %8, i64 %0
  store double %291, ptr %295, align 8
  br label %296

296:                                              ; preds = %273, %272
  br label %297

297:                                              ; preds = %296, %229
  %298 = mul i64 %165, 2
  %299 = mul i64 %24, 2
  %300 = getelementptr i64, ptr %3, i64 %298
  %301 = load i64, ptr %300, align 4
  %302 = getelementptr i64, ptr %3, i64 %299
  %303 = load i64, ptr %302, align 4
  %304 = icmp ne i64 %301, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %297
  %306 = icmp ult i64 %301, %303
  br label %315

307:                                              ; preds = %297
  %308 = add i64 %298, 1
  %309 = add i64 %299, 1
  %310 = getelementptr i64, ptr %3, i64 %308
  %311 = load i64, ptr %310, align 4
  %312 = getelementptr i64, ptr %3, i64 %309
  %313 = load i64, ptr %312, align 4
  %314 = icmp ult i64 %311, %313
  br label %315

315:                                              ; preds = %305, %307
  %316 = phi i1 [ %314, %307 ], [ %306, %305 ]
  br label %317

317:                                              ; preds = %315
  br i1 %316, label %318, label %429

318:                                              ; preds = %317
  %319 = mul i64 %165, 2
  %320 = mul i64 %24, 2
  %321 = getelementptr i64, ptr %3, i64 %319
  %322 = load i64, ptr %321, align 4
  %323 = getelementptr i64, ptr %3, i64 %320
  %324 = load i64, ptr %323, align 4
  %325 = getelementptr i64, ptr %3, i64 %319
  store i64 %324, ptr %325, align 4
  %326 = getelementptr i64, ptr %3, i64 %320
  store i64 %322, ptr %326, align 4
  %327 = add i64 %319, 1
  %328 = add i64 %320, 1
  %329 = getelementptr i64, ptr %3, i64 %327
  %330 = load i64, ptr %329, align 4
  %331 = getelementptr i64, ptr %3, i64 %328
  %332 = load i64, ptr %331, align 4
  %333 = getelementptr i64, ptr %3, i64 %327
  store i64 %332, ptr %333, align 4
  %334 = getelementptr i64, ptr %3, i64 %328
  store i64 %330, ptr %334, align 4
  %335 = getelementptr double, ptr %8, i64 %165
  %336 = load double, ptr %335, align 8
  %337 = getelementptr double, ptr %8, i64 %24
  %338 = load double, ptr %337, align 8
  %339 = getelementptr double, ptr %8, i64 %165
  store double %338, ptr %339, align 8
  %340 = getelementptr double, ptr %8, i64 %24
  store double %336, ptr %340, align 8
  %341 = mul i64 %24, 2
  %342 = mul i64 %163, 2
  %343 = getelementptr i64, ptr %3, i64 %341
  %344 = load i64, ptr %343, align 4
  %345 = getelementptr i64, ptr %3, i64 %342
  %346 = load i64, ptr %345, align 4
  %347 = icmp ne i64 %344, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %318
  %349 = icmp ult i64 %344, %346
  br label %358

350:                                              ; preds = %318
  %351 = add i64 %341, 1
  %352 = add i64 %342, 1
  %353 = getelementptr i64, ptr %3, i64 %351
  %354 = load i64, ptr %353, align 4
  %355 = getelementptr i64, ptr %3, i64 %352
  %356 = load i64, ptr %355, align 4
  %357 = icmp ult i64 %354, %356
  br label %358

358:                                              ; preds = %348, %350
  %359 = phi i1 [ %357, %350 ], [ %349, %348 ]
  br label %360

360:                                              ; preds = %358
  br i1 %359, label %361, label %428

361:                                              ; preds = %360
  %362 = mul i64 %24, 2
  %363 = mul i64 %163, 2
  %364 = getelementptr i64, ptr %3, i64 %362
  %365 = load i64, ptr %364, align 4
  %366 = getelementptr i64, ptr %3, i64 %363
  %367 = load i64, ptr %366, align 4
  %368 = getelementptr i64, ptr %3, i64 %362
  store i64 %367, ptr %368, align 4
  %369 = getelementptr i64, ptr %3, i64 %363
  store i64 %365, ptr %369, align 4
  %370 = add i64 %362, 1
  %371 = add i64 %363, 1
  %372 = getelementptr i64, ptr %3, i64 %370
  %373 = load i64, ptr %372, align 4
  %374 = getelementptr i64, ptr %3, i64 %371
  %375 = load i64, ptr %374, align 4
  %376 = getelementptr i64, ptr %3, i64 %370
  store i64 %375, ptr %376, align 4
  %377 = getelementptr i64, ptr %3, i64 %371
  store i64 %373, ptr %377, align 4
  %378 = getelementptr double, ptr %8, i64 %24
  %379 = load double, ptr %378, align 8
  %380 = getelementptr double, ptr %8, i64 %163
  %381 = load double, ptr %380, align 8
  %382 = getelementptr double, ptr %8, i64 %24
  store double %381, ptr %382, align 8
  %383 = getelementptr double, ptr %8, i64 %163
  store double %379, ptr %383, align 8
  %384 = mul i64 %163, 2
  %385 = mul i64 %0, 2
  %386 = getelementptr i64, ptr %3, i64 %384
  %387 = load i64, ptr %386, align 4
  %388 = getelementptr i64, ptr %3, i64 %385
  %389 = load i64, ptr %388, align 4
  %390 = icmp ne i64 %387, %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %361
  %392 = icmp ult i64 %387, %389
  br label %401

393:                                              ; preds = %361
  %394 = add i64 %384, 1
  %395 = add i64 %385, 1
  %396 = getelementptr i64, ptr %3, i64 %394
  %397 = load i64, ptr %396, align 4
  %398 = getelementptr i64, ptr %3, i64 %395
  %399 = load i64, ptr %398, align 4
  %400 = icmp ult i64 %397, %399
  br label %401

401:                                              ; preds = %391, %393
  %402 = phi i1 [ %400, %393 ], [ %392, %391 ]
  br label %403

403:                                              ; preds = %401
  br i1 %402, label %404, label %427

404:                                              ; preds = %403
  %405 = mul i64 %163, 2
  %406 = mul i64 %0, 2
  %407 = getelementptr i64, ptr %3, i64 %405
  %408 = load i64, ptr %407, align 4
  %409 = getelementptr i64, ptr %3, i64 %406
  %410 = load i64, ptr %409, align 4
  %411 = getelementptr i64, ptr %3, i64 %405
  store i64 %410, ptr %411, align 4
  %412 = getelementptr i64, ptr %3, i64 %406
  store i64 %408, ptr %412, align 4
  %413 = add i64 %405, 1
  %414 = add i64 %406, 1
  %415 = getelementptr i64, ptr %3, i64 %413
  %416 = load i64, ptr %415, align 4
  %417 = getelementptr i64, ptr %3, i64 %414
  %418 = load i64, ptr %417, align 4
  %419 = getelementptr i64, ptr %3, i64 %413
  store i64 %418, ptr %419, align 4
  %420 = getelementptr i64, ptr %3, i64 %414
  store i64 %416, ptr %420, align 4
  %421 = getelementptr double, ptr %8, i64 %163
  %422 = load double, ptr %421, align 8
  %423 = getelementptr double, ptr %8, i64 %0
  %424 = load double, ptr %423, align 8
  %425 = getelementptr double, ptr %8, i64 %163
  store double %424, ptr %425, align 8
  %426 = getelementptr double, ptr %8, i64 %0
  store double %422, ptr %426, align 8
  br label %427

427:                                              ; preds = %404, %403
  br label %428

428:                                              ; preds = %427, %360
  br label %429

429:                                              ; preds = %428, %317
  %430 = mul i64 %25, 2
  %431 = mul i64 %165, 2
  %432 = getelementptr i64, ptr %3, i64 %430
  %433 = load i64, ptr %432, align 4
  %434 = getelementptr i64, ptr %3, i64 %431
  %435 = load i64, ptr %434, align 4
  %436 = icmp ne i64 %433, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %429
  %438 = icmp ult i64 %433, %435
  br label %447

439:                                              ; preds = %429
  %440 = add i64 %430, 1
  %441 = add i64 %431, 1
  %442 = getelementptr i64, ptr %3, i64 %440
  %443 = load i64, ptr %442, align 4
  %444 = getelementptr i64, ptr %3, i64 %441
  %445 = load i64, ptr %444, align 4
  %446 = icmp ult i64 %443, %445
  br label %447

447:                                              ; preds = %437, %439
  %448 = phi i1 [ %446, %439 ], [ %438, %437 ]
  br label %449

449:                                              ; preds = %447
  br i1 %448, label %450, label %160

450:                                              ; preds = %449
  %451 = mul i64 %25, 2
  %452 = mul i64 %165, 2
  %453 = getelementptr i64, ptr %3, i64 %451
  %454 = load i64, ptr %453, align 4
  %455 = getelementptr i64, ptr %3, i64 %452
  %456 = load i64, ptr %455, align 4
  %457 = getelementptr i64, ptr %3, i64 %451
  store i64 %456, ptr %457, align 4
  %458 = getelementptr i64, ptr %3, i64 %452
  store i64 %454, ptr %458, align 4
  %459 = add i64 %451, 1
  %460 = add i64 %452, 1
  %461 = getelementptr i64, ptr %3, i64 %459
  %462 = load i64, ptr %461, align 4
  %463 = getelementptr i64, ptr %3, i64 %460
  %464 = load i64, ptr %463, align 4
  %465 = getelementptr i64, ptr %3, i64 %459
  store i64 %464, ptr %465, align 4
  %466 = getelementptr i64, ptr %3, i64 %460
  store i64 %462, ptr %466, align 4
  %467 = getelementptr double, ptr %8, i64 %25
  %468 = load double, ptr %467, align 8
  %469 = getelementptr double, ptr %8, i64 %165
  %470 = load double, ptr %469, align 8
  %471 = getelementptr double, ptr %8, i64 %25
  store double %470, ptr %471, align 8
  %472 = getelementptr double, ptr %8, i64 %165
  store double %468, ptr %472, align 8
  %473 = mul i64 %165, 2
  %474 = mul i64 %24, 2
  %475 = getelementptr i64, ptr %3, i64 %473
  %476 = load i64, ptr %475, align 4
  %477 = getelementptr i64, ptr %3, i64 %474
  %478 = load i64, ptr %477, align 4
  %479 = icmp ne i64 %476, %478
  br i1 %479, label %480, label %482

480:                                              ; preds = %450
  %481 = icmp ult i64 %476, %478
  br label %490

482:                                              ; preds = %450
  %483 = add i64 %473, 1
  %484 = add i64 %474, 1
  %485 = getelementptr i64, ptr %3, i64 %483
  %486 = load i64, ptr %485, align 4
  %487 = getelementptr i64, ptr %3, i64 %484
  %488 = load i64, ptr %487, align 4
  %489 = icmp ult i64 %486, %488
  br label %490

490:                                              ; preds = %480, %482
  %491 = phi i1 [ %489, %482 ], [ %481, %480 ]
  br label %492

492:                                              ; preds = %490
  br i1 %491, label %493, label %159

493:                                              ; preds = %492
  %494 = mul i64 %165, 2
  %495 = mul i64 %24, 2
  %496 = getelementptr i64, ptr %3, i64 %494
  %497 = load i64, ptr %496, align 4
  %498 = getelementptr i64, ptr %3, i64 %495
  %499 = load i64, ptr %498, align 4
  %500 = getelementptr i64, ptr %3, i64 %494
  store i64 %499, ptr %500, align 4
  %501 = getelementptr i64, ptr %3, i64 %495
  store i64 %497, ptr %501, align 4
  %502 = add i64 %494, 1
  %503 = add i64 %495, 1
  %504 = getelementptr i64, ptr %3, i64 %502
  %505 = load i64, ptr %504, align 4
  %506 = getelementptr i64, ptr %3, i64 %503
  %507 = load i64, ptr %506, align 4
  %508 = getelementptr i64, ptr %3, i64 %502
  store i64 %507, ptr %508, align 4
  %509 = getelementptr i64, ptr %3, i64 %503
  store i64 %505, ptr %509, align 4
  %510 = getelementptr double, ptr %8, i64 %165
  %511 = load double, ptr %510, align 8
  %512 = getelementptr double, ptr %8, i64 %24
  %513 = load double, ptr %512, align 8
  %514 = getelementptr double, ptr %8, i64 %165
  store double %513, ptr %514, align 8
  %515 = getelementptr double, ptr %8, i64 %24
  store double %511, ptr %515, align 8
  %516 = mul i64 %24, 2
  %517 = mul i64 %163, 2
  %518 = getelementptr i64, ptr %3, i64 %516
  %519 = load i64, ptr %518, align 4
  %520 = getelementptr i64, ptr %3, i64 %517
  %521 = load i64, ptr %520, align 4
  %522 = icmp ne i64 %519, %521
  br i1 %522, label %523, label %525

523:                                              ; preds = %493
  %524 = icmp ult i64 %519, %521
  br label %533

525:                                              ; preds = %493
  %526 = add i64 %516, 1
  %527 = add i64 %517, 1
  %528 = getelementptr i64, ptr %3, i64 %526
  %529 = load i64, ptr %528, align 4
  %530 = getelementptr i64, ptr %3, i64 %527
  %531 = load i64, ptr %530, align 4
  %532 = icmp ult i64 %529, %531
  br label %533

533:                                              ; preds = %523, %525
  %534 = phi i1 [ %532, %525 ], [ %524, %523 ]
  br label %535

535:                                              ; preds = %533
  br i1 %534, label %536, label %603

536:                                              ; preds = %535
  %537 = mul i64 %24, 2
  %538 = mul i64 %163, 2
  %539 = getelementptr i64, ptr %3, i64 %537
  %540 = load i64, ptr %539, align 4
  %541 = getelementptr i64, ptr %3, i64 %538
  %542 = load i64, ptr %541, align 4
  %543 = getelementptr i64, ptr %3, i64 %537
  store i64 %542, ptr %543, align 4
  %544 = getelementptr i64, ptr %3, i64 %538
  store i64 %540, ptr %544, align 4
  %545 = add i64 %537, 1
  %546 = add i64 %538, 1
  %547 = getelementptr i64, ptr %3, i64 %545
  %548 = load i64, ptr %547, align 4
  %549 = getelementptr i64, ptr %3, i64 %546
  %550 = load i64, ptr %549, align 4
  %551 = getelementptr i64, ptr %3, i64 %545
  store i64 %550, ptr %551, align 4
  %552 = getelementptr i64, ptr %3, i64 %546
  store i64 %548, ptr %552, align 4
  %553 = getelementptr double, ptr %8, i64 %24
  %554 = load double, ptr %553, align 8
  %555 = getelementptr double, ptr %8, i64 %163
  %556 = load double, ptr %555, align 8
  %557 = getelementptr double, ptr %8, i64 %24
  store double %556, ptr %557, align 8
  %558 = getelementptr double, ptr %8, i64 %163
  store double %554, ptr %558, align 8
  %559 = mul i64 %163, 2
  %560 = mul i64 %0, 2
  %561 = getelementptr i64, ptr %3, i64 %559
  %562 = load i64, ptr %561, align 4
  %563 = getelementptr i64, ptr %3, i64 %560
  %564 = load i64, ptr %563, align 4
  %565 = icmp ne i64 %562, %564
  br i1 %565, label %566, label %568

566:                                              ; preds = %536
  %567 = icmp ult i64 %562, %564
  br label %576

568:                                              ; preds = %536
  %569 = add i64 %559, 1
  %570 = add i64 %560, 1
  %571 = getelementptr i64, ptr %3, i64 %569
  %572 = load i64, ptr %571, align 4
  %573 = getelementptr i64, ptr %3, i64 %570
  %574 = load i64, ptr %573, align 4
  %575 = icmp ult i64 %572, %574
  br label %576

576:                                              ; preds = %566, %568
  %577 = phi i1 [ %575, %568 ], [ %567, %566 ]
  br label %578

578:                                              ; preds = %576
  br i1 %577, label %579, label %602

579:                                              ; preds = %578
  %580 = mul i64 %163, 2
  %581 = mul i64 %0, 2
  %582 = getelementptr i64, ptr %3, i64 %580
  %583 = load i64, ptr %582, align 4
  %584 = getelementptr i64, ptr %3, i64 %581
  %585 = load i64, ptr %584, align 4
  %586 = getelementptr i64, ptr %3, i64 %580
  store i64 %585, ptr %586, align 4
  %587 = getelementptr i64, ptr %3, i64 %581
  store i64 %583, ptr %587, align 4
  %588 = add i64 %580, 1
  %589 = add i64 %581, 1
  %590 = getelementptr i64, ptr %3, i64 %588
  %591 = load i64, ptr %590, align 4
  %592 = getelementptr i64, ptr %3, i64 %589
  %593 = load i64, ptr %592, align 4
  %594 = getelementptr i64, ptr %3, i64 %588
  store i64 %593, ptr %594, align 4
  %595 = getelementptr i64, ptr %3, i64 %589
  store i64 %591, ptr %595, align 4
  %596 = getelementptr double, ptr %8, i64 %163
  %597 = load double, ptr %596, align 8
  %598 = getelementptr double, ptr %8, i64 %0
  %599 = load double, ptr %598, align 8
  %600 = getelementptr double, ptr %8, i64 %163
  store double %599, ptr %600, align 8
  %601 = getelementptr double, ptr %8, i64 %0
  store double %597, ptr %601, align 8
  br label %602

602:                                              ; preds = %579, %578
  br label %603

603:                                              ; preds = %602, %535
  br label %159

604:                                              ; preds = %751, %160
  %605 = phi i64 [ %752, %751 ], [ %0, %160 ]
  %606 = phi i64 [ %753, %751 ], [ %25, %160 ]
  %607 = phi i64 [ %754, %751 ], [ %24, %160 ]
  %608 = phi i1 [ %708, %751 ], [ true, %160 ]
  br label %609

609:                                              ; preds = %604
  %610 = phi i64 [ %605, %604 ]
  %611 = phi i64 [ %606, %604 ]
  %612 = phi i64 [ %607, %604 ]
  %613 = phi i1 [ %608, %604 ]
  br i1 %613, label %614, label %755

614:                                              ; preds = %609
  %615 = phi i64 [ %610, %609 ]
  %616 = phi i64 [ %611, %609 ]
  %617 = phi i64 [ %612, %609 ]
  br label %618

618:                                              ; preds = %640, %614
  %619 = phi i64 [ %642, %640 ], [ %615, %614 ]
  %620 = mul i64 %619, 2
  %621 = mul i64 %617, 2
  %622 = getelementptr i64, ptr %3, i64 %620
  %623 = load i64, ptr %622, align 4
  %624 = getelementptr i64, ptr %3, i64 %621
  %625 = load i64, ptr %624, align 4
  %626 = icmp ne i64 %623, %625
  br i1 %626, label %627, label %629

627:                                              ; preds = %618
  %628 = icmp ult i64 %623, %625
  br label %637

629:                                              ; preds = %618
  %630 = add i64 %620, 1
  %631 = add i64 %621, 1
  %632 = getelementptr i64, ptr %3, i64 %630
  %633 = load i64, ptr %632, align 4
  %634 = getelementptr i64, ptr %3, i64 %631
  %635 = load i64, ptr %634, align 4
  %636 = icmp ult i64 %633, %635
  br label %637

637:                                              ; preds = %627, %629
  %638 = phi i1 [ %636, %629 ], [ %628, %627 ]
  br label %639

639:                                              ; preds = %637
  br i1 %638, label %640, label %643

640:                                              ; preds = %639
  %641 = phi i64 [ %619, %639 ]
  %642 = add i64 %641, 1
  br label %618

643:                                              ; preds = %639
  %644 = mul i64 %619, 2
  %645 = mul i64 %617, 2
  %646 = getelementptr i64, ptr %3, i64 %644
  %647 = load i64, ptr %646, align 4
  %648 = getelementptr i64, ptr %3, i64 %645
  %649 = load i64, ptr %648, align 4
  %650 = icmp ne i64 %647, %649
  br i1 %650, label %651, label %652

651:                                              ; preds = %643
  br label %660

652:                                              ; preds = %643
  %653 = add i64 %644, 1
  %654 = add i64 %645, 1
  %655 = getelementptr i64, ptr %3, i64 %653
  %656 = load i64, ptr %655, align 4
  %657 = getelementptr i64, ptr %3, i64 %654
  %658 = load i64, ptr %657, align 4
  %659 = icmp eq i64 %656, %658
  br label %660

660:                                              ; preds = %651, %652
  %661 = phi i1 [ %659, %652 ], [ false, %651 ]
  br label %662

662:                                              ; preds = %660
  br label %663

663:                                              ; preds = %685, %662
  %664 = phi i64 [ %687, %685 ], [ %616, %662 ]
  %665 = mul i64 %617, 2
  %666 = mul i64 %664, 2
  %667 = getelementptr i64, ptr %3, i64 %665
  %668 = load i64, ptr %667, align 4
  %669 = getelementptr i64, ptr %3, i64 %666
  %670 = load i64, ptr %669, align 4
  %671 = icmp ne i64 %668, %670
  br i1 %671, label %672, label %674

672:                                              ; preds = %663
  %673 = icmp ult i64 %668, %670
  br label %682

674:                                              ; preds = %663
  %675 = add i64 %665, 1
  %676 = add i64 %666, 1
  %677 = getelementptr i64, ptr %3, i64 %675
  %678 = load i64, ptr %677, align 4
  %679 = getelementptr i64, ptr %3, i64 %676
  %680 = load i64, ptr %679, align 4
  %681 = icmp ult i64 %678, %680
  br label %682

682:                                              ; preds = %672, %674
  %683 = phi i1 [ %681, %674 ], [ %673, %672 ]
  br label %684

684:                                              ; preds = %682
  br i1 %683, label %685, label %688

685:                                              ; preds = %684
  %686 = phi i64 [ %664, %684 ]
  %687 = add i64 %686, -1
  br label %663

688:                                              ; preds = %684
  %689 = mul i64 %664, 2
  %690 = mul i64 %617, 2
  %691 = getelementptr i64, ptr %3, i64 %689
  %692 = load i64, ptr %691, align 4
  %693 = getelementptr i64, ptr %3, i64 %690
  %694 = load i64, ptr %693, align 4
  %695 = icmp ne i64 %692, %694
  br i1 %695, label %696, label %697

696:                                              ; preds = %688
  br label %705

697:                                              ; preds = %688
  %698 = add i64 %689, 1
  %699 = add i64 %690, 1
  %700 = getelementptr i64, ptr %3, i64 %698
  %701 = load i64, ptr %700, align 4
  %702 = getelementptr i64, ptr %3, i64 %699
  %703 = load i64, ptr %702, align 4
  %704 = icmp eq i64 %701, %703
  br label %705

705:                                              ; preds = %696, %697
  %706 = phi i1 [ %704, %697 ], [ false, %696 ]
  br label %707

707:                                              ; preds = %705
  %708 = icmp ult i64 %619, %664
  br i1 %708, label %709, label %749

709:                                              ; preds = %707
  %710 = mul i64 %619, 2
  %711 = mul i64 %664, 2
  %712 = getelementptr i64, ptr %3, i64 %710
  %713 = load i64, ptr %712, align 4
  %714 = getelementptr i64, ptr %3, i64 %711
  %715 = load i64, ptr %714, align 4
  %716 = getelementptr i64, ptr %3, i64 %710
  store i64 %715, ptr %716, align 4
  %717 = getelementptr i64, ptr %3, i64 %711
  store i64 %713, ptr %717, align 4
  %718 = add i64 %710, 1
  %719 = add i64 %711, 1
  %720 = getelementptr i64, ptr %3, i64 %718
  %721 = load i64, ptr %720, align 4
  %722 = getelementptr i64, ptr %3, i64 %719
  %723 = load i64, ptr %722, align 4
  %724 = getelementptr i64, ptr %3, i64 %718
  store i64 %723, ptr %724, align 4
  %725 = getelementptr i64, ptr %3, i64 %719
  store i64 %721, ptr %725, align 4
  %726 = getelementptr double, ptr %8, i64 %619
  %727 = load double, ptr %726, align 8
  %728 = getelementptr double, ptr %8, i64 %664
  %729 = load double, ptr %728, align 8
  %730 = getelementptr double, ptr %8, i64 %619
  store double %729, ptr %730, align 8
  %731 = getelementptr double, ptr %8, i64 %664
  store double %727, ptr %731, align 8
  %732 = icmp eq i64 %619, %617
  br i1 %732, label %733, label %734

733:                                              ; preds = %709
  br label %737

734:                                              ; preds = %709
  %735 = icmp eq i64 %664, %617
  %736 = select i1 %735, i64 %619, i64 %617
  br label %737

737:                                              ; preds = %733, %734
  %738 = phi i64 [ %736, %734 ], [ %664, %733 ]
  br label %739

739:                                              ; preds = %737
  %740 = and i1 %661, %706
  br i1 %740, label %741, label %744

741:                                              ; preds = %739
  %742 = add i64 %619, 1
  %743 = sub i64 %664, 1
  br label %745

744:                                              ; preds = %739
  br label %745

745:                                              ; preds = %741, %744
  %746 = phi i64 [ %619, %744 ], [ %742, %741 ]
  %747 = phi i64 [ %664, %744 ], [ %743, %741 ]
  br label %748

748:                                              ; preds = %745
  br label %751

749:                                              ; preds = %707
  %750 = add i64 %664, 1
  br label %751

751:                                              ; preds = %748, %749
  %752 = phi i64 [ %619, %749 ], [ %746, %748 ]
  %753 = phi i64 [ %664, %749 ], [ %747, %748 ]
  %754 = phi i64 [ %750, %749 ], [ %738, %748 ]
  br label %604

755:                                              ; preds = %609
  ret i64 %612
}

define void @_sparse_hybrid_qsort_0_1_index_coo_0_f64(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12) {
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, ptr %3, 1
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %4, 2
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %5, 3, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, i64 %6, 4, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, ptr %8, 1
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %9, 2
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %10, 3, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %11, 4, 0
  br label %24

24:                                               ; preds = %72, %13
  %25 = phi i64 [ %70, %72 ], [ %0, %13 ]
  %26 = phi i64 [ %71, %72 ], [ %1, %13 ]
  %27 = add i64 %25, 1
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = phi i64 [ %25, %24 ]
  %31 = phi i64 [ %26, %24 ]
  %32 = sub i64 %31, %30
  %33 = icmp ule i64 %32, 30
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @_sparse_sort_stable_0_1_index_coo_0_f64(i64 %30, i64 %31, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11)
  br label %69

35:                                               ; preds = %29
  %36 = sub i64 %12, 1
  %37 = icmp ule i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @_sparse_heap_sort_0_1_index_coo_0_f64(i64 %30, i64 %31, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11)
  br label %65

39:                                               ; preds = %35
  %40 = call i64 @_sparse_partition_0_1_index_coo_0_f64(i64 %30, i64 %31, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11)
  %41 = sub i64 %40, %30
  %42 = sub i64 %31, %40
  %43 = sub i64 %31, %30
  %44 = icmp ugt i64 %43, 2
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = icmp ule i64 %41, %42
  %47 = select i1 %46, i64 %40, i64 %30
  %48 = select i1 %46, i64 %31, i64 %40
  br i1 %46, label %49, label %74

49:                                               ; preds = %74, %45
  %50 = phi i64 [ %75, %74 ], [ %41, %45 ]
  %51 = phi i64 [ %76, %74 ], [ %30, %45 ]
  %52 = phi i64 [ %77, %74 ], [ %40, %45 ]
  %53 = icmp ne i64 %50, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = phi i64 [ %51, %49 ]
  %56 = phi i64 [ %52, %49 ]
  call void @_sparse_hybrid_qsort_0_1_index_coo_0_f64(i64 %55, i64 %56, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %36)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %39
  %59 = phi i64 [ %47, %57 ], [ %30, %39 ]
  %60 = phi i64 [ %48, %57 ], [ %30, %39 ]
  br label %61

61:                                               ; preds = %58
  %62 = phi i64 [ %59, %58 ]
  %63 = phi i64 [ %60, %58 ]
  br label %64

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %38, %64
  %66 = phi i64 [ %62, %64 ], [ %30, %38 ]
  %67 = phi i64 [ %63, %64 ], [ %30, %38 ]
  br label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %34, %68
  %70 = phi i64 [ %66, %68 ], [ %30, %34 ]
  %71 = phi i64 [ %67, %68 ], [ %30, %34 ]
  br label %72

72:                                               ; preds = %69
  br label %24

73:                                               ; preds = %24
  ret void

74:                                               ; preds = %45
  %75 = phi i64 [ %42, %45 ]
  %76 = phi i64 [ %40, %45 ]
  %77 = phi i64 [ %31, %45 ]
  br label %49
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
  %14 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %14, 0
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 0, 2
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, i64 16, 3, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, i64 1, 4, 0
  %20 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, ptr %20, 1
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 16, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  %26 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (double, ptr null, i32 16) to i64))
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %26, 0
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, ptr %26, 1
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, i64 0, 2
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, i64 16, 3, 0
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 1, 4, 0
  store i64 0, ptr %14, align 4
  %32 = getelementptr i64, ptr %14, i32 1
  store i64 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %83, %0
  %34 = phi i64 [ %84, %83 ], [ 0, %0 ]
  %35 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %43, %83 ], [ %19, %0 ]
  %36 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %44, %83 ], [ %25, %0 ]
  %37 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %45, %83 ], [ %31, %0 ]
  %38 = phi { [2 x i64], [3 x i64] } [ %46, %83 ], [ { [2 x i64] [i64 3, i64 4], [3 x i64] [i64 2, i64 0, i64 0] }, %0 ]
  %39 = icmp slt i64 %34, 4
  br i1 %39, label %40, label %85

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %81, %40
  %42 = phi i64 [ %82, %81 ], [ 0, %40 ]
  %43 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %77, %81 ], [ %35, %40 ]
  %44 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %78, %81 ], [ %36, %40 ]
  %45 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %79, %81 ], [ %37, %40 ]
  %46 = phi { [2 x i64], [3 x i64] } [ %80, %81 ], [ %38, %40 ]
  %47 = icmp slt i64 %42, 3
  br i1 %47, label %48, label %83

48:                                               ; preds = %41
  %49 = mul i64 %34, 3
  %50 = add i64 %49, %42
  %51 = getelementptr double, ptr @__constant_4x3xf64, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fcmp une double %52, 0.000000e+00
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 0
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 1
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 2
  %58 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 3, 0
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 4, 0
  %60 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 0
  %61 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 1
  %62 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 2
  %63 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 3, 0
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 4, 0
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 0
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 1
  %67 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 2
  %68 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 3, 0
  %69 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 4, 0
  %70 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0(ptr %55, ptr %56, i64 %57, i64 %58, i64 %59, ptr %60, ptr %61, i64 %62, i64 %63, i64 %64, ptr %65, ptr %66, i64 %67, i64 %68, i64 %69, { [2 x i64], [3 x i64] } %46, i64 %42, i64 %34, double %52)
  %71 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %70, 0
  %72 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %70, 1
  %73 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %70, 2
  %74 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %70, 3
  br label %76

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %54, %75
  %77 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %43, %75 ], [ %71, %54 ]
  %78 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %44, %75 ], [ %72, %54 ]
  %79 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %45, %75 ], [ %73, %54 ]
  %80 = phi { [2 x i64], [3 x i64] } [ %46, %75 ], [ %74, %54 ]
  br label %81

81:                                               ; preds = %76
  %82 = add i64 %42, 1
  br label %41

83:                                               ; preds = %41
  %84 = add i64 %34, 1
  br label %33

85:                                               ; preds = %33
  %86 = extractvalue { [2 x i64], [3 x i64] } %38, 1, 2
  %87 = call i64 @llvm.ctlz.i64(i64 %86, i1 false)
  %88 = sub i64 64, %87
  %89 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 0
  %90 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 1
  %91 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 2
  %92 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 3, 0
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 4, 0
  %94 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 0
  %95 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 1
  %96 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 2
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 3, 0
  %98 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 4, 0
  call void @_sparse_hybrid_qsort_0_1_index_coo_0_f64(i64 0, i64 %86, ptr %89, ptr %90, i64 %91, i64 %92, i64 %93, ptr %94, ptr %95, i64 %96, i64 %97, i64 %98, i64 %88)
  %99 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %99, 0
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, ptr %99, 1
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, i64 0, 2
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 16, 3, 0
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 1, 4, 0
  %105 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %105, 0
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, ptr %105, 1
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 0, 2
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 16, 3, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, i64 1, 4, 0
  %111 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (double, ptr null, i32 16) to i64))
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %111, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, ptr %111, 1
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 0, 2
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 16, 3, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 1, 4, 0
  store i64 0, ptr %99, align 4
  br label %117

117:                                              ; preds = %120, %85
  %118 = phi i64 [ %123, %120 ], [ 0, %85 ]
  %119 = icmp slt i64 %118, 3
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr i64, ptr %99, i32 1
  %122 = getelementptr i64, ptr %121, i64 %118
  store i64 0, ptr %122, align 4
  %123 = add i64 %118, 1
  br label %117

124:                                              ; preds = %117
  %125 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 1
  %126 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 1
  %127 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 1
  %128 = load i64, ptr %127, align 4
  %129 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 1
  %130 = getelementptr i64, ptr %129, i32 1
  %131 = load i64, ptr %130, align 4
  br label %132

132:                                              ; preds = %139, %124
  %133 = phi i64 [ %170, %139 ], [ %128, %124 ]
  %134 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %166, %139 ], [ %104, %124 ]
  %135 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %167, %139 ], [ %110, %124 ]
  %136 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %168, %139 ], [ %116, %124 ]
  %137 = phi { [2 x i64], [3 x i64] } [ %169, %139 ], [ { [2 x i64] [i64 3, i64 4], [3 x i64] [i64 4, i64 0, i64 0] }, %124 ]
  %138 = icmp slt i64 %133, %131
  br i1 %138, label %139, label %171

139:                                              ; preds = %132
  %140 = mul i64 %133, 2
  %141 = getelementptr i64, ptr %125, i64 %140
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr i64, ptr %126, i32 1
  %144 = mul i64 %133, 2
  %145 = getelementptr i64, ptr %143, i64 %144
  %146 = load i64, ptr %145, align 4
  %147 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, 1
  %148 = getelementptr double, ptr %147, i64 %133
  %149 = load double, ptr %148, align 8
  %150 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 0
  %151 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %152 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 2
  %153 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 3, 0
  %154 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 4, 0
  %155 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 0
  %156 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 1
  %157 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 2
  %158 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 3, 0
  %159 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 4, 0
  %160 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 0
  %161 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %162 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 2
  %163 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 3, 0
  %164 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 4, 0
  %165 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @_insert_dense_compressed_3_4_f64_0_0(ptr %150, ptr %151, i64 %152, i64 %153, i64 %154, ptr %155, ptr %156, i64 %157, i64 %158, i64 %159, ptr %160, ptr %161, i64 %162, i64 %163, i64 %164, { [2 x i64], [3 x i64] } %137, i64 %142, i64 %146, double %149)
  %166 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %165, 0
  %167 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %165, 1
  %168 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %165, 2
  %169 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %165, 3
  %170 = add i64 %133, 1
  br label %132

171:                                              ; preds = %132
  %172 = extractvalue { [2 x i64], [3 x i64] } %137, 1, 0
  %173 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %174 = load i64, ptr %173, align 4
  br label %175

175:                                              ; preds = %188, %171
  %176 = phi i64 [ %189, %188 ], [ 1, %171 ]
  %177 = phi i64 [ %184, %188 ], [ %174, %171 ]
  %178 = icmp slt i64 %176, %172
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %181 = getelementptr i64, ptr %180, i64 %176
  %182 = load i64, ptr %181, align 4
  %183 = icmp eq i64 %182, 0
  %184 = select i1 %183, i64 %177, i64 %182
  br i1 %183, label %185, label %188

185:                                              ; preds = %179
  %186 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %187 = getelementptr i64, ptr %186, i64 %176
  store i64 %177, ptr %187, align 4
  br label %188

188:                                              ; preds = %185, %179
  %189 = add i64 %176, 1
  br label %175

190:                                              ; preds = %175
  %191 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 0
  %192 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %193 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 2
  %194 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 3, 0
  %195 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 4, 0
  %196 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 0
  %197 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 1
  %198 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 2
  %199 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 3, 0
  %200 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, 4, 0
  %201 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 0
  %202 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %203 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 2
  %204 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 3, 0
  %205 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 4, 0
  %206 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %191, ptr %192, i64 %193, i64 %194, i64 %195, ptr %196, ptr %197, i64 %198, i64 %199, i64 %200, ptr %201, ptr %202, i64 %203, i64 %204, i64 %205, { [2 x i64], [3 x i64] } %137, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_3x2xf64, i64 0, i64 3, i64 2, i64 2, i64 1, ptr %1, ptr %6, i64 0, i64 4, i64 2, i64 2, i64 1)
  ret i64 1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
