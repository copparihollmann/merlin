#config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>
#config1 = #iree_cpu.lowering_config<distribution = [32, 32, 32, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_212 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant dense<[-0.0304702427, -0.0127132637, 0.0272679292, 0.0330124199, 0.0257603824, 0.0256423354, 0.0287690368, -0.0106871873, -0.00137732923, 0.0152659072, 0.0191579312, -0.00934970378, -0.0264383368, 0.0287385788, 0.0271051191, -2.963100e-02, -0.00789042375, -0.015522073, -0.0046541593, 0.0203541126, -0.0362021737, 0.0261264257, 0.0202726722, -0.0389487967, -0.00879431795, 0.0150221046, 0.0142212864, -0.0186255723, 0.0116875125, -0.0366056934, -0.0257554352, 0.0125805493, -0.033371225, 0.0125715043, -0.00558280479, -0.0120511055, 0.0322652981, 0.0335849337, 0.026668271, -0.0263067298, -0.0115555972, -0.0176378749, 0.0147840828, 0.0152932759, 1.864390e-02, 8.185680e-03, 7.95394182E-4, 0.00211045146, -0.0239556581, -0.00401718449, 0.0391721576, -0.0151657667, 0.0199349523, -0.0246556811, 0.0278879311, -0.0197500847, -0.0286979191, 0.00295018661, -0.0374938622, -0.0153798908, 0.0226596445, 0.02373676, 0.0167544335, -0.0314750373]> : tensor<64xf32>
          %c6021120 = arith.constant 6021120 : index
          %c8505088 = arith.constant 8505088 : index
          %c19096576 = arith.constant 19096576 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c6021120) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x226x226xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c8505088) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c19096576) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x226x226xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [64, 226, 226], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x226x226xf32>> -> tensor<64x226x226xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 64, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>> -> tensor<64x64x3x3xf32>
          %5 = tensor.empty() : tensor<64x224x224xf32>
          %6 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%5 : tensor<64x224x224xf32>) -> tensor<64x224x224xf32>
          %7 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%6 : tensor<64x224x224xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.mulf %in, %in_1 : f32
            %10 = arith.addf %out, %9 : f32
            linalg.yield %10 : f32
          } -> tensor<64x224x224xf32>
          %8 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x224x224xf32>, tensor<64xf32>) outs(%5 : tensor<64x224x224xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.addf %in, %in_1 : f32
            %10 = arith.cmpf ugt, %9, %cst : f32
            %11 = arith.select %10, %9, %cst : f32
            linalg.yield %11 : f32
          } -> tensor<64x224x224xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [64, 224, 224], strides = [1, 1, 1] : tensor<64x224x224xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x226x226xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c46783744 = arith.constant 46783744 : index
    %c14611584 = arith.constant 14611584 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_212::@embedded_elf_riscv_64::@main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_212) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_212::@embedded_elf_riscv_64::@main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
