#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
module {
  util.func public @main_graph$async(%e_arg0: !hal.buffer_view, %e_arg1: !hal.buffer_view, %e_arg2: !hal.fence, %e_arg3: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %e_cst = arith.constant dense<2> : tensor<1xi64>
    %e_cst_0 = arith.constant dense<1> : tensor<1xi64>
    %e_cst_1 = arith.constant dense<5.000000e-01> : tensor<f32>
    %e_cst_2 = arith.constant dense<2.000000e+00> : tensor<f32>
    %e_cst_3 = arith.constant dense<9.99999974E-5> : tensor<f32>
    %e_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %e_0 = hal.tensor.import wait(%e_arg2) => %e_arg0 : !hal.buffer_view -> tensor<3xf32>
    %e_1 = hal.tensor.import wait(%e_arg2) => %e_arg1 : !hal.buffer_view -> tensor<2xf32>
    %e_2 = tensor.empty() : tensor<1xf32>
    %e_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_4 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_1[%e_26] : tensor<2xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed = tensor.collapse_shape %e_3 [] : tensor<1xf32> into tensor<f32>
    %e_4 = tensor.empty() : tensor<f32>
    %e_5 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed, %e_cst_3 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_6 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_0 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_1[%e_26] : tensor<2xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_5 = tensor.collapse_shape %e_6 [] : tensor<1xf32> into tensor<f32>
    %e_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_5, %e_cst_3 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_8 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_5, %e_7 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_8, %e_cst_2 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_7, %e_5 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.subf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_11 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_10, %e_cst_1 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_12 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_6 = tensor.collapse_shape %e_12 [] : tensor<1xf32> into tensor<f32>
    %e_13 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_11, %e_cst_2 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_6, %e_13 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_15 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_4 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_7 = tensor.collapse_shape %e_15 [] : tensor<1xf32> into tensor<f32>
    %e_16 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%e_14 : tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_out: f32):
      %e_26 = math.cos %e_in : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_17 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_9, %e_16 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_18 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_7, %e_17 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_19 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_0 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_8 = tensor.collapse_shape %e_19 [] : tensor<1xf32> into tensor<f32>
    %e_20 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%e_14 : tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_out: f32):
      %e_26 = math.sin %e_in : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_21 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_9, %e_20 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_22 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_8, %e_21 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_23 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_6, %e_11 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_expanded = tensor.expand_shape %e_18 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_expanded_9 = tensor.expand_shape %e_22 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_expanded_10 = tensor.expand_shape %e_23 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_concat = tensor.concat dim(0) %e_expanded, %e_expanded_9, %e_expanded_10 : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<3xf32>
    %e_24 = hal.tensor.barrier join(%e_concat : tensor<3xf32>) => %e_arg3 : !hal.fence
    %e_25 = hal.tensor.export %e_24 : tensor<3xf32> -> !hal.buffer_view
    util.return %e_25 : !hal.buffer_view
  }
  util.func public @main_graph(%e_arg0: !hal.buffer_view, %e_arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %e_0 = util.null : !hal.fence
    %e_c-1_i32 = arith.constant -1 : i32
    %e_c0 = arith.constant 0 : index
    %e_device_0 = hal.devices.get %e_c0 : !hal.device
    %e_fence = hal.fence.create device(%e_device_0 : !hal.device) flags("None") : !hal.fence
    %e_1 = util.call @main_graph$async(%e_arg0, %e_arg1, %e_0, %e_fence) : (!hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %e_status = hal.fence.await until([%e_fence]) timeout_millis(%e_c-1_i32) flags("None") : i32
    util.return %e_1 : !hal.buffer_view
  }
}
