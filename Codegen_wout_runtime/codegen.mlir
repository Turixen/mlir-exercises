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
        
        %t_sparse = call @test_assemble() : () -> tensor<4x3xf64, #CSC>

        %s = arith.constant dense<[ [1.0, 4.0],
            [0.0, 0.0],
            [0.0, 6.0] ]> : tensor<3x2xf64>
        %0 = call @matmul(%t_sparse, %s, %c) : 
        (tensor<4x3xf64, #CSC>, tensor<3x2xf64>, tensor<4x2xf64>) -> tensor<4x2xf64>

        %result = arith.constant 1 : i64
		return %result : i64

    }
    
    func.func @test_assemble () -> tensor<4x3xf64, #CSC> {
        %values       = arith.constant dense<[3.0, 5.0, 7.0, 4.0]> : tensor<4xf64>
        %row_indices  = arith.constant dense<[1, 0, 2, 2]>         : tensor<4xindex>
        %col_pointers = arith.constant dense<[0, 1, 3, 4]>         : tensor<4xindex>
        %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
            : (tensor<4xindex>, tensor<4xindex>), tensor<4xf64> to tensor<4x3xf64, #CSC>

        return %sparse_tensor : tensor<4x3xf64, #CSC>
    }

}


