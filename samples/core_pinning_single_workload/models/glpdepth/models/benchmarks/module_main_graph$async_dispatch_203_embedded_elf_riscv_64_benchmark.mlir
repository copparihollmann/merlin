module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_203 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_203_elementwise_broadcast_200704_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_203_elementwise_broadcast_200704_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %c0 = arith.constant 0 : index
          %c56 = arith.constant 56 : index
          %cst = arith.constant 5.000000e-01 : f32
          %cst_0 = arith.constant 2.000000e+00 : f32
          %cst_1 = arith.constant 0.000000e+00 : f32
          %cst_2 = arith.constant 2.700000e+01 : f32
          %cst_3 = arith.constant 1.000000e+00 : f32
          %c401408 = arith.constant 401408 : index
          %c2809856 = arith.constant 2809856 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x28x28xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2809856) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<200704xf32>>
          %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 64, 28, 28], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x28x28xf32>> -> tensor<1x64x28x28xf32>
          %3 = tensor.empty() : tensor<200704xf32>
          %4 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} outs(%3 : tensor<200704xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [4096], vector_common_parallel = [8]>} {
          ^bb0(%out: f32):
            %5 = linalg.index 0 : index
            %6 = arith.remsi %5, %c56 : index
            %7 = arith.divsi %5, %c56 : index
            %8 = arith.remsi %7, %c56 : index
            %9 = arith.divsi %7, %c56 : index
            %10 = arith.index_cast %8 : index to i64
            %11 = arith.sitofp %10 : i64 to f32
            %12 = arith.addf %11, %cst : f32
            %13 = arith.divf %12, %cst_0 : f32
            %14 = arith.subf %13, %cst : f32
            %15 = arith.maximumf %14, %cst_1 : f32
            %16 = arith.minimumf %15, %cst_2 : f32
            %17 = arith.index_cast %6 : index to i64
            %18 = arith.sitofp %17 : i64 to f32
            %19 = arith.addf %18, %cst : f32
            %20 = arith.divf %19, %cst_0 : f32
            %21 = arith.subf %20, %cst : f32
            %22 = arith.maximumf %21, %cst_1 : f32
            %23 = arith.minimumf %22, %cst_2 : f32
            %24 = math.floor %16 : f32
            %25 = arith.addf %16, %cst_3 : f32
            %26 = math.floor %25 : f32
            %27 = arith.fptosi %24 : f32 to i64
            %28 = arith.index_cast %27 : i64 to index
            %29 = arith.minimumf %25, %cst_2 : f32
            %30 = arith.fptosi %29 : f32 to i64
            %31 = arith.index_cast %30 : i64 to index
            %32 = math.floor %23 : f32
            %33 = arith.addf %23, %cst_3 : f32
            %34 = math.floor %33 : f32
            %35 = arith.fptosi %32 : f32 to i64
            %36 = arith.index_cast %35 : i64 to index
            %37 = arith.minimumf %33, %cst_2 : f32
            %38 = arith.fptosi %37 : f32 to i64
            %39 = arith.index_cast %38 : i64 to index
            %extracted = tensor.extract %2[%c0, %9, %28, %36] : tensor<1x64x28x28xf32>
            %extracted_4 = tensor.extract %2[%c0, %9, %28, %39] : tensor<1x64x28x28xf32>
            %extracted_5 = tensor.extract %2[%c0, %9, %31, %36] : tensor<1x64x28x28xf32>
            %extracted_6 = tensor.extract %2[%c0, %9, %31, %39] : tensor<1x64x28x28xf32>
            %40 = arith.subf %26, %16 : f32
            %41 = arith.subf %16, %24 : f32
            %42 = arith.subf %34, %23 : f32
            %43 = arith.subf %23, %32 : f32
            %44 = arith.mulf %42, %extracted : f32
            %45 = arith.mulf %43, %extracted_4 : f32
            %46 = arith.addf %44, %45 : f32
            %47 = arith.mulf %40, %46 : f32
            %48 = arith.mulf %42, %extracted_5 : f32
            %49 = arith.mulf %43, %extracted_6 : f32
            %50 = arith.addf %48, %49 : f32
            %51 = arith.mulf %41, %50 : f32
            %52 = arith.addf %47, %51 : f32
            linalg.yield %52 : f32
          } -> tensor<200704xf32>
          iree_tensor_ext.dispatch.tensor.store %4, %1, offsets = [0], sizes = [200704], strides = [1] : tensor<200704xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<200704xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c64344064 = arith.constant 64344064 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer = util.global.load @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_203::@embedded_elf_riscv_64::@main_graph$async_dispatch_203_elementwise_broadcast_200704_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_203) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_203::@embedded_elf_riscv_64::@main_graph$async_dispatch_203_elementwise_broadcast_200704_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
