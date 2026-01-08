hal.executable public @main_graph$async_dispatch_205 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_205_slow_memcpy ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_205_slow_memcpy() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUBufferOpsTileAndVectorize>} {
        %c2007040 = arith.constant 2007040 : index
        %c3612672 = arith.constant 3612672 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2007040) flags("ReadOnly|Indirect") : memref<128x56x56xf32, strided<[3136, 56, 1], offset: ?>>
        %assume_align = memref.assume_alignment %0, 64 : memref<128x56x56xf32, strided<[3136, 56, 1], offset: ?>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c3612672) flags(Indirect) : memref<128x58x58xf32, strided<[3364, 58, 1], offset: ?>>
        %assume_align_0 = memref.assume_alignment %1, 64 : memref<128x58x58xf32, strided<[3364, 58, 1], offset: ?>>
        %subview = memref.subview %assume_align_0[0, 1, 1] [128, 56, 56] [1, 1, 1] : memref<128x58x58xf32, strided<[3364, 58, 1], offset: ?>> to memref<128x56x56xf32, strided<[3364, 58, 1], offset: ?>>
        linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%assume_align : memref<128x56x56xf32, strided<[3136, 56, 1], offset: ?>>) outs(%subview : memref<128x56x56xf32, strided<[3364, 58, 1], offset: ?>>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [16, 28, 56], vector_common_parallel = [1, 1, 8]>} {
        ^bb0(%in: f32, %out: f32):
          linalg.yield %in : f32
        }
        return
      }
    }
  }
}
