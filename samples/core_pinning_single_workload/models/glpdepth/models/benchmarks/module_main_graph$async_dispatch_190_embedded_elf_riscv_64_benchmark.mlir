module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @main_graph$async_dispatch_190 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @main_graph$async_dispatch_190_matmul_like_64x196x160_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main_graph$async_dispatch_190_matmul_like_64x196x160_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
          %cst = arith.constant 0.000000e+00 : f32
          %cst_0 = arith.constant dense<[-0.0748867467, -0.0490376204, 0.065813072, -0.0360482559, -0.0667812899, -0.0493693091, -0.0330763459, -0.0385485664, 0.00118464662, -0.00809840485, -0.0188730899, -0.013678913, 0.0246859081, 0.0349069238, 0.015663242, -0.0692416579, 0.0623664595, -0.00348164607, 0.0362689644, -0.0101289311, 0.0548746772, -0.0695376322, 0.0754584596, 0.0240424052, -0.0349909216, 7.875180e-02, -0.0385105796, 0.0539405383, -0.0578580312, 0.0395031944, -0.0479867049, 0.0401016474, -0.0243873559, -0.0206723344, -0.0611641221, -0.0139772305, -0.0586264059, -0.0113202883, 0.0604960136, 0.0569241866, 0.061473392, 0.0570794232, 0.0581772625, 0.0505205952, 0.0738195628, 0.0197856855, -0.0173393469, -0.0754380226, -0.0460214503, 0.0131793199, -0.0504488386, -0.010700535, -0.050544776, 0.0389149301, -0.00319972681, -0.0520818383, -7.302130e-02, -0.065700233, -0.0244652182, 0.0489152819, -4.712750e-02, 0.0586038083, 0.0447239876, -0.0662637278]> : tensor<64xf32>
          %c401408 = arith.constant 401408 : index
          %c13781888 = arith.constant 13781888 : index
          %c589568 = arith.constant 589568 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x196xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c13781888) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x160xf32>>
          %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c589568) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x196xf32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [160, 196], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x196xf32>> -> tensor<160x196xf32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x160xf32>> -> tensor<64x160xf32>
          %5 = tensor.empty() : tensor<64x196xf32>
          %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [16, 49], vector_common_parallel = [7, 16]>} ins(%cst : f32) outs(%5 : tensor<64x196xf32>) -> tensor<64x196xf32>
          %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3, %4 : tensor<160x196xf32>, tensor<64x160xf32>) outs(%6 : tensor<64x196xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [16, 49, 0], distribution = [16, 49, 0], vector_common_parallel = [7, 16, 0], vector_reduction = [0, 0, 1]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.mulf %in, %in_1 : f32
            %10 = arith.addf %out, %9 : f32
            linalg.yield %10 : f32
          } -> tensor<64x196xf32>
          %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x196xf32>, tensor<64xf32>) outs(%5 : tensor<64x196xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [16, 49], vector_common_parallel = [7, 16]>} {
          ^bb0(%in: f32, %in_1: f32, %out: f32):
            %9 = arith.addf %in, %in_1 : f32
            linalg.yield %9 : f32
          } -> tensor<64x196xf32>
          iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0], sizes = [64, 196], strides = [1, 1] : tensor<64x196xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x196xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c78955776 = arith.constant 78955776 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer = util.global.load @main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_190::@embedded_elf_riscv_64::@main_graph$async_dispatch_190_matmul_like_64x196x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_190) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_190::@embedded_elf_riscv_64::@main_graph$async_dispatch_190_matmul_like_64x196x160_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
        (%main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
        (%main_graph$async_dispatch_190_embedded_elf_riscv_64_main_graph$async_dispatch_190_matmul_like_64x196x160_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
