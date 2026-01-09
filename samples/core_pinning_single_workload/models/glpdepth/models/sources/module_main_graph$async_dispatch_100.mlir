hal.executable public @main_graph$async_dispatch_100 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_100_reduction_196x160_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_100_reduction_196x160_f32() {
        %cst = arith.constant 1.600000e+02 : f32
        %cst_0 = arith.constant 9.99999974E-6 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %cst_2 = arith.constant 9.99999997E-7 : f32
        %c526848 = arith.constant 526848 : index
        %c401408 = arith.constant 401408 : index
        %c652288 = arith.constant 652288 : index
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c526848) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x196xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c652288) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
        %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
        %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>> -> tensor<196x160xf32>
        %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [160, 196], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x196xf32>> -> tensor<160x196xf32>
        %6 = tensor.empty() : tensor<196x160xf32>
        %7 = tensor.empty() : tensor<196xf32>
        %8 = linalg.fill ins(%cst_1 : f32) outs(%7 : tensor<196xf32>) -> tensor<196xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%4 : tensor<196x160xf32>) outs(%8 : tensor<196xf32>) {
        ^bb0(%in: f32, %out: f32):
          %17 = arith.addf %in, %out : f32
          linalg.yield %17 : f32
        } -> tensor<196xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%5, %9 : tensor<160x196xf32>, tensor<196xf32>) outs(%6 : tensor<196x160xf32>) {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %17 = arith.divf %in_3, %cst : f32
          %18 = arith.subf %in, %17 : f32
          linalg.yield %18 : f32
        } -> tensor<196x160xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%10 : tensor<196x160xf32>) outs(%8 : tensor<196xf32>) {
        ^bb0(%in: f32, %out: f32):
          %17 = arith.mulf %in, %in : f32
          %18 = arith.addf %17, %out : f32
          linalg.yield %18 : f32
        } -> tensor<196xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%10, %11 : tensor<196x160xf32>, tensor<196xf32>) outs(%6 : tensor<196x160xf32>) {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %17 = arith.divf %in_3, %cst : f32
          %18 = arith.addf %17, %cst_0 : f32
          %19 = math.rsqrt %18 : f32
          %20 = arith.mulf %in, %19 : f32
          %21 = arith.addf %20, %cst_1 : f32
          linalg.yield %21 : f32
        } -> tensor<196x160xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%12 : tensor<196x160xf32>) outs(%8 : tensor<196xf32>) {
        ^bb0(%in: f32, %out: f32):
          %17 = arith.addf %in, %out : f32
          linalg.yield %17 : f32
        } -> tensor<196xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%12, %13 : tensor<196x160xf32>, tensor<196xf32>) outs(%6 : tensor<196x160xf32>) {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %17 = arith.divf %in_3, %cst : f32
          %18 = arith.subf %in, %17 : f32
          linalg.yield %18 : f32
        } -> tensor<196x160xf32>
        %15 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%14 : tensor<196x160xf32>) outs(%8 : tensor<196xf32>) {
        ^bb0(%in: f32, %out: f32):
          %17 = arith.mulf %in, %in : f32
          %18 = arith.addf %17, %out : f32
          linalg.yield %18 : f32
        } -> tensor<196xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%14, %15 : tensor<196x160xf32>, tensor<196xf32>) outs(%6 : tensor<196x160xf32>) {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %17 = arith.divf %in_3, %cst : f32
          %18 = arith.addf %17, %cst_2 : f32
          %19 = math.rsqrt %18 : f32
          %20 = arith.mulf %in, %19 : f32
          %21 = arith.addf %20, %cst_1 : f32
          linalg.yield %21 : f32
        } -> tensor<196x160xf32>
        iree_tensor_ext.dispatch.tensor.store %12, %2, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : tensor<196x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
        iree_tensor_ext.dispatch.tensor.store %16, %3, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : tensor<196x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<196x160xf32>>
        return
      }
    }
  }
}
