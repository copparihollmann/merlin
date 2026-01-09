module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_70 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 0.000000e+00 : f32
          %c1003520 = arith.constant 1003520 : index
          %c1204224 = arith.constant 1204224 : index
          %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
          %1 = arith.index_castui %0 : i32 to index
          %2 = util.assume.int %1[<umin = 8406784, umax = 8406784, udiv = 8406784>, <umin = 8341248, umax = 8341248, udiv = 8341248>] : index
          %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<28x28x64xf32>>
          %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xf32>>
          %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1204224) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<256x30x30xf32>>
          %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [28, 28, 64], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<28x28x64xf32>> -> tensor<28x28x64xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0], sizes = [64, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xf32>> -> tensor<64x256xf32>
          %8 = tensor.empty() : tensor<256x28x28xf32>
          %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 14, 28], vector_common_parallel = [1, 8, 32]>} ins(%cst : f32) outs(%8 : tensor<256x28x28xf32>) -> tensor<256x28x28xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%6, %7 : tensor<28x28x64xf32>, tensor<64x256xf32>) outs(%9 : tensor<256x28x28xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 14, 28, 0], distribution = [32, 14, 28, 0], vector_common_parallel = [1, 8, 32, 0], vector_reduction = [0, 0, 0, 1]>} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %12 = arith.mulf %in, %in_0 : f32
            %13 = arith.addf %out, %12 : f32
            linalg.yield %13 : f32
          } -> tensor<256x28x28xf32>
          %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10 : tensor<256x28x28xf32>) outs(%8 : tensor<256x28x28xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 14, 28], vector_common_parallel = [1, 8, 32]>} {
          ^bb0(%in: f32, %out: f32):
            %12 = arith.addf %in, %cst : f32
            linalg.yield %12 : f32
          } -> tensor<256x28x28xf32>
          iree_tensor_ext.dispatch.tensor.store %11, %5, offsets = [0, 1, 1], sizes = [256, 28, 28], strides = [1, 1, 1] : tensor<256x28x28xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<256x30x30xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c78955776 = arith.constant 78955776 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c8341248_i32 = arith.constant 8341248 : i32
    %main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer = util.global.load @main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_70::@embedded_elf_riscv_64::@main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_70) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_70::@embedded_elf_riscv_64::@main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c8341248_i32]) bindings([
        (%main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
        (%main_graph$async_dispatch_70_embedded_elf_riscv_64_main_graph$async_dispatch_70_matmul_like_256x28x28x64_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
