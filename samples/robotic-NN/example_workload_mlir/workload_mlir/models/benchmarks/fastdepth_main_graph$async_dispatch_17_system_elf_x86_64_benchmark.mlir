module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_17 {
    hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_17_conv_14x14x512x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_17_conv_14x14x512x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %cst = arith.constant 6.000000e+00 : f32
          %cst_0 = arith.constant 0.000000e+00 : f32
          %c3211264 = arith.constant 3211264 : index
          %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
          %2 = arith.index_castui %0 : i32 to index
          %3 = arith.index_castui %1 : i32 to index
          %4:2 = util.assume.int 
              %2[<umin = 1605632, umax = 1605632, udiv = 1605632>, <umin = 7093312, umax = 7093312, udiv = 7093312>, <umin = 1605632, umax = 1605632, udiv = 1605632>, <umin = 7093312, umax = 7093312, udiv = 7093312>, <umin = 1605632, umax = 1605632, udiv = 1605632>], 
              %3[<umin = 15679232, umax = 15679232, udiv = 15679232>, <umin = 15660800, umax = 15660800, udiv = 15660800>, <umin = 15642368, umax = 15642368, udiv = 15642368>, <umin = 15623936, umax = 15623936, udiv = 15623936>, <umin = 15605504, umax = 15605504, udiv = 15605504>]
            : index, index
          %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x16x16xf32>>
          %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#1) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x3x3xf32>>
          %7 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c3211264) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x14x14xf32>>
          %8 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0, 0], sizes = [512, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x16x16xf32>> -> tensor<512x16x16xf32>
          %9 = iree_tensor_ext.dispatch.tensor.load %6, offsets = [0, 0, 0], sizes = [512, 3, 3], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x3x3xf32>> -> tensor<512x3x3xf32>
          %10 = tensor.empty() : tensor<512x14x14xf32>
          %11 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 1]>} ins(%cst_0 : f32) outs(%10 : tensor<512x14x14xf32>) -> tensor<512x14x14xf32>
          %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d0 + d3, d1 + d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0, d1)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%8, %9 : tensor<512x16x16xf32>, tensor<512x3x3xf32>) outs(%11 : tensor<512x14x14xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [14, 14, 32, 0, 0], vector_common_parallel = [1, 8, 1, 0, 0], vector_reduction = [0, 0, 0, 1, 8]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %14 = arith.mulf %in, %in_1 : f32
            %15 = arith.addf %out, %14 : f32
            linalg.yield %15 : f32
          } -> tensor<512x14x14xf32>
          %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<512x14x14xf32>) outs(%10 : tensor<512x14x14xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 1]>} {
          ^bb0(%in: f32, %out: f32):
            %14 = arith.addf %in, %cst_0 : f32
            %15 = arith.cmpf ult, %14, %cst_0 : f32
            %16 = arith.select %15, %cst_0, %14 : f32
            %17 = arith.cmpf ugt, %16, %cst : f32
            %18 = arith.select %17, %cst, %16 : f32
            linalg.yield %18 : f32
          } -> tensor<512x14x14xf32>
          iree_tensor_ext.dispatch.tensor.store %13, %7, offsets = [0, 0, 0], sizes = [512, 14, 14], strides = [1, 1, 1] : tensor<512x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x14x14xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c36808704 = arith.constant 36808704 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c36808704}
    util.global.store %buffer, @main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c1605632_i32 = arith.constant 1605632 : i32
    %c15605504_i32 = arith.constant 15605504 : i32
    %main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c10538048 = arith.constant 10538048 : index
    %c10538240 = arith.constant 10538240 : index
    %c15732224 = arith.constant 15732224 : index
    %c26270464 = arith.constant 26270464 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_17::@system_elf_x86_64::@main_graph$async_dispatch_17_conv_14x14x512x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_17) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_17::@system_elf_x86_64::@main_graph$async_dispatch_17_conv_14x14x512x3x3_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1605632_i32, %c15605504_i32]) bindings([
        (%main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer)[%c0, %c10538048], 
        (%main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer)[%c10538240, %c15732224], 
        (%main_graph$async_dispatch_17_system_elf_x86_64_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_buffer : !hal.buffer)[%c26270464, %c10538048]
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
