hal.executable public @main_graph$async_dispatch_0 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_0_matmul_like_Dx32x10_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_0_matmul_like_Dx32x10_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %c32_i64 = arith.constant 32 : i64
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[0.0962907821, -0.155916616, -2.659500e-01, -0.253344834, -0.238115147, -0.204406232, 5.3752563E-4, -0.247130185, -0.111521207, -0.20010379, -0.30845052, 0.15546523, 0.0545346662, 0.0396357551, 0.145887375, 0.267154038, 0.313625038, -0.0588332526, -0.239435181, 0.0780267491, 0.312959671, 0.260689229, 0.0252451561, 0.244547799, 0.0530805327, -9.820750e-02, 0.232707471, -0.00378808728, -0.296180874, -0.262859076, -0.0734717101, 0.167452633]> : tensor<32xf32>
        %c0 = arith.constant 0 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.extui %1 : i32 to i64
        %3 = arith.shli %2, %c32_i64 : i64
        %4 = arith.extui %0 : i32 to i64
        %5 = arith.ori %4, %3 : i64
        %6 = arith.index_castui %5 : i64 to index
        %7 = util.assume.int %6<umin = 0, umax = 9007199254740991> : index
        %8 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x10xf32>>
        %9 = iree_tensor_ext.dispatch.workload.ordinal %7, 0 : index
        %10 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x10xf32>>{%9}
        %11 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32>>{%9}
        %12 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [%9, 10], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x10xf32>>{%9} -> tensor<?x10xf32>
        %13 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0], sizes = [32, 10], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x10xf32>> -> tensor<32x10xf32>
        %14 = tensor.empty(%9) : tensor<?x32xf32>
        %15 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32], vector_common_parallel = [1, 1]>} ins(%cst : f32) outs(%14 : tensor<?x32xf32>) -> tensor<?x32xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%12, %13 : tensor<?x10xf32>, tensor<32x10xf32>) outs(%15 : tensor<?x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32, 0], distribution = [64, 32, 0], vector_common_parallel = [1, 1, 0], vector_reduction = [0, 0, 8]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %18 = arith.mulf %in, %in_1 : f32
          %19 = arith.addf %out, %18 : f32
          linalg.yield %19 : f32
        } -> tensor<?x32xf32>
        %17 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%16, %cst_0 : tensor<?x32xf32>, tensor<32xf32>) outs(%14 : tensor<?x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 32], vector_common_parallel = [1, 1]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %18 = arith.addf %in, %in_1 : f32
          %19 = arith.cmpf ugt, %18, %cst : f32
          %20 = arith.select %19, %18, %cst : f32
          linalg.yield %20 : f32
        } -> tensor<?x32xf32>
        iree_tensor_ext.dispatch.tensor.store %17, %11, offsets = [0, 0], sizes = [%9, 32], strides = [1, 1] : tensor<?x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32>>{%9}
        return
      }
    }
  }
}
