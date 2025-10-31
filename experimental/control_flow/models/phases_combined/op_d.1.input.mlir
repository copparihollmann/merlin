#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
#map2 = affine_map<(d0, d1) -> (d1)>
#map8 = affine_map<(d0, d1) -> (d0, 0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
module {
  util.func public @main_graph$async(%d_arg0: !hal.buffer_view, %d_arg1: !hal.fence, %d_arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %d_cst = arith.constant dense<1> : tensor<1xi64>
    %d_cst_0 = arith.constant dense<[[0.000000e+00], [0.111111112], [0.222222224], [0.333333343], [0.444444448], [0.555555582], [0.666666686], [0.777777791], [0.888888895], [1.000000e+00]]> : tensor<10x1xf32>
    %d_cst_1 = arith.constant dense<[[1.000000e+00], [0.888888895], [0.777777791], [0.666666627], [0.555555582], [0.444444418], [0.333333313], [0.222222209], [0.111111104], [0.000000e+00]]> : tensor<10x1xf32>
    %d_cst_2 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
    %d_cst_3 = arith.constant dense<[-2.000000e-01, 0.000000e+00]> : tensor<2xf32>
    %d_cst_4 = arith.constant dense<1.000000e+00> : tensor<f32>
    %d_cst_5 = arith.constant dense<0> : tensor<1xi64>
    %d_0 = hal.tensor.import wait(%d_arg1) => %d_arg0 : !hal.buffer_view -> tensor<2xf32>
    %d_1 = tensor.empty() : tensor<1xf32>
    %d_2 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%d_cst_5 : tensor<1xi64>) outs(%d_1 : tensor<1xf32>) {
    ^bb0(%d_in: i64, %d_out: f32):
      %d_28 = arith.index_cast %d_in : i64 to index
      %d_extracted = tensor.extract %d_0[%d_28] : tensor<2xf32>
      linalg.yield %d_extracted : f32
    } -> tensor<1xf32>
    %d_collapsed = tensor.collapse_shape %d_2 [] : tensor<1xf32> into tensor<f32>
    %d_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%d_cst : tensor<1xi64>) outs(%d_1 : tensor<1xf32>) {
    ^bb0(%d_in: i64, %d_out: f32):
      %d_28 = arith.index_cast %d_in : i64 to index
      %d_extracted = tensor.extract %d_0[%d_28] : tensor<2xf32>
      linalg.yield %d_extracted : f32
    } -> tensor<1xf32>
    %d_collapsed_6 = tensor.collapse_shape %d_3 [] : tensor<1xf32> into tensor<f32>
    %d_4 = tensor.empty() : tensor<f32>
    %d_5 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_collapsed : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.cos %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_6 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_5, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_collapsed, %d_collapsed_6 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_8 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_7 : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.cos %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_8, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_6, %d_9 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_11 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_collapsed : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.sin %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_12 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_11, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_13 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_7 : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.sin %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_13, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_12, %d_14 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_expanded = tensor.expand_shape %d_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %d_expanded_7 = tensor.expand_shape %d_15 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %d_concat = tensor.concat dim(0) %d_expanded, %d_expanded_7 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %d_16 = tensor.empty() : tensor<2xf32>
    %d_17 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%d_concat, %d_cst_3 : tensor<2xf32>, tensor<2xf32>) outs(%d_16 : tensor<2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<2xf32>
    %d_18 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%d_17, %d_cst_2 : tensor<2xf32>, tensor<2xf32>) outs(%d_16 : tensor<2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<2xf32>
    %d_19 = tensor.empty() : tensor<10x2xf32>
    %d_20 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_concat, %d_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_21 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_17, %d_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_22 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_20, %d_21 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_23 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_17, %d_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_24 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_18, %d_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_25 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_23, %d_24 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_extracted_slice = tensor.extract_slice %d_25[1, 0] [9, 2] [1, 1] : tensor<10x2xf32> to tensor<9x2xf32>
    %d_concat_8 = tensor.concat dim(0) %d_22, %d_extracted_slice : (tensor<10x2xf32>, tensor<9x2xf32>) -> tensor<19x2xf32>
    %d_26 = hal.tensor.barrier join(%d_concat_8 : tensor<19x2xf32>) => %d_arg2 : !hal.fence
    %d_27 = hal.tensor.export %d_26 : tensor<19x2xf32> -> !hal.buffer_view
    util.return %d_27 : !hal.buffer_view
  }
  util.func public @main_graph(%d_arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %d_0 = util.null : !hal.fence
    %d_c-1_i32 = arith.constant -1 : i32
    %d_c0 = arith.constant 0 : index
    %d_device_0 = hal.devices.get %d_c0 : !hal.device
    %d_fence = hal.fence.create device(%d_device_0 : !hal.device) flags("None") : !hal.fence
    %d_1 = util.call @main_graph$async(%d_arg0, %d_0, %d_fence) : (!hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %d_status = hal.fence.await until([%d_fence]) timeout_millis(%d_c-1_i32) flags("None") : i32
    util.return %d_1 : !hal.buffer_view
  }
}
