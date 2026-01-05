module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_8 {
    hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %cst = arith.constant 1.000010e+00 : f32
          %cst_0 = arith.constant 0.000000e+00 : f32
          %cst_1 = arith.constant dense<[0.174641684, 0.0513523296, -0.0958062112, 0.105936632, 0.101792283, 0.0741593614, -0.0233406499, -1.388860e-01, -0.175396755, -0.167963728, 0.140177548, 0.0065955813, -0.067760095, -0.144422755, -0.0245853309, -0.0602068566, 0.140554473, 0.131972954, -0.176303387, -0.0973656475, -0.0565400161, 0.106720686, 0.126033157, -0.150298119, -0.105156004, -0.0774446651, 0.0540605597, -0.0673122853, 0.175650954, 0.111599773, 0.0637698844, 0.0204917975, -0.0130738886, -0.147258878, -0.129545853, 0.158443615, 0.0399419554, 0.114680544, 0.150910884, -0.0801627785, 0.135444894, 6.201540e-02, -0.166721165, 0.0131246336, -0.043952398, 0.0494674817, -0.1138741, -0.113242514, 0.1232628, 0.11216937, 0.0822792649, 0.135224491, 0.0655117556, 0.0363806114, -0.116793871, 0.116683573, -0.0728316307, 0.148382261, 0.101535656, -0.0140603147, 0.0954288095, 0.146112964, -0.0291429851, 0.0367534198]> : tensor<64xf32>
          %cst_2 = arith.constant dense<[-0.0102067646, -0.0227304455, -0.0180349052, -0.0239218734, 0.0238908734, 0.0100993617, 0.0160968713, -0.024059996, -0.0150122792, -0.0283910241, -0.0381875746, 0.0349248499, 0.0115289092, -0.0318411514, 0.0206919275, 0.00779248308, 0.00523492694, -0.0272094272, -0.00267781829, 0.00222095358, -0.0257004108, 0.0240647458, -0.0220361911, -0.0120209903, -0.0376544856, 0.0167408846, -0.0331581831, -0.0230736788, -0.0232708659, 0.0383061431, -0.00680898129, 0.0298006684, 0.00500416756, 0.0247381441, 0.0329314433, 0.0398061126, -0.0375909507, 0.0056358329, 0.00586904585, -0.00176556408, -0.0127278473, -0.0261488017, 0.0233679824, -0.014557248, 0.0185826179, -0.00318065286, -0.0190340634, 0.0261725299, 0.00236933935, -0.0286884066, 0.0216975361, -0.0207180642, 0.0384395942, -0.0246538129, -0.00392502546, 0.0272503793, 0.0161469989, -0.0328888521, -0.0360817611, 0.005507797, -0.0395677462, 3.728580e-02, 0.0184534341, -0.0266353935]> : tensor<64xf32>
          %c25088 = arith.constant 25088 : index
          %c45824 = arith.constant 45824 : index
          %c212352 = arith.constant 212352 : index
          %c58368 = arith.constant 58368 : index
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c25088) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x9x9xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c212352) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c45824) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x7x7xf32>>
          %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c58368) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x9x9xf32>>
          %4 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(3) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x7x7xf32>>
          %5 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [64, 9, 9], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x9x9xf32>> -> tensor<64x9x9xf32>
          %6 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 64, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>> -> tensor<64x64x3x3xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0, 0, 0], sizes = [64, 7, 7], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x7x7xf32>> -> tensor<64x7x7xf32>
          %8 = tensor.empty() : tensor<64x7x7xf32>
          %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst_0 : f32) outs(%8 : tensor<64x7x7xf32>) -> tensor<64x7x7xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%5, %6 : tensor<64x9x9xf32>, tensor<64x64x3x3xf32>) outs(%9 : tensor<64x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 1, 7, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %out: f32):
            %12 = arith.mulf %in, %in_3 : f32
            %13 = arith.addf %out, %12 : f32
            linalg.yield %13 : f32
          } -> tensor<64x7x7xf32>
          %11:2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_1, %10, %cst_2 : tensor<64x7x7xf32>, tensor<64xf32>, tensor<64x7x7xf32>, tensor<64xf32>) outs(%8, %8 : tensor<64x7x7xf32>, tensor<64x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %in_4: f32, %in_5: f32, %out: f32, %out_6: f32):
            %12 = arith.addf %in_4, %in_5 : f32
            %13 = arith.addf %in, %in_3 : f32
            %14 = arith.addf %13, %12 : f32
            %15 = math.rsqrt %cst : f32
            %16 = arith.mulf %14, %15 : f32
            %17 = arith.addf %16, %cst_0 : f32
            %18 = arith.cmpf ugt, %17, %cst_0 : f32
            %19 = arith.select %18, %17, %cst_0 : f32
            linalg.yield %14, %19 : f32, f32
          } -> (tensor<64x7x7xf32>, tensor<64x7x7xf32>)
          iree_tensor_ext.dispatch.tensor.store %11#0, %4, offsets = [0, 0, 0], sizes = [64, 7, 7], strides = [1, 1, 1] : tensor<64x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x7x7xf32>>
          iree_tensor_ext.dispatch.tensor.store %11#1, %3, offsets = [0, 1, 1], sizes = [64, 7, 7], strides = [1, 1, 1] : tensor<64x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x9x9xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c3241472 = arith.constant 3241472 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c3241472}
    util.global.store %buffer, @main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c665024 = arith.constant 665024 : index
    %c665088 = arith.constant 665088 : index
    %c1246080 = arith.constant 1246080 : index
    %c1911296 = arith.constant 1911296 : index
    %c2576384 = arith.constant 2576384 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_8::@system_elf_x86_64::@main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_8) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_8::@system_elf_x86_64::@main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer)[%c0, %c665024], 
        (%main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer)[%c665088, %c1246080], 
        (%main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer)[%c1911296, %c665024], 
        (%main_graph$async_dispatch_8_system_elf_x86_64_main_graph$async_dispatch_8_conv_64x7x7x64x3x3_f32_buffer : !hal.buffer)[%c2576384, %c665024]
      ]) flags("None")
      hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    }
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %1 = util.null : !hal.fence
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%1) signal(%fence) commands(%cmd) flags("None")
    %c-1_i32 = arith.constant -1 : i32
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
