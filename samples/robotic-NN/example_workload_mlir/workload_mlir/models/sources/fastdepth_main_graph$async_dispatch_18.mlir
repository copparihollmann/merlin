hal.executable public @main_graph$async_dispatch_18 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32() {
        %cst = arith.constant 6.000000e+00 : f32
        %cst_0 = arith.constant 0.000000e+00 : f32
        %c3211264 = arith.constant 3211264 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 13279232, umax = 13279232, udiv = 13279232>, <umin = 12230656, umax = 12230656, udiv = 12230656>, <umin = 11182080, umax = 11182080, udiv = 11182080>, <umin = 10133504, umax = 10133504, udiv = 10133504>, <umin = 9084928, umax = 9084928, udiv = 9084928>], 
            %3[<umin = 7093312, umax = 7093312, udiv = 7093312>, <umin = 1605632, umax = 1605632, udiv = 1605632>, <umin = 7093312, umax = 7093312, udiv = 7093312>, <umin = 1605632, umax = 1605632, udiv = 1605632>, <umin = 7093312, umax = 7093312, udiv = 7093312>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c3211264) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x14x14xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x512xf32>>
        %7 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x16x16xf32>>
        %8 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0, 0], sizes = [512, 14, 14], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x14x14xf32>> -> tensor<512x14x14xf32>
        %9 = iree_tensor_ext.dispatch.tensor.load %6, offsets = [0, 0], sizes = [512, 512], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x512xf32>> -> tensor<512x512xf32>
        %10 = tensor.empty() : tensor<512x14x14xf32>
        %11 = linalg.fill ins(%cst_0 : f32) outs(%10 : tensor<512x14x14xf32>) -> tensor<512x14x14xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%8, %9 : tensor<512x14x14xf32>, tensor<512x512xf32>) outs(%11 : tensor<512x14x14xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %14 = arith.mulf %in, %in_1 : f32
          %15 = arith.addf %out, %14 : f32
          linalg.yield %15 : f32
        } -> tensor<512x14x14xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<512x14x14xf32>) outs(%10 : tensor<512x14x14xf32>) {
        ^bb0(%in: f32, %out: f32):
          %14 = arith.addf %in, %cst_0 : f32
          %15 = arith.cmpf ult, %14, %cst_0 : f32
          %16 = arith.select %15, %cst_0, %14 : f32
          %17 = arith.cmpf ugt, %16, %cst : f32
          %18 = arith.select %17, %cst, %16 : f32
          linalg.yield %18 : f32
        } -> tensor<512x14x14xf32>
        iree_tensor_ext.dispatch.tensor.store %13, %7, offsets = [0, 1, 1], sizes = [512, 14, 14], strides = [1, 1, 1] : tensor<512x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x16x16xf32>>
        return
      }
    }
  }
}
