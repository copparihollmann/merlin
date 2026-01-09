#config = #iree_cpu.lowering_config<cache_parallel = [64, 14, 14], vector_common_parallel = [1, 8, 32]>
#config1 = #iree_cpu.lowering_config<cache_parallel = [64, 14, 14, 0], distribution = [64, 14, 14, 0], vector_common_parallel = [1, 8, 32, 0], vector_reduction = [0, 0, 0, 1]>
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d3, d0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_117 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32() attributes {translation_info = #translation} {
          %cst = arith.constant 0.000000e+00 : f32
          %c1128960 = arith.constant 1128960 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout) ordinal(1) : i32
          %2 = arith.index_castui %0 : i32 to index
          %3 = arith.index_castui %1 : i32 to index
          %4:2 = util.assume.int 
              %2[<umin = 526848, umax = 526848, udiv = 526848>, <umin = 1003520, umax = 1003520, udiv = 1003520>], 
              %3[<umin = 7931648, umax = 7931648, udiv = 7931648>, <umin = 7522048, umax = 7522048, udiv = 7522048>]
            : index, index
          %5 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<14x14x160xf32>>
          %6 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%4#1) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x640xf32>>
          %7 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c1128960) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<640x16x16xf32>>
          %8 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0, 0], sizes = [14, 14, 160], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<14x14x160xf32>> -> tensor<14x14x160xf32>
          %9 = iree_tensor_ext.dispatch.tensor.load %6, offsets = [0, 0], sizes = [160, 640], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x640xf32>> -> tensor<160x640xf32>
          %10 = tensor.empty() : tensor<640x14x14xf32>
          %11 = linalg.fill {lowering_config = #config} ins(%cst : f32) outs(%10 : tensor<640x14x14xf32>) -> tensor<640x14x14xf32>
          %12 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%8, %9 : tensor<14x14x160xf32>, tensor<160x640xf32>) outs(%11 : tensor<640x14x14xf32>) attrs =  {lowering_config = #config1} {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %14 = arith.mulf %in, %in_0 : f32
            %15 = arith.addf %out, %14 : f32
            linalg.yield %15 : f32
          } -> tensor<640x14x14xf32>
          %13 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<640x14x14xf32>) outs(%10 : tensor<640x14x14xf32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: f32, %out: f32):
            %14 = arith.addf %in, %cst : f32
            linalg.yield %14 : f32
          } -> tensor<640x14x14xf32>
          iree_tensor_ext.dispatch.tensor.store %13, %7, offsets = [0, 1, 1], sizes = [640, 14, 14], strides = [1, 1, 1] : tensor<640x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<640x16x16xf32>>
          return
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c1 = arith.constant 1 : index
    %c46783744 = arith.constant 46783744 : index
    %c14611584 = arith.constant 14611584 : index
    %c32172032 = arith.constant 32172032 : index
    %c0 = arith.constant 0 : index
    %c7522048_i32 = arith.constant 7522048 : i32
    %c1003520_i32 = arith.constant 1003520 : i32
    %main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer = util.global.load immutable @main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_117::@embedded_elf_riscv_64::@main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_117) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_117::@embedded_elf_riscv_64::@main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1003520_i32, %c7522048_i32]) bindings([
      (%main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_117_embedded_elf_riscv_64_main_graph$async_dispatch_117_matmul_like_640x14x14x160_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
