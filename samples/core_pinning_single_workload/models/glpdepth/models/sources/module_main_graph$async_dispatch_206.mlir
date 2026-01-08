hal.executable public @main_graph$async_dispatch_206 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[0.0172930621, -0.00134235981, 8.75238155E-4, 0.0120614367, -0.00739884889, 0.00968477782, 6.3423664E-5, 0.0164195336, 0.00516464887, 0.0129958559, -0.0250310861, -0.00708187139, -2.79836124E-4, -0.00164426328, -0.0081059048, -0.0129927332, 2.718010e-02, -0.00340513582, 0.00735799503, 4.45409154E-4, 0.00164488133, 0.0119027197, 0.0222565606, 0.00859456323, -0.021469472, -0.017538242, -0.0109796524, 0.0189730916, 0.0155779412, 0.0264282767, -0.0186399799, -0.00254831207, -0.00311517739, 0.00685905619, -0.00278152712, 0.0211544298, 0.013318467, 0.0250967685, -0.0149505222, -0.0162949823, -0.00479251146, 2.202190e-03, 0.0108546633, -0.00962431077, 0.0250827968, 0.0156157054, 0.0128867775, 0.022866305, 0.0133225871, 0.0182020888, 0.0122047672, -0.0294233188, 6.52366725E-4, -0.0205670968, -0.0261930153, -0.00366725959, -0.0140920579, -4.97962523E-4, 0.029233275, 0.0221376959, -0.0154047431, -0.0229184236, -0.0281268805, -0.0109335575]> : tensor<64xf32>
        %c3612672 = arith.constant 3612672 : index
        %c8728576 = arith.constant 8728576 : index
        %c5335040 = arith.constant 5335040 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c3612672) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x58x58xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c8728576) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c5335040) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x58x58xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [128, 58, 58], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x58x58xf32>> -> tensor<128x58x58xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 128, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>> -> tensor<64x128x3x3xf32>
        %5 = tensor.empty() : tensor<64x56x56xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<64x56x56xf32>) -> tensor<64x56x56xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<128x58x58xf32>, tensor<64x128x3x3xf32>) outs(%6 : tensor<64x56x56xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<64x56x56xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x56x56xf32>, tensor<64xf32>) outs(%5 : tensor<64x56x56xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          %10 = arith.cmpf ugt, %9, %cst : f32
          %11 = arith.select %10, %9, %cst : f32
          linalg.yield %11 : f32
        } -> tensor<64x56x56xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [64, 56, 56], strides = [1, 1, 1] : tensor<64x56x56xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x58x58xf32>>
        return
      }
    }
  }
}
