#config = #iree_cpu.lowering_config<vector_common_parallel = [1]>
#config1 = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_reduction = [0, 8]>
#config2 = #iree_cpu.lowering_config<distribution = [1, 0], vector_common_parallel = [1, 0], vector_reduction = [0, 1]>
#config3 = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_inner_parallel = [0, 8]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_7 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_7_reduction_49x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_7_reduction_49x32_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant 9.99999974E-6 : f32
          %cst_1 = arith.constant 3.200000e+01 : f32
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout) ordinal(1) : i32
          %2 = hal.interface.constant.load layout(#pipeline_layout) ordinal(2) : i32
          %3 = arith.index_castui %0 : i32 to index
          %4 = arith.index_castui %1 : i32 to index
          %5 = arith.index_castui %2 : i32 to index
          %6:3 = util.assume.int 
              %3[<umin = 1248128, umax = 1248128, udiv = 1248128>, <umin = 1649536, umax = 1649536, udiv = 1649536>], 
              %4[<umin = 1241856, umax = 1241856, udiv = 1241856>, <umin = 1643264, umax = 1643264, udiv = 1643264>], 
              %5[<umin = 802816, umax = 802816, udiv = 802816>, <umin = 401408, umax = 401408, udiv = 401408>]
            : index, index, index
          %7 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%6#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x32xf32>>
          %8 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%6#1) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x49xf32>>
          %9 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x32xf32>>
          %10 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0], sizes = [49, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x32xf32>> -> tensor<49x32xf32>
          %11 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0], sizes = [32, 49], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x49xf32>> -> tensor<32x49xf32>
          %12 = tensor.empty() : tensor<49x32xf32>
          %13 = tensor.empty() : tensor<49xf32>
          %14 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%13 : tensor<49xf32>) -> tensor<49xf32>
          %15 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "reduction"]} ins(%10 : tensor<49x32xf32>) outs(%14 : tensor<49xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %out: f32):
            %18 = arith.addf %in, %out : f32
            linalg.yield %18 : f32
          } -> tensor<49xf32>
          %16 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "reduction"]} ins(%11, %15 : tensor<32x49xf32>, tensor<49xf32>) outs(%14 : tensor<49xf32>) attrs =  {lowering_config = #config2} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %18 = arith.divf %in_2, %cst_1 : f32
            %19 = arith.subf %in, %18 : f32
            %20 = arith.mulf %19, %19 : f32
            %21 = arith.addf %20, %out : f32
            linalg.yield %21 : f32
          } -> tensor<49xf32>
          %17 = linalg.generic {indexing_maps = [#map2, #map1, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%11, %15, %16 : tensor<32x49xf32>, tensor<49xf32>, tensor<49xf32>) outs(%12 : tensor<49x32xf32>) attrs =  {lowering_config = #config3} {
          ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
            %18 = arith.divf %in_2, %cst_1 : f32
            %19 = arith.subf %in, %18 : f32
            %20 = arith.divf %in_3, %cst_1 : f32
            %21 = arith.addf %20, %cst_0 : f32
            %22 = math.rsqrt %21 : f32
            %23 = arith.mulf %19, %22 : f32
            %24 = arith.addf %23, %cst : f32
            linalg.yield %24 : f32
          } -> tensor<49x32xf32>
          iree_tensor_ext.dispatch.tensor.store %17, %9, offsets = [0, 0], sizes = [49, 32], strides = [1, 1] : tensor<49x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x32xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %c401408_i32 = arith.constant 401408 : i32
    %c1643264_i32 = arith.constant 1643264 : i32
    %c1649536_i32 = arith.constant 1649536 : i32
    %main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer = util.global.load immutable @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_7::@embedded_elf_riscv_64::@main_graph$async_dispatch_7_reduction_49x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_7) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_7::@embedded_elf_riscv_64::@main_graph$async_dispatch_7_reduction_49x32_f32) : index
    scf.for %arg1 = %c0 to %1 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1649536_i32, %c1643264_i32, %c401408_i32]) bindings([
        (%main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
