hal.executable public @main_graph$async_dispatch_204 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_204_matmul_like_64x3136x32_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_204_matmul_like_64x3136x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.156348914, -0.17160055, -0.0157871563, -0.0911577716, -0.0653243512, -0.00161327596, -0.153687954, -0.150334269, -0.147996396, 0.159411028, 0.0802983046, 0.157164663, 0.130648553, -0.162340894, 0.0542063452, 0.0879192948, 0.055365067, -0.144299388, 0.0833589211, -0.11568094, -0.133765101, -0.144100025, 0.0365340672, 0.103309155, -0.155844063, -0.0352380723, 0.0836098641, 0.115761884, 0.148828343, -0.0979073196, 0.161389947, -0.10274601, 0.09526515, -0.0686382055, -0.0715552121, 0.05554571, 0.170983821, 0.0402830094, -0.0636528656, -0.148398697, 8.417370e-02, -0.0974291414, -0.0628928319, 0.029570017, 0.0192348938, 0.0283794533, -0.168780342, -0.0994825363, -0.0201399773, -0.0047457139, -0.14925541, 0.0998576432, -0.0315062851, 0.0766608417, 0.11130517, -0.0955453887, -7.031230e-02, -0.118515752, 0.108114883, 0.0675424337, 0.150893092, -0.136936799, -0.0409650095, 0.0774227902]> : tensor<64xf32>
        %c0 = arith.constant 0 : index
        %c13839232 = arith.constant 13839232 : index
        %c1204224 = arith.constant 1204224 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x3136xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c13839232) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1204224) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x3136xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [32, 3136], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x3136xf32>> -> tensor<32x3136xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
        %5 = tensor.empty() : tensor<64x3136xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 64], vector_common_parallel = [7, 16]>} ins(%cst : f32) outs(%5 : tensor<64x3136xf32>) -> tensor<64x3136xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3, %4 : tensor<32x3136xf32>, tensor<64x32xf32>) outs(%6 : tensor<64x3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 64, 0], distribution = [64, 64, 0], vector_common_parallel = [7, 16, 0], vector_reduction = [0, 0, 1]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<64x3136xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x3136xf32>, tensor<64xf32>) outs(%5 : tensor<64x3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 64], vector_common_parallel = [7, 16]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          linalg.yield %9 : f32
        } -> tensor<64x3136xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0], sizes = [64, 3136], strides = [1, 1] : tensor<64x3136xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x3136xf32>>
        return
      }
    }
  }
}
