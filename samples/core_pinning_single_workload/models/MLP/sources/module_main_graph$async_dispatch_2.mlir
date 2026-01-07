hal.executable public @main_graph$async_dispatch_2 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_2_matmul_like_Dx2x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_2_matmul_like_Dx2x32_f32() {
        %c32_i64 = arith.constant 32 : i64
        %cst = arith.constant dense<[0.150014639, -0.112291597]> : tensor<2xf32>
        %cst_0 = arith.constant 0.000000e+00 : f32
        %cst_1 = arith.constant dense<[[-0.148675621, -0.00800752174, -0.154642224, 0.0714647844, -0.158757433, -0.0998362749, -0.0515264794, 0.0373864658, 0.0141011765, -0.106712803, 0.172995389, -0.159487143, -0.134175375, -0.0625612437, 0.0190407019, -0.167385533, -0.118601315, -0.14933382, -0.126252428, 0.0328095295, 0.161362395, 0.166322604, 0.105357215, -0.0199586395, -0.0860766768, 0.157569975, 0.122067556, -0.0260244776, 0.0585044622, 0.0506174564, -0.163079426, -0.0315102674], [0.102913834, 0.142172322, -0.0771354958, 0.0138733936, 0.00633722125, -7.187530e-02, 0.135073066, 0.0433540829, 0.091250725, -0.0407002196, 0.132568911, -0.128669098, 0.0537779666, 0.0500060953, 0.0648744926, -0.17312856, 0.174260497, -0.0767506734, -0.150335029, -0.0197679456, -0.114997737, 0.0462276936, -0.0195699614, -0.0607960708, -0.00727524143, 0.0066478434, 0.011014699, 8.34507591E-6, -0.082545422, -0.0434851795, 0.127168015, -0.0459757186]]> : tensor<2x32xf32>
        %c0 = arith.constant 0 : index
        %0 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(3) : i32
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
        %15 = iree_tensor_ext.dispatch.workload.ordinal %14#1, 0 : index
        %16 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%14#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%15}
        %17 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2xf32>>{%15}
        %18 = iree_tensor_ext.dispatch.tensor.load %16, offsets = [0, 0], sizes = [%15, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%15} -> tensor<?x32xf32>
        %19 = tensor.empty(%15) : tensor<?x2xf32>
        %20 = linalg.fill ins(%cst_0 : f32) outs(%19 : tensor<?x2xf32>) -> tensor<?x2xf32>
        %21 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%18, %cst_1 : tensor<?x32xf32>, tensor<2x32xf32>) outs(%20 : tensor<?x2xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %23 = arith.mulf %in, %in_2 : f32
          %24 = arith.addf %out, %23 : f32
          linalg.yield %24 : f32
        } -> tensor<?x2xf32>
        %22 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%21, %cst : tensor<?x2xf32>, tensor<2xf32>) outs(%19 : tensor<?x2xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %23 = arith.addf %in, %in_2 : f32
          linalg.yield %23 : f32
        } -> tensor<?x2xf32>
        iree_tensor_ext.dispatch.tensor.store %22, %17, offsets = [0, 0], sizes = [%15, 2], strides = [1, 1] : tensor<?x2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2xf32>>{%15}
        return
      }
    }
  }
}
