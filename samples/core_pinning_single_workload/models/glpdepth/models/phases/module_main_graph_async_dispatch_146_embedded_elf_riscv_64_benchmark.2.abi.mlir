#config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>
#config1 = #iree_cpu.lowering_config<distribution = [32, 1, 7, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 * 2 + d4, d2 * 2 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d1, d2, d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_146 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %c1128960 = arith.constant 1128960 : index
          %c11633152 = arith.constant 11633152 : index
          %c1003520 = arith.constant 1003520 : index
          %c1053696 = arith.constant 1053696 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1128960) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x16x16xf32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c11633152) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x160x3x3xf32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x7x7xf32>>
          %3 = hal.interface.binding.subspan layout(#pipeline_layout) binding(3) alignment(64) offset(%c1053696) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x256xf32>>
          %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [160, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x16x16xf32>> -> tensor<160x16x16xf32>
          %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [256, 160, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x160x3x3xf32>> -> tensor<256x160x3x3xf32>
          %6 = tensor.empty() : tensor<7x7x256xf32>
          %7 = tensor.empty() : tensor<256x7x7xf32>
          %8 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%7 : tensor<256x7x7xf32>) -> tensor<256x7x7xf32>
          %9 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%4, %5 : tensor<160x16x16xf32>, tensor<256x160x3x3xf32>) outs(%8 : tensor<256x7x7xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %11 = arith.mulf %in, %in_0 : f32
            %12 = arith.addf %out, %11 : f32
            linalg.yield %12 : f32
          } -> tensor<256x7x7xf32>
          %10 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9 : tensor<256x7x7xf32>) outs(%6 : tensor<7x7x256xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %out: f32):
            linalg.yield %in : f32
          } -> tensor<7x7x256xf32>
          iree_tensor_ext.dispatch.tensor.store %9, %2, offsets = [0, 0, 0], sizes = [256, 7, 7], strides = [1, 1, 1] : tensor<256x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x7x7xf32>>
          iree_tensor_ext.dispatch.tensor.store %10, %3, offsets = [0, 0, 0], sizes = [7, 7, 256], strides = [1, 1, 1] : tensor<7x7x256xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x256xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c78955776 = arith.constant 78955776 : index
    %c46783744 = arith.constant 46783744 : index
    %c14611584 = arith.constant 14611584 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer = util.global.load @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_146::@embedded_elf_riscv_64::@main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_146) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_146::@embedded_elf_riscv_64::@main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32) : index
    scf.for %arg1 = %c0 to %1 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
        (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
        (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
