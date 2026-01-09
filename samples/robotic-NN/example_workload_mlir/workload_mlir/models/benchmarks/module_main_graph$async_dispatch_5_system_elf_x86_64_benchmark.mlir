module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_5 {
    hal.executable.variant public @system_elf_x86_64 target(<"llvm-cpu", "system-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %cst = arith.constant 0.900009989 : f32
          %cst_0 = arith.constant 0.000000e+00 : f32
          %cst_1 = arith.constant dense<[-0.0133160437, 0.113484561, -0.0113141108, -0.0376151539, -0.0754385591, -0.0524811074, 0.0763875544, 0.117093593, 0.146021426, -0.154897526, -0.110022552, -0.0216384437, -0.066345036, 1.178950e-01, -0.0984137952, -0.17508477, -0.0322142057, 0.0944428443, 5.101760e-02, 0.00136410375, -6.43582389E-5, -0.0620954371, -0.00223123305, 0.139047444, -0.150775626, 0.0537026487, 0.0533286817, 0.102996953, -0.0428881459, -0.0666395426, -0.0403669216, -0.153315917]> : tensor<32xf32>
          %cst_2 = arith.constant dense<[-0.0392944887, 0.0515797921, -0.0205274113, 0.0231962837, 0.0350145064, -0.00573927676, 0.0552729517, 0.050093133, -0.0464505143, 0.0291997157, -0.0373835787, 2.715990e-02, -0.035419628, -0.0299205054, 0.00230462477, -0.019276198, -0.026820112, 0.00589444768, 0.00425179536, -0.0414390713, 0.00805407297, -0.0162163023, -0.0389810316, 0.0312663428, -0.0408093408, -0.028952742, 0.0363973156, -0.0417751335, -0.00984254665, -0.0221118387, 4.243670e-02, 0.0165644567]> : tensor<32xf32>
          %cst_3 = arith.constant dense<[-0.0207464304, 0.0305310227, -0.00304851634, 0.00742440159, -0.0142216152, -0.00190627098, 0.00779425679, 0.0197686311, 0.0189157818, -0.00981982424, -0.0211809669, 0.00601327838, -0.00531772105, 0.00930325594, -0.00716545573, -0.0272915065, -0.0163676459, 0.00854035374, 0.0072369189, -0.0116189159, 0.0112727014, -0.00852390937, 0.00165338244, 0.0163214505, -0.0211784299, -0.00402602414, 0.00555013586, 0.00581029942, -0.00430717133, -0.00420052139, -0.00503746793, -0.0134116923]> : tensor<32xf32>
          %c0 = arith.constant 0 : index
          %c115200 = arith.constant 115200 : index
          %c98432 = arith.constant 98432 : index
          %c215552 = arith.constant 215552 : index
          %c330752 = arith.constant 330752 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x30x30xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c98432) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c115200) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x28x28xf32>>
          %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c215552) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x30x30xf32>>
          %4 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(3) alignment(64) offset(%c330752) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x28x28xf32>>
          %5 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [32, 30, 30], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x30x30xf32>> -> tensor<32x30x30xf32>
          %6 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [32, 32, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x3x3xf32>> -> tensor<32x32x3x3xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0, 0, 0], sizes = [32, 28, 28], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x28x28xf32>> -> tensor<32x28x28xf32>
          %8 = tensor.empty() : tensor<32x28x28xf32>
          %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst_0 : f32) outs(%8 : tensor<32x28x28xf32>) -> tensor<32x28x28xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%5, %6 : tensor<32x30x30xf32>, tensor<32x32x3x3xf32>) outs(%9 : tensor<32x28x28xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [4, 14, 28, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
          ^bb0(%in: f32, %in_4: f32, %out: f32):
            %12 = arith.mulf %in, %in_4 : f32
            %13 = arith.addf %out, %12 : f32
            linalg.yield %13 : f32
          } -> tensor<32x28x28xf32>
          %11:2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_1, %10, %cst_2, %cst_3 : tensor<32x28x28xf32>, tensor<32xf32>, tensor<32x28x28xf32>, tensor<32xf32>, tensor<32xf32>) outs(%8, %8 : tensor<32x28x28xf32>, tensor<32x28x28xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
          ^bb0(%in: f32, %in_4: f32, %in_5: f32, %in_6: f32, %in_7: f32, %out: f32, %out_8: f32):
            %12 = arith.addf %in_5, %in_6 : f32
            %13 = arith.addf %in, %in_4 : f32
            %14 = arith.addf %13, %12 : f32
            %15 = math.rsqrt %cst : f32
            %16 = arith.subf %14, %in_7 : f32
            %17 = arith.mulf %16, %15 : f32
            %18 = arith.addf %17, %cst_0 : f32
            %19 = arith.cmpf ugt, %18, %cst_0 : f32
            %20 = arith.select %19, %18, %cst_0 : f32
            linalg.yield %14, %20 : f32, f32
          } -> (tensor<32x28x28xf32>, tensor<32x28x28xf32>)
          iree_tensor_ext.dispatch.tensor.store %11#0, %4, offsets = [0, 0, 0], sizes = [32, 28, 28], strides = [1, 1, 1] : tensor<32x28x28xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x28x28xf32>>
          iree_tensor_ext.dispatch.tensor.store %11#1, %3, offsets = [0, 1, 1], sizes = [32, 28, 28], strides = [1, 1, 1] : tensor<32x28x28xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x30x30xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c9130240 = arith.constant 9130240 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c9130240}
    util.global.store %buffer, @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c2616640 = arith.constant 2616640 : index
    %c2616832 = arith.constant 2616832 : index
    %c1279616 = arith.constant 1279616 : index
    %c3896576 = arith.constant 3896576 : index
    %c6513408 = arith.constant 6513408 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_5::@system_elf_x86_64::@main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_5) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_5::@system_elf_x86_64::@main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer)[%c0, %c2616640], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer)[%c2616832, %c1279616], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer)[%c3896576, %c2616640], 
        (%main_graph$async_dispatch_5_system_elf_x86_64_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_buffer : !hal.buffer)[%c6513408, %c2616640]
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
