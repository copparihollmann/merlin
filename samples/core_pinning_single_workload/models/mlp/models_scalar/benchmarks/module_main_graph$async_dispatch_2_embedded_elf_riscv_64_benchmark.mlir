module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_2 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @main_graph$async_dispatch_2_matvec_like_2x32_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_2_matvec_like_2x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 0.000000e+00 : f32
          %c192 = arith.constant 192 : index
          %c5632 = arith.constant 5632 : index
          %c5888 = arith.constant 5888 : index
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c192) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c5632) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c5888) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>
          %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
          %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0], sizes = [32], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>> -> tensor<32xf32>
          %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [2, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32xf32>> -> tensor<2x32xf32>
          %6 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0], sizes = [2], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>> -> tensor<2xf32>
          %7 = tensor.empty() : tensor<2xf32>
          %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2], vector_common_parallel = [32]>} ins(%cst : f32) outs(%7 : tensor<2xf32>) -> tensor<2xf32>
          %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%4, %5 : tensor<32xf32>, tensor<2x32xf32>) outs(%8 : tensor<2xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2, 0], distribution = [2, 0], vector_common_parallel = [32, 0], vector_reduction = [0, 1]>} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %11 = arith.mulf %in, %in_0 : f32
            %12 = arith.addf %out, %11 : f32
            linalg.yield %12 : f32
          } -> tensor<2xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%9, %6 : tensor<2xf32>, tensor<2xf32>) outs(%7 : tensor<2xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2], vector_common_parallel = [32]>} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %11 = arith.addf %in, %in_0 : f32
            linalg.yield %11 : f32
          } -> tensor<2xf32>
          iree_tensor_ext.dispatch.tensor.store %10, %3, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c6912 = arith.constant 6912 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c6912}
    util.global.store %buffer, @main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer = util.global.load @main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c320 = arith.constant 320 : index
    %c512 = arith.constant 512 : index
    %c5952 = arith.constant 5952 : index
    %c6656 = arith.constant 6656 : index
    %c8 = arith.constant 8 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_2::@embedded_elf_riscv_64::@main_graph$async_dispatch_2_matvec_like_2x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_2) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_2::@embedded_elf_riscv_64::@main_graph$async_dispatch_2_matvec_like_2x32_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer)[%c0, %c320], 
        (%main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer)[%c512, %c5952], 
        (%main_graph$async_dispatch_2_embedded_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer)[%c6656, %c8]
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
