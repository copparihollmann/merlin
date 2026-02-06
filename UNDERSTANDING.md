# Merlin Repository Understanding

## Project Overview

**Merlin** (**M**L**IR**-**in**) is a compiler project connecting ML frameworks to [UCB-BAR](https://github.com/ucb-bar) hardware projects -- specifically the **Gemmini** systolic-array accelerator -- via [IREE](https://github.com/openxla/iree) and [MLIR](https://mlir.llvm.org/).

The name captures the core idea: using MLIR as the intermediate representation to bridge high-level ML models (PyTorch, ONNX) down to custom hardware backends (Gemmini on RISC-V), with IREE providing the compilation and runtime infrastructure.

## Repository Structure

```
merlin/
├── README.md
├── UNDERSTANDING.md              # This file
├── benchmark/
│   └── KernelBench/              # PyTorch kernel compilation benchmarks via IREE
│       ├── iree_compilation.py
│       ├── iree_run_subprocess.py
│       ├── report/
│       └── results/
├── docs/
│   └── iree-compile--help.txt    # IREE compiler reference
├── experiments/
│   ├── buddy-experiments/        # Buddy-MLIR vs Gemmini C comparison experiments
│   │   ├── merlin_codex.md       # Detailed experiment log and results tables
│   │   ├── MERLIN_EXPLORATION.MD # Environment snapshot and quick-start guide
│   │   ├── PICKUP_FROM_HERE_CLAUDE.MD  # Session handoff notes (conv fix)
│   │   ├── conv-buddy.{mlir,c}
│   │   ├── conv-with-pool-buddy.{mlir,c}
│   │   ├── mlp1-buddy.{mlir,c}
│   │   ├── mlp2-buddy.{mlir,c}
│   │   ├── mlp2-buddy-os.mlir    # OS-dataflow variant
│   │   ├── igelu-matmul-buddy.{mlir,c}
│   │   ├── softmax-matmul-buddy.{mlir,c}
│   │   ├── resnet50/             # Layer-by-layer ResNet50 validation
│   │   ├── resnet50_to_mlir.py   # Incomplete: param converter script
│   │   ├── validation/
│   │   └── old/                  # Archived build artifacts
│   └── gemmini/
│       ├── c/                    # Gemmini C experiment sources
│       ├── inputs/               # MLIR input files for Gemmini dialect
│       ├── logs/                 # IR dump logs
│       └── scripts/dump_one.sh
├── samples/
│   └── test_ukernel_qs8_qc8w_gemm_rvv/  # Quantized int8 GEMM for RVV
├── third_party/
│   ├── iree/                     # IREE submodule
│   └── KernelBench/              # KernelBench submodule
├── .gitmodules
└── LICENSE
```

## Key Experiments

### 1. Gemmini Convolution Bug Fix (commit f745e83)

The most significant technical contribution so far. The `loop_conv_ws_config*` instructions in buddy-mlir had incorrect bit-packing in `LegalizeForLLVMExport.cpp`, causing convolution operations to produce wrong results while matmuls worked fine.

**The main bug (CONFIG_4):**
- Before: `rs2 = kernelDilation << 16 | ocols` (missing strides)
- After: `rs2 = inStride << 48 | weightStride << 32 | outStride << 16 | ocols`

Also fixed: bit shifts in CONFIG_1 through CONFIG_3 and added missing parameters to the function signature.

**Validation results (post-fix):**

| Test | Expected | Before Fix | After Fix |
|------|----------|------------|-----------|
| conv (17x17, k=3, stride=2) | 950 | -478 | 950 |
| conv_with_pool | 30827 | 0 | 30827 |

### 2. Buddy-MLIR vs Gemmini C Benchmarking

Systematic comparison of buddy-mlir's Gemmini dialect lowering against the reference Gemmini C library (`gemmini-rocc-tests`), covering both WS (weight-stationary) and OS (output-stationary) dataflows.

**Matmul results:**

| Workload | Dataflow | Gemmini C cycles | Buddy cycles | Speedup | Match |
|----------|----------|------------------|--------------|---------|-------|
| MLP2 (64x832) | WS | 2,528 | 409 | 6.18x | Yes |
| MLP2 (64x832) | OS | 207,782 | 96,076 | 2.16x | Yes |
| MLP1 (6-layer) | WS | 25,251 | 2,539 | 9.95x | Yes |
| softmax matmul | WS | 335 | 145 | 2.31x | Yes |
| IGELU matmul | WS | 133 | 133 | 1.00x | Yes |

**Conv results (post-fix):**

| Workload | Gemmini C cycles | Buddy cycles | Speedup | Match |
|----------|------------------|--------------|---------|-------|
| conv (17x17) | 1,027 | 149 | 6.89x | Yes |
| conv_with_pool | 1,605 | 172 | 9.33x | Yes |

**Key insight:** Buddy's apparent speedup is largely due to compile-time loop unrolling. Spike's `rdcycle` counts CPU instructions, so Buddy's pre-computed control flow (constant offsets, no runtime tile-size search) looks much faster even when the Gemmini hardware work is identical.

### 3. ResNet50 Layer-by-Layer Validation

- **Conv1 (7x7 conv + 3x3 maxpool):** PASS. Checksums match (10206332). Gemmini C: 225,146 cycles vs Buddy: 7,313 cycles.
- Conv2 validation in progress.
- Challenge: Gemmini C uses int8 weights from `resnet50_params.h` (66MB); buddy-benchmark's ResNet18 is f32.

### 4. KernelBench (PyTorch kernel compilation)

Uses the KernelBench benchmark suite to test PyTorch kernel compilation through IREE.

### 5. RISC-V Microkernel Samples

Quantized int8 GEMM microkernel for RISC-V Vector extension (RVV) under `samples/test_ukernel_qs8_qc8w_gemm_rvv/`.

## Environment

### Toolchain

- **buddy-mlir:** Patched compiler at `/scratch/ashvin/buddy-mlir/build/bin/` providing `buddy-opt`, `buddy-translate`, `buddy-llc`
- **Spike simulator:** `$RISCV/bin/spike` with `--extension=gemmini` for Gemmini systolic array simulation
- **Proxy kernel:** `riscv-pk` built at `/scratch/ashvin/riscv-pk/build/pk` for user-mode payloads
- **RISC-V toolchain:** `/home/eecs/ashvin.verma/toolchains/riscv`

### Compile/Run Pipeline

```
MLIR source
  -> buddy-opt (lower-linalg-to-gemmini, convert-*-to-llvm, etc.)
  -> buddy-translate (--mlir-to-llvmir)
  -> buddy-llc (-march=riscv64 -mattr=+buddyext,+f,+d,+c)
  -> riscv64-unknown-elf-gcc (link with C harness)
  -> spike --extension=gemmini pk <elf>
```

## Current State

- **Gemmini conv patch validated** on branch `gemmini_conv_patch` in buddy-mlir (commit f745e83).
- **ResNet50 layer-by-layer bring-up in progress.** Conv1 validated; conv2 in progress.
- **MobileNet blocked** on depthwise convolution support.
- **Buddy vs Gemmini C performance comparison complete** for matmul and conv micro-benchmarks.

## Branch Overview

### Local Branches

| Branch | Description |
|--------|-------------|
| `main` | Stable base with IREE submodule, KernelBench, ONNX samples |
| `ashvin/buddy-mlir-benchmarking` (current) | Buddy-MLIR vs Gemmini C experiments, conv fix validation, ResNet50 bring-up |
| `sparsh/buddy-gemmini-ir-dumps` | IR dumps for Gemmini dialect lowering passes |

### Remote Feature Branches

| Branch | Description |
|--------|-------------|
| `1-ukernel-quant-gemm-*` | Fused quantized int8 GEMM microkernel for RVV |
| `5-roboir` | Roboir experiments |
| `7-agent-iree-evolve` | AI agent IREE evolution |
| `10-async-multiple-module-pipelining` | Async pipelining across multiple modules |
| `banana-pi` | Banana Pi target board |
| `iree_tacit` | IREE tacit experiments |

## Sister Projects

- **cooking-the-dragon**: Cookbooks and recipes for compiler workflows. Stores best practices and reusable patterns.
- **mlirEvolve**: AI agent tooling for compiler work. Provides agent harness, tools, and infrastructure for LLVM/MLIR tasks.
- **buddy-mlir** (`/scratch/ashvin/buddy-mlir`): Patched MLIR compiler with Gemmini dialect. Branch `gemmini_conv_patch` has the conv fix.
- **chipyard** (`/scratch/ashvin/chipyard`): Hardware RTL with Gemmini accelerator. `gemmini-rocc-tests` provides reference C implementations.

## The Big Picture

Three repositories form the core ecosystem:

1. **merlin** -- the target compiler project, connecting ML frameworks to custom hardware (Gemmini) via MLIR/IREE.
2. **mlirEvolve** -- AI agent tooling, providing infrastructure for AI agents to work on LLVM/MLIR compiler tasks.
3. **cooking-the-dragon** -- knowledge base storing best practices and reusable recipes.

The overarching goal is to build an **agent harness targeting LLVM/MLIR** for automated issue solving and compiler customization. Merlin serves as the primary testbed: a real compiler pipeline (ML model -> MLIR -> Gemmini instructions -> Spike simulation) where AI agents can contribute to debugging, benchmarking, and optimization.

## Commit History (Recent)

```
fe5b4cc Archive legacy experiment outputs under buddy-experiments
04e020b Organize buddy experiment artifacts
e1e62e7 {message}
3221999 Document libgemmini build status on Mac
8f3a942 Add IR dump for tile-matmul-ws-softmax.mlir
5c7aad3 Add helper script to dump Gemmini lowering IR
5fef6ba Buddy Gemmini: add batch_matmul + conv IR dumps
15daa59 Buddy Gemmini: IR dumps for matmul (and more configs)
13a7931 Merge remote-tracking branch 'origin/main'
d4d2a3f First full benchmark results for local target in garden UCB
72acecb Merge pull request #4 (KernelBench)
1c60723 close [#3] v1.0 for compilation and running of benchmark
e42ac1b Introducing KernelBench as benchmark target
6367927 Adding --help from iree-compile for easy reference
123c27c QOperator int8 model using ONNX able to compile in IREE
14d9362 Add IREE as a submodule
```
