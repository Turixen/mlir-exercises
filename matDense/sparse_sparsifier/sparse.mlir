#CSC = #sparse_tensor.encoding<{
   map = (d0, d1) -> (d1: dense, d0: compressed)
 }>

module{
	func.func @matmul(%t : tensor<4x3xf64, #CSC>,%s : tensor<3x2xf64>, %out : tensor<4x2xf64>)
	 -> tensor<4x2xf64> {
		%0 = linalg.matmul
			ins(%t, %s: tensor<4x3xf64, #CSC>, tensor<3x2xf64>)
			outs(%out: tensor<4x2xf64>) -> tensor<4x2xf64>
                return %0 : tensor<4x2xf64>
        }

        func.func @main ()-> i64 {

                %c = tensor.empty() : tensor<4x2xf64>
                %t = arith.constant dense<[ [1.0, 0.0, 3.0],
                [0.0, 2.0, 4.0],
                [0.0, 0.0, 0.0],
                [0.0, 0.0, 5.0] ]> : tensor<4x3xf64>

		%t_sparse = sparse_tensor.convert %t : tensor<4x3xf64> to tensor<4x3xf64,#CSC>

                %s = arith.constant dense<[ [1.0, 4.0],
                [0.0, 0.0],
                [0.0, 6.0] ]> : tensor<3x2xf64>

                %0 = call @matmul(%t_sparse, %s, %c) : 
			(tensor<4x3xf64, #CSC>, tensor<3x2xf64>, tensor<4x2xf64>) -> tensor<4x2xf64>
                %c0 = arith.constant 0 : index
		%result = arith.constant 1 : i64
		return %result : i64

        }
}


