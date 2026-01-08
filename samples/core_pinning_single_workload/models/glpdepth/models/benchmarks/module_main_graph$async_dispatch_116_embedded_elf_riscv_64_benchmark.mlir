module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_116 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_116_reduction_196x160_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_116_reduction_196x160_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 9.99999997E-7 : f32
          %cst_0 = arith.constant 1.600000e+02 : f32
          %cst_1 = arith.constant 0.000000e+00 : f32
          %0 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
          %2 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
          %3 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(3) : i32
          %4 = arith.index_castui %0 : i32 to index
          %5 = arith.index_castui %1 : i32 to index
          %6 = arith.index_castui %2 : i32 to index
          %7 = arith.index_castui %3 : i32 to index
          %8:4 = util.assume.int 
              %4[<umin = 652288, umax = 652288, udiv = 652288>, <umin = 401408, umax = 401408, udiv = 401408>, <umin = 526848, umax = 526848, udiv = 526848>], 
              %5[<umin = 1003520, umax = 1003520, udiv = 1003520>, <umin = 671104, umax = 671104, udiv = 671104>, <umin = 401408, umax = 401408, udiv = 401408>], 
              %6[<umin = 401408, umax = 401408, udiv = 401408>, <umin = 526848, umax = 526848, udiv = 526848>, <umin = 652288, umax = 652288, udiv = 652288>], 
              %7[<umin = 526848, umax = 526848, udiv = 526848>, <umin = 1003520, umax = 1003520, udiv = 1003520>, <umin = 1003520, umax = 1003520, udiv = 1003520>]
            : index, index, index, index
          %9 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%8#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>>
          %10 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%8#1) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>>
          %11 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%8#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
          %12 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%8#3) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
          %13 = iree_tensor_ext.dispatch.tensor.load %9, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>> -> tensor<196x160xf32>
          %14 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>> -> tensor<196x160xf32>
          %15 = tensor.empty() : tensor<196xf32>
          %16 = tensor.empty() : tensor<196x160xf32>
          %17 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7]>} ins(%cst_1 : f32) outs(%15 : tensor<196xf32>) -> tensor<196xf32>
          %18 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%13, %14 : tensor<196x160xf32>, tensor<196x160xf32>) outs(%16 : tensor<196x160xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_inner_parallel = [0, 8]>} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %22 = arith.addf %in_2, %cst_1 : f32
            %23 = arith.addf %in, %22 : f32
            linalg.yield %23 : f32
          } -> tensor<196x160xf32>
          %19 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%18 : tensor<196x160xf32>) outs(%17 : tensor<196xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_reduction = [0, 8]>} {
          ^bb0(%in: f32, %out: f32):
            %22 = arith.addf %in, %out : f32
            linalg.yield %22 : f32
          } -> tensor<196xf32>
          %20 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%18, %19 : tensor<196x160xf32>, tensor<196xf32>) outs(%17 : tensor<196xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [14, 0], vector_common_parallel = [7, 0], vector_reduction = [0, 8]>} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %22 = arith.divf %in_2, %cst_0 : f32
            %23 = arith.subf %in, %22 : f32
            %24 = arith.mulf %23, %23 : f32
            %25 = arith.addf %24, %out : f32
            linalg.yield %25 : f32
          } -> tensor<196xf32>
          %21 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%18, %19, %20 : tensor<196x160xf32>, tensor<196xf32>, tensor<196xf32>) outs(%16 : tensor<196x160xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [7, 0], vector_inner_parallel = [0, 8]>} {
          ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
            %22 = arith.divf %in_2, %cst_0 : f32
            %23 = arith.subf %in, %22 : f32
            %24 = arith.divf %in_3, %cst_0 : f32
            %25 = arith.addf %24, %cst : f32
            %26 = math.rsqrt %25 : f32
            %27 = arith.mulf %23, %26 : f32
            %28 = arith.addf %27, %cst_1 : f32
            linalg.yield %28 : f32
          } -> tensor<196x160xf32>
          iree_tensor_ext.dispatch.tensor.store %18, %11, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : tensor<196x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
          iree_tensor_ext.dispatch.tensor.store %21, %12, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : tensor<196x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c96516096 = arith.constant 96516096 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c96516096}
    util.global.store %buffer, @main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c526848_i32 = arith.constant 526848 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c652288_i32 = arith.constant 652288 : i32
    %c1003520_i32 = arith.constant 1003520 : i32
    %main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer = util.global.load @main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c64344064 = arith.constant 64344064 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_116::@embedded_elf_riscv_64::@main_graph$async_dispatch_116_reduction_196x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_116) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_116::@embedded_elf_riscv_64::@main_graph$async_dispatch_116_reduction_196x160_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c526848_i32, %c401408_i32, %c652288_i32, %c1003520_i32]) bindings([
        (%main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer)[%c32172032, %c32172032], 
        (%main_graph$async_dispatch_116_embedded_elf_riscv_64_main_graph$async_dispatch_116_reduction_196x160_f32_buffer : !hal.buffer)[%c64344064, %c32172032]
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
