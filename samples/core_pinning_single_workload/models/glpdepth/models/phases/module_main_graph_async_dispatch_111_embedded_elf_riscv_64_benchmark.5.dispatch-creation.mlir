#config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1, 0, 7]>
#config1 = #iree_cpu.lowering_config<distribution = [1, 1, 7, 0, 0, 0, 0], vector_common_parallel = [1, 1, 1, 0, 7, 32, 0], vector_reduction = [0, 0, 0, 1, 0, 0, 1]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_111 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %c1195648 = arith.constant 1195648 : index
          %c1003520 = arith.constant 1003520 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = arith.index_castui %0 : i32 to index
          %2 = util.assume.int %1[<umin = 607488, umax = 607488, udiv = 607488>, <umin = 464128, umax = 464128, udiv = 464128>] : index
          %3 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x5x49x7x1xf32>>
          %4 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1195648) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x49x32x1xf32>>
          %5 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x5x7x7x32xf32>>
          %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0, 0], sizes = [5, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x5x49x7x1xf32>> -> tensor<5x5x49x7x1xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0, 0, 0], sizes = [5, 7, 49, 32, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x49x32x1xf32>> -> tensor<5x7x49x32x1xf32>
          %8 = tensor.empty() : tensor<5x5x7x7x32xf32>
          %9 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%8 : tensor<5x5x7x7x32xf32>) -> tensor<5x5x7x7x32xf32>
          %10 = linalg.batch_mmt4d {lowering_config = #config1} ins(%6, %7 : tensor<5x5x49x7x1xf32>, tensor<5x7x49x32x1xf32>) outs(%9 : tensor<5x5x7x7x32xf32>) -> tensor<5x5x7x7x32xf32>
          iree_tensor_ext.dispatch.tensor.store %10, %5, offsets = [0, 0, 0, 0, 0], sizes = [5, 5, 7, 7, 32], strides = [1, 1, 1, 1, 1] : tensor<5x5x7x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x5x7x7x32xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %c464128_i32 = arith.constant 464128 : i32
    %main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_111::@embedded_elf_riscv_64::@main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_111) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_111::@embedded_elf_riscv_64::@main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32) : index
    scf.for %arg1 = %c0 to %1 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c464128_i32]) bindings([
        (%main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
      ]) flags("None")
      hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    }
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%0) signal(%fence) commands(%cmd) flags("None")
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
