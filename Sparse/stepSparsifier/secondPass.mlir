module {
  memref.global "private" constant @__constant_4x3xf64 : memref<4x3xf64> = dense<[[1.000000e+00, 0.000000e+00, 3.000000e+00], [0.000000e+00, 2.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00, 0.000000e+00], [0.000000e+00, 0.000000e+00, 5.000000e+00]]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_3x2xf64 : memref<3x2xf64> = dense<[[1.000000e+00, 4.000000e+00], [0.000000e+00, 0.000000e+00], [0.000000e+00, 6.000000e+00]]> {alignment = 64 : i64}
  func.func @matmul(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf64>, %arg3: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg4: memref<3x2xf64>, %arg5: memref<4x2xf64>) -> memref<4x2xf64> {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    scf.for %arg6 = %c0 to %c3 step %c1 {
      %0 = memref.load %arg0[%arg6] : memref<?xindex>
      %1 = arith.addi %arg6, %c1 : index
      %2 = memref.load %arg0[%1] : memref<?xindex>
      scf.for %arg7 = %0 to %2 step %c1 {
        %3 = memref.load %arg1[%arg7] : memref<?xindex>
        %4 = memref.load %arg2[%arg7] : memref<?xf64>
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %5 = memref.load %arg5[%3, %arg8] : memref<4x2xf64>
          %6 = memref.load %arg4[%arg6, %arg8] : memref<3x2xf64>
          %7 = arith.mulf %4, %6 : f64
          %8 = arith.addf %5, %7 : f64
          memref.store %8, %arg5[%3, %arg8] : memref<4x2xf64>
        } {"Emitted from" = "linalg.generic"}
      } {"Emitted from" = "linalg.generic"}
    } {"Emitted from" = "linalg.generic"}
    return %arg5 : memref<4x2xf64>
  }
  func.func private @_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf64>, %arg3: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg4: index, %arg5: index, %arg6: f64) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
    %c0 = arith.constant 0 : index
    %false = arith.constant false
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = memref.load %arg0[%c1] : memref<?xindex>
    %1 = llvm.extractvalue %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %2 = arith.index_cast %1 : i64 to index
    %3 = arith.divui %2, %c2 : index
    %4 = arith.subi %0, %c1 : index
    %5:5 = scf.if %false -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index) {
      scf.yield %arg0, %arg1, %arg2, %arg3, %4 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index
    } else {
      %20 = arith.addi %3, %c1 : index
      memref.store %20, %arg0[%c1] : memref<?xindex>
      %21 = llvm.extractvalue %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
      %22 = arith.index_cast %21 : i64 to index
      %dim_1 = memref.dim %arg1, %c0 : memref<?xindex>
      %23 = arith.addi %22, %c1 : index
      %24 = arith.cmpi ugt, %23, %dim_1 : index
      %25 = scf.if %24 -> (memref<?xindex>) {
        %28 = arith.muli %dim_1, %c2 : index
        %29 = memref.realloc %arg1(%28) : memref<?xindex> to memref<?xindex>
        scf.yield %29 : memref<?xindex>
      } else {
        scf.yield %arg1 : memref<?xindex>
      }
      memref.store %arg4, %25[%22] : memref<?xindex>
      %26 = arith.index_cast %23 : index to i64
      %27 = llvm.insertvalue %26, %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
      scf.yield %arg0, %25, %arg2, %27, %3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index
    }
    %6 = llvm.extractvalue %5#3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %7 = arith.index_cast %6 : i64 to index
    %dim = memref.dim %5#1, %c0 : memref<?xindex>
    %8 = arith.addi %7, %c1 : index
    %9 = arith.cmpi ugt, %8, %dim : index
    %10 = scf.if %9 -> (memref<?xindex>) {
      %20 = arith.muli %dim, %c2 : index
      %21 = memref.realloc %5#1(%20) : memref<?xindex> to memref<?xindex>
      scf.yield %21 : memref<?xindex>
    } else {
      scf.yield %5#1 : memref<?xindex>
    }
    memref.store %arg5, %10[%7] : memref<?xindex>
    %11 = arith.index_cast %8 : index to i64
    %12 = llvm.insertvalue %11, %5#3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %12[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %14 = arith.index_cast %13 : i64 to index
    %dim_0 = memref.dim %5#2, %c0 : memref<?xf64>
    %15 = arith.addi %14, %c1 : index
    %16 = arith.cmpi ugt, %15, %dim_0 : index
    %17 = scf.if %16 -> (memref<?xf64>) {
      %20 = arith.muli %dim_0, %c2 : index
      %21 = memref.realloc %5#2(%20) : memref<?xf64> to memref<?xf64>
      scf.yield %21 : memref<?xf64>
    } else {
      scf.yield %5#2 : memref<?xf64>
    }
    memref.store %arg6, %17[%14] : memref<?xf64>
    %18 = arith.index_cast %15 : index to i64
    %19 = llvm.insertvalue %18, %12[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    return %5#0, %10, %17, %19 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
  }
  func.func private @_insert_dense_compressed_3_4_f64_0_0(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf64>, %arg3: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg4: index, %arg5: index, %arg6: f64) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %false = arith.constant false
    %c1 = arith.constant 1 : index
    %0 = arith.addi %arg4, %c1 : index
    %1 = memref.load %arg0[%arg4] : memref<?xindex>
    %2 = memref.load %arg0[%0] : memref<?xindex>
    %3 = llvm.extractvalue %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %4 = arith.index_cast %3 : i64 to index
    %5 = arith.subi %2, %c1 : index
    %6 = arith.cmpi ult, %1, %2 : index
    %7 = scf.if %6 -> (i1) {
      %16 = memref.load %arg1[%5] : memref<?xindex>
      %17 = arith.cmpi eq, %16, %arg5 : index
      scf.yield %17 : i1
    } else {
      memref.store %4, %arg0[%arg4] : memref<?xindex>
      scf.yield %false : i1
    }
    %8:5 = scf.if %7 -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index) {
      scf.yield %arg0, %arg1, %arg2, %arg3, %5 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index
    } else {
      %16 = arith.addi %4, %c1 : index
      memref.store %16, %arg0[%0] : memref<?xindex>
      %17 = llvm.extractvalue %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
      %18 = arith.index_cast %17 : i64 to index
      %dim_0 = memref.dim %arg1, %c0 : memref<?xindex>
      %19 = arith.addi %18, %c1 : index
      %20 = arith.cmpi ugt, %19, %dim_0 : index
      %21 = scf.if %20 -> (memref<?xindex>) {
        %24 = arith.muli %dim_0, %c2 : index
        %25 = memref.realloc %arg1(%24) : memref<?xindex> to memref<?xindex>
        scf.yield %25 : memref<?xindex>
      } else {
        scf.yield %arg1 : memref<?xindex>
      }
      memref.store %arg5, %21[%18] : memref<?xindex>
      %22 = arith.index_cast %19 : index to i64
      %23 = llvm.insertvalue %22, %arg3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
      scf.yield %arg0, %21, %arg2, %23, %4 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index
    }
    %9 = llvm.extractvalue %8#3[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %10 = arith.index_cast %9 : i64 to index
    %dim = memref.dim %8#2, %c0 : memref<?xf64>
    %11 = arith.addi %10, %c1 : index
    %12 = arith.cmpi ugt, %11, %dim : index
    %13 = scf.if %12 -> (memref<?xf64>) {
      %16 = arith.muli %dim, %c2 : index
      %17 = memref.realloc %8#2(%16) : memref<?xf64> to memref<?xf64>
      scf.yield %17 : memref<?xf64>
    } else {
      scf.yield %8#2 : memref<?xf64>
    }
    memref.store %arg6, %13[%10] : memref<?xf64>
    %14 = arith.index_cast %11 : index to i64
    %15 = llvm.insertvalue %14, %8#3[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    return %8#0, %8#1, %13, %15 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
  }
  func.func private @_sparse_binary_search_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>) -> index {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0:2 = scf.while (%arg4 = %arg0, %arg5 = %arg1) : (index, index) -> (index, index) {
      %1 = arith.cmpi ult, %arg4, %arg5 : index
      scf.condition(%1) %arg4, %arg5 : index, index
    } do {
    ^bb0(%arg4: index, %arg5: index):
      %1 = arith.addi %arg4, %arg5 : index
      %2 = arith.shrui %1, %c1 : index
      %3 = arith.addi %2, %c1 : index
      %4 = arith.muli %arg1, %c2 : index
      %5 = arith.muli %2, %c2 : index
      %6 = memref.load %arg2[%4] : memref<?xindex>
      %7 = memref.load %arg2[%5] : memref<?xindex>
      %8 = arith.cmpi ne, %6, %7 : index
      %9 = scf.if %8 -> (i1) {
        %12 = arith.cmpi ult, %6, %7 : index
        scf.yield %12 : i1
      } else {
        %12 = arith.addi %4, %c1 : index
        %13 = arith.addi %5, %c1 : index
        %14 = memref.load %arg2[%12] : memref<?xindex>
        %15 = memref.load %arg2[%13] : memref<?xindex>
        %16 = arith.cmpi ult, %14, %15 : index
        scf.yield %16 : i1
      }
      %10 = arith.select %9, %arg4, %3 : index
      %11 = arith.select %9, %2, %arg5 : index
      scf.yield %10, %11 : index, index
    }
    return %0#0 : index
  }
  func.func private @_sparse_sort_stable_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = arith.addi %arg0, %c1 : index
    scf.for %arg4 = %0 to %arg1 step %c1 {
      %1 = func.call @_sparse_binary_search_0_1_index_coo_0_f64(%arg0, %arg4, %arg2, %arg3) : (index, index, memref<?xindex>, memref<?xf64>) -> index
      %2 = arith.muli %arg4, %c2 : index
      %3 = memref.load %arg2[%2] : memref<?xindex>
      %4 = arith.addi %2, %c1 : index
      %5 = memref.load %arg2[%4] : memref<?xindex>
      %6 = memref.load %arg3[%arg4] : memref<?xf64>
      %7 = arith.subi %arg4, %1 : index
      scf.for %arg5 = %c0 to %7 step %c1 {
        %10 = arith.subi %arg4, %arg5 : index
        %11 = arith.subi %10, %c1 : index
        %12 = arith.muli %11, %c2 : index
        %13 = arith.muli %10, %c2 : index
        %14 = memref.load %arg2[%12] : memref<?xindex>
        memref.store %14, %arg2[%13] : memref<?xindex>
        %15 = arith.addi %12, %c1 : index
        %16 = arith.addi %13, %c1 : index
        %17 = memref.load %arg2[%15] : memref<?xindex>
        memref.store %17, %arg2[%16] : memref<?xindex>
        %18 = memref.load %arg3[%11] : memref<?xf64>
        memref.store %18, %arg3[%10] : memref<?xf64>
      }
      %8 = arith.muli %1, %c2 : index
      memref.store %3, %arg2[%8] : memref<?xindex>
      %9 = arith.addi %8, %c1 : index
      memref.store %5, %arg2[%9] : memref<?xindex>
      memref.store %6, %arg3[%1] : memref<?xf64>
    }
    return
  }
  func.func private @_sparse_shift_down_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>, %arg4: index) {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %0 = arith.cmpi uge, %arg4, %c2 : index
    scf.if %0 {
      %1 = arith.subi %arg1, %arg0 : index
      %2 = arith.subi %arg4, %c2 : index
      %3 = arith.shrui %2, %c1 : index
      %4 = arith.cmpi uge, %3, %1 : index
      scf.if %4 {
        %5 = arith.shli %1, %c1 : index
        %6 = arith.addi %5, %c1 : index
        %7 = arith.addi %6, %arg0 : index
        %8 = arith.addi %6, %c1 : index
        %9 = arith.cmpi ult, %8, %arg4 : index
        %10:2 = scf.if %9 -> (index, index) {
          %12 = arith.addi %8, %arg0 : index
          %13 = arith.muli %7, %c2 : index
          %14 = arith.muli %12, %c2 : index
          %15 = memref.load %arg2[%13] : memref<?xindex>
          %16 = memref.load %arg2[%14] : memref<?xindex>
          %17 = arith.cmpi ne, %15, %16 : index
          %18 = scf.if %17 -> (i1) {
            %20 = arith.cmpi ult, %15, %16 : index
            scf.yield %20 : i1
          } else {
            %20 = arith.addi %13, %c1 : index
            %21 = arith.addi %14, %c1 : index
            %22 = memref.load %arg2[%20] : memref<?xindex>
            %23 = memref.load %arg2[%21] : memref<?xindex>
            %24 = arith.cmpi ult, %22, %23 : index
            scf.yield %24 : i1
          }
          %19:2 = scf.if %18 -> (index, index) {
            scf.yield %8, %12 : index, index
          } else {
            scf.yield %6, %7 : index, index
          }
          scf.yield %19#0, %19#1 : index, index
        } else {
          scf.yield %6, %7 : index, index
        }
        %11:3 = scf.while (%arg5 = %arg1, %arg6 = %10#0, %arg7 = %10#1) : (index, index, index) -> (index, index, index) {
          %12 = arith.muli %arg5, %c2 : index
          %13 = arith.muli %arg7, %c2 : index
          %14 = memref.load %arg2[%12] : memref<?xindex>
          %15 = memref.load %arg2[%13] : memref<?xindex>
          %16 = arith.cmpi ne, %14, %15 : index
          %17 = scf.if %16 -> (i1) {
            %18 = arith.cmpi ult, %14, %15 : index
            scf.yield %18 : i1
          } else {
            %18 = arith.addi %12, %c1 : index
            %19 = arith.addi %13, %c1 : index
            %20 = memref.load %arg2[%18] : memref<?xindex>
            %21 = memref.load %arg2[%19] : memref<?xindex>
            %22 = arith.cmpi ult, %20, %21 : index
            scf.yield %22 : i1
          }
          scf.condition(%17) %arg5, %arg6, %arg7 : index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index):
          %12 = arith.muli %arg5, %c2 : index
          %13 = arith.muli %arg7, %c2 : index
          %14 = memref.load %arg2[%12] : memref<?xindex>
          %15 = memref.load %arg2[%13] : memref<?xindex>
          memref.store %15, %arg2[%12] : memref<?xindex>
          memref.store %14, %arg2[%13] : memref<?xindex>
          %16 = arith.addi %12, %c1 : index
          %17 = arith.addi %13, %c1 : index
          %18 = memref.load %arg2[%16] : memref<?xindex>
          %19 = memref.load %arg2[%17] : memref<?xindex>
          memref.store %19, %arg2[%16] : memref<?xindex>
          memref.store %18, %arg2[%17] : memref<?xindex>
          %20 = memref.load %arg3[%arg5] : memref<?xf64>
          %21 = memref.load %arg3[%arg7] : memref<?xf64>
          memref.store %21, %arg3[%arg5] : memref<?xf64>
          memref.store %20, %arg3[%arg7] : memref<?xf64>
          %22 = arith.cmpi uge, %3, %arg6 : index
          %23:2 = scf.if %22 -> (index, index) {
            %24 = arith.shli %arg6, %c1 : index
            %25 = arith.addi %24, %c1 : index
            %26 = arith.addi %25, %arg0 : index
            %27 = arith.addi %25, %c1 : index
            %28 = arith.cmpi ult, %27, %arg4 : index
            %29:2 = scf.if %28 -> (index, index) {
              %30 = arith.addi %27, %arg0 : index
              %31 = arith.muli %26, %c2 : index
              %32 = arith.muli %30, %c2 : index
              %33 = memref.load %arg2[%31] : memref<?xindex>
              %34 = memref.load %arg2[%32] : memref<?xindex>
              %35 = arith.cmpi ne, %33, %34 : index
              %36 = scf.if %35 -> (i1) {
                %38 = arith.cmpi ult, %33, %34 : index
                scf.yield %38 : i1
              } else {
                %38 = arith.addi %31, %c1 : index
                %39 = arith.addi %32, %c1 : index
                %40 = memref.load %arg2[%38] : memref<?xindex>
                %41 = memref.load %arg2[%39] : memref<?xindex>
                %42 = arith.cmpi ult, %40, %41 : index
                scf.yield %42 : i1
              }
              %37:2 = scf.if %36 -> (index, index) {
                scf.yield %27, %30 : index, index
              } else {
                scf.yield %25, %26 : index, index
              }
              scf.yield %37#0, %37#1 : index, index
            } else {
              scf.yield %25, %26 : index, index
            }
            scf.yield %29#0, %29#1 : index, index
          } else {
            scf.yield %arg6, %arg7 : index, index
          }
          scf.yield %arg7, %23#0, %23#1 : index, index, index
        }
      }
    }
    return
  }
  func.func private @_sparse_heap_sort_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>) {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = arith.subi %arg1, %arg0 : index
    %1 = arith.subi %0, %c2 : index
    %2 = arith.shrui %1, %c1 : index
    %3 = arith.addi %2, %c1 : index
    scf.for %arg4 = %c0 to %3 step %c1 {
      %5 = arith.subi %2, %arg4 : index
      %6 = arith.addi %arg0, %5 : index
      func.call @_sparse_shift_down_0_1_index_coo_0_f64(%arg0, %6, %arg2, %arg3, %0) : (index, index, memref<?xindex>, memref<?xf64>, index) -> ()
    }
    %4 = arith.subi %0, %c1 : index
    scf.for %arg4 = %c0 to %4 step %c1 {
      %5 = arith.subi %0, %arg4 : index
      %6 = arith.addi %arg0, %5 : index
      %7 = arith.subi %6, %c1 : index
      %8 = arith.muli %arg0, %c2 : index
      %9 = arith.muli %7, %c2 : index
      %10 = memref.load %arg2[%8] : memref<?xindex>
      %11 = memref.load %arg2[%9] : memref<?xindex>
      memref.store %11, %arg2[%8] : memref<?xindex>
      memref.store %10, %arg2[%9] : memref<?xindex>
      %12 = arith.addi %8, %c1 : index
      %13 = arith.addi %9, %c1 : index
      %14 = memref.load %arg2[%12] : memref<?xindex>
      %15 = memref.load %arg2[%13] : memref<?xindex>
      memref.store %15, %arg2[%12] : memref<?xindex>
      memref.store %14, %arg2[%13] : memref<?xindex>
      %16 = memref.load %arg3[%arg0] : memref<?xf64>
      %17 = memref.load %arg3[%7] : memref<?xf64>
      memref.store %17, %arg3[%arg0] : memref<?xf64>
      memref.store %16, %arg3[%7] : memref<?xf64>
      %18 = arith.subi %5, %c1 : index
      func.call @_sparse_shift_down_0_1_index_coo_0_f64(%arg0, %arg0, %arg2, %arg3, %18) : (index, index, memref<?xindex>, memref<?xf64>, index) -> ()
    }
    return
  }
  func.func private @_sparse_partition_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>) -> index {
    %c-1 = arith.constant -1 : index
    %false = arith.constant false
    %true = arith.constant true
    %c2 = arith.constant 2 : index
    %c1000 = arith.constant 1000 : index
    %c1 = arith.constant 1 : index
    %0 = arith.addi %arg0, %arg1 : index
    %1 = arith.shrui %0, %c1 : index
    %2 = arith.subi %arg1, %c1 : index
    %3 = arith.subi %arg1, %arg0 : index
    %4 = arith.cmpi ult, %3, %c1000 : index
    scf.if %4 {
      %6 = arith.muli %1, %c2 : index
      %7 = arith.muli %arg0, %c2 : index
      %8 = memref.load %arg2[%6] : memref<?xindex>
      %9 = memref.load %arg2[%7] : memref<?xindex>
      %10 = arith.cmpi ne, %8, %9 : index
      %11 = scf.if %10 -> (i1) {
        %18 = arith.cmpi ult, %8, %9 : index
        scf.yield %18 : i1
      } else {
        %18 = arith.addi %6, %c1 : index
        %19 = arith.addi %7, %c1 : index
        %20 = memref.load %arg2[%18] : memref<?xindex>
        %21 = memref.load %arg2[%19] : memref<?xindex>
        %22 = arith.cmpi ult, %20, %21 : index
        scf.yield %22 : i1
      }
      scf.if %11 {
        %18 = arith.muli %1, %c2 : index
        %19 = arith.muli %arg0, %c2 : index
        %20 = memref.load %arg2[%18] : memref<?xindex>
        %21 = memref.load %arg2[%19] : memref<?xindex>
        memref.store %21, %arg2[%18] : memref<?xindex>
        memref.store %20, %arg2[%19] : memref<?xindex>
        %22 = arith.addi %18, %c1 : index
        %23 = arith.addi %19, %c1 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        memref.store %25, %arg2[%22] : memref<?xindex>
        memref.store %24, %arg2[%23] : memref<?xindex>
        %26 = memref.load %arg3[%1] : memref<?xf64>
        %27 = memref.load %arg3[%arg0] : memref<?xf64>
        memref.store %27, %arg3[%1] : memref<?xf64>
        memref.store %26, %arg3[%arg0] : memref<?xf64>
      }
      %12 = arith.muli %2, %c2 : index
      %13 = arith.muli %1, %c2 : index
      %14 = memref.load %arg2[%12] : memref<?xindex>
      %15 = memref.load %arg2[%13] : memref<?xindex>
      %16 = arith.cmpi ne, %14, %15 : index
      %17 = scf.if %16 -> (i1) {
        %18 = arith.cmpi ult, %14, %15 : index
        scf.yield %18 : i1
      } else {
        %18 = arith.addi %12, %c1 : index
        %19 = arith.addi %13, %c1 : index
        %20 = memref.load %arg2[%18] : memref<?xindex>
        %21 = memref.load %arg2[%19] : memref<?xindex>
        %22 = arith.cmpi ult, %20, %21 : index
        scf.yield %22 : i1
      }
      scf.if %17 {
        %18 = arith.muli %2, %c2 : index
        %19 = arith.muli %1, %c2 : index
        %20 = memref.load %arg2[%18] : memref<?xindex>
        %21 = memref.load %arg2[%19] : memref<?xindex>
        memref.store %21, %arg2[%18] : memref<?xindex>
        memref.store %20, %arg2[%19] : memref<?xindex>
        %22 = arith.addi %18, %c1 : index
        %23 = arith.addi %19, %c1 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        memref.store %25, %arg2[%22] : memref<?xindex>
        memref.store %24, %arg2[%23] : memref<?xindex>
        %26 = memref.load %arg3[%2] : memref<?xf64>
        %27 = memref.load %arg3[%1] : memref<?xf64>
        memref.store %27, %arg3[%2] : memref<?xf64>
        memref.store %26, %arg3[%1] : memref<?xf64>
        %28 = arith.muli %1, %c2 : index
        %29 = arith.muli %arg0, %c2 : index
        %30 = memref.load %arg2[%28] : memref<?xindex>
        %31 = memref.load %arg2[%29] : memref<?xindex>
        %32 = arith.cmpi ne, %30, %31 : index
        %33 = scf.if %32 -> (i1) {
          %34 = arith.cmpi ult, %30, %31 : index
          scf.yield %34 : i1
        } else {
          %34 = arith.addi %28, %c1 : index
          %35 = arith.addi %29, %c1 : index
          %36 = memref.load %arg2[%34] : memref<?xindex>
          %37 = memref.load %arg2[%35] : memref<?xindex>
          %38 = arith.cmpi ult, %36, %37 : index
          scf.yield %38 : i1
        }
        scf.if %33 {
          %34 = arith.muli %1, %c2 : index
          %35 = arith.muli %arg0, %c2 : index
          %36 = memref.load %arg2[%34] : memref<?xindex>
          %37 = memref.load %arg2[%35] : memref<?xindex>
          memref.store %37, %arg2[%34] : memref<?xindex>
          memref.store %36, %arg2[%35] : memref<?xindex>
          %38 = arith.addi %34, %c1 : index
          %39 = arith.addi %35, %c1 : index
          %40 = memref.load %arg2[%38] : memref<?xindex>
          %41 = memref.load %arg2[%39] : memref<?xindex>
          memref.store %41, %arg2[%38] : memref<?xindex>
          memref.store %40, %arg2[%39] : memref<?xindex>
          %42 = memref.load %arg3[%1] : memref<?xf64>
          %43 = memref.load %arg3[%arg0] : memref<?xf64>
          memref.store %43, %arg3[%1] : memref<?xf64>
          memref.store %42, %arg3[%arg0] : memref<?xf64>
        }
      }
    } else {
      %6 = arith.addi %arg0, %arg1 : index
      %7 = arith.shrui %6, %c1 : index
      %8 = arith.addi %1, %arg1 : index
      %9 = arith.shrui %8, %c1 : index
      %10 = arith.muli %7, %c2 : index
      %11 = arith.muli %arg0, %c2 : index
      %12 = memref.load %arg2[%10] : memref<?xindex>
      %13 = memref.load %arg2[%11] : memref<?xindex>
      %14 = arith.cmpi ne, %12, %13 : index
      %15 = scf.if %14 -> (i1) {
        %34 = arith.cmpi ult, %12, %13 : index
        scf.yield %34 : i1
      } else {
        %34 = arith.addi %10, %c1 : index
        %35 = arith.addi %11, %c1 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        %38 = arith.cmpi ult, %36, %37 : index
        scf.yield %38 : i1
      }
      scf.if %15 {
        %34 = arith.muli %7, %c2 : index
        %35 = arith.muli %arg0, %c2 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        memref.store %37, %arg2[%34] : memref<?xindex>
        memref.store %36, %arg2[%35] : memref<?xindex>
        %38 = arith.addi %34, %c1 : index
        %39 = arith.addi %35, %c1 : index
        %40 = memref.load %arg2[%38] : memref<?xindex>
        %41 = memref.load %arg2[%39] : memref<?xindex>
        memref.store %41, %arg2[%38] : memref<?xindex>
        memref.store %40, %arg2[%39] : memref<?xindex>
        %42 = memref.load %arg3[%7] : memref<?xf64>
        %43 = memref.load %arg3[%arg0] : memref<?xf64>
        memref.store %43, %arg3[%7] : memref<?xf64>
        memref.store %42, %arg3[%arg0] : memref<?xf64>
      }
      %16 = arith.muli %1, %c2 : index
      %17 = arith.muli %7, %c2 : index
      %18 = memref.load %arg2[%16] : memref<?xindex>
      %19 = memref.load %arg2[%17] : memref<?xindex>
      %20 = arith.cmpi ne, %18, %19 : index
      %21 = scf.if %20 -> (i1) {
        %34 = arith.cmpi ult, %18, %19 : index
        scf.yield %34 : i1
      } else {
        %34 = arith.addi %16, %c1 : index
        %35 = arith.addi %17, %c1 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        %38 = arith.cmpi ult, %36, %37 : index
        scf.yield %38 : i1
      }
      scf.if %21 {
        %34 = arith.muli %1, %c2 : index
        %35 = arith.muli %7, %c2 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        memref.store %37, %arg2[%34] : memref<?xindex>
        memref.store %36, %arg2[%35] : memref<?xindex>
        %38 = arith.addi %34, %c1 : index
        %39 = arith.addi %35, %c1 : index
        %40 = memref.load %arg2[%38] : memref<?xindex>
        %41 = memref.load %arg2[%39] : memref<?xindex>
        memref.store %41, %arg2[%38] : memref<?xindex>
        memref.store %40, %arg2[%39] : memref<?xindex>
        %42 = memref.load %arg3[%1] : memref<?xf64>
        %43 = memref.load %arg3[%7] : memref<?xf64>
        memref.store %43, %arg3[%1] : memref<?xf64>
        memref.store %42, %arg3[%7] : memref<?xf64>
        %44 = arith.muli %7, %c2 : index
        %45 = arith.muli %arg0, %c2 : index
        %46 = memref.load %arg2[%44] : memref<?xindex>
        %47 = memref.load %arg2[%45] : memref<?xindex>
        %48 = arith.cmpi ne, %46, %47 : index
        %49 = scf.if %48 -> (i1) {
          %50 = arith.cmpi ult, %46, %47 : index
          scf.yield %50 : i1
        } else {
          %50 = arith.addi %44, %c1 : index
          %51 = arith.addi %45, %c1 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          %54 = arith.cmpi ult, %52, %53 : index
          scf.yield %54 : i1
        }
        scf.if %49 {
          %50 = arith.muli %7, %c2 : index
          %51 = arith.muli %arg0, %c2 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          memref.store %53, %arg2[%50] : memref<?xindex>
          memref.store %52, %arg2[%51] : memref<?xindex>
          %54 = arith.addi %50, %c1 : index
          %55 = arith.addi %51, %c1 : index
          %56 = memref.load %arg2[%54] : memref<?xindex>
          %57 = memref.load %arg2[%55] : memref<?xindex>
          memref.store %57, %arg2[%54] : memref<?xindex>
          memref.store %56, %arg2[%55] : memref<?xindex>
          %58 = memref.load %arg3[%7] : memref<?xf64>
          %59 = memref.load %arg3[%arg0] : memref<?xf64>
          memref.store %59, %arg3[%7] : memref<?xf64>
          memref.store %58, %arg3[%arg0] : memref<?xf64>
        }
      }
      %22 = arith.muli %9, %c2 : index
      %23 = arith.muli %1, %c2 : index
      %24 = memref.load %arg2[%22] : memref<?xindex>
      %25 = memref.load %arg2[%23] : memref<?xindex>
      %26 = arith.cmpi ne, %24, %25 : index
      %27 = scf.if %26 -> (i1) {
        %34 = arith.cmpi ult, %24, %25 : index
        scf.yield %34 : i1
      } else {
        %34 = arith.addi %22, %c1 : index
        %35 = arith.addi %23, %c1 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        %38 = arith.cmpi ult, %36, %37 : index
        scf.yield %38 : i1
      }
      scf.if %27 {
        %34 = arith.muli %9, %c2 : index
        %35 = arith.muli %1, %c2 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        memref.store %37, %arg2[%34] : memref<?xindex>
        memref.store %36, %arg2[%35] : memref<?xindex>
        %38 = arith.addi %34, %c1 : index
        %39 = arith.addi %35, %c1 : index
        %40 = memref.load %arg2[%38] : memref<?xindex>
        %41 = memref.load %arg2[%39] : memref<?xindex>
        memref.store %41, %arg2[%38] : memref<?xindex>
        memref.store %40, %arg2[%39] : memref<?xindex>
        %42 = memref.load %arg3[%9] : memref<?xf64>
        %43 = memref.load %arg3[%1] : memref<?xf64>
        memref.store %43, %arg3[%9] : memref<?xf64>
        memref.store %42, %arg3[%1] : memref<?xf64>
        %44 = arith.muli %1, %c2 : index
        %45 = arith.muli %7, %c2 : index
        %46 = memref.load %arg2[%44] : memref<?xindex>
        %47 = memref.load %arg2[%45] : memref<?xindex>
        %48 = arith.cmpi ne, %46, %47 : index
        %49 = scf.if %48 -> (i1) {
          %50 = arith.cmpi ult, %46, %47 : index
          scf.yield %50 : i1
        } else {
          %50 = arith.addi %44, %c1 : index
          %51 = arith.addi %45, %c1 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          %54 = arith.cmpi ult, %52, %53 : index
          scf.yield %54 : i1
        }
        scf.if %49 {
          %50 = arith.muli %1, %c2 : index
          %51 = arith.muli %7, %c2 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          memref.store %53, %arg2[%50] : memref<?xindex>
          memref.store %52, %arg2[%51] : memref<?xindex>
          %54 = arith.addi %50, %c1 : index
          %55 = arith.addi %51, %c1 : index
          %56 = memref.load %arg2[%54] : memref<?xindex>
          %57 = memref.load %arg2[%55] : memref<?xindex>
          memref.store %57, %arg2[%54] : memref<?xindex>
          memref.store %56, %arg2[%55] : memref<?xindex>
          %58 = memref.load %arg3[%1] : memref<?xf64>
          %59 = memref.load %arg3[%7] : memref<?xf64>
          memref.store %59, %arg3[%1] : memref<?xf64>
          memref.store %58, %arg3[%7] : memref<?xf64>
          %60 = arith.muli %7, %c2 : index
          %61 = arith.muli %arg0, %c2 : index
          %62 = memref.load %arg2[%60] : memref<?xindex>
          %63 = memref.load %arg2[%61] : memref<?xindex>
          %64 = arith.cmpi ne, %62, %63 : index
          %65 = scf.if %64 -> (i1) {
            %66 = arith.cmpi ult, %62, %63 : index
            scf.yield %66 : i1
          } else {
            %66 = arith.addi %60, %c1 : index
            %67 = arith.addi %61, %c1 : index
            %68 = memref.load %arg2[%66] : memref<?xindex>
            %69 = memref.load %arg2[%67] : memref<?xindex>
            %70 = arith.cmpi ult, %68, %69 : index
            scf.yield %70 : i1
          }
          scf.if %65 {
            %66 = arith.muli %7, %c2 : index
            %67 = arith.muli %arg0, %c2 : index
            %68 = memref.load %arg2[%66] : memref<?xindex>
            %69 = memref.load %arg2[%67] : memref<?xindex>
            memref.store %69, %arg2[%66] : memref<?xindex>
            memref.store %68, %arg2[%67] : memref<?xindex>
            %70 = arith.addi %66, %c1 : index
            %71 = arith.addi %67, %c1 : index
            %72 = memref.load %arg2[%70] : memref<?xindex>
            %73 = memref.load %arg2[%71] : memref<?xindex>
            memref.store %73, %arg2[%70] : memref<?xindex>
            memref.store %72, %arg2[%71] : memref<?xindex>
            %74 = memref.load %arg3[%7] : memref<?xf64>
            %75 = memref.load %arg3[%arg0] : memref<?xf64>
            memref.store %75, %arg3[%7] : memref<?xf64>
            memref.store %74, %arg3[%arg0] : memref<?xf64>
          }
        }
      }
      %28 = arith.muli %2, %c2 : index
      %29 = arith.muli %9, %c2 : index
      %30 = memref.load %arg2[%28] : memref<?xindex>
      %31 = memref.load %arg2[%29] : memref<?xindex>
      %32 = arith.cmpi ne, %30, %31 : index
      %33 = scf.if %32 -> (i1) {
        %34 = arith.cmpi ult, %30, %31 : index
        scf.yield %34 : i1
      } else {
        %34 = arith.addi %28, %c1 : index
        %35 = arith.addi %29, %c1 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        %38 = arith.cmpi ult, %36, %37 : index
        scf.yield %38 : i1
      }
      scf.if %33 {
        %34 = arith.muli %2, %c2 : index
        %35 = arith.muli %9, %c2 : index
        %36 = memref.load %arg2[%34] : memref<?xindex>
        %37 = memref.load %arg2[%35] : memref<?xindex>
        memref.store %37, %arg2[%34] : memref<?xindex>
        memref.store %36, %arg2[%35] : memref<?xindex>
        %38 = arith.addi %34, %c1 : index
        %39 = arith.addi %35, %c1 : index
        %40 = memref.load %arg2[%38] : memref<?xindex>
        %41 = memref.load %arg2[%39] : memref<?xindex>
        memref.store %41, %arg2[%38] : memref<?xindex>
        memref.store %40, %arg2[%39] : memref<?xindex>
        %42 = memref.load %arg3[%2] : memref<?xf64>
        %43 = memref.load %arg3[%9] : memref<?xf64>
        memref.store %43, %arg3[%2] : memref<?xf64>
        memref.store %42, %arg3[%9] : memref<?xf64>
        %44 = arith.muli %9, %c2 : index
        %45 = arith.muli %1, %c2 : index
        %46 = memref.load %arg2[%44] : memref<?xindex>
        %47 = memref.load %arg2[%45] : memref<?xindex>
        %48 = arith.cmpi ne, %46, %47 : index
        %49 = scf.if %48 -> (i1) {
          %50 = arith.cmpi ult, %46, %47 : index
          scf.yield %50 : i1
        } else {
          %50 = arith.addi %44, %c1 : index
          %51 = arith.addi %45, %c1 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          %54 = arith.cmpi ult, %52, %53 : index
          scf.yield %54 : i1
        }
        scf.if %49 {
          %50 = arith.muli %9, %c2 : index
          %51 = arith.muli %1, %c2 : index
          %52 = memref.load %arg2[%50] : memref<?xindex>
          %53 = memref.load %arg2[%51] : memref<?xindex>
          memref.store %53, %arg2[%50] : memref<?xindex>
          memref.store %52, %arg2[%51] : memref<?xindex>
          %54 = arith.addi %50, %c1 : index
          %55 = arith.addi %51, %c1 : index
          %56 = memref.load %arg2[%54] : memref<?xindex>
          %57 = memref.load %arg2[%55] : memref<?xindex>
          memref.store %57, %arg2[%54] : memref<?xindex>
          memref.store %56, %arg2[%55] : memref<?xindex>
          %58 = memref.load %arg3[%9] : memref<?xf64>
          %59 = memref.load %arg3[%1] : memref<?xf64>
          memref.store %59, %arg3[%9] : memref<?xf64>
          memref.store %58, %arg3[%1] : memref<?xf64>
          %60 = arith.muli %1, %c2 : index
          %61 = arith.muli %7, %c2 : index
          %62 = memref.load %arg2[%60] : memref<?xindex>
          %63 = memref.load %arg2[%61] : memref<?xindex>
          %64 = arith.cmpi ne, %62, %63 : index
          %65 = scf.if %64 -> (i1) {
            %66 = arith.cmpi ult, %62, %63 : index
            scf.yield %66 : i1
          } else {
            %66 = arith.addi %60, %c1 : index
            %67 = arith.addi %61, %c1 : index
            %68 = memref.load %arg2[%66] : memref<?xindex>
            %69 = memref.load %arg2[%67] : memref<?xindex>
            %70 = arith.cmpi ult, %68, %69 : index
            scf.yield %70 : i1
          }
          scf.if %65 {
            %66 = arith.muli %1, %c2 : index
            %67 = arith.muli %7, %c2 : index
            %68 = memref.load %arg2[%66] : memref<?xindex>
            %69 = memref.load %arg2[%67] : memref<?xindex>
            memref.store %69, %arg2[%66] : memref<?xindex>
            memref.store %68, %arg2[%67] : memref<?xindex>
            %70 = arith.addi %66, %c1 : index
            %71 = arith.addi %67, %c1 : index
            %72 = memref.load %arg2[%70] : memref<?xindex>
            %73 = memref.load %arg2[%71] : memref<?xindex>
            memref.store %73, %arg2[%70] : memref<?xindex>
            memref.store %72, %arg2[%71] : memref<?xindex>
            %74 = memref.load %arg3[%1] : memref<?xf64>
            %75 = memref.load %arg3[%7] : memref<?xf64>
            memref.store %75, %arg3[%1] : memref<?xf64>
            memref.store %74, %arg3[%7] : memref<?xf64>
            %76 = arith.muli %7, %c2 : index
            %77 = arith.muli %arg0, %c2 : index
            %78 = memref.load %arg2[%76] : memref<?xindex>
            %79 = memref.load %arg2[%77] : memref<?xindex>
            %80 = arith.cmpi ne, %78, %79 : index
            %81 = scf.if %80 -> (i1) {
              %82 = arith.cmpi ult, %78, %79 : index
              scf.yield %82 : i1
            } else {
              %82 = arith.addi %76, %c1 : index
              %83 = arith.addi %77, %c1 : index
              %84 = memref.load %arg2[%82] : memref<?xindex>
              %85 = memref.load %arg2[%83] : memref<?xindex>
              %86 = arith.cmpi ult, %84, %85 : index
              scf.yield %86 : i1
            }
            scf.if %81 {
              %82 = arith.muli %7, %c2 : index
              %83 = arith.muli %arg0, %c2 : index
              %84 = memref.load %arg2[%82] : memref<?xindex>
              %85 = memref.load %arg2[%83] : memref<?xindex>
              memref.store %85, %arg2[%82] : memref<?xindex>
              memref.store %84, %arg2[%83] : memref<?xindex>
              %86 = arith.addi %82, %c1 : index
              %87 = arith.addi %83, %c1 : index
              %88 = memref.load %arg2[%86] : memref<?xindex>
              %89 = memref.load %arg2[%87] : memref<?xindex>
              memref.store %89, %arg2[%86] : memref<?xindex>
              memref.store %88, %arg2[%87] : memref<?xindex>
              %90 = memref.load %arg3[%7] : memref<?xf64>
              %91 = memref.load %arg3[%arg0] : memref<?xf64>
              memref.store %91, %arg3[%7] : memref<?xf64>
              memref.store %90, %arg3[%arg0] : memref<?xf64>
            }
          }
        }
      }
    }
    %5:4 = scf.while (%arg4 = %arg0, %arg5 = %2, %arg6 = %1, %arg7 = %true) : (index, index, index, i1) -> (index, index, index, i1) {
      scf.condition(%arg7) %arg4, %arg5, %arg6, %arg7 : index, index, index, i1
    } do {
    ^bb0(%arg4: index, %arg5: index, %arg6: index, %arg7: i1):
      %6 = scf.while (%arg8 = %arg4) : (index) -> index {
        %22 = arith.muli %arg8, %c2 : index
        %23 = arith.muli %arg6, %c2 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        %26 = arith.cmpi ne, %24, %25 : index
        %27 = scf.if %26 -> (i1) {
          %28 = arith.cmpi ult, %24, %25 : index
          scf.yield %28 : i1
        } else {
          %28 = arith.addi %22, %c1 : index
          %29 = arith.addi %23, %c1 : index
          %30 = memref.load %arg2[%28] : memref<?xindex>
          %31 = memref.load %arg2[%29] : memref<?xindex>
          %32 = arith.cmpi ult, %30, %31 : index
          scf.yield %32 : i1
        }
        scf.condition(%27) %arg8 : index
      } do {
      ^bb0(%arg8: index):
        %22 = arith.addi %arg8, %c1 : index
        scf.yield %22 : index
      }
      %7 = arith.muli %6, %c2 : index
      %8 = arith.muli %arg6, %c2 : index
      %9 = memref.load %arg2[%7] : memref<?xindex>
      %10 = memref.load %arg2[%8] : memref<?xindex>
      %11 = arith.cmpi ne, %9, %10 : index
      %12 = scf.if %11 -> (i1) {
        scf.yield %false : i1
      } else {
        %22 = arith.addi %7, %c1 : index
        %23 = arith.addi %8, %c1 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        %26 = arith.cmpi eq, %24, %25 : index
        scf.yield %26 : i1
      }
      %13 = scf.while (%arg8 = %arg5) : (index) -> index {
        %22 = arith.muli %arg6, %c2 : index
        %23 = arith.muli %arg8, %c2 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        %26 = arith.cmpi ne, %24, %25 : index
        %27 = scf.if %26 -> (i1) {
          %28 = arith.cmpi ult, %24, %25 : index
          scf.yield %28 : i1
        } else {
          %28 = arith.addi %22, %c1 : index
          %29 = arith.addi %23, %c1 : index
          %30 = memref.load %arg2[%28] : memref<?xindex>
          %31 = memref.load %arg2[%29] : memref<?xindex>
          %32 = arith.cmpi ult, %30, %31 : index
          scf.yield %32 : i1
        }
        scf.condition(%27) %arg8 : index
      } do {
      ^bb0(%arg8: index):
        %22 = arith.addi %arg8, %c-1 : index
        scf.yield %22 : index
      }
      %14 = arith.muli %13, %c2 : index
      %15 = arith.muli %arg6, %c2 : index
      %16 = memref.load %arg2[%14] : memref<?xindex>
      %17 = memref.load %arg2[%15] : memref<?xindex>
      %18 = arith.cmpi ne, %16, %17 : index
      %19 = scf.if %18 -> (i1) {
        scf.yield %false : i1
      } else {
        %22 = arith.addi %14, %c1 : index
        %23 = arith.addi %15, %c1 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        %26 = arith.cmpi eq, %24, %25 : index
        scf.yield %26 : i1
      }
      %20 = arith.cmpi ult, %6, %13 : index
      %21:4 = scf.if %20 -> (index, index, index, i1) {
        %22 = arith.muli %6, %c2 : index
        %23 = arith.muli %13, %c2 : index
        %24 = memref.load %arg2[%22] : memref<?xindex>
        %25 = memref.load %arg2[%23] : memref<?xindex>
        memref.store %25, %arg2[%22] : memref<?xindex>
        memref.store %24, %arg2[%23] : memref<?xindex>
        %26 = arith.addi %22, %c1 : index
        %27 = arith.addi %23, %c1 : index
        %28 = memref.load %arg2[%26] : memref<?xindex>
        %29 = memref.load %arg2[%27] : memref<?xindex>
        memref.store %29, %arg2[%26] : memref<?xindex>
        memref.store %28, %arg2[%27] : memref<?xindex>
        %30 = memref.load %arg3[%6] : memref<?xf64>
        %31 = memref.load %arg3[%13] : memref<?xf64>
        memref.store %31, %arg3[%6] : memref<?xf64>
        memref.store %30, %arg3[%13] : memref<?xf64>
        %32 = arith.cmpi eq, %6, %arg6 : index
        %33 = scf.if %32 -> (index) {
          scf.yield %13 : index
        } else {
          %36 = arith.cmpi eq, %13, %arg6 : index
          %37 = scf.if %36 -> (index) {
            scf.yield %6 : index
          } else {
            scf.yield %arg6 : index
          }
          scf.yield %37 : index
        }
        %34 = arith.andi %12, %19 : i1
        %35:2 = scf.if %34 -> (index, index) {
          %36 = arith.addi %6, %c1 : index
          %37 = arith.subi %13, %c1 : index
          scf.yield %36, %37 : index, index
        } else {
          scf.yield %6, %13 : index, index
        }
        scf.yield %35#0, %35#1, %33, %true : index, index, index, i1
      } else {
        %22 = arith.addi %13, %c1 : index
        scf.yield %6, %13, %22, %false : index, index, index, i1
      }
      scf.yield %21#0, %21#1, %21#2, %21#3 : index, index, index, i1
    }
    return %5#2 : index
  }
  func.func private @_sparse_hybrid_qsort_0_1_index_coo_0_f64(%arg0: index, %arg1: index, %arg2: memref<?xindex>, %arg3: memref<?xf64>, %arg4: i64) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0:2 = scf.while (%arg5 = %arg0, %arg6 = %arg1) : (index, index) -> (index, index) {
      %1 = arith.addi %arg5, %c1 : index
      %2 = arith.cmpi ult, %1, %arg6 : index
      scf.condition(%2) %arg5, %arg6 : index, index
    } do {
    ^bb0(%arg5: index, %arg6: index):
      %1 = arith.subi %arg6, %arg5 : index
      %2 = arith.cmpi ule, %1, %c30 : index
      %3:2 = scf.if %2 -> (index, index) {
        func.call @_sparse_sort_stable_0_1_index_coo_0_f64(%arg5, %arg6, %arg2, %arg3) : (index, index, memref<?xindex>, memref<?xf64>) -> ()
        scf.yield %arg5, %arg5 : index, index
      } else {
        %4 = arith.subi %arg4, %c1_i64 : i64
        %5 = arith.cmpi ule, %4, %c0_i64 : i64
        %6:2 = scf.if %5 -> (index, index) {
          func.call @_sparse_heap_sort_0_1_index_coo_0_f64(%arg5, %arg6, %arg2, %arg3) : (index, index, memref<?xindex>, memref<?xf64>) -> ()
          scf.yield %arg5, %arg5 : index, index
        } else {
          %7 = func.call @_sparse_partition_0_1_index_coo_0_f64(%arg5, %arg6, %arg2, %arg3) : (index, index, memref<?xindex>, memref<?xf64>) -> index
          %8 = arith.subi %7, %arg5 : index
          %9 = arith.subi %arg6, %7 : index
          %10 = arith.subi %arg6, %arg5 : index
          %11 = arith.cmpi ugt, %10, %c2 : index
          %12:2 = scf.if %11 -> (index, index) {
            %13 = arith.cmpi ule, %8, %9 : index
            %14:2 = scf.if %13 -> (index, index) {
              %15 = arith.cmpi ne, %8, %c0 : index
              scf.if %15 {
                func.call @_sparse_hybrid_qsort_0_1_index_coo_0_f64(%arg5, %7, %arg2, %arg3, %4) : (index, index, memref<?xindex>, memref<?xf64>, i64) -> ()
              }
              scf.yield %7, %arg6 : index, index
            } else {
              %15 = arith.cmpi ne, %9, %c0 : index
              scf.if %15 {
                func.call @_sparse_hybrid_qsort_0_1_index_coo_0_f64(%7, %arg6, %arg2, %arg3, %4) : (index, index, memref<?xindex>, memref<?xf64>, i64) -> ()
              }
              scf.yield %arg5, %7 : index, index
            }
            scf.yield %14#0, %14#1 : index, index
          } else {
            scf.yield %arg5, %arg5 : index, index
          }
          scf.yield %12#0, %12#1 : index, index
        }
        scf.yield %6#0, %6#1 : index, index
      }
      scf.yield %3#0, %3#1 : index, index
    }
    return
  }
  func.func @main() -> i64 {
    %c64_i64 = arith.constant 64 : i64
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1_i64 = arith.constant 1 : i64
    %0 = memref.get_global @__constant_3x2xf64 : memref<3x2xf64>
    %1 = memref.get_global @__constant_4x3xf64 : memref<4x3xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<4x2xf64>
    %alloc_0 = memref.alloc(%c16) : memref<?xindex>
    %alloc_1 = memref.alloc(%c16) : memref<?xindex>
    %alloc_2 = memref.alloc(%c16) : memref<?xf64>
    %2 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %c0_i64 = arith.constant 0 : i64
    %3 = llvm.insertvalue %c0_i64, %2[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %c0_i64, %3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %c0_i64, %4[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %6 = arith.index_cast %c3 : index to i64
    %7 = llvm.insertvalue %6, %5[0, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %7[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %9 = arith.index_cast %8 : i64 to index
    %10 = arith.addi %9, %c1 : index
    %11 = arith.cmpi ugt, %10, %c16 : index
    %12 = scf.if %11 -> (memref<?xindex>) {
      %62 = memref.realloc %alloc_0(%c32) : memref<?xindex> to memref<?xindex>
      scf.yield %62 : memref<?xindex>
    } else {
      scf.yield %alloc_0 : memref<?xindex>
    }
    memref.store %c0, %12[%9] : memref<?xindex>
    %13 = arith.index_cast %10 : index to i64
    %14 = llvm.insertvalue %13, %7[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %15 = arith.index_cast %c4 : index to i64
    %16 = llvm.insertvalue %15, %14[0, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %dim = memref.dim %12, %c0 : memref<?xindex>
    %17 = arith.addi %10, %c1 : index
    %18 = arith.cmpi ugt, %17, %dim : index
    %19 = scf.if %18 -> (memref<?xindex>) {
      %62 = arith.muli %dim, %c2 : index
      %63 = memref.realloc %12(%62) : memref<?xindex> to memref<?xindex>
      scf.yield %63 : memref<?xindex>
    } else {
      scf.yield %12 : memref<?xindex>
    }
    memref.store %c0, %19[%10] : memref<?xindex>
    %20 = arith.index_cast %17 : index to i64
    %21 = llvm.insertvalue %20, %16[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %22:4 = scf.for %arg0 = %c0 to %c4 step %c1 iter_args(%arg1 = %19, %arg2 = %alloc_1, %arg3 = %alloc_2, %arg4 = %21) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
      %62:4 = scf.for %arg5 = %c0 to %c3 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
        %63 = memref.load %1[%arg0, %arg5] : memref<4x3xf64>
        %64 = arith.cmpf une, %63, %cst : f64
        %65:4 = scf.if %64 -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
          %66:4 = func.call @_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0(%arg6, %arg7, %arg8, %arg9, %arg5, %arg0, %63) : (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index, index, f64) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>)
          scf.yield %66#0, %66#1, %66#2, %66#3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
        } else {
          scf.yield %arg6, %arg7, %arg8, %arg9 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
        }
        scf.yield %65#0, %65#1, %65#2, %65#3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
      } {"Emitted from" = "sparse_tensor.foreach"}
      scf.yield %62#0, %62#1, %62#2, %62#3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    } {"Emitted from" = "sparse_tensor.foreach"}
    %23 = llvm.extractvalue %22#3[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %24 = arith.index_cast %23 : i64 to index
    %25 = arith.index_cast %24 : index to i64
    %26 = math.ctlz %25 : i64
    %27 = arith.subi %c64_i64, %26 : i64
    call @_sparse_hybrid_qsort_0_1_index_coo_0_f64(%c0, %24, %22#1, %22#2, %27) : (index, index, memref<?xindex>, memref<?xf64>, i64) -> ()
    %alloc_3 = memref.alloc(%c16) : memref<?xindex>
    %alloc_4 = memref.alloc(%c16) : memref<?xindex>
    %alloc_5 = memref.alloc(%c16) : memref<?xf64>
    %28 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %c0_i64_6 = arith.constant 0 : i64
    %29 = llvm.insertvalue %c0_i64_6, %28[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %c0_i64_6, %29[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %c0_i64_6, %30[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %32 = arith.index_cast %c3 : index to i64
    %33 = llvm.insertvalue %32, %31[0, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %34 = arith.index_cast %c4 : index to i64
    %35 = llvm.insertvalue %34, %33[0, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %36 = llvm.extractvalue %35[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %37 = arith.index_cast %36 : i64 to index
    %38 = arith.addi %37, %c1 : index
    %39 = arith.cmpi ugt, %38, %c16 : index
    %40 = scf.if %39 -> (memref<?xindex>) {
      %62 = memref.realloc %alloc_3(%c32) : memref<?xindex> to memref<?xindex>
      scf.yield %62 : memref<?xindex>
    } else {
      scf.yield %alloc_3 : memref<?xindex>
    }
    memref.store %c0, %40[%37] : memref<?xindex>
    %41 = arith.index_cast %38 : index to i64
    %42 = llvm.insertvalue %41, %35[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %dim_7 = memref.dim %40, %c0 : memref<?xindex>
    %43 = arith.addi %38, %c3 : index
    %44 = arith.cmpi ugt, %43, %dim_7 : index
    %45 = scf.if %44 -> (memref<?xindex>) {
      %62 = scf.while (%arg0 = %dim_7) : (index) -> index {
        %64 = arith.muli %arg0, %c2 : index
        %65 = arith.cmpi ugt, %43, %64 : index
        scf.condition(%65) %64 : index
      } do {
      ^bb0(%arg0: index):
        scf.yield %arg0 : index
      }
      %63 = memref.realloc %40(%62) : memref<?xindex> to memref<?xindex>
      scf.yield %63 : memref<?xindex>
    } else {
      scf.yield %40 : memref<?xindex>
    }
    %subview = memref.subview %45[%38] [%c3] [%c1] : memref<?xindex> to memref<?xindex, strided<[?], offset: ?>>
    linalg.fill ins(%c0 : index) outs(%subview : memref<?xindex, strided<[?], offset: ?>>)
    %46 = arith.index_cast %43 : index to i64
    %47 = llvm.insertvalue %46, %42[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %48 = llvm.extractvalue %22#3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %49 = arith.index_cast %48 : i64 to index
    %50 = arith.divui %49, %c2 : index
    %subview_8 = memref.subview %22#1[%c0] [%50] [%c2] : memref<?xindex> to memref<?xindex, strided<[?], offset: ?>>
    %51 = llvm.extractvalue %22#3[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %52 = arith.index_cast %51 : i64 to index
    %53 = arith.divui %52, %c2 : index
    %subview_9 = memref.subview %22#1[%c1] [%53] [%c2] : memref<?xindex> to memref<?xindex, strided<[?], offset: ?>>
    %54 = memref.load %22#0[%c0] : memref<?xindex>
    %55 = memref.load %22#0[%c1] : memref<?xindex>
    %56:4 = scf.for %arg0 = %54 to %55 step %c1 iter_args(%arg1 = %45, %arg2 = %alloc_4, %arg3 = %alloc_5, %arg4 = %47) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
      %62 = memref.load %subview_8[%arg0] : memref<?xindex, strided<[?], offset: ?>>
      %63 = arith.addi %arg0, %c1 : index
      %64:4 = scf.for %arg5 = %arg0 to %63 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %arg4) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) {
        %65 = memref.load %subview_9[%arg5] : memref<?xindex, strided<[?], offset: ?>>
        %66 = memref.load %22#2[%arg5] : memref<?xf64>
        %67:4 = func.call @_insert_dense_compressed_3_4_f64_0_0(%arg6, %arg7, %arg8, %arg9, %62, %65, %66) : (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, index, index, f64) -> (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>)
        scf.yield %67#0, %67#1, %67#2, %67#3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
      } {"Emitted from" = "sparse_tensor.foreach"}
      scf.yield %64#0, %64#1, %64#2, %64#3 : memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    } {"Emitted from" = "sparse_tensor.foreach"}
    %57 = llvm.extractvalue %56#3[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %58 = arith.index_cast %57 : i64 to index
    %59 = memref.load %56#0[%c0] : memref<?xindex>
    %60 = scf.for %arg0 = %c1 to %58 step %c1 iter_args(%arg1 = %59) -> (index) {
      %62 = memref.load %56#0[%arg0] : memref<?xindex>
      %63 = arith.cmpi eq, %62, %c0 : index
      %64 = scf.if %63 -> (index) {
        memref.store %arg1, %56#0[%arg0] : memref<?xindex>
        scf.yield %arg1 : index
      } else {
        scf.yield %62 : index
      }
      scf.yield %64 : index
    }
    %61 = call @matmul(%56#0, %56#1, %56#2, %56#3, %0, %alloc) : (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, memref<3x2xf64>, memref<4x2xf64>) -> memref<4x2xf64>
    return %c1_i64 : i64
  }
}

