hal.executable public @main_graph$async_dispatch_1 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_1_matmul_like_Dx32x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_1_matmul_like_Dx32x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %c32_i64 = arith.constant 32 : i64
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[0.162499294, -0.0801915451, 0.153941914, 0.0219113454, -0.140127942, -0.12445996, -0.149894521, 0.162132412, 0.105042696, -0.0859371721, 6.965030e-02, -0.141210482, -0.0333313271, -0.0386215597, -0.0218895562, 0.161435679, -0.0469571315, -0.0064728288, 0.138868779, 0.0946954563, -0.118682154, 0.125606269, 0.142559305, 0.101437077, 0.132687211, -0.0944273397, 0.160846531, -0.0927824079, -0.130839854, -0.0758508593, 0.176237047, -0.0873066708]> : tensor<32xf32>
        %c0 = arith.constant 0 : index
        %c1280 = arith.constant 1280 : index
        %0 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(3) : i32
        %4 = arith.extui %1 : i32 to i64
        %5 = arith.shli %4, %c32_i64 : i64
        %6 = arith.extui %0 : i32 to i64
        %7 = arith.ori %6, %5 : i64
        %8 = arith.index_castui %7 : i64 to index
        %9 = arith.extui %3 : i32 to i64
        %10 = arith.shli %9, %c32_i64 : i64
        %11 = arith.extui %2 : i32 to i64
        %12 = arith.ori %11, %10 : i64
        %13 = arith.index_castui %12 : i64 to index
        %14:2 = util.assume.int 
            %8<umin = 0, umax = 1152921504606846848, udiv = 128>, 
            %13<umin = 0, umax = 9007199254740991>
          : index, index
        %15 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1280) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf32>>
        %16 = iree_tensor_ext.dispatch.workload.ordinal %14#1, 0 : index
        %17 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%16}
        %18 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%14#0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32>>{%16}
        %19 = iree_tensor_ext.dispatch.tensor.load %17, offsets = [0, 0], sizes = [%16, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%16} -> tensor<?x32xf32>
        %20 = iree_tensor_ext.dispatch.tensor.load %15, offsets = [0, 0], sizes = [32, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf32>> -> tensor<32x32xf32>
        %21 = tensor.empty(%16) : tensor<?x32xf32>
        %22 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32], vector_common_parallel = [1, 1]>} ins(%cst : f32) outs(%21 : tensor<?x32xf32>) -> tensor<?x32xf32>
        %23 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%19, %20 : tensor<?x32xf32>, tensor<32x32xf32>) outs(%22 : tensor<?x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32, 0], distribution = [64, 32, 0], vector_common_parallel = [1, 1, 0], vector_reduction = [0, 0, 8]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %25 = arith.mulf %in, %in_1 : f32
          %26 = arith.addf %out, %25 : f32
          linalg.yield %26 : f32
        } -> tensor<?x32xf32>
        %24 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%23, %cst_0 : tensor<?x32xf32>, tensor<32xf32>) outs(%21 : tensor<?x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32], vector_common_parallel = [1, 1]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %25 = arith.addf %in, %in_1 : f32
          %26 = arith.cmpf ugt, %25, %cst : f32
          %27 = arith.select %26, %25, %cst : f32
          linalg.yield %27 : f32
        } -> tensor<?x32xf32>
        iree_tensor_ext.dispatch.tensor.store %24, %18, offsets = [0, 0], sizes = [%16, 32], strides = [1, 1] : tensor<?x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32>>{%16}
        return
      }
    }
  }
}
