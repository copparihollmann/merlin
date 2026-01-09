module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "system-elf-riscv_64", {cpu = "", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-linux-gnu"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_2 {
    hal.executable.variant public @system_elf_riscv_64 target(<"llvm-cpu", "system-elf-riscv_64", {cpu = "", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-linux-gnu"}>) {
      hal.executable.export public @main_graph$async_dispatch_2_matvec_like_2x32_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_2_matvec_like_2x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant dense<[[0.171129525, -0.139953896, 0.0700114369, 0.149714962, -0.0441490747, 0.122672446, -0.091955088, -0.0830952897, 0.128602743, 0.0837579444, 0.00398045359, 0.111024447, 0.0222082902, -0.100738212, 2.447400e-02, -0.165940627, -0.17052792, -0.0855851173, 0.130550072, 0.0654370934, 0.0230417456, -0.116033472, 0.118465118, 0.156889886, -0.152123153, 0.13942261, -0.0424127951, 0.143963307, 0.136610597, 0.00787585508, -0.109469905, -0.17177847], [0.155721873, 0.0206741244, -0.00235278462, 9.689750e-03, 0.0408876464, -0.103599124, 0.0987290963, 0.0985511317, 0.109129168, 0.0421495438, -0.081698522, -0.146978453, -0.0526261777, 0.0294487607, 0.0577334464, -0.0994662046, 0.0377531648, 0.158866763, -0.153354734, -0.0792463571, 0.0218282323, 0.0213659648, -0.041932445, -0.0749305412, 0.146671206, 0.0451292023, 0.0804300755, -0.130100787, -0.0350702442, 0.0378692597, -0.0369780846, 0.0391348451]]> : tensor<2x32xf32>
          %cst_0 = arith.constant 0.000000e+00 : f32
          %cst_1 = arith.constant dense<[0.121466771, -0.111812323]> : tensor<2xf32>
          %c128 = arith.constant 128 : index
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c128) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
          %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0], sizes = [32], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>> -> tensor<32xf32>
          %3 = tensor.empty() : tensor<2xf32>
          %4 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2], vector_common_parallel = [32]>} ins(%cst_0 : f32) outs(%3 : tensor<2xf32>) -> tensor<2xf32>
          %5 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%2, %cst : tensor<32xf32>, tensor<2x32xf32>) outs(%4 : tensor<2xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2, 0], distribution = [2, 0], vector_common_parallel = [32, 0], vector_reduction = [0, 1]>} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %7 = arith.mulf %in, %in_2 : f32
            %8 = arith.addf %out, %7 : f32
            linalg.yield %8 : f32
          } -> tensor<2xf32>
          %6 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%5, %cst_1 : tensor<2xf32>, tensor<2xf32>) outs(%3 : tensor<2xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [2], vector_common_parallel = [32]>} {
          ^bb0(%in: f32, %in_2: f32, %out: f32):
            %7 = arith.addf %in, %in_2 : f32
            linalg.yield %7 : f32
          } -> tensor<2xf32>
          iree_tensor_ext.dispatch.tensor.store %6, %1, offsets = [0], sizes = [2], strides = [1] : tensor<2xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c512 = arith.constant 512 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c512}
    util.global.store %buffer, @main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer = util.global.load @main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c256 = arith.constant 256 : index
    %c8 = arith.constant 8 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_2::@system_elf_riscv_64::@main_graph$async_dispatch_2_matvec_like_2x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_2) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_2::@system_elf_riscv_64::@main_graph$async_dispatch_2_matvec_like_2x32_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer)[%c0, %c256], 
        (%main_graph$async_dispatch_2_system_elf_riscv_64_main_graph$async_dispatch_2_matvec_like_2x32_f32_buffer : !hal.buffer)[%c256, %c8]
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
