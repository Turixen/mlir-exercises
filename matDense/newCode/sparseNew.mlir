#CSR = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d0 : dense, d1 : compressed),
  crdWidth = 32,
  posWidth = 32
}>

func.func @main(
  %x : tensor<9xf64>,
  %Gval: tensor<16xf64>,
  %Gpos: tensor<17xi32>,
  %Gcrd: tensor<16xi32>,
  %B : tensor<4x16xf64>,
  %D : tensor<4x4xf64>
  )
  -> tensor<9xf64> 
  {
  	%G = sparse_tensor.assemble ((%Gpos, %Gcrd), %Gval) : (tensor<17xi32>, tensor<16xi32>), tensor<16xf64> to tensor<16x9xf64, #CSR>

  	%x1_init = tensor.empty() : tensor<16xf64>
  	%x1 = linalg.matvec ins(%G, %x : tensor<16x9xf64, #CSR>, tensor<9xf64>) 
  	  outs(%x1_init: tensor<16xf64>) -> tensor<16xf64>

  	%x2_init = tensor.empty() : tensor<4xf64>
  	%x2 = linalg.matvec ins(%B, %x1 : tensor<4x16xf64>, tensor<16xf64>)
  	  outs(%x2_init : tensor<4xf64>) -> tensor<4xf64>
	%x3_init = tensor.empty() : tensor<4xf64>
  %x3 = linalg.matvec ins(%D, %x2 : tensor<4x4xf64>, tensor<4xf64>)
    outs(%x3_init : tensor<4xf64>) -> tensor<4xf64>

  %Bt_init = tensor.empty() : tensor<16x4xf64>
  %Bt = linalg.transpose ins(%B : tensor<4x16xf64>) 
    outs(%Bt_init : tensor<16x4xf64>)
    permutation = [1, 0]

  %x4_init = tensor.empty() : tensor<16xf64>
  %x4 = linalg.matvec ins(%Bt, %x3 : tensor<16x4xf64>, tensor<4xf64>)
    outs(%x4_init : tensor<16xf64>) -> tensor<16xf64>

  %Gt_init = tensor.empty() : tensor<9x16xf64, #CSR>
  %Gt = linalg.transpose ins(%G : tensor<16x9xf64, #CSR>)
    outs(%Gt_init : tensor<9x16xf64, #CSR>)
    permutation = [1, 0]

  %x5_init = tensor.empty() : tensor<9xf64>
  %x5 = linalg.matvec ins(%Gt, %x4 : tensor<9x16xf64, #CSR>, tensor<16xf64>)
    outs(%x5_init: tensor<9xf64>) -> tensor<9xf64>

  return %x5: tensor<9xf64>
}
