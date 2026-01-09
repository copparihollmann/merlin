#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_149 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(512 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(8 : i64) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.poison : !llvm.array<7 x vector<16xf32>>
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(7 : index) : i64
          %11 = llvm.mlir.constant(6 : index) : i64
          %12 = llvm.mlir.constant(5 : index) : i64
          %13 = llvm.mlir.constant(4 : index) : i64
          %14 = llvm.mlir.constant(3 : index) : i64
          %15 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x16xf32>) : !llvm.array<7 x vector<16xf32>>
          %16 = llvm.mlir.constant(16 : index) : i64
          %17 = llvm.mlir.constant(32 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(256 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> i32
          %25 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.getelementptr %23[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.zext %24 : i32 to i64
          %30 = llvm.zext %26 : i32 to i64
          %31 = llvm.zext %28 : i32 to i64
          %32 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = llvm.mul %29, %6 : i64
          %35 = llvm.udiv %34, %7 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.getelementptr %38[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          %41 = llvm.mul %30, %6 : i64
          %42 = llvm.udiv %41, %7 : i64
          %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
          %44 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %45 = llvm.extractvalue %44[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.getelementptr %45[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %31, %6 : i64
          %49 = llvm.udiv %48, %7 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%50, %4 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %52 = llvm.extractvalue %51[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %53 = llvm.zext %52 : i32 to i64
          %54 = llvm.sdiv %53, %10 : i64
          %55 = llvm.mul %54, %10 : i64
          %56 = llvm.icmp "ne" %53, %55 : i64
          %57 = llvm.icmp "slt" %53, %21 : i64
          %58 = llvm.and %56, %57 : i1
          %59 = llvm.add %54, %9 : i64
          %60 = llvm.select %58, %59, %54 : i1, i64
          %61 = llvm.srem %53, %10 : i64
          %62 = llvm.icmp "slt" %61, %21 : i64
          %63 = llvm.add %61, %10 overflow<nsw> : i64
          %64 = llvm.select %62, %63, %61 : i1, i64
          %65 = llvm.mul %60, %18 overflow<nsw> : i64
          %66 = llvm.mul %64, %10 overflow<nsw> : i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%67: i64):  // 2 preds: ^bb0, ^bb7
          %68 = llvm.icmp "slt" %67, %18 : i64
          llvm.cond_br %68, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %69 = llvm.add %67, %65 : i64
          llvm.br ^bb3(%21 : i64)
        ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb6
          %71 = llvm.icmp "slt" %70, %17 : i64
          llvm.cond_br %71, ^bb4(%21, %15 : i64, !llvm.array<7 x vector<16xf32>>), ^bb7
        ^bb4(%72: i64, %73: !llvm.array<7 x vector<16xf32>>):  // 2 preds: ^bb3, ^bb5
          %74 = llvm.icmp "slt" %72, %20 : i64
          llvm.cond_br %74, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %75 = llvm.mul %72, %3 : i64
          %76 = llvm.mul %69, %17 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.add %77, %70 : i64
          %79 = llvm.getelementptr %43[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.load %79 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %81 = llvm.mul %66, %20 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %72 overflow<nsw, nuw> : i64
          %83 = llvm.getelementptr inbounds|nuw %36[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 : !llvm.ptr -> f32
          %85 = llvm.insertelement %84, %1[%0 : i32] : vector<16xf32>
          %86 = llvm.shufflevector %85, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %87 = llvm.extractvalue %73[0] : !llvm.array<7 x vector<16xf32>> 
          %88 = llvm.intr.fmuladd(%86, %80, %87) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %89 = llvm.add %66, %19 : i64
          %90 = llvm.mul %89, %20 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %72 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %36[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %1[%0 : i32] : vector<16xf32>
          %95 = llvm.shufflevector %94, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %96 = llvm.extractvalue %73[1] : !llvm.array<7 x vector<16xf32>> 
          %97 = llvm.intr.fmuladd(%95, %80, %96) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %98 = llvm.add %66, %18 : i64
          %99 = llvm.mul %98, %20 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %72 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %36[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.insertelement %102, %1[%0 : i32] : vector<16xf32>
          %104 = llvm.shufflevector %103, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %105 = llvm.extractvalue %73[2] : !llvm.array<7 x vector<16xf32>> 
          %106 = llvm.intr.fmuladd(%104, %80, %105) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %107 = llvm.add %66, %14 : i64
          %108 = llvm.mul %107, %20 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %72 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %36[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.insertelement %111, %1[%0 : i32] : vector<16xf32>
          %113 = llvm.shufflevector %112, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %114 = llvm.extractvalue %73[3] : !llvm.array<7 x vector<16xf32>> 
          %115 = llvm.intr.fmuladd(%113, %80, %114) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %116 = llvm.add %66, %13 : i64
          %117 = llvm.mul %116, %20 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %72 overflow<nsw, nuw> : i64
          %119 = llvm.getelementptr inbounds|nuw %36[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 : !llvm.ptr -> f32
          %121 = llvm.insertelement %120, %1[%0 : i32] : vector<16xf32>
          %122 = llvm.shufflevector %121, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %123 = llvm.extractvalue %73[4] : !llvm.array<7 x vector<16xf32>> 
          %124 = llvm.intr.fmuladd(%122, %80, %123) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %125 = llvm.add %66, %12 : i64
          %126 = llvm.mul %125, %20 overflow<nsw, nuw> : i64
          %127 = llvm.add %126, %72 overflow<nsw, nuw> : i64
          %128 = llvm.getelementptr inbounds|nuw %36[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 : !llvm.ptr -> f32
          %130 = llvm.insertelement %129, %1[%0 : i32] : vector<16xf32>
          %131 = llvm.shufflevector %130, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %132 = llvm.extractvalue %73[5] : !llvm.array<7 x vector<16xf32>> 
          %133 = llvm.intr.fmuladd(%131, %80, %132) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %134 = llvm.add %66, %11 : i64
          %135 = llvm.mul %134, %20 overflow<nsw, nuw> : i64
          %136 = llvm.add %135, %72 overflow<nsw, nuw> : i64
          %137 = llvm.getelementptr inbounds|nuw %36[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 : !llvm.ptr -> f32
          %139 = llvm.insertelement %138, %1[%0 : i32] : vector<16xf32>
          %140 = llvm.shufflevector %139, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %141 = llvm.extractvalue %73[6] : !llvm.array<7 x vector<16xf32>> 
          %142 = llvm.intr.fmuladd(%140, %80, %141) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %143 = llvm.insertvalue %88, %8[0] : !llvm.array<7 x vector<16xf32>> 
          %144 = llvm.insertvalue %97, %143[1] : !llvm.array<7 x vector<16xf32>> 
          %145 = llvm.insertvalue %106, %144[2] : !llvm.array<7 x vector<16xf32>> 
          %146 = llvm.insertvalue %115, %145[3] : !llvm.array<7 x vector<16xf32>> 
          %147 = llvm.insertvalue %124, %146[4] : !llvm.array<7 x vector<16xf32>> 
          %148 = llvm.insertvalue %133, %147[5] : !llvm.array<7 x vector<16xf32>> 
          %149 = llvm.insertvalue %142, %148[6] : !llvm.array<7 x vector<16xf32>> 
          %150 = llvm.add %72, %19 : i64
          llvm.br ^bb4(%150, %149 : i64, !llvm.array<7 x vector<16xf32>>)
        ^bb6:  // pred: ^bb4
          %151 = llvm.extractvalue %73[0] : !llvm.array<7 x vector<16xf32>> 
          %152 = llvm.extractvalue %15[0] : !llvm.array<7 x vector<16xf32>> 
          %153 = llvm.fadd %151, %152 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %154 = llvm.extractvalue %73[1] : !llvm.array<7 x vector<16xf32>> 
          %155 = llvm.extractvalue %15[1] : !llvm.array<7 x vector<16xf32>> 
          %156 = llvm.fadd %154, %155 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %157 = llvm.extractvalue %73[2] : !llvm.array<7 x vector<16xf32>> 
          %158 = llvm.extractvalue %15[2] : !llvm.array<7 x vector<16xf32>> 
          %159 = llvm.fadd %157, %158 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %160 = llvm.extractvalue %73[3] : !llvm.array<7 x vector<16xf32>> 
          %161 = llvm.extractvalue %15[3] : !llvm.array<7 x vector<16xf32>> 
          %162 = llvm.fadd %160, %161 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %163 = llvm.extractvalue %73[4] : !llvm.array<7 x vector<16xf32>> 
          %164 = llvm.extractvalue %15[4] : !llvm.array<7 x vector<16xf32>> 
          %165 = llvm.fadd %163, %164 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %166 = llvm.extractvalue %73[5] : !llvm.array<7 x vector<16xf32>> 
          %167 = llvm.extractvalue %15[5] : !llvm.array<7 x vector<16xf32>> 
          %168 = llvm.fadd %166, %167 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %169 = llvm.extractvalue %73[6] : !llvm.array<7 x vector<16xf32>> 
          %170 = llvm.extractvalue %15[6] : !llvm.array<7 x vector<16xf32>> 
          %171 = llvm.fadd %169, %170 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %172 = llvm.mul %69, %2 : i64
          %173 = llvm.mul %66, %17 : i64
          %174 = llvm.add %172, %173 : i64
          %175 = llvm.add %174, %70 : i64
          %176 = llvm.getelementptr %50[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %176 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %177 = llvm.add %66, %19 : i64
          %178 = llvm.mul %177, %17 : i64
          %179 = llvm.add %172, %178 : i64
          %180 = llvm.add %179, %70 : i64
          %181 = llvm.getelementptr %50[%180] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %181 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %182 = llvm.add %66, %18 : i64
          %183 = llvm.mul %182, %17 : i64
          %184 = llvm.add %172, %183 : i64
          %185 = llvm.add %184, %70 : i64
          %186 = llvm.getelementptr %50[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %186 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %187 = llvm.add %66, %14 : i64
          %188 = llvm.mul %187, %17 : i64
          %189 = llvm.add %172, %188 : i64
          %190 = llvm.add %189, %70 : i64
          %191 = llvm.getelementptr %50[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %162, %191 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %192 = llvm.add %66, %13 : i64
          %193 = llvm.mul %192, %17 : i64
          %194 = llvm.add %172, %193 : i64
          %195 = llvm.add %194, %70 : i64
          %196 = llvm.getelementptr %50[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %165, %196 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %197 = llvm.add %66, %12 : i64
          %198 = llvm.mul %197, %17 : i64
          %199 = llvm.add %172, %198 : i64
          %200 = llvm.add %199, %70 : i64
          %201 = llvm.getelementptr %50[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %168, %201 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %202 = llvm.add %66, %11 : i64
          %203 = llvm.mul %202, %17 : i64
          %204 = llvm.add %172, %203 : i64
          %205 = llvm.add %204, %70 : i64
          %206 = llvm.getelementptr %50[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %171, %206 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %207 = llvm.add %70, %16 : i64
          llvm.br ^bb3(%207 : i64)
        ^bb7:  // pred: ^bb3
          %208 = llvm.add %67, %19 : i64
          llvm.br ^bb1(%208 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c3884800_i32 = arith.constant 3884800 : i32
    %c577024_i32 = arith.constant 577024 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer = util.global.load immutable @main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_149::@embedded_elf_riscv_64::@main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_149) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_149::@embedded_elf_riscv_64::@main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32, %c3884800_i32, %c577024_i32]) bindings([
      (%main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_149_embedded_elf_riscv_64_main_graph$async_dispatch_149_matmul_like_16x49x32x256_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
