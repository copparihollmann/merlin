hal.executable public @main_graph$async_dispatch_2 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_2_conv_32x55x55x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_2_conv_32x55x55x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %cst = arith.constant 0xFF800000 : f32
        %cst_0 = arith.constant 0.900009989 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %cst_2 = arith.constant dense<[-0.00212831027, -0.00157253037, 0.0132454634, 0.0169818308, -0.0150707886, -0.00355143333, 0.0100635076, -0.0165473614, -0.00693864143, -0.00143927336, -0.0125171114, -0.0177900232, -0.0150211928, 0.019892266, -0.0106106643, 0.00977465137, -0.016368011, 0.00275618094, -0.0126060992, 0.0157969799, 0.00264325878, -0.0054591326, -0.0145231234, 0.0114377141, -0.00323691149, -0.0111725237, 0.00189092162, 0.0145741655, -0.00339288497, -2.472730e-03, 0.0051824213, -0.0164819881]> : tensor<32xf32>
        %c207936 = arith.constant 207936 : index
        %c1813568 = arith.constant 1813568 : index
        %c2229440 = arith.constant 2229440 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c207936) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x112x112xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1813568) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x57x57xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c2229440) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x55x55xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [32, 112, 112], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x112x112xf32>> -> tensor<32x112x112xf32>
        %4 = tensor.empty() : tensor<32x55x55xf32>
        %5 = tensor.empty() : tensor<3x3xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst : f32) outs(%4 : tensor<32x55x55xf32>) -> tensor<32x55x55xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 * 2 + d3, d2 * 2 + d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%3, %5 : tensor<32x112x112xf32>, tensor<3x3xf32>) outs(%6 : tensor<32x55x55xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 11, 11, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0], vector_reduction = [0, 0, 0, 1, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %9 = arith.maximumf %out, %in : f32
          linalg.yield %9 : f32
        } -> tensor<32x55x55xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_2 : tensor<32x55x55xf32>, tensor<32xf32>) outs(%4 : tensor<32x55x55xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %9 = math.rsqrt %cst_0 : f32
          %10 = arith.subf %in, %in_3 : f32
          %11 = arith.mulf %10, %9 : f32
          %12 = arith.addf %11, %cst_1 : f32
          %13 = arith.cmpf ugt, %12, %cst_1 : f32
          %14 = arith.select %13, %12, %cst_1 : f32
          linalg.yield %14 : f32
        } -> tensor<32x55x55xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0, 0, 0], sizes = [32, 55, 55], strides = [1, 1, 1] : tensor<32x55x55xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x55x55xf32>>
        iree_tensor_ext.dispatch.tensor.store %8, %1, offsets = [0, 1, 1], sizes = [32, 55, 55], strides = [1, 1, 1] : tensor<32x55x55xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x57x57xf32>>
        return
      }
    }
  }
}
