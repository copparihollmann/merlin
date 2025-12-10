# IREE Compilation Report

## Overall Summary

- **Total Compilation Attempts**: 270 (270 kernels x 1 targets)
- **Successful Compilations**: 205
- **Failed Compilations**: 65
- **Overall Success Rate**: **75.9%**
- **Total Runtime**: 4077.60 seconds

---
## Success Rate by Level

### Level: level1

- **Level Total Success**: 93 / 100 compilations **(93.0%)**

**Success Rate by Target:**

- **LOCAL**: 93 / 100 kernels succeeded **(93.0%)**

### Level: level2

- **Level Total Success**: 81 / 100 compilations **(81.0%)**

**Success Rate by Target:**

- **LOCAL**: 81 / 100 kernels succeeded **(81.0%)**

### Level: level3

- **Level Total Success**: 31 / 50 compilations **(62.0%)**

**Success Rate by Target:**

- **LOCAL**: 31 / 50 kernels succeeded **(62.0%)**

### Level: level4

- **Level Total Success**: 0 / 20 compilations **(0.0%)**

**Success Rate by Target:**

- **LOCAL**: 0 / 20 kernels succeeded **(0.0%)**

---
## Export & Compilation Failures

| Level | Kernel File | Target | Stage | Error |
|-------|-------------|--------|-------|-------|
| level1 | `KernelBench/level1/12_Matmul_with_diagonal_matrices_.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level1/LOCAL/12_Matmul_with_diagonal_matrices_/kernel.mlir:4:10: note: see current operation: %1 = "torch.operator"(%arg0, %0) <{name = "torch.aten.diag"}> : (!torch.vtensor<[4096],f32>, !torch.int) -> !torch.vtensor<[4096,4096],f32>` |
| level1 | `KernelBench/level1/34_InstanceNorm.py` | LOCAL | compile | `iree-compile failed: 21 iree-compile       0x00000000002016ae` |
| level1 | `KernelBench/level1/72_conv_transposed_3D_asymmetric_input_asymmetric_kernel___strided_padded_grouped_.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level1/LOCAL/72_conv_transposed_3D_asymmetric_input_asymmetric_kernel___strided_padded_grouped_/kernel.mlir:24:10: note: see current operation: %12 = "torch.aten.convolution"(%arg0, %7, %5, %8, %9, %11, %0, %10, %1) : (!torch.vtensor<[8,32,12,24,48],f32>, !torch.vtensor<[32,8,3,5,7],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[8,32,24,48,96],f32>` |
| level1 | `KernelBench/level1/95_CrossEntropyLoss.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |
| level1 | `KernelBench/level1/96_HuberLoss.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level1/LOCAL/96_HuberLoss/kernel.mlir:4:10: note: see current operation: %3 = "torch.operator"(%2) <{name = "torch.aten.broadcast_tensors"}> : (!torch.list<vtensor>) -> !torch.list<vtensor>` |
| level1 | `KernelBench/level1/97_ScaledDotProductAttention.py` | LOCAL | export | `aot.export error: Torch not compiled with CUDA enabled` |
| level1 | `KernelBench/level1/99_TripletMarginLoss.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level1/LOCAL/99_TripletMarginLoss/kernel.mlir:8:10: note: see current operation: %5 = "torch.operator"(%arg0, %arg1, %arg2, %0, %1, %2, %3, %4) <{name = "torch.aten.triplet_margin_loss"}> : (!torch.vtensor<[32768,8192],f32>, !torch.vtensor<[32768,8192],f32>, !torch.vtensor<[32768,8192],f32>, !torch.float, !torch.float, !torch.float, !torch.bool, !torch.int) -> !torch.vtensor<[],f32>` |
| level2 | `KernelBench/level2/13_ConvTranspose3d_Mean_Add_Softmax_Tanh_Scaling.py` | LOCAL | compile | `iree-compile failed:           ^` |
| level2 | `KernelBench/level2/17_Conv2d_InstanceNorm_Divide.py` | LOCAL | compile | `iree-compile failed: 21 iree-compile       0x00000000002016ae` |
| level2 | `KernelBench/level2/18_Matmul_Sum_Max_AvgPool_LogSumExp_LogSumExp.py` | LOCAL | compile | `iree-compile failed: <unknown>:0: note: see current operation: %3 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/22_Matmul_Scale_ResidualAdd_Clamp_LogSumExp_Mish.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level2/LOCAL/22_Matmul_Scale_ResidualAdd_Clamp_LogSumExp_Mish/kernel.mlir:19:13: note: see current operation: %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/24_Conv3d_Min_Softmax.py` | LOCAL | compile | `iree-compile failed:          ^` |
| level2 | `KernelBench/level2/28_BMM_InstanceNorm_Sum_ResidualAdd_Multiply.py` | LOCAL | compile | `iree-compile failed: 21 iree-compile       0x00000000002016ae` |
| level2 | `KernelBench/level2/3_ConvTranspose3d_Sum_LayerNorm_AvgPool_GELU.py` | LOCAL | compile | `iree-compile failed:           ^` |
| level2 | `KernelBench/level2/42_ConvTranspose2d_GlobalAvgPool_BiasAdd_LogSumExp_Sum_Multiply.py` | LOCAL | compile | `iree-compile failed: <unknown>:0: note: see current operation: %3 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/43_Conv3d_Max_LogSumExp_ReLU.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level2/LOCAL/43_Conv3d_Max_LogSumExp_ReLU/kernel.mlir:41:13: note: see current operation: %3 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/45_Gemm_Sigmoid_LogSumExp.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level2/LOCAL/45_Gemm_Sigmoid_LogSumExp/kernel.mlir:18:14: note: see current operation: %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/49_ConvTranspose3d_Softmax_Sigmoid.py` | LOCAL | compile | `iree-compile failed:          ^` |
| level2 | `KernelBench/level2/51_Gemm_Subtract_GlobalAvgPool_LogSumExp_GELU_ResidualAdd.py` | LOCAL | compile | `iree-compile failed: <unknown>:0: note: see current operation: %4 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/52_Conv2d_Activation_BatchNorm.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level2/LOCAL/52_Conv2d_Activation_BatchNorm/kernel.mlir:22:10: note: see current operation: %18 = "torch.operator"(%17, %15) <{name = "torch.aten.multiply.Tensor"}> : (!torch.vtensor<[64,128,126,126],f32>, !torch.vtensor<[64,128,126,126],f32>) -> !torch.vtensor<[64,128,126,126],f32>` |
| level2 | `KernelBench/level2/58_ConvTranspose3d_LogSumExp_HardSwish_Subtract_Clamp.py` | LOCAL | compile | `iree-compile failed: <unknown>:0: note: see current operation: %4 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/64_Gemm_LogSumExp_LeakyReLU_LeakyReLU_GELU_GELU.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level2/LOCAL/64_Gemm_LogSumExp_LeakyReLU_LeakyReLU_GELU_GELU/kernel.mlir:12:13: note: see current operation: %6 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level2 | `KernelBench/level2/6_Conv3d_Softmax_MaxPool_MaxPool.py` | LOCAL | compile | `iree-compile failed:          ^` |
| level2 | `KernelBench/level2/79_Conv3d_Multiply_InstanceNorm_Clamp_Multiply_Max.py` | LOCAL | compile | `iree-compile failed: 21 iree-compile       0x00000000002016ae` |
| level2 | `KernelBench/level2/91_ConvTranspose2d_Softmax_BiasAdd_Scaling_Sigmoid.py` | LOCAL | compile | `iree-compile failed:          ^` |
| level2 | `KernelBench/level2/92_Conv2d_GroupNorm_Tanh_HardSwish_ResidualAdd_LogSumExp.py` | LOCAL | compile | `iree-compile failed: <unknown>:0: note: see current operation: %6 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool` |
| level3 | `KernelBench/level3/29_SwinMLP.py` | LOCAL | compile | `iree-compile failed:            ^` |
| level3 | `KernelBench/level3/30_SwinTransformerV2.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/30_SwinTransformerV2/kernel.mlir:398:12: note: see current operation: %227 = "flow.tensor.reshape"(%226) <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (tensor<?x10x56x96xf32>) -> tensor<56x10x5376xf32>` |
| level3 | `KernelBench/level3/31_VisionAttention.py` | LOCAL | compile | `iree-compile failed:           ^` |
| level3 | `KernelBench/level3/33_VanillaRNN.py` | LOCAL | export | `aot.export error: Constant L__self___hidden is mutated in the forward method. Pls register it as buffer` |
| level3 | `KernelBench/level3/35_LSTM.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/35_LSTM/kernel.mlir:78:13: note: see current operation: %54:3 = "torch.operator"(%arg0, %28, %53, %4, %19, %3, %17, %17, %4) <{name = "torch.aten.lstm.input"}> : (!torch.vtensor<[10,512,128],f32>, !torch.list<vtensor>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[10,512,256],f32>, !torch.vtensor<[6,1,10,256],f32>, !torch.vtensor<[6,1,10,256],f32>)` |
| level3 | `KernelBench/level3/36_LSTMHn.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/36_LSTMHn/kernel.mlir:59:13: note: see current operation: %42:3 = "torch.operator"(%arg0, %16, %41, %3, %2, %1, %0, %0, %3) <{name = "torch.aten.lstm.input"}> : (!torch.vtensor<[10,512,128],f32>, !torch.list<vtensor>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[10,512,256],f32>, !torch.vtensor<[6,1,10,256],f32>, !torch.vtensor<[6,1,10,256],f32>)` |
| level3 | `KernelBench/level3/37_LSTMCn.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/37_LSTMCn/kernel.mlir:59:13: note: see current operation: %42:3 = "torch.operator"(%arg0, %16, %41, %3, %2, %1, %0, %0, %3) <{name = "torch.aten.lstm.input"}> : (!torch.vtensor<[10,512,128],f32>, !torch.list<vtensor>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[10,512,256],f32>, !torch.vtensor<[6,1,10,256],f32>, !torch.vtensor<[6,1,10,256],f32>)` |
| level3 | `KernelBench/level3/38_LSTMBidirectional.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/38_LSTMBidirectional/kernel.mlir:108:13: note: see current operation: %81:3 = "torch.operator"(%arg0, %31, %80, %6, %5, %4, %3, %6, %6) <{name = "torch.aten.lstm.input"}> : (!torch.vtensor<[10,512,128],f32>, !torch.list<vtensor>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[10,512,512],f32>, !torch.vtensor<[12,1,10,256],f32>, !torch.vtensor<[12,1,10,256],f32>)` |
| level3 | `KernelBench/level3/39_GRU.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/39_GRU/kernel.mlir:58:13: note: see current operation: %41:2 = "torch.operator"(%arg0, %arg1, %40, %3, %2, %1, %0, %0, %0) <{name = "torch.aten.gru.input"}> : (!torch.vtensor<[512,10,128],f32>, !torch.vtensor<[6,10,256],f32>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[512,10,256],f32>, !torch.vtensor<[6,10,256],f32>)` |
| level3 | `KernelBench/level3/40_GRUHidden.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/40_GRUHidden/kernel.mlir:58:13: note: see current operation: %41:2 = "torch.operator"(%arg0, %arg1, %40, %3, %2, %1, %0, %0, %0) <{name = "torch.aten.gru.input"}> : (!torch.vtensor<[512,10,128],f32>, !torch.vtensor<[6,10,256],f32>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[512,10,256],f32>, !torch.vtensor<[6,10,256],f32>)` |
| level3 | `KernelBench/level3/41_GRUBidirectional.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/41_GRUBidirectional/kernel.mlir:106:13: note: see current operation: %77:2 = "torch.operator"(%arg0, %arg1, %76, %3, %2, %1, %0, %3, %0) <{name = "torch.aten.gru.input"}> : (!torch.vtensor<[512,10,128],f32>, !torch.vtensor<[12,10,256],f32>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[512,10,512],f32>, !torch.vtensor<[12,10,256],f32>)` |
| level3 | `KernelBench/level3/42_GRUBidirectionalHidden.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/42_GRUBidirectionalHidden/kernel.mlir:106:13: note: see current operation: %77:2 = "torch.operator"(%arg0, %arg1, %76, %3, %2, %1, %0, %3, %0) <{name = "torch.aten.gru.input"}> : (!torch.vtensor<[512,10,128],f32>, !torch.vtensor<[12,10,256],f32>, !torch.list<vtensor>, !torch.bool, !torch.int, !torch.float, !torch.bool, !torch.bool, !torch.bool) -> (!torch.vtensor<[512,10,512],f32>, !torch.vtensor<[12,10,256],f32>)` |
| level3 | `KernelBench/level3/43_MinGPTCausalAttention.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x00000000270a20c0` |
| level3 | `KernelBench/level3/44_MiniGPTBlock.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x000000003a2d0eb0` |
| level3 | `KernelBench/level3/46_NetVladWithGhostClusters.py` | LOCAL | compile | `iree-compile failed:           ^` |
| level3 | `KernelBench/level3/47_NetVladNoGhostClusters.py` | LOCAL | compile | `iree-compile failed:           ^` |
| level3 | `KernelBench/level3/48_Mamba2ReturnY.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/48_Mamba2ReturnY/kernel.mlir:74:11: note: see current operation: %432 = "torch.aten.sum.dim_IntList"(%430, %431, %11, %23) : (!torch.vtensor<[2048,2,8,64,64,64],f32>, !torch.list<int>, !torch.bool, !torch.none) -> !torch.vtensor<*,f32>` |
| level3 | `KernelBench/level3/49_Mamba2ReturnFinalState.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level3/LOCAL/49_Mamba2ReturnFinalState/kernel.mlir:49:11: note: see current operation: %365 = "torch.aten.sum.dim_IntList"(%363, %364, %9, %17) : (!torch.vtensor<[2048,2,8,16,64,64],f32>, !torch.list<int>, !torch.bool, !torch.none) -> !torch.vtensor<*,f32>` |
| level3 | `KernelBench/level3/50_ReLUSelfAttention.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x000000003a9c8110` |
| level4 | `KernelBench/level4/10_google-bigbird-roberta-base_bs1024_seq32.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |
| level4 | `KernelBench/level4/11_google-electra-small-discriminator_bs1_seq511.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/11_google-electra-small-discriminator_bs1_seq511/kernel.mlir:125:11: note: see current operation: %15407 = "arith.index_cast"(%arg2693) : (f32) -> index` |
| level4 | `KernelBench/level4/12_google-electra-small-discriminator_bs1024_seq32.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/12_google-electra-small-discriminator_bs1024_seq32/kernel.mlir:125:11: note: see current operation: %15169 = "arith.index_cast"(%arg2447) : (f32) -> index` |
| level4 | `KernelBench/level4/13_google-reformer-enwik8_bs32_seq256.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |
| level4 | `KernelBench/level4/14_google-electra-small-discriminator_bs32_seq256.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/14_google-electra-small-discriminator_bs32_seq256/kernel.mlir:125:11: note: see current operation: %15167 = "arith.index_cast"(%arg2447) : (f32) -> index` |
| level4 | `KernelBench/level4/15_google-reformer-enwik8_bs1024_seq32.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |
| level4 | `KernelBench/level4/16_gpt2_bs1_seq1023.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x00000000018ee110` |
| level4 | `KernelBench/level4/17_facebook-bart-large_bs1024_seq32.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/17_facebook-bart-large_bs1024_seq32/kernel.mlir:98:10: note: see current operation: %13268 = "arith.index_cast"(%arg2081) : (f32) -> index` |
| level4 | `KernelBench/level4/18_EleutherAI-gpt-neo-2p7B_bs512_seq32.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/18_EleutherAI-gpt-neo-2p7B_bs512_seq32/kernel.mlir:492:11: note: see current operation: %49221 = "arith.index_cast"(%arg7081) : (f32) -> index` |
| level4 | `KernelBench/level4/19_gpt2_bs1024_seq32.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x00000000137de110` |
| level4 | `KernelBench/level4/1_EleutherAI-gpt-neo-2p7B_bs32_seq256.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/1_EleutherAI-gpt-neo-2p7B_bs32_seq256/kernel.mlir:492:11: note: see current operation: %49221 = "arith.index_cast"(%arg7081) : (f32) -> index` |
| level4 | `KernelBench/level4/20_facebook-bart-large_bs32_seq256.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/20_facebook-bart-large_bs32_seq256/kernel.mlir:98:10: note: see current operation: %13269 = "arith.index_cast"(%arg2081) : (f32) -> index` |
| level4 | `KernelBench/level4/2_facebook-opt-1p3b_bs1_seq2047.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/2_facebook-opt-1p3b_bs1_seq2047/kernel.mlir:573:11: note: see current operation: %130 = "torch.aten.scaled_dot_product_attention"(%109, %126, %129, %55, %3, %15, %6, %15) : (!torch.vtensor<[1,32,2047,64],f32>, !torch.vtensor<[1,32,2047,64],f32>, !torch.vtensor<[1,32,2047,64],f32>, !torch.vtensor<[1,1,2047,2047],f32>, !torch.float, !torch.bool, !torch.float, !torch.bool) -> !torch.vtensor<[1,32,2047,64],f32>` |
| level4 | `KernelBench/level4/3_EleutherAI-gpt-neo-2p7B_bs1_seq2047.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/3_EleutherAI-gpt-neo-2p7B_bs1_seq2047/kernel.mlir:492:11: note: see current operation: %49576 = "arith.index_cast"(%arg7659) : (f32) -> index` |
| level4 | `KernelBench/level4/4_facebook-opt-1p3b_bs32_seq256.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/4_facebook-opt-1p3b_bs32_seq256/kernel.mlir:573:11: note: see current operation: %133 = "torch.aten.scaled_dot_product_attention"(%112, %129, %132, %58, %4, %16, %6, %16) : (!torch.vtensor<[32,32,256,64],f32>, !torch.vtensor<[32,32,256,64],f32>, !torch.vtensor<[32,32,256,64],f32>, !torch.vtensor<[32,1,256,256],f32>, !torch.float, !torch.bool, !torch.float, !torch.bool) -> !torch.vtensor<[32,32,256,64],f32>` |
| level4 | `KernelBench/level4/5_google-bigbird-roberta-base_bs1_seq4095.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |
| level4 | `KernelBench/level4/6_facebook-bart-large_bs1_seq1023.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/6_facebook-bart-large_bs1_seq1023/kernel.mlir:98:10: note: see current operation: %13282 = "arith.index_cast"(%arg2203) : (f32) -> index` |
| level4 | `KernelBench/level4/7_gpt2_bs32_seq256.py` | LOCAL | compile | `iree-compile failed: 4  (error)            0x0000000039f7e110` |
| level4 | `KernelBench/level4/8_facebook-opt-1p3b_bs512_seq32.py` | LOCAL | compile | `iree-compile failed: /scratch2/agustin/merlin/benchmark/KernelBench/results/level4/LOCAL/8_facebook-opt-1p3b_bs512_seq32/kernel.mlir:573:11: note: see current operation: %133 = "torch.aten.scaled_dot_product_attention"(%112, %129, %132, %58, %4, %16, %6, %16) : (!torch.vtensor<[512,32,32,64],f32>, !torch.vtensor<[512,32,32,64],f32>, !torch.vtensor<[512,32,32,64],f32>, !torch.vtensor<[512,1,32,32],f32>, !torch.float, !torch.bool, !torch.float, !torch.bool) -> !torch.vtensor<[512,32,32,64],f32>` |
| level4 | `KernelBench/level4/9_google-bigbird-roberta-base_bs32_seq256.py` | LOCAL | export | `Set TORCHDYNAMO_VERBOSE=1 for the internal stack trace (please do this especially if you're reporting a bug to PyTorch). For even more developer context, set TORCH_LOGS="+dynamo"` |

