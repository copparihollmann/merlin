#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
#map2 = affine_map<(d0, d1) -> (d1)>
#map8 = affine_map<(d0, d1) -> (d0, 0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
module {
  util.func public @main_graph$async(%c_arg0: !hal.buffer_view, %c_arg1: !hal.fence, %c_arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %c_cst = arith.constant dense<1> : tensor<1xi64>
    %c_cst_0 = arith.constant dense<[[0.000000e+00], [0.111111112], [0.222222224], [0.333333343], [0.444444448], [0.555555582], [0.666666686], [0.777777791], [0.888888895], [1.000000e+00]]> : tensor<10x1xf32>
    %c_cst_1 = arith.constant dense<[[1.000000e+00], [0.888888895], [0.777777791], [0.666666627], [0.555555582], [0.444444418], [0.333333313], [0.222222209], [0.111111104], [0.000000e+00]]> : tensor<10x1xf32>
    %c_cst_2 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
    %c_cst_3 = arith.constant dense<1.000000e+00> : tensor<f32>
    %c_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %c_0 = hal.tensor.import wait(%c_arg1) => %c_arg0 : !hal.buffer_view -> tensor<2xf32>
    %c_1 = tensor.empty() : tensor<1xf32>
    %c_2 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%c_cst_4 : tensor<1xi64>) outs(%c_1 : tensor<1xf32>) {
    ^bb0(%c_in: i64, %c_out: f32):
      %c_24 = arith.index_cast %c_in : i64 to index
      %c_extracted = tensor.extract %c_0[%c_24] : tensor<2xf32>
      linalg.yield %c_extracted : f32
    } -> tensor<1xf32>
    %c_collapsed = tensor.collapse_shape %c_2 [] : tensor<1xf32> into tensor<f32>
    %c_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%c_cst : tensor<1xi64>) outs(%c_1 : tensor<1xf32>) {
    ^bb0(%c_in: i64, %c_out: f32):
      %c_24 = arith.index_cast %c_in : i64 to index
      %c_extracted = tensor.extract %c_0[%c_24] : tensor<2xf32>
      linalg.yield %c_extracted : f32
    } -> tensor<1xf32>
    %c_collapsed_5 = tensor.collapse_shape %c_3 [] : tensor<1xf32> into tensor<f32>
    %c_4 = tensor.empty() : tensor<f32>
    %c_5 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_collapsed : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.cos %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_6 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_5, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_collapsed, %c_collapsed_5 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_8 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_7 : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.cos %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_8, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_6, %c_9 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_11 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_collapsed : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.sin %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_12 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_11, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_13 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_7 : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.sin %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_13, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_12, %c_14 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_expanded = tensor.expand_shape %c_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %c_expanded_6 = tensor.expand_shape %c_15 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %c_concat = tensor.concat dim(0) %c_expanded, %c_expanded_6 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %c_16 = tensor.empty() : tensor<2xf32>
    %c_17 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%c_concat, %c_cst_2 : tensor<2xf32>, tensor<2xf32>) outs(%c_16 : tensor<2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<2xf32>
    %c_18 = tensor.empty() : tensor<10x2xf32>
    %c_19 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_concat, %c_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    %c_20 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_17, %c_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    %c_21 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_19, %c_20 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    %c_22 = hal.tensor.barrier join(%c_21 : tensor<10x2xf32>) => %c_arg2 : !hal.fence
    %c_23 = hal.tensor.export %c_22 : tensor<10x2xf32> -> !hal.buffer_view
    util.return %c_23 : !hal.buffer_view
  }
  util.func public @main_graph(%c_arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %c_0 = util.null : !hal.fence
    %c_c-1_i32 = arith.constant -1 : i32
    %c_c0 = arith.constant 0 : index
    %c_device_0 = hal.devices.get %c_c0 : !hal.device
    %c_fence = hal.fence.create device(%c_device_0 : !hal.device) flags("None") : !hal.fence
    %c_1 = util.call @main_graph$async(%c_arg0, %c_0, %c_fence) : (!hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %c_status = hal.fence.await until([%c_fence]) timeout_millis(%c_c-1_i32) flags("None") : i32
    util.return %c_1 : !hal.buffer_view
  }
}
