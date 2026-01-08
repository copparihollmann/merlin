#config = #iree_cpu.lowering_config<cache_parallel = [1, 112, 32], vector_common_parallel = [1, 32, 1]>
#config1 = #iree_cpu.lowering_config<cache_parallel = [1, 112, 32, 0], distribution = [1, 128, 32, 0], vector_common_parallel = [1, 32, 1, 0], vector_reduction = [0, 0, 0, 1]>
#config2 = #iree_cpu.lowering_config<cache_parallel = [1, 3, 32], vector_common_parallel = [1, 1, 1]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3) -> (d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_54 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %c1003520 = arith.constant 1003520 : index
          %c401408 = arith.constant 401408 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = arith.index_castui %0 : i32 to index
          %2 = util.assume.int %1[<umin = 13849728, umax = 13849728, udiv = 13849728>, <umin = 13866112, umax = 13866112, udiv = 13866112>] : index
          %3 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>>
          %4 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x2x32xf32>>
          %5 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c401408) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x25x32x32x1xf32>>
          %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>> -> tensor<784x64xf32>
          %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0], sizes = [64, 2, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x2x32xf32>> -> tensor<64x2x32xf32>
          %8 = tensor.empty() : tensor<2x25x32x32x1xf32>
          %9 = tensor.empty() : tensor<2x784x32xf32>
          %10 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%9 : tensor<2x784x32xf32>) -> tensor<2x784x32xf32>
          %11 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%6, %7 : tensor<784x64xf32>, tensor<64x2x32xf32>) outs(%10 : tensor<2x784x32xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %13 = arith.mulf %in, %in_0 : f32
            %14 = arith.addf %out, %13 : f32
            linalg.yield %14 : f32
          } -> tensor<2x784x32xf32>
          %12 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11 : tensor<2x784x32xf32>) outs(%9 : tensor<2x784x32xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %out: f32):
            %13 = arith.addf %in, %cst : f32
            linalg.yield %13 : f32
          } -> tensor<2x784x32xf32>
          %pack = linalg.pack %12 padding_value(%cst : f32) outer_dims_perm = [0, 1, 2] inner_dims_pos = [1, 2] inner_tiles = [32, 1] into %8 {lowering_config = #config2} : tensor<2x784x32xf32> -> tensor<2x25x32x32x1xf32>
          iree_tensor_ext.dispatch.tensor.store %pack, %5, offsets = [0, 0, 0, 0, 0], sizes = [2, 25, 32, 32, 1], strides = [1, 1, 1, 1, 1] : tensor<2x25x32x32x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x25x32x32x1xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c13866112_i32 = arith.constant 13866112 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_54::@embedded_elf_riscv_64::@main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_54) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_54::@embedded_elf_riscv_64::@main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c13866112_i32]) bindings([
      (%main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_54_embedded_elf_riscv_64_main_graph$async_dispatch_54_matmul_like_2x784x32x64_f32_pack_buffer : !hal.buffer)[%c46783744, %c32172032]
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
