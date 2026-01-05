module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_5 {
    hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %cst = arith.constant 1.000010e+00 : f32
          %cst_0 = arith.constant 0.000000e+00 : f32
          %cst_1 = arith.constant dense<[0.144850895, 0.0479493104, 0.12793304, 0.0807081386, 0.140617967, -0.0117508788, -0.16431652, -0.0341111086, -0.082965441, 0.014480561, -0.0868838727, 0.10830646, 0.0811701118, -0.157623962, -0.161871508, 0.0427544788, -0.123611517, -0.126250923, -0.163370684, 0.150542066, -0.111694627, 0.0542151146, 0.0211452208, -0.133658543, 0.174255505, -3.678600e-02, 0.0140483659, -0.0693341345, 0.110303335, 0.052021455, 0.0153866969, 0.175381318]> : tensor<32xf32>
          %cst_2 = arith.constant dense<[-0.0522573143, -0.0475690812, -0.0271806922, 0.0411541909, -0.0337077938, 0.00376379094, 0.0118929558, -0.0466941707, 0.0498039126, -0.0555709302, 0.0335743465, 0.050679408, -0.0556835532, 0.0418813154, 0.0158969201, -0.0188031569, -0.0102554802, -0.0514137335, -0.0446259901, 0.0516320243, 0.0072800112, 0.0485732965, 0.00746882893, -0.0515444316, -0.0393827185, 0.0209568609, -0.00845112465, 0.0475569367, 0.0439191572, -0.0454034656, -0.00257597328, -0.0264874045]> : tensor<32xf32>
          %c93312 = arith.constant 93312 : index
          %c126080 = arith.constant 126080 : index
          %c101760 = arith.constant 101760 : index
          %c151168 = arith.constant 151168 : index
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c93312) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x16xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c101760) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c126080) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x14x14xf32>>
          %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c151168) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x16x16xf32>>
          %4 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(3) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x14x14xf32>>
          %5 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [32, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x16xf32>> -> tensor<32x16x16xf32>
          %6 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [32, 32, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x3x3xf32>> -> tensor<32x32x3x3xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0, 0, 0], sizes = [32, 14, 14], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x14x14xf32>> -> tensor<32x14x14xf32>
          %8 = tensor.empty() : tensor<32x14x14xf32>
          %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst_0 : f32) outs(%8 : tensor<32x14x14xf32>) -> tensor<32x14x14xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%5, %6 : tensor<32x16x16xf32>, tensor<32x32x3x3xf32>) outs(%9 : tensor<32x14x14xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [4, 7, 14, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %out: f32):
            %12 = arith.mulf %in, %in_3 : f32
            %13 = arith.addf %out, %12 : f32
            linalg.yield %13 : f32
          } -> tensor<32x14x14xf32>
          %11:2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_1, %10, %cst_2 : tensor<32x14x14xf32>, tensor<32xf32>, tensor<32x14x14xf32>, tensor<32xf32>) outs(%8, %8 : tensor<32x14x14xf32>, tensor<32x14x14xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
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
          } -> (tensor<32x14x14xf32>, tensor<32x14x14xf32>)
          iree_tensor_ext.dispatch.tensor.store %11#0, %4, offsets = [0, 0, 0], sizes = [32, 14, 14], strides = [1, 1, 1] : tensor<32x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x14x14xf32>>
          iree_tensor_ext.dispatch.tensor.store %11#1, %3, offsets = [0, 1, 1], sizes = [32, 14, 14], strides = [1, 1, 1] : tensor<32x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x16x16xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c3241472 = arith.constant 3241472 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c3241472}
    util.global.store %buffer, @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c665024 = arith.constant 665024 : index
    %c665088 = arith.constant 665088 : index
    %c1246080 = arith.constant 1246080 : index
    %c1911296 = arith.constant 1911296 : index
    %c2576384 = arith.constant 2576384 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_5::@system_elf_x86_64::@main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_5) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_5::@system_elf_x86_64::@main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer)[%c0, %c665024], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer)[%c665088, %c1246080], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer)[%c1911296, %c665024], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x14x14x32x3x3_f32_buffer : !hal.buffer)[%c2576384, %c665024]
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
