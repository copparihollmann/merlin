module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-riscv_64", {cpu = "", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_0 {
    hal.executable.variant public @system_elf_riscv_64 target(<"llvm-cpu", "system-elf-riscv_64", {cpu = "", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_0_matvec_like_32x10_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_0_matvec_like_32x10_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant dense<[0.273893714, 0.279820621, 0.0452598147, 0.144816726, -0.281734437, 0.271092355, -0.0800916925, 0.116940826, -0.18174164, -0.167472199, 0.259251297, -0.156263962, -0.0386072248, 0.295576692, -0.241522744, 0.308064103, 0.0335868485, -0.179610536, 0.0674553365, 0.0161648598, 0.179492086, -0.172997117, 0.191757396, 0.208816171, 0.16277267, -0.256109029, -0.186987102, 0.253735721, -0.228231966, 0.0051509575, 0.203526855, 0.196923614]> : tensor<32xf32>
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x10xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0], sizes = [10], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>> -> tensor<10xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [32, 10], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x10xf32>> -> tensor<32x10xf32>
          %5 = tensor.empty() : tensor<32xf32>
          %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32], vector_common_parallel = [32]>} ins(%cst : f32) outs(%5 : tensor<32xf32>) -> tensor<32xf32>
          %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%3, %4 : tensor<10xf32>, tensor<32x10xf32>) outs(%6 : tensor<32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 0], distribution = [32, 0], vector_common_parallel = [32, 0], vector_reduction = [0, 1]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.mulf %in, %in_1 : f32
            %10 = arith.addf %out, %9 : f32
            linalg.yield %10 : f32
          } -> tensor<32xf32>
          %8 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%7, %cst_0 : tensor<32xf32>, tensor<32xf32>) outs(%5 : tensor<32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32], vector_common_parallel = [32]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.addf %in, %in_1 : f32
            %10 = arith.cmpf ugt, %9, %cst : f32
            %11 = arith.select %10, %9, %cst : f32
            linalg.yield %11 : f32
          } -> tensor<32xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0], sizes = [32], strides = [1] : tensor<32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c5888 = arith.constant 5888 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c5888}
    util.global.store %buffer, @main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer = util.global.load @main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c256 = arith.constant 256 : index
    %c5376 = arith.constant 5376 : index
    %c5632 = arith.constant 5632 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_0::@system_elf_riscv_64::@main_graph$async_dispatch_0_matvec_like_32x10_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_0) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_0::@system_elf_riscv_64::@main_graph$async_dispatch_0_matvec_like_32x10_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer)[%c0, %c40], 
        (%main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer)[%c256, %c5376], 
        (%main_graph$async_dispatch_0_system_elf_riscv_64_main_graph$async_dispatch_0_matvec_like_32x10_f32_buffer : !hal.buffer)[%c5632, %c256]
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
