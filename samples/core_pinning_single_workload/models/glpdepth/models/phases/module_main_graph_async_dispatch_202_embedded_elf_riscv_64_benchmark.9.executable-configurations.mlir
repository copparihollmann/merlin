#config = #iree_cpu.lowering_config<distribution = [4096], vector_common_parallel = [8]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_202 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_202_elementwise_50176_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_202_elementwise_50176_f32() attributes {translation_info = #translation} {
          %c0 = arith.constant 0 : index
          %c28 = arith.constant 28 : index
          %cst = arith.constant 5.000000e-01 : f32
          %cst_0 = arith.constant 2.000000e+00 : f32
          %cst_1 = arith.constant 0.000000e+00 : f32
          %cst_2 = arith.constant 1.300000e+01 : f32
          %cst_3 = arith.constant 1.000000e+00 : f32
          %c64 = arith.constant 64 : index
          %c1 = arith.constant 1 : index
          %c805120 = arith.constant 805120 : index
          %c639744 = arith.constant 639744 : index
          %c1003520 = arith.constant 1003520 : index
          %c401408 = arith.constant 401408 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c805120) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x28x28xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c639744) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x14x14xf32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<50176xf32>>
          %3 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c401408) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<50176xf32>>
          %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 2, 28, 28], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x2x28x28xf32>> -> tensor<1x2x28x28xf32>
          %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [1, 64, 14, 14], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x14x14xf32>> -> tensor<1x64x14x14xf32>
          %6 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0], sizes = [50176], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<50176xf32>> -> tensor<50176xf32>
          %7 = tensor.empty() : tensor<50176xf32>
          %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%6 : tensor<50176xf32>) outs(%7 : tensor<50176xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %out: f32):
            %9 = linalg.index 0 : index
            %10 = arith.remsi %9, %c28 : index
            %11 = arith.divsi %9, %c28 : index
            %12 = arith.remsi %11, %c28 : index
            %13 = arith.divsi %11, %c28 : index
            %14 = arith.remsi %13, %c64 : index
            %extracted = tensor.extract %4[%c0, %c0, %12, %10] : tensor<1x2x28x28xf32>
            %extracted_4 = tensor.extract %4[%c0, %c1, %12, %10] : tensor<1x2x28x28xf32>
            %15 = arith.index_cast %12 : index to i64
            %16 = arith.sitofp %15 : i64 to f32
            %17 = arith.addf %16, %cst : f32
            %18 = arith.divf %17, %cst_0 : f32
            %19 = arith.subf %18, %cst : f32
            %20 = arith.maximumf %19, %cst_1 : f32
            %21 = arith.minimumf %20, %cst_2 : f32
            %22 = arith.index_cast %10 : index to i64
            %23 = arith.sitofp %22 : i64 to f32
            %24 = arith.addf %23, %cst : f32
            %25 = arith.divf %24, %cst_0 : f32
            %26 = arith.subf %25, %cst : f32
            %27 = arith.maximumf %26, %cst_1 : f32
            %28 = arith.minimumf %27, %cst_2 : f32
            %29 = math.floor %21 : f32
            %30 = arith.addf %21, %cst_3 : f32
            %31 = math.floor %30 : f32
            %32 = arith.fptosi %29 : f32 to i64
            %33 = arith.index_cast %32 : i64 to index
            %34 = arith.minimumf %30, %cst_2 : f32
            %35 = arith.fptosi %34 : f32 to i64
            %36 = arith.index_cast %35 : i64 to index
            %37 = math.floor %28 : f32
            %38 = arith.addf %28, %cst_3 : f32
            %39 = math.floor %38 : f32
            %40 = arith.fptosi %37 : f32 to i64
            %41 = arith.index_cast %40 : i64 to index
            %42 = arith.minimumf %38, %cst_2 : f32
            %43 = arith.fptosi %42 : f32 to i64
            %44 = arith.index_cast %43 : i64 to index
            %extracted_5 = tensor.extract %5[%c0, %14, %33, %41] : tensor<1x64x14x14xf32>
            %extracted_6 = tensor.extract %5[%c0, %14, %33, %44] : tensor<1x64x14x14xf32>
            %extracted_7 = tensor.extract %5[%c0, %14, %36, %41] : tensor<1x64x14x14xf32>
            %extracted_8 = tensor.extract %5[%c0, %14, %36, %44] : tensor<1x64x14x14xf32>
            %45 = arith.subf %31, %21 : f32
            %46 = arith.subf %21, %29 : f32
            %47 = arith.subf %39, %28 : f32
            %48 = arith.subf %28, %37 : f32
            %49 = arith.mulf %47, %extracted_5 : f32
            %50 = arith.mulf %48, %extracted_6 : f32
            %51 = arith.addf %49, %50 : f32
            %52 = arith.mulf %45, %51 : f32
            %53 = arith.mulf %47, %extracted_7 : f32
            %54 = arith.mulf %48, %extracted_8 : f32
            %55 = arith.addf %53, %54 : f32
            %56 = arith.mulf %46, %55 : f32
            %57 = arith.addf %52, %56 : f32
            %58 = arith.mulf %57, %extracted_4 : f32
            %59 = arith.mulf %in, %extracted : f32
            %60 = arith.addf %59, %58 : f32
            linalg.yield %60 : f32
          } -> tensor<50176xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %3, offsets = [0], sizes = [50176], strides = [1] : tensor<50176xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<50176xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer = util.global.load immutable @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_202::@embedded_elf_riscv_64::@main_graph$async_dispatch_202_elementwise_50176_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_202) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_202::@embedded_elf_riscv_64::@main_graph$async_dispatch_202_elementwise_50176_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
