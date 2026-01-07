hal.executable public @main_graph$async_dispatch_28 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 6.000000e+00 : f32
        %c3211264 = arith.constant 3211264 : index
        %c6987776 = arith.constant 6987776 : index
        %c3311616 = arith.constant 3311616 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c3211264) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x7x7xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c6987776) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c3311616) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1024x9x9xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [512, 7, 7], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x7x7xf32>> -> tensor<512x7x7xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [1024, 512], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>> -> tensor<1024x512xf32>
        %5 = tensor.empty() : tensor<1024x7x7xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 7, 7], vector_common_parallel = [1, 1, 1]>} ins(%cst : f32) outs(%5 : tensor<1024x7x7xf32>) -> tensor<1024x7x7xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%3, %4 : tensor<512x7x7xf32>, tensor<1024x512xf32>) outs(%6 : tensor<1024x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 7, 7, 0], distribution = [64, 7, 7, 0], vector_common_parallel = [1, 1, 1, 0], vector_reduction = [0, 0, 0, 8]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<1024x7x7xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7 : tensor<1024x7x7xf32>) outs(%5 : tensor<1024x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 7, 7], vector_common_parallel = [1, 1, 1]>} {
        ^bb0(%in: f32, %out: f32):
          %9 = arith.addf %in, %cst : f32
          %10 = arith.cmpf ult, %9, %cst : f32
          %11 = arith.select %10, %cst, %9 : f32
          %12 = arith.cmpf ugt, %11, %cst_0 : f32
          %13 = arith.select %12, %cst_0, %11 : f32
          linalg.yield %13 : f32
        } -> tensor<1024x7x7xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [1024, 7, 7], strides = [1, 1, 1] : tensor<1024x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1024x9x9xf32>>
        return
      }
    }
  }
}
