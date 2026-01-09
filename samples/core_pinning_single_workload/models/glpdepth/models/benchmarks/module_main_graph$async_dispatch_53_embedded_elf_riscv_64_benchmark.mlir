module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_53 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_53_reduction_784x64_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_53_reduction_784x64_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 6.400000e+01 : f32
          %cst_0 = arith.constant 9.99999974E-6 : f32
          %cst_1 = arith.constant 0.000000e+00 : f32
          %cst_2 = arith.constant 9.99999997E-7 : f32
          %c602112 = arith.constant 602112 : index
          %c401408 = arith.constant 401408 : index
          %c802816 = arith.constant 802816 : index
          %c1003520 = arith.constant 1003520 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c602112) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x784xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c802816) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<784x64xf32>>
          %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<784x64xf32>>
          %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>> -> tensor<784x64xf32>
          %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 784], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x784xf32>> -> tensor<64x784xf32>
          %6 = tensor.empty() : tensor<784x64xf32>
          %7 = tensor.empty() : tensor<784xf32>
          %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7]>} ins(%cst_1 : f32) outs(%7 : tensor<784xf32>) -> tensor<784xf32>
          %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%4 : tensor<784x64xf32>) outs(%8 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_reduction = [0, 8]>} {
          ^bb0(%in: f32, %out: f32):
            %15 = arith.addf %in, %out : f32
            linalg.yield %15 : f32
          } -> tensor<784xf32>
          %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%5, %9 : tensor<64x784xf32>, tensor<784xf32>) outs(%8 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_reduction = [0, 1]>} {
          ^bb0(%in: f32, %in_3: f32, %out: f32):
            %15 = arith.divf %in_3, %cst : f32
            %16 = arith.subf %in, %15 : f32
            %17 = arith.mulf %16, %16 : f32
            %18 = arith.addf %17, %out : f32
            linalg.yield %18 : f32
          } -> tensor<784xf32>
          %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%5, %9, %10 : tensor<64x784xf32>, tensor<784xf32>, tensor<784xf32>) outs(%6 : tensor<784x64xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_inner_parallel = [0, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: f32):
            %15 = arith.divf %in_3, %cst : f32
            %16 = arith.subf %in, %15 : f32
            %17 = arith.divf %in_4, %cst : f32
            %18 = arith.addf %17, %cst_0 : f32
            %19 = math.rsqrt %18 : f32
            %20 = arith.mulf %16, %19 : f32
            %21 = arith.addf %20, %cst_1 : f32
            linalg.yield %21 : f32
          } -> tensor<784x64xf32>
          %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11 : tensor<784x64xf32>) outs(%8 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_reduction = [0, 8]>} {
          ^bb0(%in: f32, %out: f32):
            %15 = arith.addf %in, %out : f32
            linalg.yield %15 : f32
          } -> tensor<784xf32>
          %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11, %12 : tensor<784x64xf32>, tensor<784xf32>) outs(%8 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [28, 0], vector_common_parallel = [7, 0], vector_reduction = [0, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %out: f32):
            %15 = arith.divf %in_3, %cst : f32
            %16 = arith.subf %in, %15 : f32
            %17 = arith.mulf %16, %16 : f32
            %18 = arith.addf %17, %out : f32
            linalg.yield %18 : f32
          } -> tensor<784xf32>
          %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%11, %12, %13 : tensor<784x64xf32>, tensor<784xf32>, tensor<784xf32>) outs(%6 : tensor<784x64xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_inner_parallel = [0, 8]>} {
          ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: f32):
            %15 = arith.divf %in_3, %cst : f32
            %16 = arith.subf %in, %15 : f32
            %17 = arith.divf %in_4, %cst : f32
            %18 = arith.addf %17, %cst_2 : f32
            %19 = math.rsqrt %18 : f32
            %20 = arith.mulf %16, %19 : f32
            %21 = arith.addf %20, %cst_1 : f32
            linalg.yield %21 : f32
          } -> tensor<784x64xf32>
          iree_tensor_ext.dispatch.tensor.store %11, %2, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : tensor<784x64xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<784x64xf32>>
          iree_tensor_ext.dispatch.tensor.store %14, %3, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : tensor<784x64xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<784x64xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c96516096 = arith.constant 96516096 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c96516096}
    util.global.store %buffer, @main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer = util.global.load @main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c64344064 = arith.constant 64344064 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_53::@embedded_elf_riscv_64::@main_graph$async_dispatch_53_reduction_784x64_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_53) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_53::@embedded_elf_riscv_64::@main_graph$async_dispatch_53_reduction_784x64_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer)[%c32172032, %c32172032], 
        (%main_graph$async_dispatch_53_embedded_elf_riscv_64_main_graph$async_dispatch_53_reduction_784x64_f32_buffer : !hal.buffer)[%c64344064, %c32172032]
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
