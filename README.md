# Merlin Compiler Infrastructure

**Merlin** (**M**L**IR**-**in**) is an end-to-end compiler lowering funnel that connects high-level ML frameworks (PyTorch, ONNX) to custom RISC-V silicon and the [UCB-BAR](https://github.com/ucb-bar) ecosystem via [IREE](https://github.com/openxla/iree).

## ⚡ Overview

Merlin bridges the gap between software models and bare-metal hardware execution. It is designed to support:
1. **Custom Accelerators:** Targeted support for the **Saturn Outer Product Unit (OPU)** via custom microkernels and compiler intrinsics.
2. **End-to-End Lowering:** Compiles standard models (ResNet, MobileNet, Dronet) down to `.vmfb` artifacts for execution on RISC-V softcores (FireSim) and commercial chips.
3. **Benchmarking:** Automated suite (`KernelBench`) to profile performance across CPU, GPU (A100), and RISC-V targets.

## 🏗️ Architecture

- **Frontend:** PyTorch / ONNX / JAX
- **Middle-end:** IREE (Linalg, Flow, Stream dialects) + Custom Merlin Passes
- **Backend:** LLVM CPU / RISC-V (RVV 1.0 + Custom Extensions)
- **Runtime:** IREE HAL (Hardware Abstraction Layer) for Bare-metal

## 📦 Supported Models
Merlin includes pre-configured compilation flows for:
- **Robotics:** Dronet (Collision Avoidance), FastDepth
- **Vision:** MobileNetV2, GLPDepth
- **General:** MLPs, Diffusion Policies

## 🚀 Getting Started

### Prerequisites
- IREE Compiler v3.8.0+
- RISC-V Toolchain (for cross-compilation)
- Ninja Build System

### Compiling a Custom Kernel (Saturn OPU)
Merlin allows dispatching specific operations to custom hardware units:

```bash
# Configure for RISC-V Cross-Compilation
cmake -G Ninja -B build-riscv \
    -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake \
    -DIREE_HOST_BIN_DIR=../host/bin

# Build the custom dispatch sample
cmake --build build-riscv --target compile_custom_model
```
