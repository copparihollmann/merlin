#config = #iree_cpu.lowering_config<vector_inner_parallel = [8]>
#config1 = #iree_cpu.lowering_config<vector_inner_parallel = [8, 0], vector_reduction = [0, 8]>
#config2 = #iree_cpu.lowering_config<distribution = [32, 0], vector_reduction = [0, 8]>
#config3 = #iree_cpu.lowering_config<vector_inner_parallel = [8, 8]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#map3 = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_50 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_50_reduction_3136x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_50_reduction_3136x32_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant 3.200000e+01 : f32
          %cst_1 = arith.constant 9.99999997E-7 : f32
          %c802816 = arith.constant 802816 : index
          %c1204224 = arith.constant 1204224 : index
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c802816) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1204224) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x3136xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>> -> tensor<3136x32xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>> -> tensor<3136x32xf32>
          %5 = tensor.empty() : tensor<32x3136xf32>
          %6 = tensor.empty() : tensor<3136xf32>
          %7 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%6 : tensor<3136xf32>) -> tensor<3136xf32>
          %8 = linalg.generic {indexing_maps = [#map, #map, #map1], iterator_types = ["parallel", "reduction"]} ins(%3, %4 : tensor<3136x32xf32>, tensor<3136x32xf32>) outs(%7 : tensor<3136xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %11 = arith.addf %in_2, %cst : f32
            %12 = arith.addf %in, %11 : f32
            %13 = arith.addf %12, %out : f32
            linalg.yield %13 : f32
          } -> tensor<3136xf32>
          %9 = linalg.generic {indexing_maps = [#map, #map, #map1, #map1], iterator_types = ["parallel", "reduction"]} ins(%3, %4, %8 : tensor<3136x32xf32>, tensor<3136x32xf32>, tensor<3136xf32>) outs(%7 : tensor<3136xf32>) attrs =  {lowering_config = #config2} {
          ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
            %11 = arith.addf %in_2, %cst : f32
            %12 = arith.addf %in, %11 : f32
            %13 = arith.divf %in_3, %cst_0 : f32
            %14 = arith.subf %12, %13 : f32
            %15 = arith.mulf %14, %14 : f32
            %16 = arith.addf %15, %out : f32
            linalg.yield %16 : f32
          } -> tensor<3136xf32>
          %10 = linalg.generic {indexing_maps = [#map2, #map2, #map3, #map3, #map], iterator_types = ["parallel", "parallel"]} ins(%3, %4, %8, %9 : tensor<3136x32xf32>, tensor<3136x32xf32>, tensor<3136xf32>, tensor<3136xf32>) outs(%5 : tensor<32x3136xf32>) attrs =  {lowering_config = #config3} {
          ^bb0(%in: f32, %in_2: f32, %in_3: f32, %in_4: f32, %out: f32):
            %11 = arith.addf %in_2, %cst : f32
            %12 = arith.addf %in, %11 : f32
            %13 = arith.divf %in_3, %cst_0 : f32
            %14 = arith.subf %12, %13 : f32
            %15 = arith.divf %in_4, %cst_0 : f32
            %16 = arith.addf %15, %cst_1 : f32
            %17 = math.rsqrt %16 : f32
            %18 = arith.mulf %14, %17 : f32
            %19 = arith.addf %18, %cst : f32
            linalg.yield %19 : f32
          } -> tensor<32x3136xf32>
          iree_tensor_ext.dispatch.tensor.store %10, %2, offsets = [0, 0], sizes = [32, 3136], strides = [1, 1] : tensor<32x3136xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x3136xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer = util.global.load immutable @main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_50::@embedded_elf_riscv_64::@main_graph$async_dispatch_50_reduction_3136x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_50) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_50::@embedded_elf_riscv_64::@main_graph$async_dispatch_50_reduction_3136x32_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_50_embedded_elf_riscv_64_main_graph$async_dispatch_50_reduction_3136x32_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb1(%4 : index)
  ^bb3:  // pred: ^bb1
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%0) signal(%fence) commands(%cmd) flags("None")
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
