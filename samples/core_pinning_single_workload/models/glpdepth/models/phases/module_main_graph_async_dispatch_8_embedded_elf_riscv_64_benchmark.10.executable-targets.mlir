#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_8 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c14 = arith.constant 14 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c14, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.poison : !llvm.array<7 x vector<16xf32>>
          %8 = llvm.mlir.constant(-1 : index) : i64
          %9 = llvm.mlir.constant(7 : index) : i64
          %10 = llvm.mlir.constant(6 : index) : i64
          %11 = llvm.mlir.constant(5 : index) : i64
          %12 = llvm.mlir.constant(4 : index) : i64
          %13 = llvm.mlir.constant(3 : index) : i64
          %14 = llvm.mlir.constant(2 : index) : i64
          %15 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x16xf32>) : !llvm.array<7 x vector<16xf32>>
          %16 = llvm.mlir.constant(16 : index) : i64
          %17 = llvm.mlir.constant(1 : index) : i64
          %18 = llvm.mlir.constant(32 : index) : i64
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> i32
          %23 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %24 = llvm.load %23 : !llvm.ptr -> i32
          %25 = llvm.getelementptr %21[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.zext %22 : i32 to i64
          %28 = llvm.zext %24 : i32 to i64
          %29 = llvm.zext %26 : i32 to i64
          %30 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %27, %5 : i64
          %33 = llvm.udiv %32, %6 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%34, %3 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.getelementptr %36[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %28, %5 : i64
          %40 = llvm.udiv %39, %6 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%41, %3 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %29, %5 : i64
          %47 = llvm.udiv %46, %6 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %50 = llvm.extractvalue %49[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.sdiv %51, %9 : i64
          %53 = llvm.mul %52, %9 : i64
          %54 = llvm.icmp "ne" %51, %53 : i64
          %55 = llvm.icmp "slt" %51, %19 : i64
          %56 = llvm.and %54, %55 : i1
          %57 = llvm.add %52, %8 : i64
          %58 = llvm.select %56, %57, %52 : i1, i64
          %59 = llvm.srem %51, %9 : i64
          %60 = llvm.icmp "slt" %59, %19 : i64
          %61 = llvm.add %59, %9 overflow<nsw> : i64
          %62 = llvm.select %60, %61, %59 : i1, i64
          %63 = llvm.mul %62, %9 overflow<nsw> : i64
          llvm.br ^bb1(%19 : i64)
        ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb4
          %65 = llvm.icmp "slt" %64, %18 : i64
          llvm.cond_br %65, ^bb2(%19, %15 : i64, !llvm.array<7 x vector<16xf32>>), ^bb5
        ^bb2(%66: i64, %67: !llvm.array<7 x vector<16xf32>>):  // 2 preds: ^bb1, ^bb3
          %68 = llvm.icmp "slt" %66, %18 : i64
          llvm.cond_br %68, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %69 = llvm.mul %66, %3 : i64
          %70 = llvm.mul %58, %18 : i64
          %71 = llvm.add %69, %70 : i64
          %72 = llvm.add %71, %64 : i64
          %73 = llvm.getelementptr %41[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %75 = llvm.mul %63, %18 overflow<nsw, nuw> : i64
          %76 = llvm.add %75, %66 overflow<nsw, nuw> : i64
          %77 = llvm.getelementptr inbounds|nuw %34[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 : !llvm.ptr -> f32
          %79 = llvm.insertelement %78, %1[%0 : i32] : vector<16xf32>
          %80 = llvm.shufflevector %79, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %81 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<16xf32>> 
          %82 = llvm.intr.fmuladd(%80, %74, %81) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %83 = llvm.add %63, %17 : i64
          %84 = llvm.mul %83, %18 overflow<nsw, nuw> : i64
          %85 = llvm.add %84, %66 overflow<nsw, nuw> : i64
          %86 = llvm.getelementptr inbounds|nuw %34[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 : !llvm.ptr -> f32
          %88 = llvm.insertelement %87, %1[%0 : i32] : vector<16xf32>
          %89 = llvm.shufflevector %88, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %90 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<16xf32>> 
          %91 = llvm.intr.fmuladd(%89, %74, %90) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %92 = llvm.add %63, %14 : i64
          %93 = llvm.mul %92, %18 overflow<nsw, nuw> : i64
          %94 = llvm.add %93, %66 overflow<nsw, nuw> : i64
          %95 = llvm.getelementptr inbounds|nuw %34[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 : !llvm.ptr -> f32
          %97 = llvm.insertelement %96, %1[%0 : i32] : vector<16xf32>
          %98 = llvm.shufflevector %97, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %99 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<16xf32>> 
          %100 = llvm.intr.fmuladd(%98, %74, %99) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %101 = llvm.add %63, %13 : i64
          %102 = llvm.mul %101, %18 overflow<nsw, nuw> : i64
          %103 = llvm.add %102, %66 overflow<nsw, nuw> : i64
          %104 = llvm.getelementptr inbounds|nuw %34[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 : !llvm.ptr -> f32
          %106 = llvm.insertelement %105, %1[%0 : i32] : vector<16xf32>
          %107 = llvm.shufflevector %106, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %108 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<16xf32>> 
          %109 = llvm.intr.fmuladd(%107, %74, %108) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %110 = llvm.add %63, %12 : i64
          %111 = llvm.mul %110, %18 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %66 overflow<nsw, nuw> : i64
          %113 = llvm.getelementptr inbounds|nuw %34[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 : !llvm.ptr -> f32
          %115 = llvm.insertelement %114, %1[%0 : i32] : vector<16xf32>
          %116 = llvm.shufflevector %115, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %117 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<16xf32>> 
          %118 = llvm.intr.fmuladd(%116, %74, %117) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %119 = llvm.add %63, %11 : i64
          %120 = llvm.mul %119, %18 overflow<nsw, nuw> : i64
          %121 = llvm.add %120, %66 overflow<nsw, nuw> : i64
          %122 = llvm.getelementptr inbounds|nuw %34[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 : !llvm.ptr -> f32
          %124 = llvm.insertelement %123, %1[%0 : i32] : vector<16xf32>
          %125 = llvm.shufflevector %124, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %126 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<16xf32>> 
          %127 = llvm.intr.fmuladd(%125, %74, %126) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %128 = llvm.add %63, %10 : i64
          %129 = llvm.mul %128, %18 overflow<nsw, nuw> : i64
          %130 = llvm.add %129, %66 overflow<nsw, nuw> : i64
          %131 = llvm.getelementptr inbounds|nuw %34[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 : !llvm.ptr -> f32
          %133 = llvm.insertelement %132, %1[%0 : i32] : vector<16xf32>
          %134 = llvm.shufflevector %133, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %135 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<16xf32>> 
          %136 = llvm.intr.fmuladd(%134, %74, %135) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %137 = llvm.insertvalue %82, %7[0] : !llvm.array<7 x vector<16xf32>> 
          %138 = llvm.insertvalue %91, %137[1] : !llvm.array<7 x vector<16xf32>> 
          %139 = llvm.insertvalue %100, %138[2] : !llvm.array<7 x vector<16xf32>> 
          %140 = llvm.insertvalue %109, %139[3] : !llvm.array<7 x vector<16xf32>> 
          %141 = llvm.insertvalue %118, %140[4] : !llvm.array<7 x vector<16xf32>> 
          %142 = llvm.insertvalue %127, %141[5] : !llvm.array<7 x vector<16xf32>> 
          %143 = llvm.insertvalue %136, %142[6] : !llvm.array<7 x vector<16xf32>> 
          %144 = llvm.add %66, %17 : i64
          llvm.br ^bb2(%144, %143 : i64, !llvm.array<7 x vector<16xf32>>)
        ^bb4:  // pred: ^bb2
          %145 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<16xf32>> 
          %146 = llvm.extractvalue %15[0] : !llvm.array<7 x vector<16xf32>> 
          %147 = llvm.fadd %145, %146 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %148 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<16xf32>> 
          %149 = llvm.extractvalue %15[1] : !llvm.array<7 x vector<16xf32>> 
          %150 = llvm.fadd %148, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %151 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<16xf32>> 
          %152 = llvm.extractvalue %15[2] : !llvm.array<7 x vector<16xf32>> 
          %153 = llvm.fadd %151, %152 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %154 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<16xf32>> 
          %155 = llvm.extractvalue %15[3] : !llvm.array<7 x vector<16xf32>> 
          %156 = llvm.fadd %154, %155 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %157 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<16xf32>> 
          %158 = llvm.extractvalue %15[4] : !llvm.array<7 x vector<16xf32>> 
          %159 = llvm.fadd %157, %158 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %160 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<16xf32>> 
          %161 = llvm.extractvalue %15[5] : !llvm.array<7 x vector<16xf32>> 
          %162 = llvm.fadd %160, %161 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %163 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<16xf32>> 
          %164 = llvm.extractvalue %15[6] : !llvm.array<7 x vector<16xf32>> 
          %165 = llvm.fadd %163, %164 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %166 = llvm.mul %58, %2 : i64
          %167 = llvm.mul %63, %18 : i64
          %168 = llvm.add %166, %167 : i64
          %169 = llvm.add %168, %64 : i64
          %170 = llvm.getelementptr %48[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %170 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %171 = llvm.add %63, %17 : i64
          %172 = llvm.mul %171, %18 : i64
          %173 = llvm.add %166, %172 : i64
          %174 = llvm.add %173, %64 : i64
          %175 = llvm.getelementptr %48[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %150, %175 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %176 = llvm.add %63, %14 : i64
          %177 = llvm.mul %176, %18 : i64
          %178 = llvm.add %166, %177 : i64
          %179 = llvm.add %178, %64 : i64
          %180 = llvm.getelementptr %48[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %180 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %181 = llvm.add %63, %13 : i64
          %182 = llvm.mul %181, %18 : i64
          %183 = llvm.add %166, %182 : i64
          %184 = llvm.add %183, %64 : i64
          %185 = llvm.getelementptr %48[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %185 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %186 = llvm.add %63, %12 : i64
          %187 = llvm.mul %186, %18 : i64
          %188 = llvm.add %166, %187 : i64
          %189 = llvm.add %188, %64 : i64
          %190 = llvm.getelementptr %48[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %190 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %191 = llvm.add %63, %11 : i64
          %192 = llvm.mul %191, %18 : i64
          %193 = llvm.add %166, %192 : i64
          %194 = llvm.add %193, %64 : i64
          %195 = llvm.getelementptr %48[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %162, %195 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %196 = llvm.add %63, %10 : i64
          %197 = llvm.mul %196, %18 : i64
          %198 = llvm.add %166, %197 : i64
          %199 = llvm.add %198, %64 : i64
          %200 = llvm.getelementptr %48[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %165, %200 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %201 = llvm.add %64, %16 : i64
          llvm.br ^bb1(%201 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c5408512_i32 = arith.constant 5408512 : i32
    %c407680_i32 = arith.constant 407680 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer = util.global.load immutable @main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_8::@embedded_elf_riscv_64::@main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_8) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_8::@embedded_elf_riscv_64::@main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c5408512_i32, %c407680_i32]) bindings([
      (%main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_8_embedded_elf_riscv_64_main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb1(%4 : index)
  ^bb3:  // pred: ^bb1
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%0) signal(%fence) commands(%cmd) flags("None")
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
