#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
#map5 = affine_map<(d0, d1) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map6 = affine_map<(d0, d1) -> ()>
#map7 = affine_map<(d0) -> ()>
module {
  util.func public @main_graph$async(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.fence, %arg3: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %cst = arith.constant dense<1> : tensor<1xi64>
    %cst_0 = arith.constant dense<9.99999997E-7> : tensor<f32>
    %cst_1 = arith.constant dense<-1.000000e+00> : tensor<f32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<f32>
    %cst_3 = arith.constant dense<0> : tensor<1xi64>
    %cst_4 = arith.constant 0.000000e+00 : f32
    %cst_5 = arith.constant 1.000000e+00 : f32
    %0 = hal.tensor.import wait(%arg2) => %arg0 : !hal.buffer_view -> tensor<2xf32>
    %1 = hal.tensor.import wait(%arg2) => %arg1 : !hal.buffer_view -> tensor<2xf32>
    %2 = tensor.empty() : tensor<1xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_3 : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %0[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed = tensor.collapse_shape %3 [] : tensor<1xf32> into tensor<f32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %0[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed_6 = tensor.collapse_shape %4 [] : tensor<1xf32> into tensor<f32>
    %5 = tensor.empty() : tensor<f32>
    %6 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.cos %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %7 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%6, %cst_2 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %8 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed, %collapsed_6 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.addf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%8 : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.cos %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%9, %cst_2 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%7, %10 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.addf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %12 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.sin %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %13 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%12, %cst_2 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%8 : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.sin %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %15 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%14, %cst_2 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %16 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%13, %15 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.addf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %expanded = tensor.expand_shape %11 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %expanded_7 = tensor.expand_shape %16 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat = tensor.concat dim(0) %expanded, %expanded_7 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %17 = tensor.empty() : tensor<2xf32>
    %18 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %concat : tensor<2xf32>, tensor<2xf32>) outs(%17 : tensor<2xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.subf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<2xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%12, %cst_1 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%19, %15 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.subf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %21 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%14, %cst_1 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %expanded_8 = tensor.expand_shape %20 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %expanded_9 = tensor.expand_shape %21 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat_10 = tensor.concat dim(0) %expanded_8, %expanded_9 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %expanded_11 = tensor.expand_shape %10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat_12 = tensor.concat dim(0) %expanded, %expanded_11 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %expanded_13 = tensor.expand_shape %concat_10 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %expanded_14 = tensor.expand_shape %concat_12 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %concat_15 = tensor.concat dim(0) %expanded_13, %expanded_14 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %22 = tensor.empty() : tensor<1x2xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["parallel", "parallel"]} ins(%cst_3 : tensor<1xi64>) outs(%22 : tensor<1x2xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %45 = linalg.index 1 : index
      %extracted = tensor.extract %concat_15[%44, %45] : tensor<2x2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x2xf32>
    %collapsed_16 = tensor.collapse_shape %23 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_3 : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %collapsed_16[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed_17 = tensor.collapse_shape %24 [] : tensor<1xf32> into tensor<f32>
    %25 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1xi64>) outs(%22 : tensor<1x2xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %45 = linalg.index 1 : index
      %extracted = tensor.extract %concat_15[%44, %45] : tensor<2x2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x2xf32>
    %collapsed_18 = tensor.collapse_shape %25 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %collapsed_18[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed_19 = tensor.collapse_shape %26 [] : tensor<1xf32> into tensor<f32>
    %27 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_17, %collapsed_19 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %28 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %collapsed_16[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed_20 = tensor.collapse_shape %28 [] : tensor<1xf32> into tensor<f32>
    %29 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_3 : tensor<1xi64>) outs(%2 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %44 = arith.index_cast %in : i64 to index
      %extracted = tensor.extract %collapsed_18[%44] : tensor<2xf32>
      linalg.yield %extracted : f32
    } -> tensor<1xf32>
    %collapsed_21 = tensor.collapse_shape %29 [] : tensor<1xf32> into tensor<f32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_20, %collapsed_21 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%27, %30 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.subf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %32 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%31, %cst_0 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.addf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %33 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%32 : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.cmpf one, %in, %cst_4 : f32
      cf.assert %44, "unimplemented: tensor with zero element"
      %45 = arith.divf %cst_5, %in : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %34 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%33, %cst_2 : tensor<f32>, tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %35 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_20 : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.negf %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %expanded_22 = tensor.expand_shape %35 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat_23 = tensor.concat dim(0) %26, %expanded_22 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_21 : tensor<f32>) outs(%5 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.negf %in : f32
      linalg.yield %44 : f32
    } -> tensor<f32>
    %expanded_24 = tensor.expand_shape %36 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat_25 = tensor.concat dim(0) %expanded_24, %24 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %expanded_26 = tensor.expand_shape %concat_23 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %expanded_27 = tensor.expand_shape %concat_25 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %concat_28 = tensor.concat dim(0) %expanded_26, %expanded_27 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %37 = tensor.empty() : tensor<2x2xf32>
    %38 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%concat_28, %34 : tensor<2x2xf32>, tensor<f32>) outs(%37 : tensor<2x2xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.mulf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<2x2xf32>
    %39 = linalg.fill ins(%cst_4 : f32) outs(%17 : tensor<2xf32>) -> tensor<2xf32>
    %40 = linalg.matvec ins(%38, %18 : tensor<2x2xf32>, tensor<2xf32>) outs(%39 : tensor<2xf32>) -> tensor<2xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%0, %40 : tensor<2xf32>, tensor<2xf32>) outs(%17 : tensor<2xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %44 = arith.addf %in, %in_29 : f32
      linalg.yield %44 : f32
    } -> tensor<2xf32>
    %42 = hal.tensor.barrier join(%41 : tensor<2xf32>) => %arg3 : !hal.fence
    %43 = hal.tensor.export %42 : tensor<2xf32> -> !hal.buffer_view
    util.return %43 : !hal.buffer_view
  }
  util.func public @main_graph(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %c0 = arith.constant 0 : index
    %device_0 = hal.devices.get %c0 : !hal.device
    %fence = hal.fence.create device(%device_0 : !hal.device) flags("None") : !hal.fence
    %1 = util.call @main_graph$async(%arg0, %arg1, %0, %fence) : (!hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.return %1 : !hal.buffer_view
  }
}
