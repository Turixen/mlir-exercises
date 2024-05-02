#CSC = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d1: dense, d0: compressed)
}>

module{
	func.func @main ()-> tensor<4x2xf64>{

		%new_tensor = tensor.empty() : tensor<3x3xf64>

		%c = tensor.empty() : tensor<4x2xf64>
		%t = arith.constant dense<[ [1.0, 0.0, 3.0],
		[0.0, 2.0, 4.0],
		[0.0, 0.0, 0.0],
		[0.0, 0.0, 5.0] ]> : tensor<4x3xf64>
 
		%s = arith.constant dense<[ [1.0, 4.0],
                [0.0, 0.0],
                [0.0, 6.0] ]> : tensor<3x2xf64>

		%0 = linalg.matmul
		ins(%t, %s: tensor<4x3xf64>, tensor<3x2xf64>) 
		outs(%c: tensor<4x2xf64>) -> tensor<4x2xf64>

		return %0 : tensor<4x2xf64>
	}
}
