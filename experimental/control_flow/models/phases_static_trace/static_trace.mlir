module {
  func.func @main_graph(%arg0: !torch.vtensor<[1,3,64,64],f32>, %arg1: !torch.vtensor<[3],f32>, %arg2: !torch.vtensor<[2],f32>, %arg3: !torch.vtensor<[2],f32>) -> (!torch.vtensor<[19,2],f32>, !torch.vtensor<[3],f32>) attributes {torch.onnx_meta.ir_version = 8 : si64, torch.onnx_meta.opset_version = 18 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "2.8.0"} {
    %0 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_op_a.network.0.weight> : tensor<4x3x4x4xf32>} : () -> !torch.vtensor<[4,3,4,4],f32> 
    %1 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_op_a.network.0.bias> : tensor<4xf32>} : () -> !torch.vtensor<[4],f32> 
    %2 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_op_a.network.4.weight> : tensor<2x256xf32>} : () -> !torch.vtensor<[2,256],f32> 
    %3 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_op_a.network.4.bias> : tensor<2xf32>} : () -> !torch.vtensor<[2],f32> 
    %none = torch.constant.none
    %4 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %5 = torch.operator "onnx.Gather"(%arg3, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %6 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__1> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %7 = torch.operator "onnx.Mul"(%5, %6) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %8 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__2> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %9 = torch.operator "onnx.Gather"(%arg3, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %10 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__3> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %11 = torch.operator "onnx.Mul"(%9, %10) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %12 = torch.operator "onnx.Add"(%7, %11) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %13 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__4> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %14 = torch.operator "onnx.Div"(%12, %13) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %15 = torch.operator "onnx.Sub"(%11, %7) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %16 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__5> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %17 = torch.operator "onnx.Div"(%15, %16) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %18 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__6> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %19 = torch.operator "onnx.Gather"(%arg1, %18) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %20 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__7> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %21 = torch.operator "onnx.Div"(%17, %20) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %22 = torch.operator "onnx.Add"(%19, %21) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %23 = torch.operator "onnx.Gather"(%arg1, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %24 = torch.operator "onnx.Cos"(%22) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %25 = torch.operator "onnx.Mul"(%14, %24) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %26 = torch.operator "onnx.Add"(%23, %25) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %27 = torch.operator "onnx.Gather"(%arg1, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[3],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %28 = torch.operator "onnx.Sin"(%22) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %29 = torch.operator "onnx.Mul"(%14, %28) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %30 = torch.operator "onnx.Add"(%27, %29) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %31 = torch.operator "onnx.Add"(%19, %17) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %32 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__8> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %33 = torch.operator "onnx.Unsqueeze"(%26, %32) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %34 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__9> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %35 = torch.operator "onnx.Unsqueeze"(%30, %34) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %36 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__10> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %37 = torch.operator "onnx.Unsqueeze"(%31, %36) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %38 = torch.operator "onnx.Concat"(%33, %35, %37) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[3],f32> 
    %39 = torch.operator "onnx.Conv"(%arg0, %0, %1) {torch.onnx.dilations = [1 : si64, 1 : si64], torch.onnx.group = 1 : si64, torch.onnx.kernel_shape = [4 : si64, 4 : si64], torch.onnx.pads = [1 : si64, 1 : si64, 1 : si64, 1 : si64], torch.onnx.strides = [4 : si64, 4 : si64]} : (!torch.vtensor<[1,3,64,64],f32>, !torch.vtensor<[4,3,4,4],f32>, !torch.vtensor<[4],f32>) -> !torch.vtensor<[1,4,16,16],f32> 
    %40 = torch.operator "onnx.Relu"(%39) : (!torch.vtensor<[1,4,16,16],f32>) -> !torch.vtensor<[1,4,16,16],f32> 
    %41 = torch.operator "onnx.MaxPool"(%40) {torch.onnx.ceil_mode = 0 : si64, torch.onnx.dilations = [1 : si64, 1 : si64], torch.onnx.kernel_shape = [2 : si64, 2 : si64], torch.onnx.pads = [0 : si64, 0 : si64, 0 : si64, 0 : si64], torch.onnx.strides = [2 : si64, 2 : si64]} : (!torch.vtensor<[1,4,16,16],f32>) -> !torch.vtensor<[1,4,8,8],f32> 
    %42 = torch.operator "onnx.Flatten"(%41) {torch.onnx.axis = 1 : si64} : (!torch.vtensor<[1,4,8,8],f32>) -> !torch.vtensor<[1,256],f32> 
    %43 = torch.operator "onnx.Gemm"(%42, %2, %3) {torch.onnx.alpha = 1.000000e+00 : f32, torch.onnx.beta = 1.000000e+00 : f32, torch.onnx.transB = 1 : si64} : (!torch.vtensor<[1,256],f32>, !torch.vtensor<[2,256],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[1,2],f32> 
    %44 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__11> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %45 = torch.operator "onnx.Squeeze"(%43, %44) : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[2],f32> 
    %46 = torch.operator "onnx.Gather"(%arg2, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %47 = torch.operator "onnx.Gather"(%arg2, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %48 = torch.operator "onnx.Cos"(%46) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %49 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__12> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %50 = torch.operator "onnx.Mul"(%48, %49) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %51 = torch.operator "onnx.Add"(%46, %47) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %52 = torch.operator "onnx.Cos"(%51) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %53 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__13> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %54 = torch.operator "onnx.Mul"(%52, %53) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %55 = torch.operator "onnx.Add"(%50, %54) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %56 = torch.operator "onnx.Sin"(%46) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %57 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__14> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %58 = torch.operator "onnx.Mul"(%56, %57) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %59 = torch.operator "onnx.Sin"(%51) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %60 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__15> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %61 = torch.operator "onnx.Mul"(%59, %60) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %62 = torch.operator "onnx.Add"(%58, %61) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %63 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__16> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %64 = torch.operator "onnx.Unsqueeze"(%55, %63) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %65 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__17> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %66 = torch.operator "onnx.Unsqueeze"(%62, %65) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %67 = torch.operator "onnx.Concat"(%64, %66) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %68 = torch.operator "onnx.Sub"(%45, %67) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %69 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__18> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %70 = torch.operator "onnx.Mul"(%56, %69) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %71 = torch.operator "onnx.Sub"(%70, %61) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %72 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__19> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %73 = torch.operator "onnx.Mul"(%59, %72) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %74 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__20> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %75 = torch.operator "onnx.Unsqueeze"(%71, %74) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %76 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__21> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %77 = torch.operator "onnx.Unsqueeze"(%73, %76) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %78 = torch.operator "onnx.Concat"(%75, %77) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %79 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__22> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %80 = torch.operator "onnx.Unsqueeze"(%55, %79) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %81 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__23> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %82 = torch.operator "onnx.Unsqueeze"(%54, %81) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %83 = torch.operator "onnx.Concat"(%80, %82) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %84 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__24> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %85 = torch.operator "onnx.Unsqueeze"(%78, %84) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %86 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__25> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %87 = torch.operator "onnx.Unsqueeze"(%83, %86) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %88 = torch.operator "onnx.Concat"(%85, %87) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %89 = torch.operator "onnx.Gather"(%88, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %90 = torch.operator "onnx.Gather"(%89, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %91 = torch.operator "onnx.Gather"(%88, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %92 = torch.operator "onnx.Gather"(%91, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %93 = torch.operator "onnx.Mul"(%90, %92) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %94 = torch.operator "onnx.Gather"(%89, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %95 = torch.operator "onnx.Gather"(%91, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %96 = torch.operator "onnx.Mul"(%94, %95) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %97 = torch.operator "onnx.Sub"(%93, %96) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %98 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__26> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %99 = torch.operator "onnx.Add"(%97, %98) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %100 = torch.operator "onnx.Reciprocal"(%99) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %101 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__27> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %102 = torch.operator "onnx.Mul"(%100, %101) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %103 = torch.operator "onnx.Neg"(%94) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %104 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__28> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %105 = torch.operator "onnx.Unsqueeze"(%92, %104) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %106 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__29> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %107 = torch.operator "onnx.Unsqueeze"(%103, %106) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %108 = torch.operator "onnx.Concat"(%105, %107) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %109 = torch.operator "onnx.Neg"(%95) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %110 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__30> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %111 = torch.operator "onnx.Unsqueeze"(%109, %110) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %112 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__31> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %113 = torch.operator "onnx.Unsqueeze"(%90, %112) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %114 = torch.operator "onnx.Concat"(%111, %113) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %115 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__32> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %116 = torch.operator "onnx.Unsqueeze"(%108, %115) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %117 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__33> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %118 = torch.operator "onnx.Unsqueeze"(%114, %117) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %119 = torch.operator "onnx.Concat"(%116, %118) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %120 = torch.operator "onnx.Mul"(%119, %102) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %121 = torch.operator "onnx.MatMul"(%120, %68) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %122 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__34> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %123 = torch.operator "onnx.Mul"(%121, %122) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %124 = torch.operator "onnx.Add"(%arg2, %123) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %125 = torch.operator "onnx.Gather"(%124, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %126 = torch.operator "onnx.Gather"(%124, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %127 = torch.operator "onnx.Cos"(%125) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %128 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__35> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %129 = torch.operator "onnx.Mul"(%127, %128) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %130 = torch.operator "onnx.Add"(%125, %126) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %131 = torch.operator "onnx.Cos"(%130) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %132 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__36> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %133 = torch.operator "onnx.Mul"(%131, %132) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %134 = torch.operator "onnx.Add"(%129, %133) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %135 = torch.operator "onnx.Sin"(%125) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %136 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__37> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %137 = torch.operator "onnx.Mul"(%135, %136) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %138 = torch.operator "onnx.Sin"(%130) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %139 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__38> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %140 = torch.operator "onnx.Mul"(%138, %139) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %141 = torch.operator "onnx.Add"(%137, %140) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %142 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__39> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %143 = torch.operator "onnx.Unsqueeze"(%134, %142) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %144 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__40> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %145 = torch.operator "onnx.Unsqueeze"(%141, %144) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %146 = torch.operator "onnx.Concat"(%143, %145) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %147 = torch.operator "onnx.Sub"(%45, %146) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %148 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__41> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %149 = torch.operator "onnx.Mul"(%135, %148) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %150 = torch.operator "onnx.Sub"(%149, %140) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %151 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__42> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %152 = torch.operator "onnx.Mul"(%138, %151) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %153 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__43> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %154 = torch.operator "onnx.Unsqueeze"(%150, %153) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %155 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__44> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %156 = torch.operator "onnx.Unsqueeze"(%152, %155) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %157 = torch.operator "onnx.Concat"(%154, %156) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %158 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__45> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %159 = torch.operator "onnx.Unsqueeze"(%134, %158) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %160 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__46> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %161 = torch.operator "onnx.Unsqueeze"(%133, %160) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %162 = torch.operator "onnx.Concat"(%159, %161) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %163 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__47> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %164 = torch.operator "onnx.Unsqueeze"(%157, %163) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %165 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__48> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %166 = torch.operator "onnx.Unsqueeze"(%162, %165) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %167 = torch.operator "onnx.Concat"(%164, %166) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %168 = torch.operator "onnx.Gather"(%167, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %169 = torch.operator "onnx.Gather"(%168, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %170 = torch.operator "onnx.Gather"(%167, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %171 = torch.operator "onnx.Gather"(%170, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %172 = torch.operator "onnx.Mul"(%169, %171) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %173 = torch.operator "onnx.Gather"(%168, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %174 = torch.operator "onnx.Gather"(%170, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %175 = torch.operator "onnx.Mul"(%173, %174) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %176 = torch.operator "onnx.Sub"(%172, %175) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %177 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__49> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %178 = torch.operator "onnx.Add"(%176, %177) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %179 = torch.operator "onnx.Reciprocal"(%178) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %180 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__50> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %181 = torch.operator "onnx.Mul"(%179, %180) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %182 = torch.operator "onnx.Neg"(%173) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %183 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__51> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %184 = torch.operator "onnx.Unsqueeze"(%171, %183) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %185 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__52> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %186 = torch.operator "onnx.Unsqueeze"(%182, %185) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %187 = torch.operator "onnx.Concat"(%184, %186) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %188 = torch.operator "onnx.Neg"(%174) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %189 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__53> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %190 = torch.operator "onnx.Unsqueeze"(%188, %189) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %191 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__54> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %192 = torch.operator "onnx.Unsqueeze"(%169, %191) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %193 = torch.operator "onnx.Concat"(%190, %192) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %194 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__55> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %195 = torch.operator "onnx.Unsqueeze"(%187, %194) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %196 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__56> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %197 = torch.operator "onnx.Unsqueeze"(%193, %196) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %198 = torch.operator "onnx.Concat"(%195, %197) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %199 = torch.operator "onnx.Mul"(%198, %181) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %200 = torch.operator "onnx.MatMul"(%199, %147) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %201 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__57> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %202 = torch.operator "onnx.Mul"(%200, %201) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %203 = torch.operator "onnx.Add"(%124, %202) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %204 = torch.operator "onnx.Gather"(%203, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %205 = torch.operator "onnx.Gather"(%203, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %206 = torch.operator "onnx.Cos"(%204) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %207 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__58> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %208 = torch.operator "onnx.Mul"(%206, %207) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %209 = torch.operator "onnx.Add"(%204, %205) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %210 = torch.operator "onnx.Cos"(%209) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %211 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__59> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %212 = torch.operator "onnx.Mul"(%210, %211) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %213 = torch.operator "onnx.Add"(%208, %212) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %214 = torch.operator "onnx.Sin"(%204) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %215 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__60> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %216 = torch.operator "onnx.Mul"(%214, %215) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %217 = torch.operator "onnx.Sin"(%209) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %218 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__61> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %219 = torch.operator "onnx.Mul"(%217, %218) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %220 = torch.operator "onnx.Add"(%216, %219) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %221 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__62> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %222 = torch.operator "onnx.Unsqueeze"(%213, %221) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %223 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__63> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %224 = torch.operator "onnx.Unsqueeze"(%220, %223) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %225 = torch.operator "onnx.Concat"(%222, %224) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %226 = torch.operator "onnx.Sub"(%45, %225) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %227 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__64> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %228 = torch.operator "onnx.Mul"(%214, %227) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %229 = torch.operator "onnx.Sub"(%228, %219) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %230 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__65> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %231 = torch.operator "onnx.Mul"(%217, %230) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %232 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__66> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %233 = torch.operator "onnx.Unsqueeze"(%229, %232) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %234 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__67> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %235 = torch.operator "onnx.Unsqueeze"(%231, %234) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %236 = torch.operator "onnx.Concat"(%233, %235) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %237 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__68> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %238 = torch.operator "onnx.Unsqueeze"(%213, %237) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %239 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__69> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %240 = torch.operator "onnx.Unsqueeze"(%212, %239) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %241 = torch.operator "onnx.Concat"(%238, %240) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %242 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__70> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %243 = torch.operator "onnx.Unsqueeze"(%236, %242) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %244 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__71> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %245 = torch.operator "onnx.Unsqueeze"(%241, %244) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %246 = torch.operator "onnx.Concat"(%243, %245) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %247 = torch.operator "onnx.Gather"(%246, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %248 = torch.operator "onnx.Gather"(%247, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %249 = torch.operator "onnx.Gather"(%246, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %250 = torch.operator "onnx.Gather"(%249, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %251 = torch.operator "onnx.Mul"(%248, %250) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %252 = torch.operator "onnx.Gather"(%247, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %253 = torch.operator "onnx.Gather"(%249, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %254 = torch.operator "onnx.Mul"(%252, %253) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %255 = torch.operator "onnx.Sub"(%251, %254) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %256 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__72> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %257 = torch.operator "onnx.Add"(%255, %256) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %258 = torch.operator "onnx.Reciprocal"(%257) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %259 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__73> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %260 = torch.operator "onnx.Mul"(%258, %259) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %261 = torch.operator "onnx.Neg"(%252) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %262 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__74> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %263 = torch.operator "onnx.Unsqueeze"(%250, %262) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %264 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__75> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %265 = torch.operator "onnx.Unsqueeze"(%261, %264) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %266 = torch.operator "onnx.Concat"(%263, %265) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %267 = torch.operator "onnx.Neg"(%253) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %268 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__76> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %269 = torch.operator "onnx.Unsqueeze"(%267, %268) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %270 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__77> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %271 = torch.operator "onnx.Unsqueeze"(%248, %270) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %272 = torch.operator "onnx.Concat"(%269, %271) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %273 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__78> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %274 = torch.operator "onnx.Unsqueeze"(%266, %273) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %275 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__79> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %276 = torch.operator "onnx.Unsqueeze"(%272, %275) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %277 = torch.operator "onnx.Concat"(%274, %276) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %278 = torch.operator "onnx.Mul"(%277, %260) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %279 = torch.operator "onnx.MatMul"(%278, %226) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %280 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__80> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %281 = torch.operator "onnx.Mul"(%279, %280) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %282 = torch.operator "onnx.Add"(%203, %281) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %283 = torch.operator "onnx.Gather"(%282, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %284 = torch.operator "onnx.Gather"(%282, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %285 = torch.operator "onnx.Cos"(%283) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %286 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__81> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %287 = torch.operator "onnx.Mul"(%285, %286) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %288 = torch.operator "onnx.Add"(%283, %284) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %289 = torch.operator "onnx.Cos"(%288) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %290 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__82> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %291 = torch.operator "onnx.Mul"(%289, %290) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %292 = torch.operator "onnx.Add"(%287, %291) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %293 = torch.operator "onnx.Sin"(%283) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %294 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__83> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %295 = torch.operator "onnx.Mul"(%293, %294) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %296 = torch.operator "onnx.Sin"(%288) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %297 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__84> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %298 = torch.operator "onnx.Mul"(%296, %297) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %299 = torch.operator "onnx.Add"(%295, %298) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %300 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__85> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %301 = torch.operator "onnx.Unsqueeze"(%292, %300) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %302 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__86> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %303 = torch.operator "onnx.Unsqueeze"(%299, %302) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %304 = torch.operator "onnx.Concat"(%301, %303) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %305 = torch.operator "onnx.Sub"(%45, %304) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %306 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__87> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %307 = torch.operator "onnx.Mul"(%293, %306) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %308 = torch.operator "onnx.Sub"(%307, %298) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %309 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__88> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %310 = torch.operator "onnx.Mul"(%296, %309) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %311 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__89> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %312 = torch.operator "onnx.Unsqueeze"(%308, %311) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %313 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__90> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %314 = torch.operator "onnx.Unsqueeze"(%310, %313) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %315 = torch.operator "onnx.Concat"(%312, %314) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %316 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__91> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %317 = torch.operator "onnx.Unsqueeze"(%292, %316) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %318 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__92> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %319 = torch.operator "onnx.Unsqueeze"(%291, %318) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %320 = torch.operator "onnx.Concat"(%317, %319) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %321 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__93> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %322 = torch.operator "onnx.Unsqueeze"(%315, %321) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %323 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__94> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %324 = torch.operator "onnx.Unsqueeze"(%320, %323) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %325 = torch.operator "onnx.Concat"(%322, %324) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %326 = torch.operator "onnx.Gather"(%325, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %327 = torch.operator "onnx.Gather"(%326, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %328 = torch.operator "onnx.Gather"(%325, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %329 = torch.operator "onnx.Gather"(%328, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %330 = torch.operator "onnx.Mul"(%327, %329) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %331 = torch.operator "onnx.Gather"(%326, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %332 = torch.operator "onnx.Gather"(%328, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %333 = torch.operator "onnx.Mul"(%331, %332) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %334 = torch.operator "onnx.Sub"(%330, %333) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %335 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__95> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %336 = torch.operator "onnx.Add"(%334, %335) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %337 = torch.operator "onnx.Reciprocal"(%336) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %338 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__96> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %339 = torch.operator "onnx.Mul"(%337, %338) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %340 = torch.operator "onnx.Neg"(%331) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %341 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__97> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %342 = torch.operator "onnx.Unsqueeze"(%329, %341) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %343 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__98> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %344 = torch.operator "onnx.Unsqueeze"(%340, %343) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %345 = torch.operator "onnx.Concat"(%342, %344) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %346 = torch.operator "onnx.Neg"(%332) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %347 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__99> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %348 = torch.operator "onnx.Unsqueeze"(%346, %347) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %349 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__100> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %350 = torch.operator "onnx.Unsqueeze"(%327, %349) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %351 = torch.operator "onnx.Concat"(%348, %350) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %352 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__101> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %353 = torch.operator "onnx.Unsqueeze"(%345, %352) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %354 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__102> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %355 = torch.operator "onnx.Unsqueeze"(%351, %354) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %356 = torch.operator "onnx.Concat"(%353, %355) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %357 = torch.operator "onnx.Mul"(%356, %339) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %358 = torch.operator "onnx.MatMul"(%357, %305) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %359 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__103> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %360 = torch.operator "onnx.Mul"(%358, %359) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %361 = torch.operator "onnx.Add"(%282, %360) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %362 = torch.operator "onnx.Gather"(%361, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %363 = torch.operator "onnx.Gather"(%361, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %364 = torch.operator "onnx.Cos"(%362) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %365 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__104> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %366 = torch.operator "onnx.Mul"(%364, %365) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %367 = torch.operator "onnx.Add"(%362, %363) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %368 = torch.operator "onnx.Cos"(%367) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %369 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__105> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %370 = torch.operator "onnx.Mul"(%368, %369) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %371 = torch.operator "onnx.Add"(%366, %370) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %372 = torch.operator "onnx.Sin"(%362) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %373 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__106> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %374 = torch.operator "onnx.Mul"(%372, %373) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %375 = torch.operator "onnx.Sin"(%367) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %376 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__107> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %377 = torch.operator "onnx.Mul"(%375, %376) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %378 = torch.operator "onnx.Add"(%374, %377) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %379 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__108> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %380 = torch.operator "onnx.Unsqueeze"(%371, %379) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %381 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__109> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %382 = torch.operator "onnx.Unsqueeze"(%378, %381) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %383 = torch.operator "onnx.Concat"(%380, %382) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %384 = torch.operator "onnx.Sub"(%45, %383) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %385 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__110> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %386 = torch.operator "onnx.Mul"(%372, %385) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %387 = torch.operator "onnx.Sub"(%386, %377) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %388 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__111> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %389 = torch.operator "onnx.Mul"(%375, %388) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %390 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__112> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %391 = torch.operator "onnx.Unsqueeze"(%387, %390) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %392 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__113> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %393 = torch.operator "onnx.Unsqueeze"(%389, %392) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %394 = torch.operator "onnx.Concat"(%391, %393) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %395 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__114> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %396 = torch.operator "onnx.Unsqueeze"(%371, %395) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %397 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__115> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %398 = torch.operator "onnx.Unsqueeze"(%370, %397) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %399 = torch.operator "onnx.Concat"(%396, %398) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %400 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__116> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %401 = torch.operator "onnx.Unsqueeze"(%394, %400) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %402 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__117> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %403 = torch.operator "onnx.Unsqueeze"(%399, %402) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %404 = torch.operator "onnx.Concat"(%401, %403) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %405 = torch.operator "onnx.Gather"(%404, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %406 = torch.operator "onnx.Gather"(%405, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %407 = torch.operator "onnx.Gather"(%404, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %408 = torch.operator "onnx.Gather"(%407, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %409 = torch.operator "onnx.Mul"(%406, %408) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %410 = torch.operator "onnx.Gather"(%405, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %411 = torch.operator "onnx.Gather"(%407, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %412 = torch.operator "onnx.Mul"(%410, %411) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %413 = torch.operator "onnx.Sub"(%409, %412) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %414 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__118> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %415 = torch.operator "onnx.Add"(%413, %414) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %416 = torch.operator "onnx.Reciprocal"(%415) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %417 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__119> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %418 = torch.operator "onnx.Mul"(%416, %417) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %419 = torch.operator "onnx.Neg"(%410) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %420 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__120> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %421 = torch.operator "onnx.Unsqueeze"(%408, %420) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %422 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__121> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %423 = torch.operator "onnx.Unsqueeze"(%419, %422) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %424 = torch.operator "onnx.Concat"(%421, %423) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %425 = torch.operator "onnx.Neg"(%411) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %426 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__122> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %427 = torch.operator "onnx.Unsqueeze"(%425, %426) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %428 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__123> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %429 = torch.operator "onnx.Unsqueeze"(%406, %428) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %430 = torch.operator "onnx.Concat"(%427, %429) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %431 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__124> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %432 = torch.operator "onnx.Unsqueeze"(%424, %431) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %433 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__125> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %434 = torch.operator "onnx.Unsqueeze"(%430, %433) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %435 = torch.operator "onnx.Concat"(%432, %434) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %436 = torch.operator "onnx.Mul"(%435, %418) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %437 = torch.operator "onnx.MatMul"(%436, %384) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %438 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__126> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %439 = torch.operator "onnx.Mul"(%437, %438) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %440 = torch.operator "onnx.Add"(%361, %439) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %441 = torch.operator "onnx.Gather"(%440, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %442 = torch.operator "onnx.Gather"(%440, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %443 = torch.operator "onnx.Cos"(%441) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %444 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__127> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %445 = torch.operator "onnx.Mul"(%443, %444) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %446 = torch.operator "onnx.Add"(%441, %442) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %447 = torch.operator "onnx.Cos"(%446) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %448 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__128> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %449 = torch.operator "onnx.Mul"(%447, %448) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %450 = torch.operator "onnx.Add"(%445, %449) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %451 = torch.operator "onnx.Sin"(%441) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %452 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__129> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %453 = torch.operator "onnx.Mul"(%451, %452) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %454 = torch.operator "onnx.Sin"(%446) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %455 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__130> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %456 = torch.operator "onnx.Mul"(%454, %455) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %457 = torch.operator "onnx.Add"(%453, %456) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %458 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__131> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %459 = torch.operator "onnx.Unsqueeze"(%450, %458) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %460 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__132> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %461 = torch.operator "onnx.Unsqueeze"(%457, %460) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %462 = torch.operator "onnx.Concat"(%459, %461) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %463 = torch.operator "onnx.Sub"(%45, %462) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %464 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__133> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %465 = torch.operator "onnx.Mul"(%451, %464) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %466 = torch.operator "onnx.Sub"(%465, %456) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %467 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__134> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %468 = torch.operator "onnx.Mul"(%454, %467) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %469 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__135> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %470 = torch.operator "onnx.Unsqueeze"(%466, %469) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %471 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__136> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %472 = torch.operator "onnx.Unsqueeze"(%468, %471) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %473 = torch.operator "onnx.Concat"(%470, %472) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %474 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__137> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %475 = torch.operator "onnx.Unsqueeze"(%450, %474) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %476 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__138> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %477 = torch.operator "onnx.Unsqueeze"(%449, %476) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %478 = torch.operator "onnx.Concat"(%475, %477) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %479 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__139> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %480 = torch.operator "onnx.Unsqueeze"(%473, %479) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %481 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__140> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %482 = torch.operator "onnx.Unsqueeze"(%478, %481) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %483 = torch.operator "onnx.Concat"(%480, %482) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %484 = torch.operator "onnx.Gather"(%483, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %485 = torch.operator "onnx.Gather"(%484, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %486 = torch.operator "onnx.Gather"(%483, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %487 = torch.operator "onnx.Gather"(%486, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %488 = torch.operator "onnx.Mul"(%485, %487) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %489 = torch.operator "onnx.Gather"(%484, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %490 = torch.operator "onnx.Gather"(%486, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %491 = torch.operator "onnx.Mul"(%489, %490) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %492 = torch.operator "onnx.Sub"(%488, %491) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %493 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__141> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %494 = torch.operator "onnx.Add"(%492, %493) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %495 = torch.operator "onnx.Reciprocal"(%494) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %496 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__142> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %497 = torch.operator "onnx.Mul"(%495, %496) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %498 = torch.operator "onnx.Neg"(%489) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %499 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__143> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %500 = torch.operator "onnx.Unsqueeze"(%487, %499) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %501 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__144> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %502 = torch.operator "onnx.Unsqueeze"(%498, %501) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %503 = torch.operator "onnx.Concat"(%500, %502) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %504 = torch.operator "onnx.Neg"(%490) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %505 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__145> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %506 = torch.operator "onnx.Unsqueeze"(%504, %505) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %507 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__146> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %508 = torch.operator "onnx.Unsqueeze"(%485, %507) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %509 = torch.operator "onnx.Concat"(%506, %508) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %510 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__147> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %511 = torch.operator "onnx.Unsqueeze"(%503, %510) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %512 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__148> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %513 = torch.operator "onnx.Unsqueeze"(%509, %512) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %514 = torch.operator "onnx.Concat"(%511, %513) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %515 = torch.operator "onnx.Mul"(%514, %497) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %516 = torch.operator "onnx.MatMul"(%515, %463) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %517 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__149> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %518 = torch.operator "onnx.Mul"(%516, %517) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %519 = torch.operator "onnx.Add"(%440, %518) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %520 = torch.operator "onnx.Gather"(%519, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %521 = torch.operator "onnx.Gather"(%519, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %522 = torch.operator "onnx.Cos"(%520) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %523 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__150> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %524 = torch.operator "onnx.Mul"(%522, %523) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %525 = torch.operator "onnx.Add"(%520, %521) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %526 = torch.operator "onnx.Cos"(%525) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %527 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__151> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %528 = torch.operator "onnx.Mul"(%526, %527) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %529 = torch.operator "onnx.Add"(%524, %528) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %530 = torch.operator "onnx.Sin"(%520) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %531 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__152> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %532 = torch.operator "onnx.Mul"(%530, %531) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %533 = torch.operator "onnx.Sin"(%525) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %534 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__153> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %535 = torch.operator "onnx.Mul"(%533, %534) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %536 = torch.operator "onnx.Add"(%532, %535) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %537 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__154> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %538 = torch.operator "onnx.Unsqueeze"(%529, %537) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %539 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__155> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %540 = torch.operator "onnx.Unsqueeze"(%536, %539) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %541 = torch.operator "onnx.Concat"(%538, %540) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %542 = torch.operator "onnx.Sub"(%45, %541) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %543 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__156> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %544 = torch.operator "onnx.Mul"(%530, %543) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %545 = torch.operator "onnx.Sub"(%544, %535) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %546 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__157> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %547 = torch.operator "onnx.Mul"(%533, %546) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %548 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__158> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %549 = torch.operator "onnx.Unsqueeze"(%545, %548) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %550 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__159> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %551 = torch.operator "onnx.Unsqueeze"(%547, %550) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %552 = torch.operator "onnx.Concat"(%549, %551) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %553 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__160> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %554 = torch.operator "onnx.Unsqueeze"(%529, %553) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %555 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__161> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %556 = torch.operator "onnx.Unsqueeze"(%528, %555) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %557 = torch.operator "onnx.Concat"(%554, %556) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %558 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__162> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %559 = torch.operator "onnx.Unsqueeze"(%552, %558) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %560 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__163> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %561 = torch.operator "onnx.Unsqueeze"(%557, %560) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %562 = torch.operator "onnx.Concat"(%559, %561) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %563 = torch.operator "onnx.Gather"(%562, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %564 = torch.operator "onnx.Gather"(%563, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %565 = torch.operator "onnx.Gather"(%562, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %566 = torch.operator "onnx.Gather"(%565, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %567 = torch.operator "onnx.Mul"(%564, %566) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %568 = torch.operator "onnx.Gather"(%563, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %569 = torch.operator "onnx.Gather"(%565, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %570 = torch.operator "onnx.Mul"(%568, %569) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %571 = torch.operator "onnx.Sub"(%567, %570) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %572 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__164> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %573 = torch.operator "onnx.Add"(%571, %572) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %574 = torch.operator "onnx.Reciprocal"(%573) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %575 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__165> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %576 = torch.operator "onnx.Mul"(%574, %575) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %577 = torch.operator "onnx.Neg"(%568) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %578 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__166> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %579 = torch.operator "onnx.Unsqueeze"(%566, %578) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %580 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__167> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %581 = torch.operator "onnx.Unsqueeze"(%577, %580) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %582 = torch.operator "onnx.Concat"(%579, %581) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %583 = torch.operator "onnx.Neg"(%569) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %584 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__168> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %585 = torch.operator "onnx.Unsqueeze"(%583, %584) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %586 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__169> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %587 = torch.operator "onnx.Unsqueeze"(%564, %586) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %588 = torch.operator "onnx.Concat"(%585, %587) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %589 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__170> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %590 = torch.operator "onnx.Unsqueeze"(%582, %589) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %591 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__171> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %592 = torch.operator "onnx.Unsqueeze"(%588, %591) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %593 = torch.operator "onnx.Concat"(%590, %592) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %594 = torch.operator "onnx.Mul"(%593, %576) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %595 = torch.operator "onnx.MatMul"(%594, %542) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %596 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__172> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %597 = torch.operator "onnx.Mul"(%595, %596) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %598 = torch.operator "onnx.Add"(%519, %597) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %599 = torch.operator "onnx.Gather"(%598, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %600 = torch.operator "onnx.Gather"(%598, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %601 = torch.operator "onnx.Cos"(%599) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %602 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__173> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %603 = torch.operator "onnx.Mul"(%601, %602) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %604 = torch.operator "onnx.Add"(%599, %600) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %605 = torch.operator "onnx.Cos"(%604) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %606 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__174> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %607 = torch.operator "onnx.Mul"(%605, %606) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %608 = torch.operator "onnx.Add"(%603, %607) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %609 = torch.operator "onnx.Sin"(%599) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %610 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__175> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %611 = torch.operator "onnx.Mul"(%609, %610) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %612 = torch.operator "onnx.Sin"(%604) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %613 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__176> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %614 = torch.operator "onnx.Mul"(%612, %613) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %615 = torch.operator "onnx.Add"(%611, %614) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %616 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__177> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %617 = torch.operator "onnx.Unsqueeze"(%608, %616) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %618 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__178> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %619 = torch.operator "onnx.Unsqueeze"(%615, %618) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %620 = torch.operator "onnx.Concat"(%617, %619) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %621 = torch.operator "onnx.Sub"(%45, %620) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %622 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__179> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %623 = torch.operator "onnx.Mul"(%609, %622) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %624 = torch.operator "onnx.Sub"(%623, %614) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %625 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__180> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %626 = torch.operator "onnx.Mul"(%612, %625) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %627 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__181> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %628 = torch.operator "onnx.Unsqueeze"(%624, %627) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %629 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__182> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %630 = torch.operator "onnx.Unsqueeze"(%626, %629) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %631 = torch.operator "onnx.Concat"(%628, %630) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %632 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__183> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %633 = torch.operator "onnx.Unsqueeze"(%608, %632) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %634 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__184> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %635 = torch.operator "onnx.Unsqueeze"(%607, %634) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %636 = torch.operator "onnx.Concat"(%633, %635) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %637 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__185> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %638 = torch.operator "onnx.Unsqueeze"(%631, %637) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %639 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__186> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %640 = torch.operator "onnx.Unsqueeze"(%636, %639) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %641 = torch.operator "onnx.Concat"(%638, %640) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %642 = torch.operator "onnx.Gather"(%641, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %643 = torch.operator "onnx.Gather"(%642, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %644 = torch.operator "onnx.Gather"(%641, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %645 = torch.operator "onnx.Gather"(%644, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %646 = torch.operator "onnx.Mul"(%643, %645) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %647 = torch.operator "onnx.Gather"(%642, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %648 = torch.operator "onnx.Gather"(%644, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %649 = torch.operator "onnx.Mul"(%647, %648) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %650 = torch.operator "onnx.Sub"(%646, %649) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %651 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__187> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %652 = torch.operator "onnx.Add"(%650, %651) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %653 = torch.operator "onnx.Reciprocal"(%652) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %654 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__188> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %655 = torch.operator "onnx.Mul"(%653, %654) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %656 = torch.operator "onnx.Neg"(%647) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %657 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__189> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %658 = torch.operator "onnx.Unsqueeze"(%645, %657) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %659 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__190> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %660 = torch.operator "onnx.Unsqueeze"(%656, %659) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %661 = torch.operator "onnx.Concat"(%658, %660) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %662 = torch.operator "onnx.Neg"(%648) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %663 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__191> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %664 = torch.operator "onnx.Unsqueeze"(%662, %663) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %665 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__192> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %666 = torch.operator "onnx.Unsqueeze"(%643, %665) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %667 = torch.operator "onnx.Concat"(%664, %666) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %668 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__193> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %669 = torch.operator "onnx.Unsqueeze"(%661, %668) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %670 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__194> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %671 = torch.operator "onnx.Unsqueeze"(%667, %670) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %672 = torch.operator "onnx.Concat"(%669, %671) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %673 = torch.operator "onnx.Mul"(%672, %655) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %674 = torch.operator "onnx.MatMul"(%673, %621) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %675 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__195> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %676 = torch.operator "onnx.Mul"(%674, %675) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %677 = torch.operator "onnx.Add"(%598, %676) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %678 = torch.operator "onnx.Gather"(%677, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %679 = torch.operator "onnx.Gather"(%677, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %680 = torch.operator "onnx.Cos"(%678) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %681 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__196> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %682 = torch.operator "onnx.Mul"(%680, %681) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %683 = torch.operator "onnx.Add"(%678, %679) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %684 = torch.operator "onnx.Cos"(%683) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %685 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__197> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %686 = torch.operator "onnx.Mul"(%684, %685) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %687 = torch.operator "onnx.Add"(%682, %686) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %688 = torch.operator "onnx.Sin"(%678) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %689 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__198> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %690 = torch.operator "onnx.Mul"(%688, %689) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %691 = torch.operator "onnx.Sin"(%683) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %692 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__199> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %693 = torch.operator "onnx.Mul"(%691, %692) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %694 = torch.operator "onnx.Add"(%690, %693) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %695 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__200> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %696 = torch.operator "onnx.Unsqueeze"(%687, %695) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %697 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__201> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %698 = torch.operator "onnx.Unsqueeze"(%694, %697) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %699 = torch.operator "onnx.Concat"(%696, %698) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %700 = torch.operator "onnx.Sub"(%45, %699) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %701 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__202> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %702 = torch.operator "onnx.Mul"(%688, %701) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %703 = torch.operator "onnx.Sub"(%702, %693) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %704 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__203> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %705 = torch.operator "onnx.Mul"(%691, %704) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %706 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__204> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %707 = torch.operator "onnx.Unsqueeze"(%703, %706) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %708 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__205> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %709 = torch.operator "onnx.Unsqueeze"(%705, %708) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %710 = torch.operator "onnx.Concat"(%707, %709) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %711 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__206> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %712 = torch.operator "onnx.Unsqueeze"(%687, %711) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %713 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__207> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %714 = torch.operator "onnx.Unsqueeze"(%686, %713) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %715 = torch.operator "onnx.Concat"(%712, %714) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %716 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__208> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %717 = torch.operator "onnx.Unsqueeze"(%710, %716) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %718 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__209> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %719 = torch.operator "onnx.Unsqueeze"(%715, %718) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %720 = torch.operator "onnx.Concat"(%717, %719) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %721 = torch.operator "onnx.Gather"(%720, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %722 = torch.operator "onnx.Gather"(%721, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %723 = torch.operator "onnx.Gather"(%720, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[2],f32> 
    %724 = torch.operator "onnx.Gather"(%723, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %725 = torch.operator "onnx.Mul"(%722, %724) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %726 = torch.operator "onnx.Gather"(%721, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %727 = torch.operator "onnx.Gather"(%723, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %728 = torch.operator "onnx.Mul"(%726, %727) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %729 = torch.operator "onnx.Sub"(%725, %728) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %730 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__210> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %731 = torch.operator "onnx.Add"(%729, %730) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %732 = torch.operator "onnx.Reciprocal"(%731) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %733 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__211> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %734 = torch.operator "onnx.Mul"(%732, %733) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %735 = torch.operator "onnx.Neg"(%726) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %736 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__212> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %737 = torch.operator "onnx.Unsqueeze"(%724, %736) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %738 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__213> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %739 = torch.operator "onnx.Unsqueeze"(%735, %738) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %740 = torch.operator "onnx.Concat"(%737, %739) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %741 = torch.operator "onnx.Neg"(%727) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %742 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__214> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %743 = torch.operator "onnx.Unsqueeze"(%741, %742) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %744 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__215> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %745 = torch.operator "onnx.Unsqueeze"(%722, %744) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %746 = torch.operator "onnx.Concat"(%743, %745) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %747 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__216> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %748 = torch.operator "onnx.Unsqueeze"(%740, %747) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %749 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__217> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %750 = torch.operator "onnx.Unsqueeze"(%746, %749) : (!torch.vtensor<[2],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1,2],f32> 
    %751 = torch.operator "onnx.Concat"(%748, %750) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1,2],f32>, !torch.vtensor<[1,2],f32>) -> !torch.vtensor<[2,2],f32> 
    %752 = torch.operator "onnx.Mul"(%751, %734) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],f32> 
    %753 = torch.operator "onnx.MatMul"(%752, %700) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %754 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__218> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %755 = torch.operator "onnx.Mul"(%753, %754) : (!torch.vtensor<[2],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[2],f32> 
    %756 = torch.operator "onnx.Add"(%677, %755) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %757 = torch.operator "onnx.Gather"(%756, %4) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %758 = torch.operator "onnx.Gather"(%756, %8) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],f32>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],f32> 
    %759 = torch.operator "onnx.Cos"(%757) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %760 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__219> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %761 = torch.operator "onnx.Mul"(%759, %760) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %762 = torch.operator "onnx.Add"(%757, %758) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %763 = torch.operator "onnx.Cos"(%762) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %764 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__220> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %765 = torch.operator "onnx.Mul"(%763, %764) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %766 = torch.operator "onnx.Add"(%761, %765) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %767 = torch.operator "onnx.Sin"(%757) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %768 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__221> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %769 = torch.operator "onnx.Mul"(%767, %768) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %770 = torch.operator "onnx.Sin"(%762) : (!torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %771 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__222> : tensor<f32>} : () -> !torch.vtensor<[],f32> 
    %772 = torch.operator "onnx.Mul"(%770, %771) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %773 = torch.operator "onnx.Add"(%769, %772) : (!torch.vtensor<[],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> 
    %774 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__223> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %775 = torch.operator "onnx.Unsqueeze"(%766, %774) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %776 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__224> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %777 = torch.operator "onnx.Unsqueeze"(%773, %776) : (!torch.vtensor<[],f32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],f32> 
    %778 = torch.operator "onnx.Concat"(%775, %777) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[2],f32> 
    %779 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__225> : tensor<2xf32>} : () -> !torch.vtensor<[2],f32> 
    %780 = torch.operator "onnx.Add"(%778, %779) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %781 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__226> : tensor<2xf32>} : () -> !torch.vtensor<[2],f32> 
    %782 = torch.operator "onnx.Add"(%780, %781) : (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>) -> !torch.vtensor<[2],f32> 
    %783 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__227> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %784 = torch.operator "onnx.Mul"(%778, %783) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %785 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__228> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %786 = torch.operator "onnx.Mul"(%780, %785) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %787 = torch.operator "onnx.Add"(%784, %786) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[10,2],f32>) -> !torch.vtensor<[10,2],f32> 
    %788 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__229> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %789 = torch.operator "onnx.Mul"(%780, %788) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %790 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__230> : tensor<10x1xf32>} : () -> !torch.vtensor<[10,1],f32> 
    %791 = torch.operator "onnx.Mul"(%782, %790) : (!torch.vtensor<[2],f32>, !torch.vtensor<[10,1],f32>) -> !torch.vtensor<[10,2],f32> 
    %792 = torch.operator "onnx.Add"(%789, %791) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[10,2],f32>) -> !torch.vtensor<[10,2],f32> 
    %793 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__231> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %794 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__232> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %795 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__233> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %796 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__234> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %797 = torch.operator "onnx.Slice"(%792, %794, %795, %793, %796) : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[9,2],f32> 
    %798 = torch.operator "onnx.Concat"(%787, %797) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[10,2],f32>, !torch.vtensor<[9,2],f32>) -> !torch.vtensor<[19,2],f32> 
    return %798, %38 : !torch.vtensor<[19,2],f32>, !torch.vtensor<[3],f32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      _op_a.network.0.weight: "0x08000000A4E062BD6F10A2BDF988443C9D175DBDC10D0BBEE2788DBD3D23A9BD501B7A3DA06B673DC090123EF900C63D2A100ABEC0E7D43D7E941CBC25580B3ECD8EBABD075D0E3EA3222C3D1ADEF53D6FAFC0BCE158683DC8F0F03BAD63CBBD0E57183DBEEE97BDDAE7F3BA769EDC3C7374EB3D4E39B33D106142BD382EA7BC892A01BEC026C63D1087BB3DA69D783D32427B3D4213F93D30DA0CBEC15A803DF17AB63D8A1A043EB867E7BDC529363D951A0CBE2FA62C3B565E043E93A9C5BC14469A3B0C6CA6BD2E66EEBD108FEDBDF4DAAA3DF64DA6BD55D2463C0EAE90BD2ECE43BD0402B7BD4844D8BC6FEF45BD8F289ABD724E2DBD35E2F53DD861BDBD345DAF3DBCD10E3E38A27F3C7362293D0C6787BD20FA3CBD035807BE2FA4EEBD66790DBCE11EA53DFADE123EB6D10C3E0BBD13BE6545C63D6335D93D3D61033E6D6313BDFDE110BE6E7C403DBF1E653BF4A2603D250A513D106844BD843DA53D1EE2823DECBBC4BD3035AFBC2A51A63D959BB63D03F5183D25A672BDE20DE33DEA84133EB5EFB1BC290708BEBC93E9BB850E793BAD14FDBDE95801BE330F883DD6C4E83DF8E2F0BD204E84BDFE1802BEC88B8A3C4F33AA3D706DA93CB7B0EF3D6DA8E9BD819AE23D24AF903DC74412BE545F0A3E52894C3D993BAC3D01D7453DAB55D03D34A2373DDDAD8CBD9FFE25BDBEF4CB3D3B399BBDE380CEBD195A2CBD5990CDBDC062AEBDBEE2E2BD96D8543D963567BC07AFE23CE3069F3D99A7013EF655EEBDE95BB5BB57B72BBD1A3AEDBD6ED50C3EA362E2BDBAE2BD3C7886133E4D0F7E3C3EA8F93CAA7AECBD0B22933BF532A0BD3CEE07BE9653ADBD3F8FA6BD9D507EBC8FF6C0BC19C801BE67E590BDA26D3FBC72EEA33D0902DE3D12F202BE97988B3D4FFB15BCD53E803DC446B9BC82C31B3D47FFD4BD581A843D8623133EE83DB6BD58094ABDDC2CE23DEDBC133E3172CE3D21125EBD29347B3D386DFBBDD03723BD11A8B4396362003ECBE981BC8A04A5BC947CC43DA4E7873DC3AFF8BC490EDF3CD3388BBDC1773B3D12F16FBDBECEE1BDB86F18BDB030243CD6E4E2BDCF2D7B3C",
      _op_a.network.0.bias: "0x08000000B1E4EEBC94F9973C79C109BD5059043D",
      _op_a.network.4.weight: "0x080000008800513D587D7D3DA2654FBD92003D3DA051473D5EC04ABD6A8B0CBD24D915BDD8974D3C1029F3BB2C48AA3C80DC47BC4AEF113D384EB23C04E760BDF845C4BC943F593DB29F1BBD4827E53CC6975F3DBCD0F43C143D94BCA0745B3B6CB6843C70D1EA3CC06C15BC708A483DE8501FBC004CD838807BB4BCD877703D34F2A8BC740C093D30D68F3CC0DDAFBA6884F53C94BFA7BC8A3E1CBD8062753AF065543C64FF76BD1436253DACB803BD3050A73B520D423D74A2C5BCA4C8D53C00CC223C40621ABDC029CEBBD8D22F3D54F4E0BC784F63BDA04B4F3C0277443D804CD73A603F71BD145A563DACF850BD3AE1023DFC9A4ABD80BA4A3CBC508BBC0CE1B13C4C15F6BC08FBF0BCF09F1CBDB4A1ED3C3024133D5AA269BDD0E22E3C52486DBD8CFBC73C8403EA3C5884F4BCCA397C3DA6E569BD168A00BDBEDA6FBD9E5654BD346AC7BC205D3FBCB053063DBCAA7EBDD03EABBC844339BD463A093D8CB5243D92827EBD508DE9BCFA7C22BDD46FCD3CB00D78BCA8693A3D682370BC90D04A3CFC473C3D60AE9CBCA00DDEBCF0D05CBC207FB3BBD4F8AF3C001692398CCC453DE4F2F0BCFAF1543DB06BEFBBFCAF4C3DD431B3BC380B45BC60DB6B3C68393EBDE89CA3BC1C98483D906A57BDB0ABA7BB524D343D426074BD5469393D0A9922BD30418DBB924119BD3422D0BC003D443C4CEAFBBC1C339EBCE468143D8C10B3BCC0638BBAC2C61BBD1C30103D20BD7A3BB84FE63C2082DD3C46C3533D8CE002BD64017BBD28BB283C00041B3B02972B3D30A4BCBB20FD2BBD800423BDBE2239BD380718BDF0E03ABC004E6F3D389E4B3DA22B6BBD1079B3BB3C6BD43CC6E800BDE02908BC00E9FF3B10E4E13BC06F643C741A25BD1A8262BDCA2C3EBDF05950BCA8083E3C7CF8D43CD8EFC23C74D8AEBCF0230BBDF23F04BD683D2EBC806062BD905DFEBCA092D33B303A593C4EC0283D28A6763C3E72263DB43E5F3D7A4F0DBDA69403BD10EE85BCC02FC8BCD8EB833C6059CF3B5411373DA042B03C8CF34B3D707A733CD039963CE8E4523C36B02E3D9C30823C02FE05BD903EDA3C388DCABC6008DDBB30D8233DE8A42A3DD461E8BC60F833BCC024963C8E8175BD602F9EBC4031E73AA8B72F3C08CB653DD4D5743DDC687E3DD040763C5018A3BC8E4A143DB87248BD8E4D743D529341BD0EF84A3DD86C4B3C40CC753CC0E9BA3CCA3C193DC20A473D50951EBDCC96B5BC56466B3DA82472BD50AA513C7A9E1FBD104486BB1052A23CD2DD79BDB00EB6BC36CC2CBDE80470BD181468BD08D17DBDB83743BC5073AEBB7410A83C842BA93CD822EABC40CB9CBAC490903CEC2A21BD06D552BDB4F1E03C3C6945BDE25B72BD48436D3CE039593C62141EBD3E6835BDA8D1D1BCF01CD0BCC0821EBB006213BC70DA8CBCB4C42ABDB24E32BD743147BDE0466A3B90CB91BC8CE6C33CA4CA443D002AF3BA3C04263D189B60BDF0CA64BD445727BD14997DBDF8602ABCDE5269BD4433B43C9CD882BCF4408BBCDAB55B3DA040893C647796BC307FF4BC08B0493DA0831EBC58B62B3CE43A2F3D4088CE3C300CDCBCA29D57BD82A8543D001CA439963745BDD42CD13C809D2C3B941CEFBC660A24BD56D8463D402C03BCA4FEFB3C80C2F4BC9CF60DBD60C9453BC0F334BB3C3422BD5A1E3D3DC025353B14372ABD0AE554BDA8D50EBC7098503DD81685BC7CB2AA3C7A75653D3048CD3BF030623D66332A3D4A46123DF000033DC49378BD364E323DF8D60E3C8092AA3CC2E5013D5C4C85BC942F453DE06A6BBCAA0A4ABD9A086ABDDE273E3D3CECB4BC0C2A883C40D16DBB90FFAABC247B9ABC30F3A23C04853B3DEC42683DC87E83BC381C123D2CA2CB3CFA8050BD8A23213D86CF2CBD3443393D345A883C48CC263C1AF131BD9E753FBDE07FB43B84D745BD986AD23CA8EC293CB2E0623D28597ABC260F42BDC86108BD18D3443CA074933C98E83C3D5CE0DC3C8C3D77BDD6A0403D9E2912BD90A8A2BB7C6582BC286B4E3D1E7F39BD2CF021BDFC8522BDE450A9BCEC98423D80467EBB48F6513DBE02133D209CAABC605606BD1612323DB07D673DE4FEB9BC801A75BAE4CE34BD1E605B3D40B1B9BC566C2E3DA8EB253C60578DBC1004BC3C40AF1EBC30F9FA3C00B1B03CB49A883C1C46773D969343BD20A0723D7066E13CD82628BD5A261B3DB6A71DBD3C313A3DD883503C50AA98BB18A27FBC10D43B3CDA8C28BD441643BD00E3A1B9FC7985BC98C5B3BCC090DBBA4A9229BD120C173D609F59BB48CA643DF871A53C16E219BD148F2BBD34CDA23C861F623DACCD54BDF06597BB8E4E23BDA00B003CF41F04BD305165BCD61610BDA84945BD2CDF8EBC283C903C60AB12BBAC108BBC7A225B3D6C1F1DBDF0CF34BC3068CD3C542BF33CC8C9773DFA6533BD34CE093DC0B5C13A0CF3BCBCEEC353BDE09CA8BB903EBDBBE022673CB01F36BC926E323DD42E5B3DFA0558BDE82261BD580BC23C209137BDC0E501BD6414BCBC00207D396A31253D7AB8473D40075FBB2C91D13C00BF543D34AEF8BC4EC812BDA492E53C3A5F123DB8F076BDAC737C3D00F62FBA607246BDEACF5FBDF4ECC03C387581BC5A102A3D80473E3D906ADA3CD8C9103CDED3153DB07346BD44633BBD8034B13A4499FB3C340918BD3ADC7FBD52504F3D00B29BBCB4B6763D7C7C3CBD50CFB7BB78CB5ABDA0F314BBB81EB33CD098BF3B7436F63CB227063D4C7F333DC032EEBCBAED04BDCC41793D90E485BCD0B733BD307145BD10D5F23BC84ED03C54F9D13C3078423D24DEF3BCB84EAF3C584FE7BCFC47E1BC0C59953C10E12E3C40AE8D3ADC59153DB84666BC8E400ABD48A9093DC437EDBCFC62CB3CB81824BC50865EBD2C6B9A3C001C06BB",
      _op_a.network.4.bias: "0x08000000F2F003BD8E5840BD",
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
      __10: "0x080000000000000000000000",
      __11: "0x080000000000000000000000",
      __12: "0x080000000000803F",
      __13: "0x080000000000803F",
      __14: "0x080000000000803F",
      __15: "0x080000000000803F",
      __16: "0x080000000000000000000000",
      __17: "0x080000000000000000000000",
      __18: "0x08000000000080BF",
      __19: "0x08000000000080BF",
      __20: "0x080000000000000000000000",
      __21: "0x080000000000000000000000",
      __22: "0x080000000000000000000000",
      __23: "0x080000000000000000000000",
      __24: "0x080000000000000000000000",
      __25: "0x080000000000000000000000",
      __26: "0x08000000BD378635",
      __27: "0x080000000000803F",
      __28: "0x080000000000000000000000",
      __29: "0x080000000000000000000000",
      __30: "0x080000000000000000000000",
      __31: "0x080000000000000000000000",
      __32: "0x080000000000000000000000",
      __33: "0x080000000000000000000000",
      __34: "0x08000000CDCCCC3D",
      __35: "0x080000000000803F",
      __36: "0x080000000000803F",
      __37: "0x080000000000803F",
      __38: "0x080000000000803F",
      __39: "0x080000000000000000000000",
      __40: "0x080000000000000000000000",
      __41: "0x08000000000080BF",
      __42: "0x08000000000080BF",
      __43: "0x080000000000000000000000",
      __44: "0x080000000000000000000000",
      __45: "0x080000000000000000000000",
      __46: "0x080000000000000000000000",
      __47: "0x080000000000000000000000",
      __48: "0x080000000000000000000000",
      __49: "0x08000000BD378635",
      __50: "0x080000000000803F",
      __51: "0x080000000000000000000000",
      __52: "0x080000000000000000000000",
      __53: "0x080000000000000000000000",
      __54: "0x080000000000000000000000",
      __55: "0x080000000000000000000000",
      __56: "0x080000000000000000000000",
      __57: "0x08000000CDCCCC3D",
      __58: "0x080000000000803F",
      __59: "0x080000000000803F",
      __60: "0x080000000000803F",
      __61: "0x080000000000803F",
      __62: "0x080000000000000000000000",
      __63: "0x080000000000000000000000",
      __64: "0x08000000000080BF",
      __65: "0x08000000000080BF",
      __66: "0x080000000000000000000000",
      __67: "0x080000000000000000000000",
      __68: "0x080000000000000000000000",
      __69: "0x080000000000000000000000",
      __70: "0x080000000000000000000000",
      __71: "0x080000000000000000000000",
      __72: "0x08000000BD378635",
      __73: "0x080000000000803F",
      __74: "0x080000000000000000000000",
      __75: "0x080000000000000000000000",
      __76: "0x080000000000000000000000",
      __77: "0x080000000000000000000000",
      __78: "0x080000000000000000000000",
      __79: "0x080000000000000000000000",
      __80: "0x08000000CDCCCC3D",
      __81: "0x080000000000803F",
      __82: "0x080000000000803F",
      __83: "0x080000000000803F",
      __84: "0x080000000000803F",
      __85: "0x080000000000000000000000",
      __86: "0x080000000000000000000000",
      __87: "0x08000000000080BF",
      __88: "0x08000000000080BF",
      __89: "0x080000000000000000000000",
      __90: "0x080000000000000000000000",
      __91: "0x080000000000000000000000",
      __92: "0x080000000000000000000000",
      __93: "0x080000000000000000000000",
      __94: "0x080000000000000000000000",
      __95: "0x08000000BD378635",
      __96: "0x080000000000803F",
      __97: "0x080000000000000000000000",
      __98: "0x080000000000000000000000",
      __99: "0x080000000000000000000000",
      __100: "0x080000000000000000000000",
      __101: "0x080000000000000000000000",
      __102: "0x080000000000000000000000",
      __103: "0x08000000CDCCCC3D",
      __104: "0x080000000000803F",
      __105: "0x080000000000803F",
      __106: "0x080000000000803F",
      __107: "0x080000000000803F",
      __108: "0x080000000000000000000000",
      __109: "0x080000000000000000000000",
      __110: "0x08000000000080BF",
      __111: "0x08000000000080BF",
      __112: "0x080000000000000000000000",
      __113: "0x080000000000000000000000",
      __114: "0x080000000000000000000000",
      __115: "0x080000000000000000000000",
      __116: "0x080000000000000000000000",
      __117: "0x080000000000000000000000",
      __118: "0x08000000BD378635",
      __119: "0x080000000000803F",
      __120: "0x080000000000000000000000",
      __121: "0x080000000000000000000000",
      __122: "0x080000000000000000000000",
      __123: "0x080000000000000000000000",
      __124: "0x080000000000000000000000",
      __125: "0x080000000000000000000000",
      __126: "0x08000000CDCCCC3D",
      __127: "0x080000000000803F",
      __128: "0x080000000000803F",
      __129: "0x080000000000803F",
      __130: "0x080000000000803F",
      __131: "0x080000000000000000000000",
      __132: "0x080000000000000000000000",
      __133: "0x08000000000080BF",
      __134: "0x08000000000080BF",
      __135: "0x080000000000000000000000",
      __136: "0x080000000000000000000000",
      __137: "0x080000000000000000000000",
      __138: "0x080000000000000000000000",
      __139: "0x080000000000000000000000",
      __140: "0x080000000000000000000000",
      __141: "0x08000000BD378635",
      __142: "0x080000000000803F",
      __143: "0x080000000000000000000000",
      __144: "0x080000000000000000000000",
      __145: "0x080000000000000000000000",
      __146: "0x080000000000000000000000",
      __147: "0x080000000000000000000000",
      __148: "0x080000000000000000000000",
      __149: "0x08000000CDCCCC3D",
      __150: "0x080000000000803F",
      __151: "0x080000000000803F",
      __152: "0x080000000000803F",
      __153: "0x080000000000803F",
      __154: "0x080000000000000000000000",
      __155: "0x080000000000000000000000",
      __156: "0x08000000000080BF",
      __157: "0x08000000000080BF",
      __158: "0x080000000000000000000000",
      __159: "0x080000000000000000000000",
      __160: "0x080000000000000000000000",
      __161: "0x080000000000000000000000",
      __162: "0x080000000000000000000000",
      __163: "0x080000000000000000000000",
      __164: "0x08000000BD378635",
      __165: "0x080000000000803F",
      __166: "0x080000000000000000000000",
      __167: "0x080000000000000000000000",
      __168: "0x080000000000000000000000",
      __169: "0x080000000000000000000000",
      __170: "0x080000000000000000000000",
      __171: "0x080000000000000000000000",
      __172: "0x08000000CDCCCC3D",
      __173: "0x080000000000803F",
      __174: "0x080000000000803F",
      __175: "0x080000000000803F",
      __176: "0x080000000000803F",
      __177: "0x080000000000000000000000",
      __178: "0x080000000000000000000000",
      __179: "0x08000000000080BF",
      __180: "0x08000000000080BF",
      __181: "0x080000000000000000000000",
      __182: "0x080000000000000000000000",
      __183: "0x080000000000000000000000",
      __184: "0x080000000000000000000000",
      __185: "0x080000000000000000000000",
      __186: "0x080000000000000000000000",
      __187: "0x08000000BD378635",
      __188: "0x080000000000803F",
      __189: "0x080000000000000000000000",
      __190: "0x080000000000000000000000",
      __191: "0x080000000000000000000000",
      __192: "0x080000000000000000000000",
      __193: "0x080000000000000000000000",
      __194: "0x080000000000000000000000",
      __195: "0x08000000CDCCCC3D",
      __196: "0x080000000000803F",
      __197: "0x080000000000803F",
      __198: "0x080000000000803F",
      __199: "0x080000000000803F",
      __200: "0x080000000000000000000000",
      __201: "0x080000000000000000000000",
      __202: "0x08000000000080BF",
      __203: "0x08000000000080BF",
      __204: "0x080000000000000000000000",
      __205: "0x080000000000000000000000",
      __206: "0x080000000000000000000000",
      __207: "0x080000000000000000000000",
      __208: "0x080000000000000000000000",
      __209: "0x080000000000000000000000",
      __210: "0x08000000BD378635",
      __211: "0x080000000000803F",
      __212: "0x080000000000000000000000",
      __213: "0x080000000000000000000000",
      __214: "0x080000000000000000000000",
      __215: "0x080000000000000000000000",
      __216: "0x080000000000000000000000",
      __217: "0x080000000000000000000000",
      __218: "0x08000000CDCCCC3D",
      __219: "0x080000000000803F",
      __220: "0x080000000000803F",
      __221: "0x080000000000803F",
      __222: "0x080000000000803F",
      __223: "0x080000000000000000000000",
      __224: "0x080000000000000000000000",
      __225: "0x08000000CDCC4CBE00000000",
      __226: "0x0800000000000000CDCCCCBD",
      __227: "0x080000000000803F398E633F721C473FAAAA2A3FE4380E3F388EE33EAAAAAA3E388E633E388EE33D00000000",
      __228: "0x0800000000000000398EE33D398E633EABAAAA3E398EE33EE4380E3FABAA2A3F721C473F398E633F0000803F",
      __229: "0x080000000000803F398E633F721C473FAAAA2A3FE4380E3F388EE33EAAAAAA3E388E633E388EE33D00000000",
      __230: "0x0800000000000000398EE33D398E633EABAAAA3E398EE33EE4380E3FABAA2A3F721C473F398E633F0000803F",
      __231: "0x080000000000000000000000",
      __232: "0x080000000100000000000000",
      __233: "0x08000000FFFFFFFFFFFFFF7F",
      __234: "0x080000000100000000000000"
    }
  }
#-}

