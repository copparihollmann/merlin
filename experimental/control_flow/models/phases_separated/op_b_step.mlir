module {
  func.func @main_graph(%arg0: !torch.vtensor<[2],f32>, %arg1: !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> attributes {torch.onnx_meta.ir_version = 8 : si64, torch.onnx_meta.opset_version = 18 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "2.8.0"} {
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
    %24 = torch.operator "onnx.Sub"(%arg1, %23) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %25 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__8> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %26 = torch.operator "onnx.Mul"(%12, %25) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %27 = torch.operator "onnx.Sub"(%26, %17) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %28 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__9> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %29 = torch.operator "onnx.Mul"(%15, %28) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %30 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__10> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %31 = torch.operator "onnx.Unsqueeze"(%27, %30) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %32 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__11> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %33 = torch.operator "onnx.Unsqueeze"(%29, %32) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %34 = torch.operator "onnx.Concat"(%31, %33) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %35 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__12> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %36 = torch.operator "onnx.Unsqueeze"(%11, %35) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %37 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__13> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %38 = torch.operator "onnx.Unsqueeze"(%10, %37) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %39 = torch.operator "onnx.Concat"(%36, %38) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %40 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__14> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %41 = torch.operator "onnx.Unsqueeze"(%34, %40) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %42 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__15> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %43 = torch.operator "onnx.Unsqueeze"(%39, %42) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %44 = torch.operator "onnx.Concat"(%41, %43) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %45 = torch.operator "onnx.Gather"(%44, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %46 = torch.operator "onnx.Gather"(%45, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %47 = torch.operator "onnx.Gather"(%44, %2) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %48 = torch.operator "onnx.Gather"(%47, %2) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %49 = torch.operator "onnx.Mul"(%46, %48) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %50 = torch.operator "onnx.Gather"(%45, %2) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %51 = torch.operator "onnx.Gather"(%47, %0) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %52 = torch.operator "onnx.Mul"(%50, %51) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %53 = torch.operator "onnx.Sub"(%49, %52) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %54 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__16> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %55 = torch.operator "onnx.Add"(%53, %54) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %56 = torch.operator "onnx.Reciprocal"(%55) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %57 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__17> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %58 = torch.operator "onnx.Mul"(%56, %57) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %59 = torch.operator "onnx.Neg"(%50) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %60 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__18> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %61 = torch.operator "onnx.Unsqueeze"(%48, %60) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %62 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__19> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %63 = torch.operator "onnx.Unsqueeze"(%59, %62) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %64 = torch.operator "onnx.Concat"(%61, %63) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %65 = torch.operator "onnx.Neg"(%51) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %66 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__20> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %67 = torch.operator "onnx.Unsqueeze"(%65, %66) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %68 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__21> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %69 = torch.operator "onnx.Unsqueeze"(%46, %68) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %70 = torch.operator "onnx.Concat"(%67, %69) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %71 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__22> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %72 = torch.operator "onnx.Unsqueeze"(%64, %71) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %73 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__23> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %74 = torch.operator "onnx.Unsqueeze"(%70, %73) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %75 = torch.operator "onnx.Concat"(%72, %74) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %76 = torch.operator "onnx.Mul"(%75, %58) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %77 = torch.operator "onnx.MatMul"(%76, %24) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %78 = torch.operator "onnx.Add"(%arg0, %77) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    return %78 : !torch.vtensor<[2],f32>
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
      __8: "0x08000000000080BF",
      __9: "0x08000000000080BF",
      __10: "0x080000000000000000000000",
      __11: "0x080000000000000000000000",
      __12: "0x080000000000000000000000",
      __13: "0x080000000000000000000000",
      __14: "0x080000000000000000000000",
      __15: "0x080000000000000000000000",
      __16: "0x08000000BD378635",
      __17: "0x080000000000803F",
      __18: "0x080000000000000000000000",
      __19: "0x080000000000000000000000",
      __20: "0x080000000000000000000000",
      __21: "0x080000000000000000000000",
      __22: "0x080000000000000000000000",
      __23: "0x080000000000000000000000"
    }
  }
#-}

