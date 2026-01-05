module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_6 {
    hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant dense<[0.0163765959, 0.0263906792, -4.400060e-02, 0.00968332309, -0.054086715, 0.00972910225, 0.0491433106, -0.0384905785, -0.0536782965, -0.0449715964, 0.0567601211, 0.0109184729, 0.00285242125, -0.0206148699, -0.0124605056, -0.0544326976, -0.0522257313, 0.00894703623, -0.0458367094, 0.0564359352, -0.0208491553, -0.0357219391, -4.251250e-02, -0.0292965341, -0.0571725331, -0.0182109866, -0.0477448627, -0.0444723107, 5.297180e-02, 0.0266135074, -0.037045151, -0.0571313687, -0.0290465783, 0.00386566855, -0.0107233478, -0.0293406546, 0.0398042426, 0.00900597125, 0.0131751578, 0.0203698203, 0.0295610055, 0.0314317197, -0.026566593, -0.0233022291, -0.0433226898, 0.0492742397, -0.0392637663, 0.0469657332, -0.0294574797, 0.00573056564, 0.0319380276, -0.0448254645, -0.0515271164, -0.0180001836, 0.0133918272, 0.0576127619, -0.0164383687, 0.0513058677, -0.0361292064, 0.020947624, -0.0480118468, -0.0150461532, 0.0289539881, -0.0322560184]> : tensor<64xf32>
          %c151168 = arith.constant 151168 : index
          %c138624 = arith.constant 138624 : index
          %c25088 = arith.constant 25088 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c151168) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x16xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c138624) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c25088) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x9x9xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [32, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x16xf32>> -> tensor<32x16x16xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 32, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32x3x3xf32>> -> tensor<64x32x3x3xf32>
          %5 = tensor.empty() : tensor<64x7x7xf32>
          %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst : f32) outs(%5 : tensor<64x7x7xf32>) -> tensor<64x7x7xf32>
          %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 * 2 + d4, d2 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<32x16x16xf32>, tensor<64x32x3x3xf32>) outs(%6 : tensor<64x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 1, 7, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.mulf %in, %in_1 : f32
            %10 = arith.addf %out, %9 : f32
            linalg.yield %10 : f32
          } -> tensor<64x7x7xf32>
          %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x7x7xf32>, tensor<64xf32>) outs(%5 : tensor<64x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.addf %in, %in_1 : f32
            %10 = arith.cmpf ugt, %9, %cst : f32
            %11 = arith.select %10, %9, %cst : f32
            linalg.yield %11 : f32
          } -> tensor<64x7x7xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [64, 7, 7], strides = [1, 1, 1] : tensor<64x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x9x9xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c2576384 = arith.constant 2576384 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c2576384}
    util.global.store %buffer, @main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c665024 = arith.constant 665024 : index
    %c665088 = arith.constant 665088 : index
    %c1246080 = arith.constant 1246080 : index
    %c1911296 = arith.constant 1911296 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_6::@system_elf_x86_64::@main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_6) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_6::@system_elf_x86_64::@main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer)[%c0, %c665024], 
        (%main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer)[%c665088, %c1246080], 
        (%main_graph$async_dispatch_6_system_elf_x86_64_main_graph$async_dispatch_6_conv_64x7x7x32x3x3_f32_buffer : !hal.buffer)[%c1911296, %c665024]
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
