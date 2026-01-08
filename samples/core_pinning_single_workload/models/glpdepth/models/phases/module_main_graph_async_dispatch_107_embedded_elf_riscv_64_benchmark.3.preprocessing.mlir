#config = #iree_cpu.lowering_config<distribution = [1, 64, 49], vector_common_parallel = [1, 32, 7]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDataTiling>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_107 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_107_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_107_unpack_f32() attributes {translation_info = #translation} {
          %c1003520 = arith.constant 1003520 : index
          %c1223040 = arith.constant 1223040 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x7x7x32xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c1223040) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x196x49xf32>>
          %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0, 0], sizes = [5, 7, 7, 7, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x7x7x32xf32>> -> tensor<5x7x7x7x32xf32>
          %3 = tensor.empty() : tensor<5x196x49xf32>
          %unpack = linalg.unpack %2 outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [7, 32] into %3 {lowering_config = #config} : tensor<5x7x7x7x32xf32> -> tensor<5x196x49xf32>
          iree_tensor_ext.dispatch.tensor.store %unpack, %1, offsets = [0, 0, 0], sizes = [5, 196, 49], strides = [1, 1, 1] : tensor<5x196x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x196x49xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer = util.global.load @main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer : !hal.buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_107::@embedded_elf_riscv_64::@main_graph$async_dispatch_107_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_107) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_107::@embedded_elf_riscv_64::@main_graph$async_dispatch_107_unpack_f32) : index
    scf.for %arg1 = %c0 to %1 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_107_embedded_elf_riscv_64_main_graph$async_dispatch_107_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
