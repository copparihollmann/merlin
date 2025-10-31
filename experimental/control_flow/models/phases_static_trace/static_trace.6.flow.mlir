#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<() -> ()>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 * 4 + d4, d2 * 4 + d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d0)>
#map6 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 * 2 + d3, d2 * 2 + d4)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d3, d4)>
#map8 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#map9 = affine_map<(d0, d1) -> (d0, d1)>
#map10 = affine_map<(d0) -> (d0)>
#map11 = affine_map<(d0, d1) -> (d1)>
#map12 = affine_map<(d0, d1) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  flow.executable private @main_graph$async_dispatch_0 {
    flow.executable.export public @main_graph$async_dispatch_0_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_0_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<3xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg4: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %cst = arith.constant 9.99999974E-5 : f32
        %cst_0 = arith.constant 2.000000e+00 : f32
        %cst_1 = arith.constant 5.000000e-01 : f32
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %c2 = arith.constant 2 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [3], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3xf32>> -> tensor<3xf32>
        %2 = tensor.empty() : tensor<f32>
        %3 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%2 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %6 = arith.mulf %extracted, %cst : f32
          %extracted_2 = tensor.extract %0[%c1] : tensor<2xf32>
          %7 = arith.mulf %extracted_2, %cst : f32
          %8 = arith.addf %6, %7 : f32
          %9 = arith.divf %8, %cst_0 : f32
          %10 = arith.subf %7, %6 : f32
          %11 = arith.divf %10, %cst_1 : f32
          %extracted_3 = tensor.extract %1[%c2] : tensor<3xf32>
          %12 = arith.divf %11, %cst_0 : f32
          %13 = arith.addf %extracted_3, %12 : f32
          %14 = math.sin %13 : f32
          %15 = arith.mulf %9, %14 : f32
          %extracted_4 = tensor.extract %1[%c1] : tensor<3xf32>
          %16 = arith.addf %extracted_4, %15 : f32
          linalg.yield %16 : f32
        } -> tensor<f32>
        %4 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%2 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %6 = arith.mulf %extracted, %cst : f32
          %extracted_2 = tensor.extract %0[%c1] : tensor<2xf32>
          %7 = arith.mulf %extracted_2, %cst : f32
          %8 = arith.addf %6, %7 : f32
          %9 = arith.divf %8, %cst_0 : f32
          %10 = arith.subf %7, %6 : f32
          %11 = arith.divf %10, %cst_1 : f32
          %extracted_3 = tensor.extract %1[%c2] : tensor<3xf32>
          %12 = arith.divf %11, %cst_0 : f32
          %13 = arith.addf %extracted_3, %12 : f32
          %14 = math.cos %13 : f32
          %15 = arith.mulf %9, %14 : f32
          %extracted_4 = tensor.extract %1[%c0] : tensor<3xf32>
          %16 = arith.addf %extracted_4, %15 : f32
          linalg.yield %16 : f32
        } -> tensor<f32>
        %5 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%2 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %6 = arith.mulf %extracted, %cst : f32
          %extracted_2 = tensor.extract %0[%c1] : tensor<2xf32>
          %7 = arith.mulf %extracted_2, %cst : f32
          %8 = arith.subf %7, %6 : f32
          %9 = arith.divf %8, %cst_1 : f32
          %extracted_3 = tensor.extract %1[%c2] : tensor<3xf32>
          %10 = arith.addf %extracted_3, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %5, %arg2, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %4, %arg3, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %3, %arg4, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_1 {
    flow.executable.export public @main_graph$async_dispatch_1_slow_memcpy workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_1_slow_memcpy(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x64x64xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readwrite:tensor<3x66x66xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0], sizes = [3, 64, 64], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x64x64xf32>> -> tensor<3x64x64xf32>
        iree_tensor_ext.dispatch.tensor.store %0, %arg1, offsets = [0, 1, 1], sizes = [3, 64, 64], strides = [1, 1, 1] : tensor<3x64x64xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<3x66x66xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_2 {
    flow.executable.export public @main_graph$async_dispatch_2_conv_4x16x16x3x4x4_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_2_conv_4x16x16x3x4x4_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x66x66xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x3x4x4xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x16x16xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.0291617829, 0.0185516253, -0.0336317755, 0.0323117375]> : tensor<4xf32>
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0], sizes = [3, 66, 66], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x66x66xf32>> -> tensor<3x66x66xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [4, 3, 4, 4], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x3x4x4xf32>> -> tensor<4x3x4x4xf32>
        %2 = tensor.empty() : tensor<4x16x16xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<4x16x16xf32>) -> tensor<4x16x16xf32>
        %4 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%0, %1 : tensor<3x66x66xf32>, tensor<4x3x4x4xf32>) outs(%3 : tensor<4x16x16xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %6 = arith.mulf %in, %in_1 : f32
          %7 = arith.addf %out, %6 : f32
          linalg.yield %7 : f32
        } -> tensor<4x16x16xf32>
        %5 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %cst_0 : tensor<4x16x16xf32>, tensor<4xf32>) outs(%2 : tensor<4x16x16xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %6 = arith.addf %in, %in_1 : f32
          %7 = arith.cmpf ugt, %6, %cst : f32
          %8 = arith.select %7, %6, %cst : f32
          linalg.yield %8 : f32
        } -> tensor<4x16x16xf32>
        iree_tensor_ext.dispatch.tensor.store %5, %arg2, offsets = [0, 0, 0], sizes = [4, 16, 16], strides = [1, 1, 1] : tensor<4x16x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x16x16xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_3 {
    flow.executable.export public @main_graph$async_dispatch_3_conv_4x8x8x2x2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_3_conv_4x8x8x2x2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x16x16xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x8x8xf32>>) {
        %cst = arith.constant 0xFF800000 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0], sizes = [4, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x16x16xf32>> -> tensor<4x16x16xf32>
        %1 = tensor.empty() : tensor<4x8x8xf32>
        %2 = tensor.empty() : tensor<2x2xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%1 : tensor<4x8x8xf32>) -> tensor<4x8x8xf32>
        %4 = linalg.generic {indexing_maps = [#map6, #map7, #map8], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%0, %2 : tensor<4x16x16xf32>, tensor<2x2xf32>) outs(%3 : tensor<4x8x8xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %5 = arith.maximumf %out, %in : f32
          linalg.yield %5 : f32
        } -> tensor<4x8x8xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg1, offsets = [0, 0, 0], sizes = [4, 8, 8], strides = [1, 1, 1] : tensor<4x8x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x8x8xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_4 {
    flow.executable.export public @main_graph$async_dispatch_4_mmt4d_1x1x256x1x8x1_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_4_mmt4d_1x1x256x1x8x1_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x256x1x1xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x256x8x1xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x1x8xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [1, 256, 1, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x256x1x1xf32>> -> tensor<1x256x1x1xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [1, 256, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x256x8x1xf32>> -> tensor<1x256x8x1xf32>
        %2 = tensor.empty() : tensor<1x1x1x8xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<1x1x1x8xf32>) -> tensor<1x1x1x8xf32>
        %4 = linalg.mmt4d ins(%0, %1 : tensor<1x256x1x1xf32>, tensor<1x256x8x1xf32>) outs(%3 : tensor<1x1x1x8xf32>) -> tensor<1x1x1x8xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg2, offsets = [0, 0, 0, 0], sizes = [1, 1, 1, 8], strides = [1, 1, 1, 1] : tensor<1x1x1x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x1x8xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_5 {
    flow.executable.export public @main_graph$async_dispatch_5_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_5_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %5 = arith.addf %extracted, %extracted_0 : f32
          %6 = math.cos %5 : f32
          %7 = math.cos %extracted : f32
          %8 = arith.addf %7, %6 : f32
          linalg.yield %8 : f32
        } -> tensor<f32>
        %3 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %5 = arith.addf %extracted, %extracted_0 : f32
          %6 = math.cos %5 : f32
          linalg.yield %6 : f32
        } -> tensor<f32>
        %4 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %5 = arith.addf %extracted, %extracted_0 : f32
          %6 = math.sin %5 : f32
          %7 = math.sin %extracted : f32
          %8 = arith.addf %7, %6 : f32
          linalg.yield %8 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %3, %arg2, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %2, %arg3, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_6 {
    flow.executable.export public @main_graph$async_dispatch_6_unpack_elementwise_1x2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_6_unpack_elementwise_1x2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x1x8xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2xf32>>) {
        %cst = arith.constant dense<[[-0.0322122052, -0.0469594523]]> : tensor<1x2xf32>
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [1, 1, 1, 8], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x1x8xf32>> -> tensor<1x1x1x8xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0], sizes = [1, 2], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2xf32>> -> tensor<1x2xf32>
        %2 = tensor.empty() : tensor<1x2xf32>
        %unpack = linalg.unpack %0 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [1, 8] into %2 : tensor<1x1x1x8xf32> -> tensor<1x2xf32>
        %3:2 = linalg.generic {indexing_maps = [#map9, #map9, #map9, #map9, #map9], iterator_types = ["parallel", "parallel"]} ins(%unpack, %cst, %1 : tensor<1x2xf32>, tensor<1x2xf32>, tensor<1x2xf32>) outs(%2, %2 : tensor<1x2xf32>, tensor<1x2xf32>) {
        ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32, %out_2: f32):
          %4 = arith.addf %in, %in_0 : f32
          %5 = arith.subf %4, %in_1 : f32
          linalg.yield %4, %5 : f32, f32
        } -> (tensor<1x2xf32>, tensor<1x2xf32>)
        iree_tensor_ext.dispatch.tensor.store %3#0, %arg2, offsets = [0, 0], sizes = [1, 2], strides = [1, 1] : tensor<1x2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2xf32>>
        iree_tensor_ext.dispatch.tensor.store %3#1, %arg3, offsets = [0, 0], sizes = [1, 2], strides = [1, 1] : tensor<1x2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_7 {
    flow.executable.export public @main_graph$async_dispatch_7_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_7_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %cst = arith.constant -1.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %4 = arith.addf %extracted, %extracted_0 : f32
          %5 = math.sin %4 : f32
          %6 = math.sin %extracted : f32
          %7 = arith.mulf %6, %cst : f32
          %8 = arith.subf %7, %5 : f32
          linalg.yield %8 : f32
        } -> tensor<f32>
        %3 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %4 = arith.addf %extracted, %extracted_0 : f32
          %5 = math.sin %4 : f32
          %6 = arith.mulf %5, %cst : f32
          linalg.yield %6 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %3, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %2, %arg2, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_8 {
    flow.executable.export public @main_graph$async_dispatch_8_elementwise_broadcast_2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) {
        %c0 = arith.constant 0 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [2, 2], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>> -> tensor<2x2xf32>
        %1 = tensor.empty() : tensor<2xf32>
        %2 = linalg.generic {indexing_maps = [#map10], iterator_types = ["parallel"]} outs(%1 : tensor<2xf32>) {
        ^bb0(%out: f32):
          %3 = linalg.index 0 : index
          %extracted = tensor.extract %0[%c0, %3] : tensor<2x2xf32>
          linalg.yield %extracted : f32
        } -> tensor<2xf32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_9 {
    flow.executable.export public @main_graph$async_dispatch_9_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_9_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c0 = arith.constant 0 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          linalg.yield %extracted : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_10 {
    flow.executable.export public @main_graph$async_dispatch_10_elementwise_broadcast_2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) {
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [2, 2], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>> -> tensor<2x2xf32>
        %1 = tensor.empty() : tensor<2xf32>
        %2 = linalg.generic {indexing_maps = [#map10], iterator_types = ["parallel"]} outs(%1 : tensor<2xf32>) {
        ^bb0(%out: f32):
          %3 = linalg.index 0 : index
          %extracted = tensor.extract %0[%c1, %3] : tensor<2x2xf32>
          linalg.yield %extracted : f32
        } -> tensor<2xf32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_11 {
    flow.executable.export public @main_graph$async_dispatch_11_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_11_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c1] : tensor<2xf32>
          linalg.yield %extracted : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_12 {
    flow.executable.export public @main_graph$async_dispatch_12_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_12_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c1] : tensor<2xf32>
          %3 = arith.negf %extracted : f32
          linalg.yield %3 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg2, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_13 {
    flow.executable.export public @main_graph$async_dispatch_13_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_13_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c0 = arith.constant 0 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %3 = arith.negf %extracted : f32
          linalg.yield %3 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_14 {
    flow.executable.export public @main_graph$async_dispatch_14_elementwise_2x2_f32_pack workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x8x1xf32>>) {
        %cst = arith.constant 9.99999997E-7 : f32
        %cst_0 = arith.constant 0.000000e+00 : f32
        %cst_1 = arith.constant 1.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %2 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [2, 2], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2xf32>> -> tensor<2x2xf32>
        %3 = tensor.empty() : tensor<1x2x8x1xf32>
        %4 = tensor.empty() : tensor<2x2xf32>
        %5 = linalg.generic {indexing_maps = [#map9, #map9], iterator_types = ["parallel", "parallel"]} ins(%2 : tensor<2x2xf32>) outs(%4 : tensor<2x2xf32>) {
        ^bb0(%in: f32, %out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_2 = tensor.extract %1[%c1] : tensor<2xf32>
          %extracted_3 = tensor.extract %0[%c1] : tensor<2xf32>
          %extracted_4 = tensor.extract %1[%c0] : tensor<2xf32>
          %6 = arith.mulf %extracted_3, %extracted_4 : f32
          %7 = arith.mulf %extracted, %extracted_2 : f32
          %8 = arith.subf %7, %6 : f32
          %9 = arith.addf %8, %cst : f32
          %10 = arith.divf %cst_1, %9 : f32
          %11 = arith.mulf %in, %10 : f32
          linalg.yield %11 : f32
        } -> tensor<2x2xf32>
        %pack = linalg.pack %5 padding_value(%cst_0 : f32) outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %3 : tensor<2x2xf32> -> tensor<1x2x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %arg3, offsets = [0, 0, 0, 0], sizes = [1, 2, 8, 1], strides = [1, 1, 1, 1] : tensor<1x2x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x8x1xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_15 {
    flow.executable.export public @main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x1x1xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x8x1xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x1x8xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [1, 2, 1, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x1x1xf32>> -> tensor<1x2x1x1xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [1, 2, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x8x1xf32>> -> tensor<1x2x8x1xf32>
        %2 = tensor.empty() : tensor<1x1x1x8xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<1x1x1x8xf32>) -> tensor<1x1x1x8xf32>
        %4 = linalg.mmt4d ins(%0, %1 : tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) outs(%3 : tensor<1x1x1x8xf32>) -> tensor<1x1x1x8xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg2, offsets = [0, 0, 0, 0], sizes = [1, 1, 1, 8], strides = [1, 1, 1, 1] : tensor<1x1x1x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x1x8xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_16 {
    flow.executable.export public @main_graph$async_dispatch_16_unpack_elementwise_2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_16_unpack_elementwise_2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x8xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) {
        %cst = arith.constant 1.000000e-01 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [1, 8], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x8xf32>> -> tensor<1x8xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %2 = tensor.empty() : tensor<2xf32>
        %unpack = linalg.unpack %0 outer_dims_perm = [0] inner_dims_pos = [0] inner_tiles = [8] into %2 : tensor<1x8xf32> -> tensor<2xf32>
        %3 = linalg.generic {indexing_maps = [#map10, #map10, #map10], iterator_types = ["parallel"]} ins(%1, %unpack : tensor<2xf32>, tensor<2xf32>) outs(%2 : tensor<2xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %4 = arith.mulf %in_0, %cst : f32
          %5 = arith.addf %in, %4 : f32
          linalg.yield %5 : f32
        } -> tensor<2xf32>
        iree_tensor_ext.dispatch.tensor.store %3, %arg2, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_18 {
    flow.executable.export public @main_graph$async_dispatch_18_elementwise_2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_18_elementwise_2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %2 = tensor.empty() : tensor<2xf32>
        %3 = linalg.generic {indexing_maps = [#map10, #map10, #map10], iterator_types = ["parallel"]} ins(%0, %1 : tensor<2xf32>, tensor<2xf32>) outs(%2 : tensor<2xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %4 = arith.subf %in, %in_0 : f32
          linalg.yield %4 : f32
        } -> tensor<2xf32>
        iree_tensor_ext.dispatch.tensor.store %3, %arg2, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_113 {
    flow.executable.export public @main_graph$async_dispatch_113_elementwise_broadcast workgroups() -> (index, index, index) {
      %c1 = arith.constant 1 : index
      flow.return %c1, %c1, %c1 : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_113_elementwise_broadcast(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) {
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<f32>
        %2 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %4 = arith.addf %extracted, %extracted_0 : f32
          %5 = math.cos %4 : f32
          %6 = math.cos %extracted : f32
          %7 = arith.addf %6, %5 : f32
          linalg.yield %7 : f32
        } -> tensor<f32>
        %3 = linalg.generic {indexing_maps = [#map], iterator_types = []} outs(%1 : tensor<f32>) {
        ^bb0(%out: f32):
          %extracted = tensor.extract %0[%c0] : tensor<2xf32>
          %extracted_0 = tensor.extract %0[%c1] : tensor<2xf32>
          %4 = arith.addf %extracted, %extracted_0 : f32
          %5 = math.sin %4 : f32
          %6 = math.sin %extracted : f32
          %7 = arith.addf %6, %5 : f32
          linalg.yield %7 : f32
        } -> tensor<f32>
        iree_tensor_ext.dispatch.tensor.store %3, %arg1, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        iree_tensor_ext.dispatch.tensor.store %2, %arg2, offsets = [], sizes = [], strides = [] : tensor<f32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_114 {
    flow.executable.export public @main_graph$async_dispatch_114_elementwise_2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_114_elementwise_2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) {
        %cst = arith.constant dense<[-2.000000e-01, 0.000000e+00]> : tensor<2xf32>
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<2xf32>
        %2 = linalg.generic {indexing_maps = [#map10, #map10, #map10], iterator_types = ["parallel"]} ins(%0, %cst : tensor<2xf32>, tensor<2xf32>) outs(%1 : tensor<2xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %3 = arith.addf %in, %in_0 : f32
          linalg.yield %3 : f32
        } -> tensor<2xf32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_115 {
    flow.executable.export public @main_graph$async_dispatch_115_elementwise_broadcast_10x2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_115_elementwise_broadcast_10x2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x2xf32>>) {
        %cst = arith.constant dense<[1.000000e+00, 0.888888895, 0.777777791, 0.666666627, 0.555555582, 0.444444418, 0.333333313, 0.222222209, 0.111111104, 0.000000e+00]> : tensor<10xf32>
        %cst_0 = arith.constant dense<[0.000000e+00, 0.111111112, 0.222222224, 0.333333343, 0.444444448, 0.555555582, 0.666666686, 0.777777791, 0.888888895, 1.000000e+00]> : tensor<10xf32>
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %2 = tensor.empty() : tensor<10x2xf32>
        %3 = linalg.generic {indexing_maps = [#map11, #map12, #map11, #map12, #map9], iterator_types = ["parallel", "parallel"]} ins(%0, %cst, %1, %cst_0 : tensor<2xf32>, tensor<10xf32>, tensor<2xf32>, tensor<10xf32>) outs(%2 : tensor<10x2xf32>) {
        ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
          %4 = arith.mulf %in_2, %in_3 : f32
          %5 = arith.mulf %in, %in_1 : f32
          %6 = arith.addf %5, %4 : f32
          linalg.yield %6 : f32
        } -> tensor<10x2xf32>
        iree_tensor_ext.dispatch.tensor.store %3, %arg2, offsets = [0, 0], sizes = [10, 2], strides = [1, 1] : tensor<10x2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x2xf32>>
        return
      }
    }
  }
  flow.executable private @main_graph$async_dispatch_116 {
    flow.executable.export public @main_graph$async_dispatch_116_elementwise_broadcast_9x2_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_116_elementwise_broadcast_9x2_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<9x2xf32>>) {
        %cst = arith.constant dense<[1.000000e+00, 0.888888895, 0.777777791, 0.666666627, 0.555555582, 0.444444418, 0.333333313, 0.222222209, 0.111111104, 0.000000e+00]> : tensor<10xf32>
        %cst_0 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
        %cst_1 = arith.constant dense<[0.000000e+00, 0.111111112, 0.222222224, 0.333333343, 0.444444448, 0.555555582, 0.666666686, 0.777777791, 0.888888895, 1.000000e+00]> : tensor<10xf32>
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
        %1 = tensor.empty() : tensor<9x2xf32>
        %extracted_slice = tensor.extract_slice %cst[1] [9] [1] : tensor<10xf32> to tensor<9xf32>
        %extracted_slice_2 = tensor.extract_slice %cst_1[1] [9] [1] : tensor<10xf32> to tensor<9xf32>
        %2 = linalg.generic {indexing_maps = [#map11, #map12, #map11, #map12, #map9], iterator_types = ["parallel", "parallel"]} ins(%0, %extracted_slice, %cst_0, %extracted_slice_2 : tensor<2xf32>, tensor<9xf32>, tensor<2xf32>, tensor<9xf32>) outs(%1 : tensor<9x2xf32>) {
        ^bb0(%in: f32, %in_3: f32, %in_4: f32, %in_5: f32, %out: f32):
          %3 = arith.addf %in, %in_4 : f32
          %4 = arith.mulf %3, %in_5 : f32
          %5 = arith.mulf %in, %in_3 : f32
          %6 = arith.addf %5, %4 : f32
          linalg.yield %6 : f32
        } -> tensor<9x2xf32>
        iree_tensor_ext.dispatch.tensor.store %2, %arg1, offsets = [0, 0], sizes = [9, 2], strides = [1, 1] : tensor<9x2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<9x2xf32>>
        return
      }
    }
  }
  util.global private @__constant_tensor_4x3x4x4xf32 {inlining_policy = #util.inline.never, stream.affinity.default = #hal.device.affinity<@__device_0>} = dense<"0xA4E062BD6F10A2BDF988443C9D175DBDC10D0BBEE2788DBD3D23A9BD501B7A3DA06B673DC090123EF900C63D2A100ABEC0E7D43D7E941CBC25580B3ECD8EBABD075D0E3EA3222C3D1ADEF53D6FAFC0BCE158683DC8F0F03BAD63CBBD0E57183DBEEE97BDDAE7F3BA769EDC3C7374EB3D4E39B33D106142BD382EA7BC892A01BEC026C63D1087BB3DA69D783D32427B3D4213F93D30DA0CBEC15A803DF17AB63D8A1A043EB867E7BDC529363D951A0CBE2FA62C3B565E043E93A9C5BC14469A3B0C6CA6BD2E66EEBD108FEDBDF4DAAA3DF64DA6BD55D2463C0EAE90BD2ECE43BD0402B7BD4844D8BC6FEF45BD8F289ABD724E2DBD35E2F53DD861BDBD345DAF3DBCD10E3E38A27F3C7362293D0C6787BD20FA3CBD035807BE2FA4EEBD66790DBCE11EA53DFADE123EB6D10C3E0BBD13BE6545C63D6335D93D3D61033E6D6313BDFDE110BE6E7C403DBF1E653BF4A2603D250A513D106844BD843DA53D1EE2823DECBBC4BD3035AFBC2A51A63D959BB63D03F5183D25A672BDE20DE33DEA84133EB5EFB1BC290708BEBC93E9BB850E793BAD14FDBDE95801BE330F883DD6C4E83DF8E2F0BD204E84BDFE1802BEC88B8A3C4F33AA3D706DA93CB7B0EF3D6DA8E9BD819AE23D24AF903DC74412BE545F0A3E52894C3D993BAC3D01D7453DAB55D03D34A2373DDDAD8CBD9FFE25BDBEF4CB3D3B399BBDE380CEBD195A2CBD5990CDBDC062AEBDBEE2E2BD96D8543D963567BC07AFE23CE3069F3D99A7013EF655EEBDE95BB5BB57B72BBD1A3AEDBD6ED50C3EA362E2BDBAE2BD3C7886133E4D0F7E3C3EA8F93CAA7AECBD0B22933BF532A0BD3CEE07BE9653ADBD3F8FA6BD9D507EBC8FF6C0BC19C801BE67E590BDA26D3FBC72EEA33D0902DE3D12F202BE97988B3D4FFB15BCD53E803DC446B9BC82C31B3D47FFD4BD581A843D8623133EE83DB6BD58094ABDDC2CE23DEDBC133E3172CE3D21125EBD29347B3D386DFBBDD03723BD11A8B4396362003ECBE981BC8A04A5BC947CC43DA4E7873DC3AFF8BC490EDF3CD3388BBDC1773B3D12F16FBDBECEE1BDB86F18BDB030243CD6E4E2BDCF2D7B3C"> : tensor<4x3x4x4xf32>
  util.global private @__constant_tensor_1x256x8x1xf32 {inlining_policy = #util.inline.never, stream.affinity.default = #hal.device.affinity<@__device_0>} = dense<"0x8800513D90CB91BC000000000000000000000000000000000000000000000000587D7D3D8CE6C33C000000000000000000000000000000000000000000000000A2654FBDA4CA443D00000000000000000000000000000000000000000000000092003D3D002AF3BA000000000000000000000000000000000000000000000000A051473D3C04263D0000000000000000000000000000000000000000000000005EC04ABD189B60BD0000000000000000000000000000000000000000000000006A8B0CBDF0CA64BD00000000000000000000000000000000000000000000000024D915BD445727BD000000000000000000000000000000000000000000000000D8974D3C14997DBD0000000000000000000000000000000000000000000000001029F3BBF8602ABC0000000000000000000000000000000000000000000000002C48AA3CDE5269BD00000000000000000000000000000000000000000000000080DC47BC4433B43C0000000000000000000000000000000000000000000000004AEF113D9CD882BC000000000000000000000000000000000000000000000000384EB23CF4408BBC00000000000000000000000000000000000000000000000004E760BDDAB55B3D000000000000000000000000000000000000000000000000F845C4BCA040893C000000000000000000000000000000000000000000000000943F593D647796BC000000000000000000000000000000000000000000000000B29F1BBD307FF4BC0000000000000000000000000000000000000000000000004827E53C08B0493D000000000000000000000000000000000000000000000000C6975F3DA0831EBC000000000000000000000000000000000000000000000000BCD0F43C58B62B3C000000000000000000000000000000000000000000000000143D94BCE43A2F3D000000000000000000000000000000000000000000000000A0745B3B4088CE3C0000000000000000000000000000000000000000000000006CB6843C300CDCBC00000000000000000000000000000000000000000000000070D1EA3CA29D57BD000000000000000000000000000000000000000000000000C06C15BC82A8543D000000000000000000000000000000000000000000000000708A483D001CA439000000000000000000000000000000000000000000000000E8501FBC963745BD000000000000000000000000000000000000000000000000004CD838D42CD13C000000000000000000000000000000000000000000000000807BB4BC809D2C3B000000000000000000000000000000000000000000000000D877703D941CEFBC00000000000000000000000000000000000000000000000034F2A8BC660A24BD000000000000000000000000000000000000000000000000740C093D56D8463D00000000000000000000000000000000000000000000000030D68F3C402C03BC000000000000000000000000000000000000000000000000C0DDAFBAA4FEFB3C0000000000000000000000000000000000000000000000006884F53C80C2F4BC00000000000000000000000000000000000000000000000094BFA7BC9CF60DBD0000000000000000000000000000000000000000000000008A3E1CBD60C9453B0000000000000000000000000000000000000000000000008062753AC0F334BB000000000000000000000000000000000000000000000000F065543C3C3422BD00000000000000000000000000000000000000000000000064FF76BD5A1E3D3D0000000000000000000000000000000000000000000000001436253DC025353B000000000000000000000000000000000000000000000000ACB803BD14372ABD0000000000000000000000000000000000000000000000003050A73B0AE554BD000000000000000000000000000000000000000000000000520D423DA8D50EBC00000000000000000000000000000000000000000000000074A2C5BC7098503D000000000000000000000000000000000000000000000000A4C8D53CD81685BC00000000000000000000000000000000000000000000000000CC223C7CB2AA3C00000000000000000000000000000000000000000000000040621ABD7A75653D000000000000000000000000000000000000000000000000C029CEBB3048CD3B000000000000000000000000000000000000000000000000D8D22F3DF030623D00000000000000000000000000000000000000000000000054F4E0BC66332A3D000000000000000000000000000000000000000000000000784F63BD4A46123D000000000000000000000000000000000000000000000000A04B4F3CF000033D0000000000000000000000000000000000000000000000000277443DC49378BD000000000000000000000000000000000000000000000000804CD73A364E323D000000000000000000000000000000000000000000000000603F71BDF8D60E3C000000000000000000000000000000000000000000000000145A563D8092AA3C000000000000000000000000000000000000000000000000ACF850BDC2E5013D0000000000000000000000000000000000000000000000003AE1023D5C4C85BC000000000000000000000000000000000000000000000000FC9A4ABD942F453D00000000000000000000000000000000000000000000000080BA4A3CE06A6BBC000000000000000000000000000000000000000000000000BC508BBCAA0A4ABD0000000000000000000000000000000000000000000000000CE1B13C9A086ABD0000000000000000000000000000000000000000000000004C15F6BCDE273E3D00000000000000000000000000000000000000000000000008FBF0BC3CECB4BC000000000000000000000000000000000000000000000000F09F1CBD0C2A883C000000000000000000000000000000000000000000000000B4A1ED3C40D16DBB0000000000000000000000000000000000000000000000003024133D90FFAABC0000000000000000000000000000000000000000000000005AA269BD247B9ABC000000000000000000000000000000000000000000000000D0E22E3C30F3A23C00000000000000000000000000000000000000000000000052486DBD04853B3D0000000000000000000000000000000000000000000000008CFBC73CEC42683D0000000000000000000000000000000000000000000000008403EA3CC87E83BC0000000000000000000000000000000000000000000000005884F4BC381C123D000000000000000000000000000000000000000000000000CA397C3D2CA2CB3C000000000000000000000000000000000000000000000000A6E569BDFA8050BD000000000000000000000000000000000000000000000000168A00BD8A23213D000000000000000000000000000000000000000000000000BEDA6FBD86CF2CBD0000000000000000000000000000000000000000000000009E5654BD3443393D000000000000000000000000000000000000000000000000346AC7BC345A883C000000000000000000000000000000000000000000000000205D3FBC48CC263C000000000000000000000000000000000000000000000000B053063D1AF131BD000000000000000000000000000000000000000000000000BCAA7EBD9E753FBD000000000000000000000000000000000000000000000000D03EABBCE07FB43B000000000000000000000000000000000000000000000000844339BD84D745BD000000000000000000000000000000000000000000000000463A093D986AD23C0000000000000000000000000000000000000000000000008CB5243DA8EC293C00000000000000000000000000000000000000000000000092827EBDB2E0623D000000000000000000000000000000000000000000000000508DE9BC28597ABC000000000000000000000000000000000000000000000000FA7C22BD260F42BD000000000000000000000000000000000000000000000000D46FCD3CC86108BD000000000000000000000000000000000000000000000000B00D78BC18D3443C000000000000000000000000000000000000000000000000A8693A3DA074933C000000000000000000000000000000000000000000000000682370BC98E83C3D00000000000000000000000000000000000000000000000090D04A3C5CE0DC3C000000000000000000000000000000000000000000000000FC473C3D8C3D77BD00000000000000000000000000000000000000000000000060AE9CBCD6A0403D000000000000000000000000000000000000000000000000A00DDEBC9E2912BD000000000000000000000000000000000000000000000000F0D05CBC90A8A2BB000000000000000000000000000000000000000000000000207FB3BB7C6582BC000000000000000000000000000000000000000000000000D4F8AF3C286B4E3D000000000000000000000000000000000000000000000000001692391E7F39BD0000000000000000000000000000000000000000000000008CCC453D2CF021BD000000000000000000000000000000000000000000000000E4F2F0BCFC8522BD000000000000000000000000000000000000000000000000FAF1543DE450A9BC000000000000000000000000000000000000000000000000B06BEFBBEC98423D000000000000000000000000000000000000000000000000FCAF4C3D80467EBB000000000000000000000000000000000000000000000000D431B3BC48F6513D000000000000000000000000000000000000000000000000380B45BCBE02133D00000000000000000000000000000000000000000000000060DB6B3C209CAABC00000000000000000000000000000000000000000000000068393EBD605606BD000000000000000000000000000000000000000000000000E89CA3BC1612323D0000000000000000000000000000000000000000000000001C98483DB07D673D000000000000000000000000000000000000000000000000906A57BDE4FEB9BC000000000000000000000000000000000000000000000000B0ABA7BB801A75BA000000000000000000000000000000000000000000000000524D343DE4CE34BD000000000000000000000000000000000000000000000000426074BD1E605B3D0000000000000000000000000000000000000000000000005469393D40B1B9BC0000000000000000000000000000000000000000000000000A9922BD566C2E3D00000000000000000000000000000000000000000000000030418DBBA8EB253C000000000000000000000000000000000000000000000000924119BD60578DBC0000000000000000000000000000000000000000000000003422D0BC1004BC3C000000000000000000000000000000000000000000000000003D443C40AF1EBC0000000000000000000000000000000000000000000000004CEAFBBC30F9FA3C0000000000000000000000000000000000000000000000001C339EBC00B1B03C000000000000000000000000000000000000000000000000E468143DB49A883C0000000000000000000000000000000000000000000000008C10B3BC1C46773D000000000000000000000000000000000000000000000000C0638BBA969343BD000000000000000000000000000000000000000000000000C2C61BBD20A0723D0000000000000000000000000000000000000000000000001C30103D7066E13C00000000000000000000000000000000000000000000000020BD7A3BD82628BD000000000000000000000000000000000000000000000000B84FE63C5A261B3D0000000000000000000000000000000000000000000000002082DD3CB6A71DBD00000000000000000000000000000000000000000000000046C3533D3C313A3D0000000000000000000000000000000000000000000000008CE002BDD883503C00000000000000000000000000000000000000000000000064017BBD50AA98BB00000000000000000000000000000000000000000000000028BB283C18A27FBC00000000000000000000000000000000000000000000000000041B3B10D43B3C00000000000000000000000000000000000000000000000002972B3DDA8C28BD00000000000000000000000000000000000000000000000030A4BCBB441643BD00000000000000000000000000000000000000000000000020FD2BBD00E3A1B9000000000000000000000000000000000000000000000000800423BDFC7985BC000000000000000000000000000000000000000000000000BE2239BD98C5B3BC000000000000000000000000000000000000000000000000380718BDC090DBBA000000000000000000000000000000000000000000000000F0E03ABC4A9229BD000000000000000000000000000000000000000000000000004E6F3D120C173D000000000000000000000000000000000000000000000000389E4B3D609F59BB000000000000000000000000000000000000000000000000A22B6BBD48CA643D0000000000000000000000000000000000000000000000001079B3BBF871A53C0000000000000000000000000000000000000000000000003C6BD43C16E219BD000000000000000000000000000000000000000000000000C6E800BD148F2BBD000000000000000000000000000000000000000000000000E02908BC34CDA23C00000000000000000000000000000000000000000000000000E9FF3B861F623D00000000000000000000000000000000000000000000000010E4E13BACCD54BD000000000000000000000000000000000000000000000000C06F643CF06597BB000000000000000000000000000000000000000000000000741A25BD8E4E23BD0000000000000000000000000000000000000000000000001A8262BDA00B003C000000000000000000000000000000000000000000000000CA2C3EBDF41F04BD000000000000000000000000000000000000000000000000F05950BC305165BC000000000000000000000000000000000000000000000000A8083E3CD61610BD0000000000000000000000000000000000000000000000007CF8D43CA84945BD000000000000000000000000000000000000000000000000D8EFC23C2CDF8EBC00000000000000000000000000000000000000000000000074D8AEBC283C903C000000000000000000000000000000000000000000000000F0230BBD60AB12BB000000000000000000000000000000000000000000000000F23F04BDAC108BBC000000000000000000000000000000000000000000000000683D2EBC7A225B3D000000000000000000000000000000000000000000000000806062BD6C1F1DBD000000000000000000000000000000000000000000000000905DFEBCF0CF34BC000000000000000000000000000000000000000000000000A092D33B3068CD3C000000000000000000000000000000000000000000000000303A593C542BF33C0000000000000000000000000000000000000000000000004EC0283DC8C9773D00000000000000000000000000000000000000000000000028A6763CFA6533BD0000000000000000000000000000000000000000000000003E72263D34CE093D000000000000000000000000000000000000000000000000B43E5F3DC0B5C13A0000000000000000000000000000000000000000000000007A4F0DBD0CF3BCBC000000000000000000000000000000000000000000000000A69403BDEEC353BD00000000000000000000000000000000000000000000000010EE85BCE09CA8BB000000000000000000000000000000000000000000000000C02FC8BC903EBDBB000000000000000000000000000000000000000000000000D8EB833CE022673C0000000000000000000000000000000000000000000000006059CF3BB01F36BC0000000000000000000000000000000000000000000000005411373D926E323D000000000000000000000000000000000000000000000000A042B03CD42E5B3D0000000000000000000000000000000000000000000000008CF34B3DFA0558BD000000000000000000000000000000000000000000000000707A733CE82261BD000000000000000000000000000000000000000000000000D039963C580BC23C000000000000000000000000000000000000000000000000E8E4523C209137BD00000000000000000000000000000000000000000000000036B02E3DC0E501BD0000000000000000000000000000000000000000000000009C30823C6414BCBC00000000000000000000000000000000000000000000000002FE05BD00207D39000000000000000000000000000000000000000000000000903EDA3C6A31253D000000000000000000000000000000000000000000000000388DCABC7AB8473D0000000000000000000000000000000000000000000000006008DDBB40075FBB00000000000000000000000000000000000000000000000030D8233D2C91D13C000000000000000000000000000000000000000000000000E8A42A3D00BF543D000000000000000000000000000000000000000000000000D461E8BC34AEF8BC00000000000000000000000000000000000000000000000060F833BC4EC812BD000000000000000000000000000000000000000000000000C024963CA492E53C0000000000000000000000000000000000000000000000008E8175BD3A5F123D000000000000000000000000000000000000000000000000602F9EBCB8F076BD0000000000000000000000000000000000000000000000004031E73AAC737C3D000000000000000000000000000000000000000000000000A8B72F3C00F62FBA00000000000000000000000000000000000000000000000008CB653D607246BD000000000000000000000000000000000000000000000000D4D5743DEACF5FBD000000000000000000000000000000000000000000000000DC687E3DF4ECC03C000000000000000000000000000000000000000000000000D040763C387581BC0000000000000000000000000000000000000000000000005018A3BC5A102A3D0000000000000000000000000000000000000000000000008E4A143D80473E3D000000000000000000000000000000000000000000000000B87248BD906ADA3C0000000000000000000000000000000000000000000000008E4D743DD8C9103C000000000000000000000000000000000000000000000000529341BDDED3153D0000000000000000000000000000000000000000000000000EF84A3DB07346BD000000000000000000000000000000000000000000000000D86C4B3C44633BBD00000000000000000000000000000000000000000000000040CC753C8034B13A000000000000000000000000000000000000000000000000C0E9BA3C4499FB3C000000000000000000000000000000000000000000000000CA3C193D340918BD000000000000000000000000000000000000000000000000C20A473D3ADC7FBD00000000000000000000000000000000000000000000000050951EBD52504F3D000000000000000000000000000000000000000000000000CC96B5BC00B29BBC00000000000000000000000000000000000000000000000056466B3DB4B6763D000000000000000000000000000000000000000000000000A82472BD7C7C3CBD00000000000000000000000000000000000000000000000050AA513C50CFB7BB0000000000000000000000000000000000000000000000007A9E1FBD78CB5ABD000000000000000000000000000000000000000000000000104486BBA0F314BB0000000000000000000000000000000000000000000000001052A23CB81EB33C000000000000000000000000000000000000000000000000D2DD79BDD098BF3B000000000000000000000000000000000000000000000000B00EB6BC7436F63C00000000000000000000000000000000000000000000000036CC2CBDB227063D000000000000000000000000000000000000000000000000E80470BD4C7F333D000000000000000000000000000000000000000000000000181468BDC032EEBC00000000000000000000000000000000000000000000000008D17DBDBAED04BD000000000000000000000000000000000000000000000000B83743BCCC41793D0000000000000000000000000000000000000000000000005073AEBB90E485BC0000000000000000000000000000000000000000000000007410A83CD0B733BD000000000000000000000000000000000000000000000000842BA93C307145BD000000000000000000000000000000000000000000000000D822EABC10D5F23B00000000000000000000000000000000000000000000000040CB9CBAC84ED03C000000000000000000000000000000000000000000000000C490903C54F9D13C000000000000000000000000000000000000000000000000EC2A21BD3078423D00000000000000000000000000000000000000000000000006D552BD24DEF3BC000000000000000000000000000000000000000000000000B4F1E03CB84EAF3C0000000000000000000000000000000000000000000000003C6945BD584FE7BC000000000000000000000000000000000000000000000000E25B72BDFC47E1BC00000000000000000000000000000000000000000000000048436D3C0C59953C000000000000000000000000000000000000000000000000E039593C10E12E3C00000000000000000000000000000000000000000000000062141EBD40AE8D3A0000000000000000000000000000000000000000000000003E6835BDDC59153D000000000000000000000000000000000000000000000000A8D1D1BCB84666BC000000000000000000000000000000000000000000000000F01CD0BC8E400ABD000000000000000000000000000000000000000000000000C0821EBB48A9093D000000000000000000000000000000000000000000000000006213BCC437EDBC00000000000000000000000000000000000000000000000070DA8CBCFC62CB3C000000000000000000000000000000000000000000000000B4C42ABDB81824BC000000000000000000000000000000000000000000000000B24E32BD50865EBD000000000000000000000000000000000000000000000000743147BD2C6B9A3C000000000000000000000000000000000000000000000000E0466A3B001C06BB000000000000000000000000000000000000000000000000"> : tensor<1x256x8x1xf32>
  util.func public @main_graph$async(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view, %arg3: !hal.buffer_view, %arg4: !hal.fence, %arg5: !hal.fence) -> (!hal.buffer_view, !hal.buffer_view) attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %cst = arith.constant 0.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c10 = arith.constant 10 : index
    %__constant_tensor_4x3x4x4xf32 = util.global.load immutable @__constant_tensor_4x3x4x4xf32 : tensor<4x3x4x4xf32>
    %__constant_tensor_1x256x8x1xf32 = util.global.load immutable @__constant_tensor_1x256x8x1xf32 : tensor<1x256x8x1xf32>
    %0 = hal.tensor.import wait(%arg4) => %arg0 : !hal.buffer_view -> tensor<1x3x64x64xf32>
    %1 = hal.tensor.import wait(%arg4) => %arg1 : !hal.buffer_view -> tensor<3xf32>
    %2 = hal.tensor.import wait(%arg4) => %arg2 : !hal.buffer_view -> tensor<2xf32>
    %3 = hal.tensor.import wait(%arg4) => %arg3 : !hal.buffer_view -> tensor<2xf32>
    %4:3 = flow.dispatch @main_graph$async_dispatch_0::@main_graph$async_dispatch_0_elementwise_broadcast(%3, %1) : (tensor<2xf32>, tensor<3xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %5 = flow.tensor.reshape %4#1 : tensor<f32> -> tensor<1xf32>
    %6 = flow.tensor.reshape %4#2 : tensor<f32> -> tensor<1xf32>
    %7 = flow.tensor.reshape %4#0 : tensor<f32> -> tensor<1xf32>
    %8 = flow.tensor.empty : tensor<3xf32>
    %9 = flow.tensor.update %5, %8[%c0] : tensor<1xf32> -> %8 as tensor<3xf32>
    %10 = flow.tensor.update %6, %9[%c1] : tensor<1xf32> -> %9 as tensor<3xf32>
    %11 = flow.tensor.update %7, %10[%c2] : tensor<1xf32> -> %10 as tensor<3xf32>
    %12 = flow.tensor.reshape %0 : tensor<1x3x64x64xf32> -> tensor<3x64x64xf32>
    %13 = flow.tensor.splat %cst : tensor<3x66x66xf32>
    %14 = flow.dispatch @main_graph$async_dispatch_1::@main_graph$async_dispatch_1_slow_memcpy(%12, %13) : (tensor<3x64x64xf32>, tensor<3x66x66xf32>) -> %13
    %15 = flow.dispatch @main_graph$async_dispatch_2::@main_graph$async_dispatch_2_conv_4x16x16x3x4x4_f32(%14, %__constant_tensor_4x3x4x4xf32) : (tensor<3x66x66xf32>, tensor<4x3x4x4xf32>) -> tensor<4x16x16xf32>
    %16 = flow.dispatch @main_graph$async_dispatch_3::@main_graph$async_dispatch_3_conv_4x8x8x2x2_f32(%15) : (tensor<4x16x16xf32>) -> tensor<4x8x8xf32>
    %17 = flow.tensor.reshape %16 : tensor<4x8x8xf32> -> tensor<1x256x1x1xf32>
    %18 = flow.dispatch @main_graph$async_dispatch_4::@main_graph$async_dispatch_4_mmt4d_1x1x256x1x8x1_f32(%17, %__constant_tensor_1x256x8x1xf32) : (tensor<1x256x1x1xf32>, tensor<1x256x8x1xf32>) -> tensor<1x1x1x8xf32>
    %19:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%2) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %20 = flow.tensor.reshape %19#2 : tensor<f32> -> tensor<1xf32>
    %21 = flow.tensor.reshape %19#0 : tensor<f32> -> tensor<1xf32>
    %22 = flow.tensor.empty : tensor<2xf32>
    %23 = flow.tensor.update %20, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %24 = flow.tensor.update %21, %23[%c1] : tensor<1xf32> -> %23 as tensor<2xf32>
    %25 = flow.tensor.reshape %24 : tensor<2xf32> -> tensor<1x2xf32>
    %26:2 = flow.dispatch @main_graph$async_dispatch_6::@main_graph$async_dispatch_6_unpack_elementwise_1x2_f32(%18, %25) : (tensor<1x1x1x8xf32>, tensor<1x2xf32>) -> (tensor<1x2xf32>, tensor<1x2xf32>)
    %27 = flow.tensor.reshape %26#1 : tensor<1x2xf32> -> tensor<1x2x1x1xf32>
    %28:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%2) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %29 = flow.tensor.reshape %28#1 : tensor<f32> -> tensor<1xf32>
    %30 = flow.tensor.reshape %28#0 : tensor<f32> -> tensor<1xf32>
    %31 = flow.tensor.update %29, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %32 = flow.tensor.update %30, %31[%c1] : tensor<1xf32> -> %31 as tensor<2xf32>
    %33 = flow.tensor.reshape %19#1 : tensor<f32> -> tensor<1xf32>
    %34 = flow.tensor.update %33, %23[%c1] : tensor<1xf32> -> %23 as tensor<2xf32>
    %35 = flow.tensor.reshape %32 : tensor<2xf32> -> tensor<1x2xf32>
    %36 = flow.tensor.reshape %34 : tensor<2xf32> -> tensor<1x2xf32>
    %37 = flow.tensor.empty : tensor<2x2xf32>
    %38 = flow.tensor.update %35, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %39 = flow.tensor.update %36, %38[%c1, %c0] : tensor<1x2xf32> -> %38 as tensor<2x2xf32>
    %40 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%39) : (tensor<2x2xf32>) -> tensor<2xf32>
    %41 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%40) : (tensor<2xf32>) -> tensor<f32>
    %42 = flow.tensor.reshape %41 : tensor<f32> -> tensor<1xf32>
    %43 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%39) : (tensor<2x2xf32>) -> tensor<2xf32>
    %44 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%43) : (tensor<2xf32>) -> tensor<f32>
    %45 = flow.tensor.reshape %44 : tensor<f32> -> tensor<1xf32>
    %46 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%40, %43) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %47 = flow.tensor.reshape %46 : tensor<f32> -> tensor<1xf32>
    %48 = flow.tensor.update %45, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %49 = flow.tensor.update %47, %48[%c1] : tensor<1xf32> -> %48 as tensor<2xf32>
    %50 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%43) : (tensor<2xf32>) -> tensor<f32>
    %51 = flow.tensor.reshape %50 : tensor<f32> -> tensor<1xf32>
    %52 = flow.tensor.update %51, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %53 = flow.tensor.update %42, %52[%c1] : tensor<1xf32> -> %52 as tensor<2xf32>
    %54 = flow.tensor.reshape %49 : tensor<2xf32> -> tensor<1x2xf32>
    %55 = flow.tensor.reshape %53 : tensor<2xf32> -> tensor<1x2xf32>
    %56 = flow.tensor.update %54, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %57 = flow.tensor.update %55, %56[%c1, %c0] : tensor<1x2xf32> -> %56 as tensor<2x2xf32>
    %58 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%40, %43, %57) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %59 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%27, %58) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %60 = flow.tensor.reshape %59 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %61 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%60, %2) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %62:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%61) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %63 = flow.tensor.reshape %62#2 : tensor<f32> -> tensor<1xf32>
    %64 = flow.tensor.reshape %62#0 : tensor<f32> -> tensor<1xf32>
    %65 = flow.tensor.update %63, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %66 = flow.tensor.update %64, %65[%c1] : tensor<1xf32> -> %65 as tensor<2xf32>
    %67 = flow.tensor.reshape %26#0 : tensor<1x2xf32> -> tensor<2xf32>
    %68 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %66) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %69 = flow.tensor.reshape %68 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %70:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%61) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %71 = flow.tensor.reshape %70#1 : tensor<f32> -> tensor<1xf32>
    %72 = flow.tensor.reshape %70#0 : tensor<f32> -> tensor<1xf32>
    %73 = flow.tensor.update %71, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %74 = flow.tensor.update %72, %73[%c1] : tensor<1xf32> -> %73 as tensor<2xf32>
    %75 = flow.tensor.reshape %62#1 : tensor<f32> -> tensor<1xf32>
    %76 = flow.tensor.update %75, %65[%c1] : tensor<1xf32> -> %65 as tensor<2xf32>
    %77 = flow.tensor.reshape %74 : tensor<2xf32> -> tensor<1x2xf32>
    %78 = flow.tensor.reshape %76 : tensor<2xf32> -> tensor<1x2xf32>
    %79 = flow.tensor.update %77, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %80 = flow.tensor.update %78, %79[%c1, %c0] : tensor<1x2xf32> -> %79 as tensor<2x2xf32>
    %81 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%80) : (tensor<2x2xf32>) -> tensor<2xf32>
    %82 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%81) : (tensor<2xf32>) -> tensor<f32>
    %83 = flow.tensor.reshape %82 : tensor<f32> -> tensor<1xf32>
    %84 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%80) : (tensor<2x2xf32>) -> tensor<2xf32>
    %85 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%84) : (tensor<2xf32>) -> tensor<f32>
    %86 = flow.tensor.reshape %85 : tensor<f32> -> tensor<1xf32>
    %87 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%81, %84) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %88 = flow.tensor.reshape %87 : tensor<f32> -> tensor<1xf32>
    %89 = flow.tensor.update %86, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %90 = flow.tensor.update %88, %89[%c1] : tensor<1xf32> -> %89 as tensor<2xf32>
    %91 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%84) : (tensor<2xf32>) -> tensor<f32>
    %92 = flow.tensor.reshape %91 : tensor<f32> -> tensor<1xf32>
    %93 = flow.tensor.update %92, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %94 = flow.tensor.update %83, %93[%c1] : tensor<1xf32> -> %93 as tensor<2xf32>
    %95 = flow.tensor.reshape %90 : tensor<2xf32> -> tensor<1x2xf32>
    %96 = flow.tensor.reshape %94 : tensor<2xf32> -> tensor<1x2xf32>
    %97 = flow.tensor.update %95, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %98 = flow.tensor.update %96, %97[%c1, %c0] : tensor<1x2xf32> -> %97 as tensor<2x2xf32>
    %99 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%81, %84, %98) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %100 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%69, %99) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %101 = flow.tensor.reshape %100 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %102 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%101, %61) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %103:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%102) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %104 = flow.tensor.reshape %103#2 : tensor<f32> -> tensor<1xf32>
    %105 = flow.tensor.reshape %103#0 : tensor<f32> -> tensor<1xf32>
    %106 = flow.tensor.update %104, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %107 = flow.tensor.update %105, %106[%c1] : tensor<1xf32> -> %106 as tensor<2xf32>
    %108 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %107) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %109 = flow.tensor.reshape %108 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %110:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%102) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %111 = flow.tensor.reshape %110#1 : tensor<f32> -> tensor<1xf32>
    %112 = flow.tensor.reshape %110#0 : tensor<f32> -> tensor<1xf32>
    %113 = flow.tensor.update %111, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %114 = flow.tensor.update %112, %113[%c1] : tensor<1xf32> -> %113 as tensor<2xf32>
    %115 = flow.tensor.reshape %103#1 : tensor<f32> -> tensor<1xf32>
    %116 = flow.tensor.update %115, %106[%c1] : tensor<1xf32> -> %106 as tensor<2xf32>
    %117 = flow.tensor.reshape %114 : tensor<2xf32> -> tensor<1x2xf32>
    %118 = flow.tensor.reshape %116 : tensor<2xf32> -> tensor<1x2xf32>
    %119 = flow.tensor.update %117, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %120 = flow.tensor.update %118, %119[%c1, %c0] : tensor<1x2xf32> -> %119 as tensor<2x2xf32>
    %121 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%120) : (tensor<2x2xf32>) -> tensor<2xf32>
    %122 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%121) : (tensor<2xf32>) -> tensor<f32>
    %123 = flow.tensor.reshape %122 : tensor<f32> -> tensor<1xf32>
    %124 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%120) : (tensor<2x2xf32>) -> tensor<2xf32>
    %125 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%124) : (tensor<2xf32>) -> tensor<f32>
    %126 = flow.tensor.reshape %125 : tensor<f32> -> tensor<1xf32>
    %127 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%121, %124) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %128 = flow.tensor.reshape %127 : tensor<f32> -> tensor<1xf32>
    %129 = flow.tensor.update %126, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %130 = flow.tensor.update %128, %129[%c1] : tensor<1xf32> -> %129 as tensor<2xf32>
    %131 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%124) : (tensor<2xf32>) -> tensor<f32>
    %132 = flow.tensor.reshape %131 : tensor<f32> -> tensor<1xf32>
    %133 = flow.tensor.update %132, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %134 = flow.tensor.update %123, %133[%c1] : tensor<1xf32> -> %133 as tensor<2xf32>
    %135 = flow.tensor.reshape %130 : tensor<2xf32> -> tensor<1x2xf32>
    %136 = flow.tensor.reshape %134 : tensor<2xf32> -> tensor<1x2xf32>
    %137 = flow.tensor.update %135, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %138 = flow.tensor.update %136, %137[%c1, %c0] : tensor<1x2xf32> -> %137 as tensor<2x2xf32>
    %139 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%121, %124, %138) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %140 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%109, %139) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %141 = flow.tensor.reshape %140 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %142 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%141, %102) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %143:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%142) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %144 = flow.tensor.reshape %143#2 : tensor<f32> -> tensor<1xf32>
    %145 = flow.tensor.reshape %143#0 : tensor<f32> -> tensor<1xf32>
    %146 = flow.tensor.update %144, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %147 = flow.tensor.update %145, %146[%c1] : tensor<1xf32> -> %146 as tensor<2xf32>
    %148 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %147) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %149 = flow.tensor.reshape %148 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %150:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%142) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %151 = flow.tensor.reshape %150#1 : tensor<f32> -> tensor<1xf32>
    %152 = flow.tensor.reshape %150#0 : tensor<f32> -> tensor<1xf32>
    %153 = flow.tensor.update %151, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %154 = flow.tensor.update %152, %153[%c1] : tensor<1xf32> -> %153 as tensor<2xf32>
    %155 = flow.tensor.reshape %143#1 : tensor<f32> -> tensor<1xf32>
    %156 = flow.tensor.update %155, %146[%c1] : tensor<1xf32> -> %146 as tensor<2xf32>
    %157 = flow.tensor.reshape %154 : tensor<2xf32> -> tensor<1x2xf32>
    %158 = flow.tensor.reshape %156 : tensor<2xf32> -> tensor<1x2xf32>
    %159 = flow.tensor.update %157, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %160 = flow.tensor.update %158, %159[%c1, %c0] : tensor<1x2xf32> -> %159 as tensor<2x2xf32>
    %161 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%160) : (tensor<2x2xf32>) -> tensor<2xf32>
    %162 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%161) : (tensor<2xf32>) -> tensor<f32>
    %163 = flow.tensor.reshape %162 : tensor<f32> -> tensor<1xf32>
    %164 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%160) : (tensor<2x2xf32>) -> tensor<2xf32>
    %165 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%164) : (tensor<2xf32>) -> tensor<f32>
    %166 = flow.tensor.reshape %165 : tensor<f32> -> tensor<1xf32>
    %167 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%161, %164) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %168 = flow.tensor.reshape %167 : tensor<f32> -> tensor<1xf32>
    %169 = flow.tensor.update %166, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %170 = flow.tensor.update %168, %169[%c1] : tensor<1xf32> -> %169 as tensor<2xf32>
    %171 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%164) : (tensor<2xf32>) -> tensor<f32>
    %172 = flow.tensor.reshape %171 : tensor<f32> -> tensor<1xf32>
    %173 = flow.tensor.update %172, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %174 = flow.tensor.update %163, %173[%c1] : tensor<1xf32> -> %173 as tensor<2xf32>
    %175 = flow.tensor.reshape %170 : tensor<2xf32> -> tensor<1x2xf32>
    %176 = flow.tensor.reshape %174 : tensor<2xf32> -> tensor<1x2xf32>
    %177 = flow.tensor.update %175, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %178 = flow.tensor.update %176, %177[%c1, %c0] : tensor<1x2xf32> -> %177 as tensor<2x2xf32>
    %179 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%161, %164, %178) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %180 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%149, %179) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %181 = flow.tensor.reshape %180 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %182 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%181, %142) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %183:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%182) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %184 = flow.tensor.reshape %183#2 : tensor<f32> -> tensor<1xf32>
    %185 = flow.tensor.reshape %183#0 : tensor<f32> -> tensor<1xf32>
    %186 = flow.tensor.update %184, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %187 = flow.tensor.update %185, %186[%c1] : tensor<1xf32> -> %186 as tensor<2xf32>
    %188 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %187) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %189 = flow.tensor.reshape %188 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %190:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%182) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %191 = flow.tensor.reshape %190#1 : tensor<f32> -> tensor<1xf32>
    %192 = flow.tensor.reshape %190#0 : tensor<f32> -> tensor<1xf32>
    %193 = flow.tensor.update %191, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %194 = flow.tensor.update %192, %193[%c1] : tensor<1xf32> -> %193 as tensor<2xf32>
    %195 = flow.tensor.reshape %183#1 : tensor<f32> -> tensor<1xf32>
    %196 = flow.tensor.update %195, %186[%c1] : tensor<1xf32> -> %186 as tensor<2xf32>
    %197 = flow.tensor.reshape %194 : tensor<2xf32> -> tensor<1x2xf32>
    %198 = flow.tensor.reshape %196 : tensor<2xf32> -> tensor<1x2xf32>
    %199 = flow.tensor.update %197, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %200 = flow.tensor.update %198, %199[%c1, %c0] : tensor<1x2xf32> -> %199 as tensor<2x2xf32>
    %201 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%200) : (tensor<2x2xf32>) -> tensor<2xf32>
    %202 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%201) : (tensor<2xf32>) -> tensor<f32>
    %203 = flow.tensor.reshape %202 : tensor<f32> -> tensor<1xf32>
    %204 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%200) : (tensor<2x2xf32>) -> tensor<2xf32>
    %205 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%204) : (tensor<2xf32>) -> tensor<f32>
    %206 = flow.tensor.reshape %205 : tensor<f32> -> tensor<1xf32>
    %207 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%201, %204) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %208 = flow.tensor.reshape %207 : tensor<f32> -> tensor<1xf32>
    %209 = flow.tensor.update %206, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %210 = flow.tensor.update %208, %209[%c1] : tensor<1xf32> -> %209 as tensor<2xf32>
    %211 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%204) : (tensor<2xf32>) -> tensor<f32>
    %212 = flow.tensor.reshape %211 : tensor<f32> -> tensor<1xf32>
    %213 = flow.tensor.update %212, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %214 = flow.tensor.update %203, %213[%c1] : tensor<1xf32> -> %213 as tensor<2xf32>
    %215 = flow.tensor.reshape %210 : tensor<2xf32> -> tensor<1x2xf32>
    %216 = flow.tensor.reshape %214 : tensor<2xf32> -> tensor<1x2xf32>
    %217 = flow.tensor.update %215, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %218 = flow.tensor.update %216, %217[%c1, %c0] : tensor<1x2xf32> -> %217 as tensor<2x2xf32>
    %219 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%201, %204, %218) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %220 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%189, %219) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %221 = flow.tensor.reshape %220 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %222 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%221, %182) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %223:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%222) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %224 = flow.tensor.reshape %223#2 : tensor<f32> -> tensor<1xf32>
    %225 = flow.tensor.reshape %223#0 : tensor<f32> -> tensor<1xf32>
    %226 = flow.tensor.update %224, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %227 = flow.tensor.update %225, %226[%c1] : tensor<1xf32> -> %226 as tensor<2xf32>
    %228 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %227) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %229 = flow.tensor.reshape %228 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %230:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%222) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %231 = flow.tensor.reshape %230#1 : tensor<f32> -> tensor<1xf32>
    %232 = flow.tensor.reshape %230#0 : tensor<f32> -> tensor<1xf32>
    %233 = flow.tensor.update %231, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %234 = flow.tensor.update %232, %233[%c1] : tensor<1xf32> -> %233 as tensor<2xf32>
    %235 = flow.tensor.reshape %223#1 : tensor<f32> -> tensor<1xf32>
    %236 = flow.tensor.update %235, %226[%c1] : tensor<1xf32> -> %226 as tensor<2xf32>
    %237 = flow.tensor.reshape %234 : tensor<2xf32> -> tensor<1x2xf32>
    %238 = flow.tensor.reshape %236 : tensor<2xf32> -> tensor<1x2xf32>
    %239 = flow.tensor.update %237, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %240 = flow.tensor.update %238, %239[%c1, %c0] : tensor<1x2xf32> -> %239 as tensor<2x2xf32>
    %241 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%240) : (tensor<2x2xf32>) -> tensor<2xf32>
    %242 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%241) : (tensor<2xf32>) -> tensor<f32>
    %243 = flow.tensor.reshape %242 : tensor<f32> -> tensor<1xf32>
    %244 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%240) : (tensor<2x2xf32>) -> tensor<2xf32>
    %245 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%244) : (tensor<2xf32>) -> tensor<f32>
    %246 = flow.tensor.reshape %245 : tensor<f32> -> tensor<1xf32>
    %247 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%241, %244) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %248 = flow.tensor.reshape %247 : tensor<f32> -> tensor<1xf32>
    %249 = flow.tensor.update %246, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %250 = flow.tensor.update %248, %249[%c1] : tensor<1xf32> -> %249 as tensor<2xf32>
    %251 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%244) : (tensor<2xf32>) -> tensor<f32>
    %252 = flow.tensor.reshape %251 : tensor<f32> -> tensor<1xf32>
    %253 = flow.tensor.update %252, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %254 = flow.tensor.update %243, %253[%c1] : tensor<1xf32> -> %253 as tensor<2xf32>
    %255 = flow.tensor.reshape %250 : tensor<2xf32> -> tensor<1x2xf32>
    %256 = flow.tensor.reshape %254 : tensor<2xf32> -> tensor<1x2xf32>
    %257 = flow.tensor.update %255, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %258 = flow.tensor.update %256, %257[%c1, %c0] : tensor<1x2xf32> -> %257 as tensor<2x2xf32>
    %259 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%241, %244, %258) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %260 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%229, %259) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %261 = flow.tensor.reshape %260 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %262 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%261, %222) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %263:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%262) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %264 = flow.tensor.reshape %263#2 : tensor<f32> -> tensor<1xf32>
    %265 = flow.tensor.reshape %263#0 : tensor<f32> -> tensor<1xf32>
    %266 = flow.tensor.update %264, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %267 = flow.tensor.update %265, %266[%c1] : tensor<1xf32> -> %266 as tensor<2xf32>
    %268 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %267) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %269 = flow.tensor.reshape %268 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %270:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%262) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %271 = flow.tensor.reshape %270#1 : tensor<f32> -> tensor<1xf32>
    %272 = flow.tensor.reshape %270#0 : tensor<f32> -> tensor<1xf32>
    %273 = flow.tensor.update %271, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %274 = flow.tensor.update %272, %273[%c1] : tensor<1xf32> -> %273 as tensor<2xf32>
    %275 = flow.tensor.reshape %263#1 : tensor<f32> -> tensor<1xf32>
    %276 = flow.tensor.update %275, %266[%c1] : tensor<1xf32> -> %266 as tensor<2xf32>
    %277 = flow.tensor.reshape %274 : tensor<2xf32> -> tensor<1x2xf32>
    %278 = flow.tensor.reshape %276 : tensor<2xf32> -> tensor<1x2xf32>
    %279 = flow.tensor.update %277, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %280 = flow.tensor.update %278, %279[%c1, %c0] : tensor<1x2xf32> -> %279 as tensor<2x2xf32>
    %281 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%280) : (tensor<2x2xf32>) -> tensor<2xf32>
    %282 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%281) : (tensor<2xf32>) -> tensor<f32>
    %283 = flow.tensor.reshape %282 : tensor<f32> -> tensor<1xf32>
    %284 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%280) : (tensor<2x2xf32>) -> tensor<2xf32>
    %285 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%284) : (tensor<2xf32>) -> tensor<f32>
    %286 = flow.tensor.reshape %285 : tensor<f32> -> tensor<1xf32>
    %287 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%281, %284) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %288 = flow.tensor.reshape %287 : tensor<f32> -> tensor<1xf32>
    %289 = flow.tensor.update %286, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %290 = flow.tensor.update %288, %289[%c1] : tensor<1xf32> -> %289 as tensor<2xf32>
    %291 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%284) : (tensor<2xf32>) -> tensor<f32>
    %292 = flow.tensor.reshape %291 : tensor<f32> -> tensor<1xf32>
    %293 = flow.tensor.update %292, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %294 = flow.tensor.update %283, %293[%c1] : tensor<1xf32> -> %293 as tensor<2xf32>
    %295 = flow.tensor.reshape %290 : tensor<2xf32> -> tensor<1x2xf32>
    %296 = flow.tensor.reshape %294 : tensor<2xf32> -> tensor<1x2xf32>
    %297 = flow.tensor.update %295, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %298 = flow.tensor.update %296, %297[%c1, %c0] : tensor<1x2xf32> -> %297 as tensor<2x2xf32>
    %299 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%281, %284, %298) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %300 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%269, %299) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %301 = flow.tensor.reshape %300 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %302 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%301, %262) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %303:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%302) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %304 = flow.tensor.reshape %303#2 : tensor<f32> -> tensor<1xf32>
    %305 = flow.tensor.reshape %303#0 : tensor<f32> -> tensor<1xf32>
    %306 = flow.tensor.update %304, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %307 = flow.tensor.update %305, %306[%c1] : tensor<1xf32> -> %306 as tensor<2xf32>
    %308 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %307) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %309 = flow.tensor.reshape %308 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %310:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%302) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %311 = flow.tensor.reshape %310#1 : tensor<f32> -> tensor<1xf32>
    %312 = flow.tensor.reshape %310#0 : tensor<f32> -> tensor<1xf32>
    %313 = flow.tensor.update %311, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %314 = flow.tensor.update %312, %313[%c1] : tensor<1xf32> -> %313 as tensor<2xf32>
    %315 = flow.tensor.reshape %303#1 : tensor<f32> -> tensor<1xf32>
    %316 = flow.tensor.update %315, %306[%c1] : tensor<1xf32> -> %306 as tensor<2xf32>
    %317 = flow.tensor.reshape %314 : tensor<2xf32> -> tensor<1x2xf32>
    %318 = flow.tensor.reshape %316 : tensor<2xf32> -> tensor<1x2xf32>
    %319 = flow.tensor.update %317, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %320 = flow.tensor.update %318, %319[%c1, %c0] : tensor<1x2xf32> -> %319 as tensor<2x2xf32>
    %321 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%320) : (tensor<2x2xf32>) -> tensor<2xf32>
    %322 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%321) : (tensor<2xf32>) -> tensor<f32>
    %323 = flow.tensor.reshape %322 : tensor<f32> -> tensor<1xf32>
    %324 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%320) : (tensor<2x2xf32>) -> tensor<2xf32>
    %325 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%324) : (tensor<2xf32>) -> tensor<f32>
    %326 = flow.tensor.reshape %325 : tensor<f32> -> tensor<1xf32>
    %327 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%321, %324) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %328 = flow.tensor.reshape %327 : tensor<f32> -> tensor<1xf32>
    %329 = flow.tensor.update %326, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %330 = flow.tensor.update %328, %329[%c1] : tensor<1xf32> -> %329 as tensor<2xf32>
    %331 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%324) : (tensor<2xf32>) -> tensor<f32>
    %332 = flow.tensor.reshape %331 : tensor<f32> -> tensor<1xf32>
    %333 = flow.tensor.update %332, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %334 = flow.tensor.update %323, %333[%c1] : tensor<1xf32> -> %333 as tensor<2xf32>
    %335 = flow.tensor.reshape %330 : tensor<2xf32> -> tensor<1x2xf32>
    %336 = flow.tensor.reshape %334 : tensor<2xf32> -> tensor<1x2xf32>
    %337 = flow.tensor.update %335, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %338 = flow.tensor.update %336, %337[%c1, %c0] : tensor<1x2xf32> -> %337 as tensor<2x2xf32>
    %339 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%321, %324, %338) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %340 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%309, %339) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %341 = flow.tensor.reshape %340 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %342 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%341, %302) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %343:3 = flow.dispatch @main_graph$async_dispatch_5::@main_graph$async_dispatch_5_elementwise_broadcast(%342) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>, tensor<f32>)
    %344 = flow.tensor.reshape %343#2 : tensor<f32> -> tensor<1xf32>
    %345 = flow.tensor.reshape %343#0 : tensor<f32> -> tensor<1xf32>
    %346 = flow.tensor.update %344, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %347 = flow.tensor.update %345, %346[%c1] : tensor<1xf32> -> %346 as tensor<2xf32>
    %348 = flow.dispatch @main_graph$async_dispatch_18::@main_graph$async_dispatch_18_elementwise_2_f32(%67, %347) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %349 = flow.tensor.reshape %348 : tensor<2xf32> -> tensor<1x2x1x1xf32>
    %350:2 = flow.dispatch @main_graph$async_dispatch_7::@main_graph$async_dispatch_7_elementwise_broadcast(%342) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %351 = flow.tensor.reshape %350#1 : tensor<f32> -> tensor<1xf32>
    %352 = flow.tensor.reshape %350#0 : tensor<f32> -> tensor<1xf32>
    %353 = flow.tensor.update %351, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %354 = flow.tensor.update %352, %353[%c1] : tensor<1xf32> -> %353 as tensor<2xf32>
    %355 = flow.tensor.reshape %343#1 : tensor<f32> -> tensor<1xf32>
    %356 = flow.tensor.update %355, %346[%c1] : tensor<1xf32> -> %346 as tensor<2xf32>
    %357 = flow.tensor.reshape %354 : tensor<2xf32> -> tensor<1x2xf32>
    %358 = flow.tensor.reshape %356 : tensor<2xf32> -> tensor<1x2xf32>
    %359 = flow.tensor.update %357, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %360 = flow.tensor.update %358, %359[%c1, %c0] : tensor<1x2xf32> -> %359 as tensor<2x2xf32>
    %361 = flow.dispatch @main_graph$async_dispatch_8::@main_graph$async_dispatch_8_elementwise_broadcast_2_f32(%360) : (tensor<2x2xf32>) -> tensor<2xf32>
    %362 = flow.dispatch @main_graph$async_dispatch_9::@main_graph$async_dispatch_9_elementwise_broadcast(%361) : (tensor<2xf32>) -> tensor<f32>
    %363 = flow.tensor.reshape %362 : tensor<f32> -> tensor<1xf32>
    %364 = flow.dispatch @main_graph$async_dispatch_10::@main_graph$async_dispatch_10_elementwise_broadcast_2_f32(%360) : (tensor<2x2xf32>) -> tensor<2xf32>
    %365 = flow.dispatch @main_graph$async_dispatch_11::@main_graph$async_dispatch_11_elementwise_broadcast(%364) : (tensor<2xf32>) -> tensor<f32>
    %366 = flow.tensor.reshape %365 : tensor<f32> -> tensor<1xf32>
    %367 = flow.dispatch @main_graph$async_dispatch_12::@main_graph$async_dispatch_12_elementwise_broadcast(%361, %364) : (tensor<2xf32>, tensor<2xf32>) -> tensor<f32>
    %368 = flow.tensor.reshape %367 : tensor<f32> -> tensor<1xf32>
    %369 = flow.tensor.update %366, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %370 = flow.tensor.update %368, %369[%c1] : tensor<1xf32> -> %369 as tensor<2xf32>
    %371 = flow.dispatch @main_graph$async_dispatch_13::@main_graph$async_dispatch_13_elementwise_broadcast(%364) : (tensor<2xf32>) -> tensor<f32>
    %372 = flow.tensor.reshape %371 : tensor<f32> -> tensor<1xf32>
    %373 = flow.tensor.update %372, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %374 = flow.tensor.update %363, %373[%c1] : tensor<1xf32> -> %373 as tensor<2xf32>
    %375 = flow.tensor.reshape %370 : tensor<2xf32> -> tensor<1x2xf32>
    %376 = flow.tensor.reshape %374 : tensor<2xf32> -> tensor<1x2xf32>
    %377 = flow.tensor.update %375, %37[%c0, %c0] : tensor<1x2xf32> -> %37 as tensor<2x2xf32>
    %378 = flow.tensor.update %376, %377[%c1, %c0] : tensor<1x2xf32> -> %377 as tensor<2x2xf32>
    %379 = flow.dispatch @main_graph$async_dispatch_14::@main_graph$async_dispatch_14_elementwise_2x2_f32_pack(%361, %364, %378) : (tensor<2xf32>, tensor<2xf32>, tensor<2x2xf32>) -> tensor<1x2x8x1xf32>
    %380 = flow.dispatch @main_graph$async_dispatch_15::@main_graph$async_dispatch_15_mmt4d_1x1x2x1x8x1_f32(%349, %379) : (tensor<1x2x1x1xf32>, tensor<1x2x8x1xf32>) -> tensor<1x1x1x8xf32>
    %381 = flow.tensor.reshape %380 : tensor<1x1x1x8xf32> -> tensor<1x8xf32>
    %382 = flow.dispatch @main_graph$async_dispatch_16::@main_graph$async_dispatch_16_unpack_elementwise_2_f32(%381, %342) : (tensor<1x8xf32>, tensor<2xf32>) -> tensor<2xf32>
    %383:2 = flow.dispatch @main_graph$async_dispatch_113::@main_graph$async_dispatch_113_elementwise_broadcast(%382) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    %384 = flow.tensor.reshape %383#1 : tensor<f32> -> tensor<1xf32>
    %385 = flow.tensor.reshape %383#0 : tensor<f32> -> tensor<1xf32>
    %386 = flow.tensor.update %384, %22[%c0] : tensor<1xf32> -> %22 as tensor<2xf32>
    %387 = flow.tensor.update %385, %386[%c1] : tensor<1xf32> -> %386 as tensor<2xf32>
    %388 = flow.dispatch @main_graph$async_dispatch_114::@main_graph$async_dispatch_114_elementwise_2_f32(%387) : (tensor<2xf32>) -> tensor<2xf32>
    %389 = flow.dispatch @main_graph$async_dispatch_115::@main_graph$async_dispatch_115_elementwise_broadcast_10x2_f32(%387, %388) : (tensor<2xf32>, tensor<2xf32>) -> tensor<10x2xf32>
    %390 = flow.dispatch @main_graph$async_dispatch_116::@main_graph$async_dispatch_116_elementwise_broadcast_9x2_f32(%388) : (tensor<2xf32>) -> tensor<9x2xf32>
    %391 = flow.tensor.empty : tensor<19x2xf32>
    %392 = flow.tensor.update %389, %391[%c0, %c0] : tensor<10x2xf32> -> %391 as tensor<19x2xf32>
    %393 = flow.tensor.update %390, %392[%c10, %c0] : tensor<9x2xf32> -> %392 as tensor<19x2xf32>
    %394:2 = hal.tensor.barrier join(%393, %11 : tensor<19x2xf32>, tensor<3xf32>) => %arg5 : !hal.fence
    %395 = hal.tensor.export %394#0 : tensor<19x2xf32> -> !hal.buffer_view
    %396 = hal.tensor.export %394#1 : tensor<3xf32> -> !hal.buffer_view
    util.return %395, %396 : !hal.buffer_view, !hal.buffer_view
  }
  util.func public @main_graph(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view, %arg3: !hal.buffer_view) -> (!hal.buffer_view, !hal.buffer_view) attributes {iree.abi.stub} {
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %c0 = arith.constant 0 : index
    %device_0 = hal.devices.get %c0 : !hal.device
    %fence = hal.fence.create device(%device_0 : !hal.device) flags("None") : !hal.fence
    %1:2 = util.call @main_graph$async(%arg0, %arg1, %arg2, %arg3, %0, %fence) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> (!hal.buffer_view, !hal.buffer_view)
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.return %1#0, %1#1 : !hal.buffer_view, !hal.buffer_view
  }
}
