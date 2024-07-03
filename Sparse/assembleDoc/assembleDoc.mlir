#COO = #sparse_tensor.encoding<{
  map = (i, j) -> (i : compressed(nonunique), j : singleton)
}>

func.func @potato() -> tensor<3x4xf64, #COO> {
    %pos    = arith.constant dense<[0, 3]>                : tensor<2xindex>
    %index  = arith.constant dense<[[0,0], [1,2], [1,3]]> : tensor<3x2xindex>
    %values = arith.constant dense<[ 1.1,   2.2,   3.3 ]> : tensor<3xf64>
    %s = sparse_tensor.assemble (%pos, %index), %values
    : (tensor<2xindex>, tensor<3x2xindex>), tensor<3xf64> to tensor<3x4xf64, #COO>
    return %s : tensor<3x4xf64, #COO>
}




