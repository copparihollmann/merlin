// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @jit_eval_7_dispatch_0_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c0 = arith.constant 0 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<1x64x128xi8, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : memref<1x16x32x8x2xi8, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<1x64x128xi8, #hal.descriptor_type<storage_buffer>> -> tensor<1x64x128xi8>
  %3 = tensor.empty() : tensor<1x16x32x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (16, 32) step (1, 2) shared_outs(%arg2 = %3) -> (tensor<1x16x32x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %6 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg0)
    %extracted_slice = tensor.extract_slice %2[0, %5, %6] [1, 4, 8] [1, 1, 1] : tensor<1x64x128xi8> to tensor<1x4x8xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x16x32x8x2xi8> to tensor<1x1x2x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [8, 2] into %extracted_slice_0 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 2], vector_common_parallel = [1, 1, 1]>} : tensor<1x4x8xi8> -> tensor<1x1x2x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x1x2x8x2xi8> into tensor<1x16x32x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<1x16x32x8x2xi8> into memref<1x16x32x8x2xi8, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @jit_eval_9_dispatch_0_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c0 = arith.constant 0 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<1x128x64xi8, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : memref<1x8x64x8x2xi8, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<1x128x64xi8, #hal.descriptor_type<storage_buffer>> -> tensor<1x128x64xi8>
  %3 = tensor.empty() : tensor<1x8x64x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (8, 64) step (1, 4) shared_outs(%arg2 = %3) -> (tensor<1x8x64x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %6 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg0)
    %extracted_slice = tensor.extract_slice %2[0, %5, %6] [1, 8, 8] [1, 1, 1] : tensor<1x128x64xi8> to tensor<1x8x8xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<1x8x64x8x2xi8> to tensor<1x1x4x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [8, 2] into %extracted_slice_0 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 4], vector_common_parallel = [1, 1, 1]>} : tensor<1x8x8xi8> -> tensor<1x1x4x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<1x1x4x8x2xi8> into tensor<1x8x64x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<1x8x64x8x2xi8> into memref<1x8x64x8x2xi8, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @jit_eval_5_dispatch_0_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c0 = arith.constant 0 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<64x64xi8, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : memref<8x32x8x2xi8, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<64x64xi8, #hal.descriptor_type<storage_buffer>> -> tensor<64x64xi8>
  %3 = tensor.empty() : tensor<8x32x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (8, 32) step (1, 8) shared_outs(%arg2 = %3) -> (tensor<8x32x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg0)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %extracted_slice = tensor.extract_slice %2[%5, %6] [8, 16] [1, 1] : tensor<64x64xi8> to tensor<8x16xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg0, %arg1, 0, 0] [1, 8, 8, 2] [1, 1, 1, 1] : tensor<8x32x8x2xi8> to tensor<1x8x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 8], vector_common_parallel = [1, 1]>} : tensor<8x16xi8> -> tensor<1x8x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[%arg0, %arg1, 0, 0] [1, 8, 8, 2] [1, 1, 1, 1] : tensor<1x8x8x2xi8> into tensor<8x32x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<8x32x8x2xi8> into memref<8x32x8x2xi8, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_2_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c1024 = arith.constant 1024 : index
  %c2048 = arith.constant 2048 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1024) flags("ReadOnly|Indirect") : memref<16x1x64xi8, strided<[64, 64, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2048) flags(Indirect) : memref<16x1x32x1x2xi8, strided<[64, 64, 2, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<16x1x64xi8, strided<[64, 64, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<16x1x64xi8>
  %3 = tensor.empty() : tensor<16x1x32x1x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (16, 32) step (2, 8) shared_outs(%arg2 = %3) -> (tensor<16x1x32x1x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %extracted_slice = tensor.extract_slice %2[%arg0, 0, %5] [2, 1, 16] [1, 1, 1] : tensor<16x1x64xi8> to tensor<2x1x16xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg0, 0, %arg1, 0, 0] [2, 1, 8, 1, 2] [1, 1, 1, 1, 1] : tensor<16x1x32x1x2xi8> to tensor<2x1x8x1x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1, 2] inner_dims_pos = [1, 2] inner_tiles = [1, 2] into %extracted_slice_0 {lowering_config = #iree_cpu.lowering_config<distribution = [2, 1, 8], vector_common_parallel = [1, 1, 1]>} : tensor<2x1x16xi8> -> tensor<2x1x8x1x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[%arg0, 0, %arg1, 0, 0] [2, 1, 8, 1, 2] [1, 1, 1, 1, 1] : tensor<2x1x8x1x2xi8> into tensor<16x1x32x1x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<16x1x32x1x2xi8> into memref<16x1x32x1x2xi8, strided<[64, 64, 2, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_8_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c2048 = arith.constant 2048 : index
  %c4096 = arith.constant 4096 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2048) flags("ReadOnly|Indirect") : memref<8x16x8xi8, strided<[128, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c4096) flags(Indirect) : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<8x16x8xi8, strided<[128, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x16x8xi8>
  %3 = tensor.empty() : tensor<8x2x4x8x2xi8>
  %4 = scf.forall (%arg0, %arg1, %arg2) = (0, 0, 0) to (8, 2, 4) step (1, 1, 2) shared_outs(%arg3 = %3) -> (tensor<8x2x4x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg1)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg2)
    %extracted_slice = tensor.extract_slice %2[%arg0, %5, %6] [1, 8, 4] [1, 1, 1] : tensor<8x16x8xi8> to tensor<8x4xi8>
    %extracted_slice_0 = tensor.extract_slice %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x4x8x2xi8> to tensor<1x2x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 : tensor<8x4xi8> -> tensor<1x2x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x8x2xi8> into tensor<8x2x4x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<8x2x4x8x2xi8> into memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_9_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c3072 = arith.constant 3072 : index
  %c5120 = arith.constant 5120 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c3072) flags("ReadOnly|Indirect") : memref<16x8x8xi8, strided<[64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c5120) flags(Indirect) : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<16x8x8xi8, strided<[64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<16x8x8xi8>
  %3 = tensor.empty() : tensor<8x2x4x8x2xi8>
  %4 = scf.forall (%arg0, %arg1, %arg2) = (0, 0, 0) to (8, 2, 4) step (1, 1, 2) shared_outs(%arg3 = %3) -> (tensor<8x2x4x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg1)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg2)
    %extracted_slice = tensor.extract_slice %2[%5, %arg0, %6] [8, 1, 4] [1, 1, 1] : tensor<16x8x8xi8> to tensor<8x4xi8>
    %extracted_slice_0 = tensor.extract_slice %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x4x8x2xi8> to tensor<1x2x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 : tensor<8x4xi8> -> tensor<1x2x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x8x2xi8> into tensor<8x2x4x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<8x2x4x8x2xi8> into memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_3_batch_mmt4d_16x1x24x32x1x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0 = arith.constant 0 : index
  %c0_i32 = arith.constant 0 : i32
  %c2048 = arith.constant 2048 : index
  %c13312 = arith.constant 13312 : index
  %c3072 = arith.constant 3072 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2048) flags("ReadOnly|Indirect") : memref<16x1x32x1x2xi8, strided<[64, 64, 2, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c13312) flags(ReadOnly) : memref<16x24x32x8x2xi8, strided<[12288, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c3072) flags(Indirect) : memref<16x1x24x1x8xi32, strided<[192, 192, 8, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<16x1x32x1x2xi8, strided<[64, 64, 2, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<16x1x32x1x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<16x24x32x8x2xi8, strided<[12288, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<16x24x32x8x2xi8>
  %5 = tensor.empty() : tensor<16x1x24x1x8xi32>
  %6 = scf.forall (%arg0) in (16) shared_outs(%arg1 = %5) -> (tensor<16x1x24x1x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0, 0, 0, 0] [1, 1, 24, 1, 8] [1, 1, 1, 1, 1] : tensor<16x1x24x1x8xi32> to tensor<1x1x24x1x8xi32>
    %7 = scf.forall (%arg2) in (24) shared_outs(%arg3 = %extracted_slice) -> (tensor<1x1x24x1x8xi32>) {
      %extracted_slice_0 = tensor.extract_slice %arg3[0, 0, %arg2, 0, 0] [1, 1, 1, 1, 8] [1, 1, 1, 1, 1] : tensor<1x1x24x1x8xi32> to tensor<1x1x1x8xi32>
      %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 1]>} ins(%c0_i32 : i32) outs(%extracted_slice_0 : tensor<1x1x1x8xi32>) -> tensor<1x1x1x8xi32>
      %extracted_slice_1 = tensor.extract_slice %3[%arg0, 0, 0, 0, 0] [1, 1, 32, 1, 2] [1, 1, 1, 1, 1] : tensor<16x1x32x1x2xi8> to tensor<1x32x1x2xi8>
      %extracted_slice_2 = tensor.extract_slice %4[%arg0, %arg2, 0, 0, 0] [1, 1, 32, 8, 2] [1, 1, 1, 1, 1] : tensor<16x24x32x8x2xi8> to tensor<1x32x8x2xi8>
      %9 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 24, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 1, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_1, %extracted_slice_2 : tensor<1x32x1x2xi8>, tensor<1x32x8x2xi8>) outs(%8 : tensor<1x1x1x8xi32>) -> tensor<1x1x1x8xi32>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %9 into %arg3[%c0, %c0, %arg2, %c0, %c0] [1, 1, 1, 1, 8] [1, 1, 1, 1, 1] : tensor<1x1x1x8xi32> into tensor<1x1x24x1x8xi32>
      }
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg1[%arg0, 0, 0, 0, 0] [1, 1, 24, 1, 8] [1, 1, 1, 1, 1] : tensor<1x1x24x1x8xi32> into tensor<16x1x24x1x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<16x1x24x1x8xi32> into memref<16x1x24x1x8xi32, strided<[192, 192, 8, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_10_batch_mmt4d_8x2x2x4x8x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0 = arith.constant 0 : index
  %c0_i32 = arith.constant 0 : i32
  %c4096 = arith.constant 4096 : index
  %c5120 = arith.constant 5120 : index
  %c6144 = arith.constant 6144 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c4096) flags("ReadOnly|Indirect") : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c5120) flags("ReadOnly|Indirect") : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c6144) flags(Indirect) : memref<8x2x2x8x8xi32, strided<[256, 128, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x2x4x8x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<8x2x4x8x2xi8, strided<[128, 64, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x2x4x8x2xi8>
  %5 = tensor.empty() : tensor<8x2x2x8x8xi32>
  %6 = scf.forall (%arg0, %arg1) in (8, 2) shared_outs(%arg2 = %5) -> (tensor<8x2x2x8x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg2[%arg0, %arg1, 0, 0, 0] [1, 1, 2, 8, 8] [1, 1, 1, 1, 1] : tensor<8x2x2x8x8xi32> to tensor<1x1x2x8x8xi32>
    %7 = scf.forall (%arg3) in (2) shared_outs(%arg4 = %extracted_slice) -> (tensor<1x1x2x8x8xi32>) {
      %extracted_slice_0 = tensor.extract_slice %arg4[0, 0, %arg3, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x2x8x8xi32> to tensor<1x1x8x8xi32>
      %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 8]>} ins(%c0_i32 : i32) outs(%extracted_slice_0 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
      %extracted_slice_1 = tensor.extract_slice %3[%arg0, %arg1, 0, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x4x8x2xi8> to tensor<1x4x8x2xi8>
      %extracted_slice_2 = tensor.extract_slice %4[%arg0, %arg3, 0, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x4x8x2xi8> to tensor<1x4x8x2xi8>
      %9 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 2, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_1, %extracted_slice_2 : tensor<1x4x8x2xi8>, tensor<1x4x8x2xi8>) outs(%8 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %9 into %arg4[%c0, %c0, %arg3, %c0, %c0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x8x8xi32> into tensor<1x1x2x8x8xi32>
      }
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg2[%arg0, %arg1, 0, 0, 0] [1, 1, 2, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x2x8x8xi32> into tensor<8x2x2x8x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<8x2x2x8x8xi32> into memref<8x2x2x8x8xi32, strided<[256, 128, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_15_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c2048 = arith.constant 2048 : index
  %c4096 = arith.constant 4096 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2048) flags("ReadOnly|Indirect") : memref<8x16x16xi8, strided<[256, 16, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c4096) flags(Indirect) : memref<8x2x8x8x2xi8, strided<[256, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<8x16x16xi8, strided<[256, 16, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x16x16xi8>
  %3 = tensor.empty() : tensor<8x2x8x8x2xi8>
  %4 = scf.forall (%arg0, %arg1, %arg2) = (0, 0, 0) to (8, 2, 8) step (1, 1, 4) shared_outs(%arg3 = %3) -> (tensor<8x2x8x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg1)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg2)
    %extracted_slice = tensor.extract_slice %2[%arg0, %5, %6] [1, 8, 8] [1, 1, 1] : tensor<8x16x16xi8> to tensor<8x8xi8>
    %extracted_slice_0 = tensor.extract_slice %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x8x8x2xi8> to tensor<1x4x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 : tensor<8x8xi8> -> tensor<1x4x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg3[%arg0, %arg1, %arg2, 0, 0] [1, 1, 4, 8, 2] [1, 1, 1, 1, 1] : tensor<1x4x8x2xi8> into tensor<8x2x8x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<8x2x8x8x2xi8> into memref<8x2x8x8x2xi8, strided<[256, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_16_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c1024 = arith.constant 1024 : index
  %c6144 = arith.constant 6144 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1024) flags("ReadOnly|Indirect") : memref<8x16x8xi8, strided<[128, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c6144) flags(Indirect) : memref<8x1x8x8x2xi8, strided<[128, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<8x16x8xi8, strided<[128, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x16x8xi8>
  %3 = tensor.empty() : tensor<8x1x8x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) in (8, 8) shared_outs(%arg2 = %3) -> (tensor<8x1x8x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %extracted_slice = tensor.extract_slice %2[%arg0, %5, 0] [1, 2, 8] [1, 1, 1] : tensor<8x16x8xi8> to tensor<2x8xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg0, 0, %arg1, 0, 0] [1, 1, 1, 8, 2] [1, 1, 1, 1, 1] : tensor<8x1x8x8x2xi8> to tensor<1x1x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [8, 2] into %extracted_slice_0 : tensor<2x8xi8> -> tensor<1x1x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[%arg0, 0, %arg1, 0, 0] [1, 1, 1, 8, 2] [1, 1, 1, 1, 1] : tensor<1x1x8x2xi8> into tensor<8x1x8x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<8x1x8x8x2xi8> into memref<8x1x8x8x2xi8, strided<[128, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_17_batch_mmt4d_8x1x2x8x8x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0_i32 = arith.constant 0 : i32
  %c6144 = arith.constant 6144 : index
  %c4096 = arith.constant 4096 : index
  %c7168 = arith.constant 7168 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c6144) flags("ReadOnly|Indirect") : memref<8x1x8x8x2xi8, strided<[128, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c4096) flags("ReadOnly|Indirect") : memref<8x2x8x8x2xi8, strided<[256, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c7168) flags(Indirect) : memref<8x1x2x8x8xi32, strided<[128, 128, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<8x1x8x8x2xi8, strided<[128, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x1x8x8x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<8x2x8x8x2xi8, strided<[256, 128, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x2x8x8x2xi8>
  %5 = tensor.empty() : tensor<8x1x2x8x8xi32>
  %6 = scf.forall (%arg0, %arg1) in (8, 2) shared_outs(%arg2 = %5) -> (tensor<8x1x2x8x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg2[%arg0, 0, %arg1, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<8x1x2x8x8xi32> to tensor<1x1x8x8xi32>
    %7 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 8]>} ins(%c0_i32 : i32) outs(%extracted_slice : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    %extracted_slice_0 = tensor.extract_slice %3[%arg0, 0, 0, 0, 0] [1, 1, 8, 8, 2] [1, 1, 1, 1, 1] : tensor<8x1x8x8x2xi8> to tensor<1x8x8x2xi8>
    %extracted_slice_1 = tensor.extract_slice %4[%arg0, %arg1, 0, 0, 0] [1, 1, 8, 8, 2] [1, 1, 1, 1, 1] : tensor<8x2x8x8x2xi8> to tensor<1x8x8x2xi8>
    %8 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_0, %extracted_slice_1 : tensor<1x8x8x2xi8>, tensor<1x8x8x2xi8>) outs(%7 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %8 into %arg2[%arg0, 0, %arg1, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x8x8xi32> into tensor<8x1x2x8x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<8x1x2x8x8xi32> into memref<8x1x2x8x8xi32, strided<[128, 128, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_21_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c1024 = arith.constant 1024 : index
  %c2048 = arith.constant 2048 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1024) flags("ReadOnly|Indirect") : memref<16x64xi8, strided<[64, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2048) flags(Indirect) : memref<2x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<16x64xi8, strided<[64, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<16x64xi8>
  %3 = tensor.empty() : tensor<2x32x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (2, 32) step (1, 2) shared_outs(%arg2 = %3) -> (tensor<2x32x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg0)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %extracted_slice = tensor.extract_slice %2[%5, %6] [8, 4] [1, 1] : tensor<16x64xi8> to tensor<8x4xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg0, %arg1, 0, 0] [1, 2, 8, 2] [1, 1, 1, 1] : tensor<2x32x8x2xi8> to tensor<1x2x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 2], vector_common_parallel = [1, 1]>} : tensor<8x4xi8> -> tensor<1x2x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[%arg0, %arg1, 0, 0] [1, 2, 8, 2] [1, 1, 1, 1] : tensor<1x2x8x2xi8> into tensor<2x32x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<2x32x8x2xi8> into memref<2x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_22_mmt4d_2x8x32x8x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0_i32 = arith.constant 0 : i32
  %c2048 = arith.constant 2048 : index
  %c209920 = arith.constant 209920 : index
  %c3072 = arith.constant 3072 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2048) flags("ReadOnly|Indirect") : memref<2x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c209920) flags(ReadOnly) : memref<8x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c3072) flags(Indirect) : memref<2x8x8x8xi32, strided<[512, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<2x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<2x32x8x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<8x32x8x2xi8, strided<[512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<8x32x8x2xi8>
  %5 = tensor.empty() : tensor<2x8x8x8xi32>
  %6 = scf.forall (%arg0, %arg1) in (2, 8) shared_outs(%arg2 = %5) -> (tensor<2x8x8x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg2[%arg0, %arg1, 0, 0] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<2x8x8x8xi32> to tensor<1x1x8x8xi32>
    %extracted_slice_0 = tensor.extract_slice %3[%arg0, 0, 0, 0] [1, 32, 8, 2] [1, 1, 1, 1] : tensor<2x32x8x2xi8> to tensor<1x32x8x2xi8>
    %extracted_slice_1 = tensor.extract_slice %4[%arg1, 0, 0, 0] [1, 32, 8, 2] [1, 1, 1, 1] : tensor<8x32x8x2xi8> to tensor<1x32x8x2xi8>
    %7 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 8]>} ins(%c0_i32 : i32) outs(%extracted_slice : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    %8 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_0, %extracted_slice_1 : tensor<1x32x8x2xi8>, tensor<1x32x8x2xi8>) outs(%7 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %8 into %arg2[%arg0, %arg1, 0, 0] [1, 1, 8, 8] [1, 1, 1, 1] : tensor<1x1x8x8xi32> into tensor<2x8x8x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<2x8x8x8xi32> into memref<2x8x8x8xi32, strided<[512, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_26_pack_i8() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
  %c0 = arith.constant 0 : index
  %c1024 = arith.constant 1024 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<1x16x64xi8, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1024) flags(Indirect) : memref<1x2x32x8x2xi8, strided<[1024, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = iree_codegen.load_from_buffer %0 : memref<1x16x64xi8, #hal.descriptor_type<storage_buffer>> -> tensor<1x16x64xi8>
  %3 = tensor.empty() : tensor<1x2x32x8x2xi8>
  %4 = scf.forall (%arg0, %arg1) = (0, 0) to (2, 32) step (1, 2) shared_outs(%arg2 = %3) -> (tensor<1x2x32x8x2xi8>) {
    %5 = affine.apply affine_map<(d0) -> (d0 * 8)>(%arg0)
    %6 = affine.apply affine_map<(d0) -> (d0 * 2)>(%arg1)
    %extracted_slice = tensor.extract_slice %2[0, %5, %6] [1, 8, 4] [1, 1, 1] : tensor<1x16x64xi8> to tensor<8x4xi8>
    %extracted_slice_0 = tensor.extract_slice %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x32x8x2xi8> to tensor<1x2x8x2xi8>
    %pack = linalg.pack %extracted_slice outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 2] into %extracted_slice_0 : tensor<8x4xi8> -> tensor<1x2x8x2xi8>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %pack into %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x8x2xi8> into tensor<1x2x32x8x2xi8>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %4, %1 : tensor<1x2x32x8x2xi8> into memref<1x2x32x8x2xi8, strided<[1024, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_27_batch_mmt4d_1x2x16x32x8x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0 = arith.constant 0 : index
  %c0_i32 = arith.constant 0 : i32
  %c1024 = arith.constant 1024 : index
  %c214016 = arith.constant 214016 : index
  %c2048 = arith.constant 2048 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1024) flags("ReadOnly|Indirect") : memref<1x2x32x8x2xi8, strided<[1024, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c214016) flags(ReadOnly) : memref<1x16x32x8x2xi8, strided<[8192, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c2048) flags(Indirect) : memref<1x2x16x8x8xi32, strided<[2048, 1024, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<1x2x32x8x2xi8, strided<[1024, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<1x2x32x8x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<1x16x32x8x2xi8, strided<[8192, 512, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<1x16x32x8x2xi8>
  %5 = tensor.empty() : tensor<1x2x16x8x8xi32>
  %6 = scf.forall (%arg0, %arg1) = (0, 0) to (2, 16) step (1, 2) shared_outs(%arg2 = %5) -> (tensor<1x2x16x8x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 8] [1, 1, 1, 1, 1] : tensor<1x2x16x8x8xi32> to tensor<1x1x2x8x8xi32>
    %7 = scf.forall (%arg3) in (2) shared_outs(%arg4 = %extracted_slice) -> (tensor<1x1x2x8x8xi32>) {
      %extracted_slice_0 = tensor.extract_slice %arg4[0, 0, %arg3, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x2x8x8xi32> to tensor<1x1x8x8xi32>
      %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 8]>} ins(%c0_i32 : i32) outs(%extracted_slice_0 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
      %extracted_slice_1 = tensor.extract_slice %3[0, %arg0, 0, 0, 0] [1, 1, 32, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x32x8x2xi8> to tensor<1x32x8x2xi8>
      %9 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg3, %arg1]
      %extracted_slice_2 = tensor.extract_slice %4[0, %9, 0, 0, 0] [1, 1, 32, 8, 2] [1, 1, 1, 1, 1] : tensor<1x16x32x8x2xi8> to tensor<1x32x8x2xi8>
      %10 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 2, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_1, %extracted_slice_2 : tensor<1x32x8x2xi8>, tensor<1x32x8x2xi8>) outs(%8 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %10 into %arg4[%c0, %c0, %arg3, %c0, %c0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x8x8xi32> into tensor<1x1x2x8x8xi32>
      }
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 2, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x2x8x8xi32> into tensor<1x2x16x8x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<1x2x16x8x8xi32> into memref<1x2x16x8x8xi32, strided<[2048, 1024, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

// -----// IR Dump Before CPULowerToUKernelsPass (iree-codegen-cpu-lower-to-ukernels) //----- //
func.func @main_graph$async_dispatch_29_batch_mmt4d_1x2x8x64x8x8x2_i8xi8xi32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
  %c0_i32 = arith.constant 0 : i32
  %c10240 = arith.constant 10240 : index
  %c222720 = arith.constant 222720 : index
  %c1024 = arith.constant 1024 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c10240) flags("ReadOnly|Indirect") : memref<1x2x64x8x2xi8, strided<[2048, 1024, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c222720) flags(ReadOnly) : memref<1x8x64x8x2xi8, strided<[8192, 1024, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1024) flags(Indirect) : memref<1x2x8x8x8xi32, strided<[1024, 512, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<1x2x64x8x2xi8, strided<[2048, 1024, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<1x2x64x8x2xi8>
  %4 = iree_codegen.load_from_buffer %1 : memref<1x8x64x8x2xi8, strided<[8192, 1024, 16, 2, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> -> tensor<1x8x64x8x2xi8>
  %5 = tensor.empty() : tensor<1x2x8x8x8xi32>
  %6 = scf.forall (%arg0, %arg1) in (2, 8) shared_outs(%arg2 = %5) -> (tensor<1x2x8x8x8xi32>) {
    %extracted_slice = tensor.extract_slice %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x2x8x8x8xi32> to tensor<1x1x8x8xi32>
    %7 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 8]>} ins(%c0_i32 : i32) outs(%extracted_slice : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    %extracted_slice_0 = tensor.extract_slice %3[0, %arg0, 0, 0, 0] [1, 1, 64, 8, 2] [1, 1, 1, 1, 1] : tensor<1x2x64x8x2xi8> to tensor<1x64x8x2xi8>
    %extracted_slice_1 = tensor.extract_slice %4[0, %arg1, 0, 0, 0] [1, 1, 64, 8, 2] [1, 1, 1, 1, 1] : tensor<1x8x64x8x2xi8> to tensor<1x64x8x2xi8>
    %8 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 2]>} ins(%extracted_slice_0, %extracted_slice_1 : tensor<1x64x8x2xi8>, tensor<1x64x8x2xi8>) outs(%7 : tensor<1x1x8x8xi32>) -> tensor<1x1x8x8xi32>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %8 into %arg2[0, %arg0, %arg1, 0, 0] [1, 1, 1, 8, 8] [1, 1, 1, 1, 1] : tensor<1x1x8x8xi32> into tensor<1x2x8x8x8xi32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<1x2x8x8x8xi32> into memref<1x2x8x8x8xi32, strided<[1024, 512, 64, 8, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
  return
}

