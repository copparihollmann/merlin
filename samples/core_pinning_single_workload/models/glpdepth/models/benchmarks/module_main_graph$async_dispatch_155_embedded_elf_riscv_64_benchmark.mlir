module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_155 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
          %c1 = arith.constant 1 : index
          %cst = arith.constant 0.000000e+00 : f32
          %c0 = arith.constant 0 : index
          %c1080384 = arith.constant 1080384 : index
          %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
          %1 = arith.index_castui %0 : i32 to index
          %2 = util.assume.int %1[<umin = 677376, umax = 677376, udiv = 677376>, <umin = 577024, umax = 577024, udiv = 577024>] : index
          %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x8x49x32xf32>>
          %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1080384) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x5x49x7x1xf32>>
          %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0, 0], sizes = [2, 1, 8, 49, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x8x49x32xf32>> -> tensor<2x1x8x49x32xf32>
          %6 = tensor.empty() : tensor<8x5x49x7x1xf32>
          %7 = tensor.empty() : tensor<8x49x32xf32>
          %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<8x49x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 28, 35], vector_common_parallel = [1, 1, 7]>} {
          ^bb0(%out: f32):
            %9 = linalg.index 0 : index
            %10 = linalg.index 1 : index
            %11 = linalg.index 2 : index
            %extracted = tensor.extract %5[%c1, %c0, %9, %10, %11] : tensor<2x1x8x49x32xf32>
            linalg.yield %extracted : f32
          } -> tensor<8x49x32xf32>
          %pack = linalg.pack %8 padding_value(%cst : f32) outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [7, 1] into %6 {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1]>} : tensor<8x49x32xf32> -> tensor<8x5x49x7x1xf32>
          iree_tensor_ext.dispatch.tensor.store %pack, %4, offsets = [0, 0, 0, 0, 0], sizes = [8, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<8x5x49x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x5x49x7x1xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c64344064 = arith.constant 64344064 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c577024_i32 = arith.constant 577024 : i32
    %main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer = util.global.load @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_155::@embedded_elf_riscv_64::@main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_155) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_155::@embedded_elf_riscv_64::@main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c577024_i32]) bindings([
        (%main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
