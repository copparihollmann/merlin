# Buddy vs Chipyard `gemmini-rocc-tests` (matmul + conv)

This repo’s Buddy/Gemmini pipeline emits LLVM IR with `llvm.riscv.*` intrinsics and relies on Buddy’s LLVM backend extension (`+buddyext`) to lower them to Gemmini custom instructions.

Chipyard’s `gemmini-rocc-tests` is the “hand-written” reference: C code calling the Gemmini C API (`gemmini_mvin`, `gemmini_extended_config_ex`, `gemmini_compute_*`, `gemmini_fence`, etc.), implemented via inline asm / RoCC custom instructions.

## What we ran (Spike)

All runs use Spike with the Gemmini extension enabled:

- Buddy side (this repo):
  - `experiments/matmul.elf` (prints `rdcycle`/`rdinstret` around `matmul`)
  - `experiments/batch_matmul_4x64x64.elf` (prints `rdcycle`/`rdinstret` around `batch_matmul_4x64x64`)
  - `experiments/conv_2x2x5x5_f32.elf` (prints `rdcycle`/`rdinstret` around `conv_2x2x5x5_f32`)

- Chipyard side:
  - `/scratch/ashvin/chipyard/generators/gemmini/software/gemmini-rocc-tests/build/bareMetalC/tiled_matmul_ws_perf-pk` (prints cycles)
  - `/scratch/ashvin/chipyard/generators/gemmini/software/gemmini-rocc-tests/build/bareMetalC/conv-pk` (prints CPU and Gemmini cycles)

Observed outputs in this environment:

- Buddy matmul (64x64): `cycles=29197 instret=29197`
- Buddy batch_matmul (4x64x64): `cycles=159822 instret=159822`
- Buddy conv f32 (2x2x5x5 input, 2x2x3x3 weight): `cycles=2220 instret=2220`
- Chipyard tiled matmul ws perf: `Cycles taken: 60337` (also prints `Ideal cycles: 32768`)
- Chipyard conv:
  - `CPU conv took 7559913 cycles`
  - `Gemmini conv took 1027 cycles`

## Key differences

### 1) Where cycle counting happens

- Buddy harnesses measure *everything inside the lowered function* (including any scalar loops emitted by lowering, e.g. output zero-fills, pointer math, etc.) using `rdcycle/rdinstret`.
- Chipyard tests often time *only a region*, and many conv tests separately time “CPU conv” vs “Gemmini conv”. This can make the Gemmini cycle number look dramatically smaller than an end-to-end measurement.

### 2) Instruction interface

- Buddy emits calls like `llvm.riscv.config.ex`, `llvm.riscv.loop.ws.config.*`, `llvm.riscv.loop.ws`, `llvm.riscv.flush`.
  - These are *intrinsics* that must be lowered by Buddy’s LLVM backend (compile with `buddy-llc` and `-mattr=+buddyext`).
- Chipyard C tests emit Gemmini RoCC custom instructions via the C API helpers in `gemmini_testutils.h` / `gemmini.h`.

### 3) Work decomposition

- Chipyard tests explicitly orchestrate:
  - `gemmini_mvin` / `gemmini_mvout` DMA
  - `gemmini_preload(_zeros)`
  - `gemmini_compute_preloaded` / `gemmini_compute_accumulated`
  - `gemmini_fence` (completion)
- Buddy’s `loop.ws` style lowering configures a “hardware loop” (bounds, addresses, strides) and then launches it (`llvm.riscv.loop.ws`), followed by `flush`.

## Commands (copy/paste)

### Run Chipyard reference binaries

```bash
RISCV=/home/eecs/ashvin.verma/toolchains/riscv
ROOT=/scratch/ashvin/chipyard/generators/gemmini/software/gemmini-rocc-tests

$RISCV/bin/spike --extension=gemmini $RISCV/riscv64-unknown-elf/bin/pk \
  $ROOT/build/bareMetalC/tiled_matmul_ws_perf-pk

$RISCV/bin/spike --extension=gemmini $RISCV/riscv64-unknown-elf/bin/pk \
  $ROOT/build/bareMetalC/conv-pk
```

### Rebuild + run Buddy-side conv (example)

```bash
cd /scratch/ashvin/merlin
RISCV=/home/eecs/ashvin.verma/toolchains/riscv
BUDDY_OPT=/scratch/ashvin/buddy-mlir/build/bin/buddy-opt
BUDDY_TRANSLATE=/scratch/ashvin/buddy-mlir/build/bin/buddy-translate
BUDDY_LLC=/scratch/ashvin/buddy-mlir/build/bin/buddy-llc

$BUDDY_OPT experiments/gemmini/inputs/conv_2x2x5x5_f32_fn.mlir \
  --convert-linalg-to-gemmini="acc_t=f32" \
  --lower-gemmini --expand-strided-metadata \
  --convert-linalg-to-loops --lower-affine --convert-scf-to-cf \
  --convert-cf-to-llvm --convert-arith-to-llvm --finalize-memref-to-llvm \
  --convert-func-to-llvm --reconcile-unrealized-casts \
  -o experiments/conv_2x2x5x5_f32.llvm.mlir

$BUDDY_TRANSLATE experiments/conv_2x2x5x5_f32.llvm.mlir --buddy-to-llvmir \
  -o experiments/conv_2x2x5x5_f32.ll

$BUDDY_LLC -O3 -filetype=obj -mtriple=riscv64-unknown-elf -target-abi=lp64d \
  -mattr=+buddyext,+m,+a,+f,+d,+c \
  -o experiments/conv_2x2x5x5_f32.o experiments/conv_2x2x5x5_f32.ll

$RISCV/bin/riscv64-unknown-elf-gcc -O2 -march=rv64gc -mabi=lp64d -static \
  -o experiments/conv_2x2x5x5_f32.elf \
  experiments/conv_main.c experiments/conv_2x2x5x5_f32.o

$RISCV/bin/spike --extension=gemmini $RISCV/riscv64-unknown-elf/bin/pk \
  experiments/conv_2x2x5x5_f32.elf
```
