func.func @matmul_128x256x256_i8_i32(
  %A: memref<128x256xi8>,
  %B: memref<256x256xi8>,
  %C: memref<128x256xi32>
) {
  linalg.matmul
    ins(%A, %B : memref<128x256xi8>, memref<256x256xi8>)
    outs(%C : memref<128x256xi32>)
  return
}
