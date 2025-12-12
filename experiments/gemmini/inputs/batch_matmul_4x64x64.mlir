func.func @batch_matmul_4x64x64(
  %A: memref<4x64x64xi8>,
  %B: memref<4x64x64xi8>,
  %C: memref<4x64x64xi8>
) {
  %c0 = arith.constant 0 : i8
  linalg.fill ins(%c0 : i8) outs(%C : memref<4x64x64xi8>)
  linalg.batch_matmul
    ins(%A, %B : memref<4x64x64xi8>, memref<4x64x64xi8>)
    outs(%C : memref<4x64x64xi8>)
  return
}
