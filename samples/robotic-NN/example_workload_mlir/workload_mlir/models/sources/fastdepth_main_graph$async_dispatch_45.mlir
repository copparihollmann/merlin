hal.executable public @main_graph$async_dispatch_45 {
  hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
    hal.executable.export public @main_graph$async_dispatch_45_matvec_like_50176x32_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_45_matvec_like_50176x32_f32() {
        %c0 = arith.constant 0 : index
        %c224 = arith.constant 224 : index
        %cst = arith.constant 2.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.149800345, -0.15099287, 0.0764375627, -0.134460181, -0.118300937, 0.0584997833, 0.127999589, -0.0371247157, -0.0857941359, 0.0553167872, -0.0663923696, -0.0709089562, 0.118987918, 0.133698344, -9.751260e-02, 0.131787017, -0.0806657746, 0.169347182, 0.0722469166, -0.141202152, 0.0853664577, -0.00255181035, 0.0295940824, 0.0283394195, -0.0618726127, 0.00299026188, 0.128535837, -0.0710391626, -0.136287823, -0.113622069, 0.0559143201, -0.0775850266]> : tensor<32xf32>
        %cst_1 = arith.constant 0.000000e+00 : f32
        %c3211264 = arith.constant 3211264 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c3211264) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x32x112x112xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<50176xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 32, 112, 112], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x32x112x112xf32>> -> tensor<1x32x112x112xf32>
        %3 = tensor.empty() : tensor<50176xf32>
        %4 = linalg.fill ins(%cst_1 : f32) outs(%3 : tensor<50176xf32>) -> tensor<50176xf32>
        %5 = tensor.empty() : tensor<32x50176xf32>
        %6 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} outs(%5 : tensor<32x50176xf32>) {
        ^bb0(%out: f32):
          %9 = linalg.index 0 : index
          %10 = linalg.index 1 : index
          %11 = arith.remsi %10, %c224 : index
          %12 = arith.divsi %10, %c224 : index
          %13 = arith.index_cast %12 : index to i64
          %14 = arith.sitofp %13 : i64 to f32
          %15 = arith.divf %14, %cst : f32
          %16 = math.floor %15 : f32
          %17 = arith.fptosi %16 : f32 to i64
          %18 = arith.index_cast %17 : i64 to index
          %19 = arith.index_cast %11 : index to i64
          %20 = arith.sitofp %19 : i64 to f32
          %21 = arith.divf %20, %cst : f32
          %22 = math.floor %21 : f32
          %23 = arith.fptosi %22 : f32 to i64
          %24 = arith.index_cast %23 : i64 to index
          %extracted = tensor.extract %2[%c0, %9, %18, %24] : tensor<1x32x112x112xf32>
          linalg.yield %extracted : f32
        } -> tensor<32x50176xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%6, %cst_0 : tensor<32x50176xf32>, tensor<32xf32>) outs(%4 : tensor<50176xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %9 = arith.mulf %in, %in_2 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<50176xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%7 : tensor<50176xf32>) outs(%3 : tensor<50176xf32>) {
        ^bb0(%in: f32, %out: f32):
          %9 = arith.addf %in, %cst_1 : f32
          %10 = arith.cmpf ugt, %9, %cst_1 : f32
          %11 = arith.select %10, %9, %cst_1 : f32
          linalg.yield %11 : f32
        } -> tensor<50176xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %1, offsets = [0], sizes = [50176], strides = [1] : tensor<50176xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<50176xf32>>
        return
      }
    }
  }
}
