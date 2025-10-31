module {
  func.func @main_graph(%arg0: !torch.vtensor<[2],f32>) -> !torch.vtensor<[19,2],f32> attributes {torch.onnx_meta.ir_version = 8 : si64, torch.onnx_meta.opset_version = 18 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "2.8.0"} {
    %none = torch.constant.none
    %0 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %1 = torch.operator "onnx.Gather"(%arg0, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %2 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__1> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %3 = torch.operator "onnx.Gather"(%arg0, %2) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %4 = torch.operator "onnx.Cos"(%1) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %5 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__2> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %6 = torch.operator "onnx.Mul"(%4, %5) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %7 = torch.operator "onnx.Add"(%1, %3) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %8 = torch.operator "onnx.Cos"(%7) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %9 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__3> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %10 = torch.operator "onnx.Mul"(%8, %9) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %11 = torch.operator "onnx.Add"(%6, %10) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %12 = torch.operator "onnx.Sin"(%1) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %13 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__4> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %14 = torch.operator "onnx.Mul"(%12, %13) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %15 = torch.operator "onnx.Sin"(%7) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %16 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__5> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %17 = torch.operator "onnx.Mul"(%15, %16) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %18 = torch.operator "onnx.Add"(%14, %17) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %19 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__6> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %20 = torch.operator "onnx.Unsqueeze"(%11, %19) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %21 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__7> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %22 = torch.operator "onnx.Unsqueeze"(%18, %21) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %23 = torch.operator "onnx.Concat"(%20, %22) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %24 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__8> : tensor<2xf32>} : () -> !torch.vtensor<[2],f32> 
    %25 = torch.operator "onnx.Add"(%23, %24) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %26 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__9> : tensor<2xf32>} : () -> !torch.vtensor<[2],f32> 
    %27 = torch.operator "onnx.Add"(%25, %26) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %28 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__10> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %29 = torch.operator "onnx.Mul"(%23, %28) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %30 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__11> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %31 = torch.operator "onnx.Mul"(%25, %30) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %32 = torch.operator "onnx.Add"(%29, %31) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[10,2],f32>) -> !torch.vtensor<[10,2],f32> 
    %33 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__12> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %34 = torch.operator "onnx.Mul"(%25, %33) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %35 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__13> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %36 = torch.operator "onnx.Mul"(%27, %35) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %37 = torch.operator "onnx.Add"(%34, %36) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[10,2],f32>) -> !torch.vtensor<[10,2],f32> 
    %38 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__14> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %39 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__15> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %40 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__16> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %41 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__17> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %42 = torch.operator "onnx.Slice"(%37, %39, %40, %38, %41) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[9,2],f32> 
    %43 = torch.operator "onnx.Concat"(%32, %42) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[9,2],f32>) -> !torch.vtensor<[19,2],f32> 
    return %43 : !torch.vtensor<[19,2],f32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      _: "0x080000000000000000000000",
      __1: "0x080000000100000000000000",
      __2: "0x080000000000803F",
      __3: "0x080000000000803F",
      __4: "0x080000000000803F",
      __5: "0x080000000000803F",
      __6: "0x080000000000000000000000",
      __7: "0x080000000000000000000000",
      __8: "0x08000000CDCC4CBE00000000",
      __9: "0x0800000000000000CDCCCCBD",
      __10: "0x080000000000803F398E633F721C473FAAAA2A3FE4380E3F388EE33EAAAAAA3E388E633E388EE33D00000000",
      __11: "0x0800000000000000398EE33D398E633EABAAAA3E398EE33EE4380E3FABAA2A3F721C473F398E633F0000803F",
      __12: "0x080000000000803F398E633F721C473FAAAA2A3FE4380E3F388EE33EAAAAAA3E388E633E388EE33D00000000",
      __13: "0x0800000000000000398EE33D398E633EABAAAA3E398EE33EE4380E3FABAA2A3F721C473F398E633F0000803F",
      __14: "0x080000000000000000000000",
      __15: "0x080000000100000000000000",
      __16: "0x08000000FFFFFFFFFFFFFF7F",
      __17: "0x080000000100000000000000"
    }
  }
#-}

