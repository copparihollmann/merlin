#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
#map5 = affine_map<(d0, d1) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map6 = affine_map<(d0, d1) -> ()>
#map7 = affine_map<(d0) -> ()>
module {
  util.func public @main_graph$async(%b_arg0: !hal.buffer_view, %b_arg1: !hal.buffer_view, %b_arg2: !hal.fence, %b_arg3: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %b_cst = arith.constant dense<1> : tensor<1xi64>
    %b_cst_0 = arith.constant dense<1.000000e-01> : tensor<f32>
    %b_cst_1 = arith.constant dense<9.99999997E-7> : tensor<f32>
    %b_cst_2 = arith.constant dense<-1.000000e+00> : tensor<f32>
    %b_cst_3 = arith.constant dense<1.000000e+00> : tensor<f32>
    %b_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %b_cst_5 = arith.constant 0.000000e+00 : f32
    %b_cst_6 = arith.constant 1.000000e+00 : f32
    %b_0 = hal.tensor.import wait(%b_arg2) => %b_arg0 : !hal.buffer_view -> tensor<2xf32>
    %b_1 = hal.tensor.import wait(%b_arg2) => %b_arg1 : !hal.buffer_view -> tensor<2xf32>
    %b_2 = tensor.empty() : tensor<1xf32>
    %b_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_0[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed = tensor.collapse_shape %b_3 [] : tensor<1xf32> into tensor<f32>
    %b_4 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_0[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_7 = tensor.collapse_shape %b_4 [] : tensor<1xf32> into tensor<f32>
    %b_5 = tensor.empty() : tensor<f32>
    %b_6 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.cos %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_6, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_8 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed, %b_collapsed_7 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_9 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_8 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.cos %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_9, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_11 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_7, %b_10 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_12 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.sin %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_13 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_12, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_14 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_8 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.sin %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_14, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_16 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_13, %b_15 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded = tensor.expand_shape %b_11 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_expanded_8 = tensor.expand_shape %b_16 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat = tensor.concat dim(0) %b_expanded, %b_expanded_8 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_17 = tensor.empty() : tensor<2xf32>
    %b_18 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%b_1, %b_concat : tensor<2xf32>, tensor<2xf32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    %b_19 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_12, %b_cst_2 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_20 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_19, %b_15 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_21 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_14, %b_cst_2 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_9 = tensor.expand_shape %b_20 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_expanded_10 = tensor.expand_shape %b_21 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_11 = tensor.concat dim(0) %b_expanded_9, %b_expanded_10 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_12 = tensor.expand_shape %b_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_13 = tensor.concat dim(0) %b_expanded, %b_expanded_12 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_14 = tensor.expand_shape %b_concat_11 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_expanded_15 = tensor.expand_shape %b_concat_13 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_concat_16 = tensor.concat dim(0) %b_expanded_14, %b_expanded_15 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %b_22 = tensor.empty() : tensor<1x2xf32>
    %b_23 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_22 : tensor<1x2xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_46 = linalg.index 1 : index
      %b_extracted = tensor.extract %b_concat_16[%b_45, %b_46] : tensor<2x2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1x2xf32>
    %b_collapsed_17 = tensor.collapse_shape %b_23 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %b_24 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_17[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_18 = tensor.collapse_shape %b_24 [] : tensor<1xf32> into tensor<f32>
    %b_25 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_22 : tensor<1x2xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_46 = linalg.index 1 : index
      %b_extracted = tensor.extract %b_concat_16[%b_45, %b_46] : tensor<2x2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1x2xf32>
    %b_collapsed_19 = tensor.collapse_shape %b_25 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %b_26 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_19[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_20 = tensor.collapse_shape %b_26 [] : tensor<1xf32> into tensor<f32>
    %b_27 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed_18, %b_collapsed_20 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_28 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_17[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_21 = tensor.collapse_shape %b_28 [] : tensor<1xf32> into tensor<f32>
    %b_29 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_19[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_22 = tensor.collapse_shape %b_29 [] : tensor<1xf32> into tensor<f32>
    %b_30 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed_21, %b_collapsed_22 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_31 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_27, %b_30 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_32 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_31, %b_cst_1 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_33 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_32 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.cmpf one, %b_in, %b_cst_5 : f32
      cf.assert %b_45, "unimplemented: tensor with zero element"
      %b_46 = arith.divf %b_cst_6, %b_in : f32
      linalg.yield %b_46 : f32
    } -> tensor<f32>
    %b_34 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_33, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_35 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed_21 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.negf %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_23 = tensor.expand_shape %b_35 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_24 = tensor.concat dim(0) %b_26, %b_expanded_23 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_36 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed_22 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.negf %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_25 = tensor.expand_shape %b_36 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_26 = tensor.concat dim(0) %b_expanded_25, %b_24 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_27 = tensor.expand_shape %b_concat_24 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_expanded_28 = tensor.expand_shape %b_concat_26 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_concat_29 = tensor.concat dim(0) %b_expanded_27, %b_expanded_28 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %b_37 = tensor.empty() : tensor<2x2xf32>
    %b_38 = linalg.generic {indexing_maps = [#map1, #map6, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_concat_29, %b_34 : tensor<2x2xf32>, tensor<f32>) outs(%b_37 : tensor<2x2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2x2xf32>
    %b_39 = linalg.fill ins(%b_cst_5 : f32) outs(%b_17 : tensor<2xf32>) -> tensor<2xf32>
    %b_40 = linalg.matvec ins(%b_38, %b_18 : tensor<2x2xf32>, tensor<2xf32>) outs(%b_39 : tensor<2xf32>) -> tensor<2xf32>
    %b_41 = linalg.generic {indexing_maps = [#map3, #map7, #map3], iterator_types = ["parallel"]} ins(%b_40, %b_cst_0 : tensor<2xf32>, tensor<f32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    %b_42 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%b_0, %b_41 : tensor<2xf32>, tensor<2xf32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    %b_43 = hal.tensor.barrier join(%b_42 : tensor<2xf32>) => %b_arg3 : !hal.fence
    %b_44 = hal.tensor.export %b_43 : tensor<2xf32> -> !hal.buffer_view
    util.return %b_44 : !hal.buffer_view
  }
  util.func public @main_graph(%b_arg0: !hal.buffer_view, %b_arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %b_0 = util.null : !hal.fence
    %b_c-1_i32 = arith.constant -1 : i32
    %b_c0 = arith.constant 0 : index
    %b_device_0 = hal.devices.get %b_c0 : !hal.device
    %b_fence = hal.fence.create device(%b_device_0 : !hal.device) flags("None") : !hal.fence
    %b_1 = util.call @main_graph$async(%b_arg0, %b_arg1, %b_0, %b_fence) : (!hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %b_status = hal.fence.await until([%b_fence]) timeout_millis(%b_c-1_i32) flags("None") : i32
    util.return %b_1 : !hal.buffer_view
  }
}
