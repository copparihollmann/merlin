module {
  func.func @main_graph(%arg0: !torch.vtensor<[3],f32>, %arg1: !torch.vtensor<[2],f32>) -> !torch.vtensor<[3],f32> attributes {torch.onnx_meta.ir_version = 8 : si64, torch.onnx_meta.opset_version = 18 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "2.8.0"} {
    %none = torch.constant.none
    %0 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %1 = torch.operator "onnx.Gather"(%arg1, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %2 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__1> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %3 = torch.operator "onnx.Mul"(%1, %2) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %4 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__2> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %5 = torch.operator "onnx.Gather"(%arg1, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %6 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__3> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %7 = torch.operator "onnx.Mul"(%5, %6) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %8 = torch.operator "onnx.Add"(%3, %7) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %9 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__4> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %10 = torch.operator "onnx.Div"(%8, %9) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %11 = torch.operator "onnx.Sub"(%7, %3) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %12 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__5> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %13 = torch.operator "onnx.Div"(%11, %12) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %14 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__6> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %15 = torch.operator "onnx.Gather"(%arg0, %14) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %16 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__7> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %17 = torch.operator "onnx.Div"(%13, %16) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %18 = torch.operator "onnx.Add"(%15, %17) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %19 = torch.operator "onnx.Gather"(%arg0, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %20 = torch.operator "onnx.Cos"(%18) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %21 = torch.operator "onnx.Mul"(%10, %20) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %22 = torch.operator "onnx.Add"(%19, %21) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %23 = torch.operator "onnx.Gather"(%arg0, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %24 = torch.operator "onnx.Sin"(%18) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %25 = torch.operator "onnx.Mul"(%10, %24) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %26 = torch.operator "onnx.Add"(%23, %25) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %27 = torch.operator "onnx.Add"(%15, %13) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %28 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__8> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %29 = torch.operator "onnx.Unsqueeze"(%22, %28) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %30 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__9> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %31 = torch.operator "onnx.Unsqueeze"(%26, %30) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %32 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__10> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %33 = torch.operator "onnx.Unsqueeze"(%27, %32) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %34 = torch.operator "onnx.Concat"(%29, %31, %33) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[3],f32> 
    return %34 : !torch.vtensor<[3],f32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      _: "0x080000000000000000000000",
      __1: "0x0800000017B7D138",
      __2: "0x080000000100000000000000",
      __3: "0x0800000017B7D138",
      __4: "0x0800000000000040",
      __5: "0x080000000000003F",
      __6: "0x080000000200000000000000",
      __7: "0x0800000000000040",
      __8: "0x080000000000000000000000",
      __9: "0x080000000000000000000000",
      __10: "0x080000000000000000000000"
    }
  }
#-}

