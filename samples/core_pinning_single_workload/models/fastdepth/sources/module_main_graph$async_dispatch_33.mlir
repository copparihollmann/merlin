hal.executable public @main_graph$async_dispatch_33 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32() {
        %c0 = arith.constant 0 : index
        %cst = arith.constant 2.000000e+00 : f32
        %c2301952 = arith.constant 2301952 : index
        %c3211264 = arith.constant 3211264 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2301952) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x512x7x7xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c3211264) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x18x18xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 512, 7, 7], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x512x7x7xf32>> -> tensor<1x512x7x7xf32>
        %3 = tensor.empty() : tensor<512x14x14xf32>
        %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<512x14x14xf32>) {
        ^bb0(%out: f32):
          %5 = linalg.index 0 : index
          %6 = linalg.index 1 : index
          %7 = linalg.index 2 : index
          %8 = arith.index_cast %6 : index to i64
          %9 = arith.sitofp %8 : i64 to f32
          %10 = arith.divf %9, %cst : f32
          %11 = math.floor %10 : f32
          %12 = arith.fptosi %11 : f32 to i64
          %13 = arith.index_cast %12 : i64 to index
          %14 = arith.index_cast %7 : index to i64
          %15 = arith.sitofp %14 : i64 to f32
          %16 = arith.divf %15, %cst : f32
          %17 = math.floor %16 : f32
          %18 = arith.fptosi %17 : f32 to i64
          %19 = arith.index_cast %18 : i64 to index
          %extracted = tensor.extract %2[%c0, %5, %13, %19] : tensor<1x512x7x7xf32>
          linalg.yield %extracted : f32
        } -> tensor<512x14x14xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %1, offsets = [0, 2, 2], sizes = [512, 14, 14], strides = [1, 1, 1] : tensor<512x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x18x18xf32>>
        return
      }
    }
  }
}
