func.func @conv_2x2x5x5_f32(
  %input: memref<2x2x5x5xf32>,
  %weight: memref<2x2x3x3xf32>,
  %output: memref<2x2x3x3xf32>
) {
  linalg.conv_2d_nchw_fchw
    ins(%input, %weight : memref<2x2x5x5xf32>, memref<2x2x3x3xf32>)
    outs(%output : memref<2x2x3x3xf32>)
  return
}
