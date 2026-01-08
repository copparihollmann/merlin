#config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>
#config1 = #iree_cpu.lowering_config<distribution = [8, 7, 14, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>
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
  hal.executable private @main_graph$async_dispatch_192 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant dense<[-0.00491546048, -0.0197414961, 0.0210108161, 0.0263744872, 2.89515796E-4, 0.014580328, -0.0194835104, 6.73703442E-4, -0.0254508704, 0.00899838469, 0.00485731242, 0.0232008155, -0.00111214793, 6.3042593E-4, -4.964990e-03, -0.00226823706, -0.022451438, 0.0115858475, 0.0261271577, -0.0107124243, 0.0123172356, 0.0238301586, -2.874060e-02, 0.0183329731, 0.0270444825, -0.00819559675, 0.00129068806, 0.00350069627, -0.0186787546, 0.0293643661, -0.0160328764, -0.0131683657, -0.00482544582, -0.0261092763, -2.83787358E-5, 0.0210131202, 0.00526996283, 0.00835492462, -0.0223728474, 0.00347675686, 8.823750e-04, 0.0269280206, -0.00140553073, -0.0274115577, 0.0190912466, -0.0175783206, -0.0260730553, -0.0071956045, 0.00110482133, -0.0135951182, -1.96076697E-4, -0.00700851204, -0.0112590659, -0.0010510704, 0.0154339513, -0.0208718479, 0.0223415121, -0.00897623319, -0.0179760121, 0.0270077866, -0.0178795028, 0.0242766645, -0.0272899587, 0.0194702651]> : tensor<64xf32>
          %c401408 = arith.constant 401408 : index
          %c9470464 = arith.constant 9470464 : index
          %c1003520 = arith.constant 1003520 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x16x16xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c9470464) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x16x16xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [128, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x16x16xf32>> -> tensor<128x16x16xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 128, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>> -> tensor<64x128x3x3xf32>
          %5 = tensor.empty() : tensor<64x14x14xf32>
          %6 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%5 : tensor<64x14x14xf32>) -> tensor<64x14x14xf32>
          %7 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<128x16x16xf32>, tensor<64x128x3x3xf32>) outs(%6 : tensor<64x14x14xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.mulf %in, %in_1 : f32
            %10 = arith.addf %out, %9 : f32
            linalg.yield %10 : f32
          } -> tensor<64x14x14xf32>
          %8 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x14x14xf32>, tensor<64xf32>) outs(%5 : tensor<64x14x14xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.addf %in, %in_1 : f32
            %10 = arith.cmpf ugt, %9, %cst : f32
            %11 = arith.select %10, %9, %cst : f32
            linalg.yield %11 : f32
          } -> tensor<64x14x14xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [64, 14, 14], strides = [1, 1, 1] : tensor<64x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x16x16xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_192::@embedded_elf_riscv_64::@main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_192) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_192::@embedded_elf_riscv_64::@main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
