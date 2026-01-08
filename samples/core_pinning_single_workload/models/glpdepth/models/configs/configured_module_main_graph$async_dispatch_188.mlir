hal.executable public @main_graph$async_dispatch_188 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_188_matmul_like_64x49x256_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_188_matmul_like_64x49x256_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[0.0519773513, 0.035020031, -0.0248165876, -0.0619243532, -0.035640493, -0.0364250243, -0.0191995502, 0.0268615633, 0.0601253509, 0.0188686028, -0.0552424714, -0.0571239516, 0.00274442136, -0.0558762923, -0.0357214883, 3.774540e-02, 0.0365219638, -0.0280942023, 0.058123447, 0.0120057091, 0.0263864771, 0.00503336638, -0.0592713729, -0.0285102725, 0.0601389185, -0.0185296237, 0.00763516873, -0.0564279929, 0.0382555872, 0.0206245035, 0.008427307, -0.0526017472, 0.0280764401, -0.0503210053, -0.0164560676, 0.0246852189, 0.00997344404, -0.0299584717, 0.0221346021, -0.00842375308, 0.0480810553, 0.0490748584, -7.437490e-03, -0.0561741441, -0.0496263802, 0.013487339, -0.00725095719, -0.0596341267, 0.0179620311, 0.0208961442, -0.047272481, 0.0204265267, -0.0390048102, 0.0189980417, 0.00496443361, -0.00956587493, 0.020548813, 0.0372719094, -0.0412337705, -0.0624615699, -0.0164577216, 0.0203517824, -0.0452183038, -0.0237416327]> : tensor<64xf32>
        %c526848 = arith.constant 526848 : index
        %c13716352 = arith.constant 13716352 : index
        %c577024 = arith.constant 577024 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c526848) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x49xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c13716352) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c577024) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x49xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [256, 49], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x49xf32>> -> tensor<256x49xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xf32>> -> tensor<64x256xf32>
        %5 = tensor.empty() : tensor<64x49xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [8, 32], vector_common_parallel = [7, 16]>} ins(%cst : f32) outs(%5 : tensor<64x49xf32>) -> tensor<64x49xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3, %4 : tensor<256x49xf32>, tensor<64x256xf32>) outs(%6 : tensor<64x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [8, 32, 0], distribution = [8, 32, 0], vector_common_parallel = [7, 16, 0], vector_reduction = [0, 0, 1]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<64x49xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x49xf32>, tensor<64xf32>) outs(%5 : tensor<64x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [8, 32], vector_common_parallel = [7, 16]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          linalg.yield %9 : f32
        } -> tensor<64x49xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0], sizes = [64, 49], strides = [1, 1] : tensor<64x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x49xf32>>
        return
      }
    }
  }
}
