#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_20 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_20_reduction_3136x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c98 = arith.constant 98 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c98, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_20_reduction_3136x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %2 = llvm.mlir.poison : vector<8xf32>
          %3 = llvm.mlir.constant(7 : i64) : i64
          %4 = llvm.mlir.constant(6 : i64) : i64
          %5 = llvm.mlir.constant(5 : i64) : i64
          %6 = llvm.mlir.constant(4 : i64) : i64
          %7 = llvm.mlir.constant(3 : i64) : i64
          %8 = llvm.mlir.constant(2 : i64) : i64
          %9 = llvm.mlir.constant(1 : i64) : i64
          %10 = llvm.mlir.constant(0 : i64) : i64
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(8 : i64) : i64
          %14 = llvm.mlir.constant(32 : i64) : i64
          %15 = llvm.mlir.constant(1024 : index) : i64
          %16 = llvm.mlir.constant(256 : index) : i64
          %17 = llvm.mlir.poison : vector<64xf32>
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.mlir.constant(8 : index) : i64
          %25 = llvm.mlir.constant(1 : index) : i64
          %26 = llvm.mlir.constant(4 : index) : i64
          %27 = llvm.mlir.constant(32 : index) : i64
          %28 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %29 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %30 = llvm.mlir.constant(dense<3.200000e+01> : vector<8xf32>) : vector<8xf32>
          %31 = llvm.mlir.constant(dense<9.99999997E-7> : vector<8xf32>) : vector<8xf32>
          %32 = llvm.alloca %24 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %33 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %34 = llvm.alloca %24 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %35 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %36 = llvm.alloca %15 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %37 = llvm.alloca %24 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %38 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %39 = llvm.extractvalue %38[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.load %39 : !llvm.ptr -> i32
          %41 = llvm.getelementptr %39[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %42 = llvm.load %41 : !llvm.ptr -> i32
          %43 = llvm.getelementptr %39[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %44 = llvm.load %43 : !llvm.ptr -> i32
          %45 = llvm.getelementptr %39[3] : (!llvm.ptr) -> !llvm.ptr, i32
          %46 = llvm.load %45 : !llvm.ptr -> i32
          %47 = llvm.zext %40 : i32 to i64
          %48 = llvm.zext %42 : i32 to i64
          %49 = llvm.zext %44 : i32 to i64
          %50 = llvm.zext %46 : i32 to i64
          %51 = llvm.extractvalue %38[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %52 = llvm.load %51 : !llvm.ptr -> !llvm.ptr
          %53 = llvm.mul %47, %13 : i64
          %54 = llvm.udiv %53, %14 : i64
          %55 = llvm.getelementptr %52[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
          %56 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %57 = llvm.extractvalue %56[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
          %59 = llvm.mul %48, %13 : i64
          %60 = llvm.udiv %59, %14 : i64
          %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%61, %11 : !llvm.ptr, i64)] : i1
          %62 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %63 = llvm.extractvalue %62[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %64 = llvm.getelementptr %63[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
          %66 = llvm.mul %49, %13 : i64
          %67 = llvm.udiv %66, %14 : i64
          %68 = llvm.getelementptr %65[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
          %69 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %70 = llvm.extractvalue %69[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %71 = llvm.getelementptr %70[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %72 = llvm.load %71 : !llvm.ptr -> !llvm.ptr
          %73 = llvm.mul %50, %13 : i64
          %74 = llvm.udiv %73, %14 : i64
          %75 = llvm.getelementptr %72[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
          %76 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %77 = llvm.extractvalue %76[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %78 = llvm.zext %77 : i32 to i64
          %79 = llvm.mul %78, %27 overflow<nsw> : i64
          llvm.store %29, %37 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          llvm.br ^bb1(%23 : i64)
        ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb4
          %81 = llvm.icmp "slt" %80, %27 : i64
          llvm.cond_br %81, ^bb2(%23 : i64), ^bb5(%23 : i64)
        ^bb2(%82: i64):  // 2 preds: ^bb1, ^bb3
          %83 = llvm.icmp "slt" %82, %27 : i64
          llvm.cond_br %83, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %84 = llvm.add %79, %80 : i64
          %85 = llvm.mul %84, %27 overflow<nsw, nuw> : i64
          %86 = llvm.add %85, %82 overflow<nsw, nuw> : i64
          %87 = llvm.getelementptr inbounds|nuw %68[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 : !llvm.ptr -> f32
          %89 = llvm.mul %80, %27 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %82 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %36[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %88, %91 : f32, !llvm.ptr
          %92 = llvm.add %82, %25 : i64
          llvm.br ^bb2(%92 : i64)
        ^bb4:  // pred: ^bb2
          %93 = llvm.add %80, %25 : i64
          llvm.br ^bb1(%93 : i64)
        ^bb5(%94: i64):  // 2 preds: ^bb1, ^bb36
          %95 = llvm.icmp "slt" %94, %27 : i64
          llvm.cond_br %95, ^bb6(%23 : i64), ^bb37(%23 : i64)
        ^bb6(%96: i64):  // 2 preds: ^bb5, ^bb9
          %97 = llvm.icmp "slt" %96, %24 : i64
          llvm.cond_br %97, ^bb7(%23 : i64), ^bb10(%23 : i64)
        ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb8
          %99 = llvm.icmp "slt" %98, %27 : i64
          llvm.cond_br %99, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %100 = llvm.add %94, %96 : i64
          %101 = llvm.mul %100, %27 overflow<nsw, nuw> : i64
          %102 = llvm.add %101, %98 overflow<nsw, nuw> : i64
          %103 = llvm.getelementptr inbounds|nuw %36[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 : !llvm.ptr -> f32
          %105 = llvm.mul %96, %27 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %98 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %35[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %104, %107 : f32, !llvm.ptr
          %108 = llvm.add %98, %25 : i64
          llvm.br ^bb7(%108 : i64)
        ^bb9:  // pred: ^bb7
          %109 = llvm.add %96, %25 : i64
          llvm.br ^bb6(%109 : i64)
        ^bb10(%110: i64):  // 2 preds: ^bb6, ^bb11
          %111 = llvm.icmp "slt" %110, %27 : i64
          llvm.cond_br %111, ^bb11, ^bb12(%23 : i64)
        ^bb11:  // pred: ^bb10
          %112 = llvm.add %94, %79 : i64
          %113 = llvm.mul %112, %27 : i64
          %114 = llvm.add %113, %110 : i64
          %115 = llvm.getelementptr %55[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %117 = llvm.add %112, %25 : i64
          %118 = llvm.mul %117, %27 : i64
          %119 = llvm.add %118, %110 : i64
          %120 = llvm.getelementptr %55[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %122 = llvm.add %112, %22 : i64
          %123 = llvm.mul %122, %27 : i64
          %124 = llvm.add %123, %110 : i64
          %125 = llvm.getelementptr %55[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %126 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %127 = llvm.add %112, %21 : i64
          %128 = llvm.mul %127, %27 : i64
          %129 = llvm.add %128, %110 : i64
          %130 = llvm.getelementptr %55[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %131 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %132 = llvm.add %112, %26 : i64
          %133 = llvm.mul %132, %27 : i64
          %134 = llvm.add %133, %110 : i64
          %135 = llvm.getelementptr %55[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %136 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %137 = llvm.add %112, %20 : i64
          %138 = llvm.mul %137, %27 : i64
          %139 = llvm.add %138, %110 : i64
          %140 = llvm.getelementptr %55[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %141 = llvm.load %140 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %142 = llvm.add %112, %19 : i64
          %143 = llvm.mul %142, %27 : i64
          %144 = llvm.add %143, %110 : i64
          %145 = llvm.getelementptr %55[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %146 = llvm.load %145 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %147 = llvm.add %112, %18 : i64
          %148 = llvm.mul %147, %27 : i64
          %149 = llvm.add %148, %110 : i64
          %150 = llvm.getelementptr %55[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %151 = llvm.load %150 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %152 = llvm.getelementptr %61[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %153 = llvm.load %152 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %154 = llvm.getelementptr %61[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %155 = llvm.load %154 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %156 = llvm.getelementptr %61[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %157 = llvm.load %156 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %158 = llvm.getelementptr %61[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %159 = llvm.load %158 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %160 = llvm.getelementptr %61[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %161 = llvm.load %160 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %162 = llvm.getelementptr %61[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %163 = llvm.load %162 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %164 = llvm.getelementptr %61[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %166 = llvm.getelementptr %61[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %167 = llvm.load %166 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %168 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %169 = llvm.fadd %153, %168 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %170 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %171 = llvm.fadd %155, %170 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %172 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %173 = llvm.fadd %157, %172 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %174 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %175 = llvm.fadd %159, %174 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %176 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %177 = llvm.fadd %161, %176 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %178 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %179 = llvm.fadd %163, %178 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %180 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %181 = llvm.fadd %165, %180 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %182 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %183 = llvm.fadd %167, %182 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %184 = llvm.fadd %116, %169 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %185 = llvm.fadd %121, %171 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %186 = llvm.fadd %126, %173 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %187 = llvm.fadd %131, %175 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %188 = llvm.fadd %136, %177 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %189 = llvm.fadd %141, %179 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %190 = llvm.fadd %146, %181 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %191 = llvm.fadd %151, %183 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %192 = llvm.mul %23, %27 : i64
          %193 = llvm.add %192, %110 : i64
          %194 = llvm.getelementptr %35[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %184, %194 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %195 = llvm.mul %25, %27 : i64
          %196 = llvm.add %195, %110 : i64
          %197 = llvm.getelementptr %35[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %185, %197 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %198 = llvm.mul %22, %27 : i64
          %199 = llvm.add %198, %110 : i64
          %200 = llvm.getelementptr %35[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %186, %200 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %201 = llvm.mul %21, %27 : i64
          %202 = llvm.add %201, %110 : i64
          %203 = llvm.getelementptr %35[%202] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %187, %203 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %204 = llvm.mul %26, %27 : i64
          %205 = llvm.add %204, %110 : i64
          %206 = llvm.getelementptr %35[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %188, %206 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %207 = llvm.mul %20, %27 : i64
          %208 = llvm.add %207, %110 : i64
          %209 = llvm.getelementptr %35[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %189, %209 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %210 = llvm.mul %19, %27 : i64
          %211 = llvm.add %210, %110 : i64
          %212 = llvm.getelementptr %35[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %190, %212 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %213 = llvm.mul %18, %27 : i64
          %214 = llvm.add %213, %110 : i64
          %215 = llvm.getelementptr %35[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %191, %215 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %216 = llvm.add %110, %24 : i64
          llvm.br ^bb10(%216 : i64)
        ^bb12(%217: i64):  // 2 preds: ^bb10, ^bb13
          %218 = llvm.icmp "slt" %217, %24 : i64
          llvm.cond_br %218, ^bb13, ^bb14(%23 : i64)
        ^bb13:  // pred: ^bb12
          %219 = llvm.getelementptr inbounds|nuw %37[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %220 = llvm.load %219 : !llvm.ptr -> f32
          %221 = llvm.getelementptr inbounds|nuw %34[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %220, %221 : f32, !llvm.ptr
          %222 = llvm.add %217, %25 : i64
          llvm.br ^bb12(%222 : i64)
        ^bb14(%223: i64):  // 2 preds: ^bb12, ^bb17
          %224 = llvm.icmp "slt" %223, %24 : i64
          llvm.cond_br %224, ^bb15(%23, %29 : i64, vector<8xf32>), ^bb18
        ^bb15(%225: i64, %226: vector<8xf32>):  // 2 preds: ^bb14, ^bb16
          %227 = llvm.icmp "slt" %225, %26 : i64
          llvm.cond_br %227, ^bb16, ^bb17
        ^bb16:  // pred: ^bb15
          %228 = llvm.mul %225, %24 overflow<nsw> : i64
          %229 = llvm.mul %223, %27 : i64
          %230 = llvm.add %229, %228 : i64
          %231 = llvm.getelementptr %35[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %232 = llvm.load %231 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %233 = llvm.fadd %226, %232 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %234 = llvm.add %225, %25 : i64
          llvm.br ^bb15(%234, %233 : i64, vector<8xf32>)
        ^bb17:  // pred: ^bb15
          %235 = llvm.getelementptr inbounds|nuw %34[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %236 = llvm.load %235 : !llvm.ptr -> f32
          %237 = "llvm.intr.vector.reduce.fadd"(%236, %226) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          llvm.store %237, %235 : f32, !llvm.ptr
          %238 = llvm.add %223, %25 : i64
          llvm.br ^bb14(%238 : i64)
        ^bb18:  // pred: ^bb14
          %239 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %240 = llvm.fdiv %239, %30 : vector<8xf32>
          %241 = llvm.shufflevector %240, %240 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %242 = llvm.shufflevector %241, %17 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %243 = llvm.shufflevector %241, %242 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %244 = llvm.shufflevector %241, %243 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %245 = llvm.shufflevector %241, %244 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %246 = llvm.shufflevector %241, %245 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %247 = llvm.shufflevector %241, %246 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %248 = llvm.shufflevector %241, %247 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %249 = llvm.shufflevector %241, %248 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %250 = llvm.shufflevector %249, %249 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %251 = llvm.shufflevector %250, %250 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %252 = llvm.shufflevector %250, %250 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %253 = llvm.shufflevector %250, %250 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %254 = llvm.shufflevector %250, %250 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %255 = llvm.shufflevector %250, %250 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %256 = llvm.shufflevector %250, %250 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %257 = llvm.shufflevector %250, %250 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %258 = llvm.shufflevector %250, %250 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          llvm.br ^bb19(%23, %29 : i64, vector<8xf32>)
        ^bb19(%259: i64, %260: vector<8xf32>):  // 2 preds: ^bb18, ^bb20
          %261 = llvm.icmp "slt" %259, %27 : i64
          llvm.cond_br %261, ^bb20, ^bb21(%23 : i64)
        ^bb20:  // pred: ^bb19
          %262 = llvm.add %94, %79 : i64
          %263 = llvm.mul %262, %27 : i64
          %264 = llvm.add %263, %259 : i64
          %265 = llvm.getelementptr %55[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %266 = llvm.load %265 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %267 = llvm.add %262, %25 : i64
          %268 = llvm.mul %267, %27 : i64
          %269 = llvm.add %268, %259 : i64
          %270 = llvm.getelementptr %55[%269] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %271 = llvm.load %270 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %272 = llvm.add %262, %22 : i64
          %273 = llvm.mul %272, %27 : i64
          %274 = llvm.add %273, %259 : i64
          %275 = llvm.getelementptr %55[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %276 = llvm.load %275 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %277 = llvm.add %262, %21 : i64
          %278 = llvm.mul %277, %27 : i64
          %279 = llvm.add %278, %259 : i64
          %280 = llvm.getelementptr %55[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %281 = llvm.load %280 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %282 = llvm.add %262, %26 : i64
          %283 = llvm.mul %282, %27 : i64
          %284 = llvm.add %283, %259 : i64
          %285 = llvm.getelementptr %55[%284] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %286 = llvm.load %285 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %287 = llvm.add %262, %20 : i64
          %288 = llvm.mul %287, %27 : i64
          %289 = llvm.add %288, %259 : i64
          %290 = llvm.getelementptr %55[%289] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %291 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %292 = llvm.add %262, %19 : i64
          %293 = llvm.mul %292, %27 : i64
          %294 = llvm.add %293, %259 : i64
          %295 = llvm.getelementptr %55[%294] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %296 = llvm.load %295 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %297 = llvm.add %262, %18 : i64
          %298 = llvm.mul %297, %27 : i64
          %299 = llvm.add %298, %259 : i64
          %300 = llvm.getelementptr %55[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %301 = llvm.load %300 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %302 = llvm.getelementptr %61[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %303 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %304 = llvm.getelementptr %61[%269] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %305 = llvm.load %304 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %306 = llvm.getelementptr %61[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %307 = llvm.load %306 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %308 = llvm.getelementptr %61[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %309 = llvm.load %308 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %310 = llvm.getelementptr %61[%284] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %311 = llvm.load %310 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %312 = llvm.getelementptr %61[%289] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %313 = llvm.load %312 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %314 = llvm.getelementptr %61[%294] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %315 = llvm.load %314 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %316 = llvm.getelementptr %61[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %317 = llvm.load %316 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %318 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %319 = llvm.fadd %303, %318 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %320 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %321 = llvm.fadd %305, %320 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %322 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %323 = llvm.fadd %307, %322 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %324 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %325 = llvm.fadd %309, %324 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %326 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %327 = llvm.fadd %311, %326 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %328 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %329 = llvm.fadd %313, %328 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %330 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %331 = llvm.fadd %315, %330 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %332 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %333 = llvm.fadd %317, %332 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %334 = llvm.fadd %266, %319 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %335 = llvm.fadd %271, %321 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %336 = llvm.fadd %276, %323 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %337 = llvm.fadd %281, %325 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %338 = llvm.fadd %286, %327 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %339 = llvm.fadd %291, %329 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %340 = llvm.fadd %296, %331 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %341 = llvm.fadd %301, %333 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %342 = llvm.fsub %334, %251 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %343 = llvm.fsub %335, %252 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %344 = llvm.fsub %336, %253 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %345 = llvm.fsub %337, %254 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %346 = llvm.fsub %338, %255 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %347 = llvm.fsub %339, %256 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %348 = llvm.fsub %340, %257 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %349 = llvm.fsub %341, %258 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %350 = llvm.extractelement %260[%10 : i64] : vector<8xf32>
          %351 = llvm.fmul %342, %342 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %352 = "llvm.intr.vector.reduce.fadd"(%350, %351) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %353 = llvm.extractelement %260[%9 : i64] : vector<8xf32>
          %354 = llvm.fmul %343, %343 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %355 = "llvm.intr.vector.reduce.fadd"(%353, %354) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %356 = llvm.extractelement %260[%8 : i64] : vector<8xf32>
          %357 = llvm.fmul %344, %344 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %358 = "llvm.intr.vector.reduce.fadd"(%356, %357) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %359 = llvm.extractelement %260[%7 : i64] : vector<8xf32>
          %360 = llvm.fmul %345, %345 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %361 = "llvm.intr.vector.reduce.fadd"(%359, %360) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %362 = llvm.extractelement %260[%6 : i64] : vector<8xf32>
          %363 = llvm.fmul %346, %346 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %364 = "llvm.intr.vector.reduce.fadd"(%362, %363) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %365 = llvm.extractelement %260[%5 : i64] : vector<8xf32>
          %366 = llvm.fmul %347, %347 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %367 = "llvm.intr.vector.reduce.fadd"(%365, %366) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %368 = llvm.extractelement %260[%4 : i64] : vector<8xf32>
          %369 = llvm.fmul %348, %348 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %370 = "llvm.intr.vector.reduce.fadd"(%368, %369) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %371 = llvm.extractelement %260[%3 : i64] : vector<8xf32>
          %372 = llvm.fmul %349, %349 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %373 = "llvm.intr.vector.reduce.fadd"(%371, %372) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %374 = llvm.insertelement %352, %2[%10 : i64] : vector<8xf32>
          %375 = llvm.insertelement %355, %374[%9 : i64] : vector<8xf32>
          %376 = llvm.insertelement %358, %375[%8 : i64] : vector<8xf32>
          %377 = llvm.insertelement %361, %376[%7 : i64] : vector<8xf32>
          %378 = llvm.insertelement %364, %377[%6 : i64] : vector<8xf32>
          %379 = llvm.insertelement %367, %378[%5 : i64] : vector<8xf32>
          %380 = llvm.insertelement %370, %379[%4 : i64] : vector<8xf32>
          %381 = llvm.insertelement %373, %380[%3 : i64] : vector<8xf32>
          %382 = llvm.add %259, %24 : i64
          llvm.br ^bb19(%382, %381 : i64, vector<8xf32>)
        ^bb21(%383: i64):  // 2 preds: ^bb19, ^bb24
          %384 = llvm.icmp "slt" %383, %24 : i64
          llvm.cond_br %384, ^bb22(%23 : i64), ^bb25(%23 : i64)
        ^bb22(%385: i64):  // 2 preds: ^bb21, ^bb23
          %386 = llvm.icmp "slt" %385, %27 : i64
          llvm.cond_br %386, ^bb23, ^bb24
        ^bb23:  // pred: ^bb22
          %387 = llvm.add %79, %94 : i64
          %388 = llvm.add %387, %383 : i64
          %389 = llvm.mul %388, %27 overflow<nsw, nuw> : i64
          %390 = llvm.add %389, %385 overflow<nsw, nuw> : i64
          %391 = llvm.getelementptr inbounds|nuw %68[%390] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %392 = llvm.load %391 : !llvm.ptr -> f32
          %393 = llvm.mul %383, %27 overflow<nsw, nuw> : i64
          %394 = llvm.add %393, %385 overflow<nsw, nuw> : i64
          %395 = llvm.getelementptr inbounds|nuw %33[%394] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %392, %395 : f32, !llvm.ptr
          %396 = llvm.add %385, %25 : i64
          llvm.br ^bb22(%396 : i64)
        ^bb24:  // pred: ^bb22
          %397 = llvm.add %383, %25 : i64
          llvm.br ^bb21(%397 : i64)
        ^bb25(%398: i64):  // 2 preds: ^bb21, ^bb26
          %399 = llvm.icmp "slt" %398, %27 : i64
          llvm.cond_br %399, ^bb26, ^bb27(%23 : i64)
        ^bb26:  // pred: ^bb25
          %400 = llvm.add %94, %79 : i64
          %401 = llvm.mul %400, %27 : i64
          %402 = llvm.add %401, %398 : i64
          %403 = llvm.getelementptr %55[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %404 = llvm.load %403 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %405 = llvm.add %400, %25 : i64
          %406 = llvm.mul %405, %27 : i64
          %407 = llvm.add %406, %398 : i64
          %408 = llvm.getelementptr %55[%407] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %409 = llvm.load %408 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %410 = llvm.add %400, %22 : i64
          %411 = llvm.mul %410, %27 : i64
          %412 = llvm.add %411, %398 : i64
          %413 = llvm.getelementptr %55[%412] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %414 = llvm.load %413 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %415 = llvm.add %400, %21 : i64
          %416 = llvm.mul %415, %27 : i64
          %417 = llvm.add %416, %398 : i64
          %418 = llvm.getelementptr %55[%417] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %419 = llvm.load %418 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %420 = llvm.add %400, %26 : i64
          %421 = llvm.mul %420, %27 : i64
          %422 = llvm.add %421, %398 : i64
          %423 = llvm.getelementptr %55[%422] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %424 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %425 = llvm.add %400, %20 : i64
          %426 = llvm.mul %425, %27 : i64
          %427 = llvm.add %426, %398 : i64
          %428 = llvm.getelementptr %55[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %429 = llvm.load %428 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %430 = llvm.add %400, %19 : i64
          %431 = llvm.mul %430, %27 : i64
          %432 = llvm.add %431, %398 : i64
          %433 = llvm.getelementptr %55[%432] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %434 = llvm.load %433 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %435 = llvm.add %400, %18 : i64
          %436 = llvm.mul %435, %27 : i64
          %437 = llvm.add %436, %398 : i64
          %438 = llvm.getelementptr %55[%437] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %439 = llvm.load %438 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %440 = llvm.getelementptr %61[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %441 = llvm.load %440 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %442 = llvm.getelementptr %61[%407] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %443 = llvm.load %442 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %444 = llvm.getelementptr %61[%412] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %445 = llvm.load %444 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %446 = llvm.getelementptr %61[%417] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %447 = llvm.load %446 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %448 = llvm.getelementptr %61[%422] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %449 = llvm.load %448 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %450 = llvm.getelementptr %61[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %451 = llvm.load %450 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %452 = llvm.getelementptr %61[%432] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %453 = llvm.load %452 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %454 = llvm.getelementptr %61[%437] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %455 = llvm.load %454 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %456 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %457 = llvm.fadd %441, %456 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %458 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %459 = llvm.fadd %443, %458 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %460 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %461 = llvm.fadd %445, %460 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %462 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %463 = llvm.fadd %447, %462 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %464 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %465 = llvm.fadd %449, %464 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %466 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %467 = llvm.fadd %451, %466 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %468 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %469 = llvm.fadd %453, %468 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %470 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %471 = llvm.fadd %455, %470 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %472 = llvm.fadd %404, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %473 = llvm.fadd %409, %459 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %474 = llvm.fadd %414, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %475 = llvm.fadd %419, %463 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %476 = llvm.fadd %424, %465 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %477 = llvm.fadd %429, %467 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %478 = llvm.fadd %434, %469 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %479 = llvm.fadd %439, %471 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %480 = llvm.mul %23, %27 : i64
          %481 = llvm.add %480, %398 : i64
          %482 = llvm.getelementptr %33[%481] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %472, %482 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %483 = llvm.mul %25, %27 : i64
          %484 = llvm.add %483, %398 : i64
          %485 = llvm.getelementptr %33[%484] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %473, %485 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %486 = llvm.mul %22, %27 : i64
          %487 = llvm.add %486, %398 : i64
          %488 = llvm.getelementptr %33[%487] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %474, %488 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %489 = llvm.mul %21, %27 : i64
          %490 = llvm.add %489, %398 : i64
          %491 = llvm.getelementptr %33[%490] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %475, %491 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %492 = llvm.mul %26, %27 : i64
          %493 = llvm.add %492, %398 : i64
          %494 = llvm.getelementptr %33[%493] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %476, %494 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %495 = llvm.mul %20, %27 : i64
          %496 = llvm.add %495, %398 : i64
          %497 = llvm.getelementptr %33[%496] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %477, %497 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %498 = llvm.mul %19, %27 : i64
          %499 = llvm.add %498, %398 : i64
          %500 = llvm.getelementptr %33[%499] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %478, %500 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %501 = llvm.mul %18, %27 : i64
          %502 = llvm.add %501, %398 : i64
          %503 = llvm.getelementptr %33[%502] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %479, %503 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %504 = llvm.add %398, %24 : i64
          llvm.br ^bb25(%504 : i64)
        ^bb27(%505: i64):  // 2 preds: ^bb25, ^bb28
          %506 = llvm.icmp "slt" %505, %24 : i64
          llvm.cond_br %506, ^bb28, ^bb29(%23 : i64)
        ^bb28:  // pred: ^bb27
          %507 = llvm.getelementptr inbounds|nuw %37[%505] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %508 = llvm.load %507 : !llvm.ptr -> f32
          %509 = llvm.getelementptr inbounds|nuw %32[%505] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %508, %509 : f32, !llvm.ptr
          %510 = llvm.add %505, %25 : i64
          llvm.br ^bb27(%510 : i64)
        ^bb29(%511: i64):  // 2 preds: ^bb27, ^bb32
          %512 = llvm.icmp "slt" %511, %24 : i64
          llvm.cond_br %512, ^bb30(%23, %29 : i64, vector<8xf32>), ^bb33
        ^bb30(%513: i64, %514: vector<8xf32>):  // 2 preds: ^bb29, ^bb31
          %515 = llvm.icmp "slt" %513, %26 : i64
          llvm.cond_br %515, ^bb31, ^bb32
        ^bb31:  // pred: ^bb30
          %516 = llvm.mul %513, %24 overflow<nsw> : i64
          %517 = llvm.mul %511, %27 : i64
          %518 = llvm.add %517, %516 : i64
          %519 = llvm.getelementptr %33[%518] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %520 = llvm.load %519 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %521 = llvm.fadd %514, %520 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %522 = llvm.add %513, %25 : i64
          llvm.br ^bb30(%522, %521 : i64, vector<8xf32>)
        ^bb32:  // pred: ^bb30
          %523 = llvm.getelementptr inbounds|nuw %32[%511] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %524 = llvm.load %523 : !llvm.ptr -> f32
          %525 = "llvm.intr.vector.reduce.fadd"(%524, %514) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          llvm.store %525, %523 : f32, !llvm.ptr
          %526 = llvm.add %511, %25 : i64
          llvm.br ^bb29(%526 : i64)
        ^bb33:  // pred: ^bb29
          %527 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %528 = llvm.fdiv %527, %30 : vector<8xf32>
          %529 = llvm.shufflevector %528, %528 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %530 = llvm.shufflevector %529, %17 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %531 = llvm.shufflevector %529, %530 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %532 = llvm.shufflevector %529, %531 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %533 = llvm.shufflevector %529, %532 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %534 = llvm.shufflevector %529, %533 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %535 = llvm.shufflevector %529, %534 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %536 = llvm.shufflevector %529, %535 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %537 = llvm.shufflevector %529, %536 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %538 = llvm.shufflevector %537, %537 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %539 = llvm.shufflevector %538, %538 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %540 = llvm.shufflevector %538, %538 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %541 = llvm.shufflevector %538, %538 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %542 = llvm.shufflevector %538, %538 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %543 = llvm.shufflevector %538, %538 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %544 = llvm.shufflevector %538, %538 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %545 = llvm.shufflevector %538, %538 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %546 = llvm.shufflevector %538, %538 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          %547 = llvm.fdiv %260, %30 : vector<8xf32>
          %548 = llvm.fadd %547, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %549 = llvm.intr.sqrt(%548) : (vector<8xf32>) -> vector<8xf32>
          %550 = llvm.fdiv %1, %549 : vector<8xf32>
          %551 = llvm.shufflevector %550, %550 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %552 = llvm.shufflevector %551, %17 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %553 = llvm.shufflevector %551, %552 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %554 = llvm.shufflevector %551, %553 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %555 = llvm.shufflevector %551, %554 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %556 = llvm.shufflevector %551, %555 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %557 = llvm.shufflevector %551, %556 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %558 = llvm.shufflevector %551, %557 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %559 = llvm.shufflevector %551, %558 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %560 = llvm.shufflevector %559, %559 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %561 = llvm.shufflevector %560, %560 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %562 = llvm.shufflevector %560, %560 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %563 = llvm.shufflevector %560, %560 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %564 = llvm.shufflevector %560, %560 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %565 = llvm.shufflevector %560, %560 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %566 = llvm.shufflevector %560, %560 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %567 = llvm.shufflevector %560, %560 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %568 = llvm.shufflevector %560, %560 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          llvm.br ^bb34(%23 : i64)
        ^bb34(%569: i64):  // 2 preds: ^bb33, ^bb35
          %570 = llvm.icmp "slt" %569, %27 : i64
          llvm.cond_br %570, ^bb35, ^bb36
        ^bb35:  // pred: ^bb34
          %571 = llvm.add %94, %79 : i64
          %572 = llvm.mul %571, %27 : i64
          %573 = llvm.add %572, %569 : i64
          %574 = llvm.getelementptr %55[%573] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %575 = llvm.load %574 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %576 = llvm.add %571, %25 : i64
          %577 = llvm.mul %576, %27 : i64
          %578 = llvm.add %577, %569 : i64
          %579 = llvm.getelementptr %55[%578] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %580 = llvm.load %579 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %581 = llvm.add %571, %22 : i64
          %582 = llvm.mul %581, %27 : i64
          %583 = llvm.add %582, %569 : i64
          %584 = llvm.getelementptr %55[%583] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %585 = llvm.load %584 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %586 = llvm.add %571, %21 : i64
          %587 = llvm.mul %586, %27 : i64
          %588 = llvm.add %587, %569 : i64
          %589 = llvm.getelementptr %55[%588] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %590 = llvm.load %589 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %591 = llvm.add %571, %26 : i64
          %592 = llvm.mul %591, %27 : i64
          %593 = llvm.add %592, %569 : i64
          %594 = llvm.getelementptr %55[%593] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %595 = llvm.load %594 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %596 = llvm.add %571, %20 : i64
          %597 = llvm.mul %596, %27 : i64
          %598 = llvm.add %597, %569 : i64
          %599 = llvm.getelementptr %55[%598] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %600 = llvm.load %599 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %601 = llvm.add %571, %19 : i64
          %602 = llvm.mul %601, %27 : i64
          %603 = llvm.add %602, %569 : i64
          %604 = llvm.getelementptr %55[%603] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %605 = llvm.load %604 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %606 = llvm.add %571, %18 : i64
          %607 = llvm.mul %606, %27 : i64
          %608 = llvm.add %607, %569 : i64
          %609 = llvm.getelementptr %55[%608] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %610 = llvm.load %609 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %611 = llvm.getelementptr %61[%573] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %612 = llvm.load %611 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %613 = llvm.getelementptr %61[%578] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %614 = llvm.load %613 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %615 = llvm.getelementptr %61[%583] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %616 = llvm.load %615 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %617 = llvm.getelementptr %61[%588] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %618 = llvm.load %617 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %619 = llvm.getelementptr %61[%593] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %620 = llvm.load %619 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %621 = llvm.getelementptr %61[%598] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %622 = llvm.load %621 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %623 = llvm.getelementptr %61[%603] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %624 = llvm.load %623 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %625 = llvm.getelementptr %61[%608] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %626 = llvm.load %625 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %627 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %628 = llvm.fadd %612, %627 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %629 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %630 = llvm.fadd %614, %629 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %631 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %632 = llvm.fadd %616, %631 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %633 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %634 = llvm.fadd %618, %633 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %635 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %636 = llvm.fadd %620, %635 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %637 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %638 = llvm.fadd %622, %637 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %639 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %640 = llvm.fadd %624, %639 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %641 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %642 = llvm.fadd %626, %641 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %643 = llvm.fadd %575, %628 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %644 = llvm.fadd %580, %630 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %645 = llvm.fadd %585, %632 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %646 = llvm.fadd %590, %634 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %647 = llvm.fadd %595, %636 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %648 = llvm.fadd %600, %638 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %649 = llvm.fadd %605, %640 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %650 = llvm.fadd %610, %642 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %651 = llvm.fsub %643, %539 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %652 = llvm.fsub %644, %540 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %653 = llvm.fsub %645, %541 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %654 = llvm.fsub %646, %542 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %655 = llvm.fsub %647, %543 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %656 = llvm.fsub %648, %544 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %657 = llvm.fsub %649, %545 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %658 = llvm.fsub %650, %546 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %659 = llvm.fmul %651, %561 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %660 = llvm.fmul %652, %562 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %661 = llvm.fmul %653, %563 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %662 = llvm.fmul %654, %564 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %663 = llvm.fmul %655, %565 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %664 = llvm.fmul %656, %566 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %665 = llvm.fmul %657, %567 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %666 = llvm.fmul %658, %568 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %667 = llvm.fadd %659, %627 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %668 = llvm.fadd %660, %629 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %669 = llvm.fadd %661, %631 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %670 = llvm.fadd %662, %633 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %671 = llvm.fadd %663, %635 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %672 = llvm.fadd %664, %637 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %673 = llvm.fadd %665, %639 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %674 = llvm.fadd %666, %641 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %675 = llvm.getelementptr %75[%573] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %667, %675 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %676 = llvm.getelementptr %75[%578] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %668, %676 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %677 = llvm.getelementptr %75[%583] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %669, %677 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %678 = llvm.getelementptr %75[%588] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %670, %678 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %679 = llvm.getelementptr %75[%593] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %671, %679 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %680 = llvm.getelementptr %75[%598] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %672, %680 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %681 = llvm.getelementptr %75[%603] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %673, %681 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %682 = llvm.getelementptr %75[%608] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %674, %682 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %683 = llvm.mul %94, %27 : i64
          %684 = llvm.add %683, %569 : i64
          %685 = llvm.getelementptr %36[%684] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %643, %685 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %686 = llvm.add %94, %25 : i64
          %687 = llvm.mul %686, %27 : i64
          %688 = llvm.add %687, %569 : i64
          %689 = llvm.getelementptr %36[%688] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %644, %689 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %690 = llvm.add %94, %22 : i64
          %691 = llvm.mul %690, %27 : i64
          %692 = llvm.add %691, %569 : i64
          %693 = llvm.getelementptr %36[%692] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %645, %693 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %694 = llvm.add %94, %21 : i64
          %695 = llvm.mul %694, %27 : i64
          %696 = llvm.add %695, %569 : i64
          %697 = llvm.getelementptr %36[%696] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %646, %697 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %698 = llvm.add %94, %26 : i64
          %699 = llvm.mul %698, %27 : i64
          %700 = llvm.add %699, %569 : i64
          %701 = llvm.getelementptr %36[%700] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %647, %701 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %702 = llvm.add %94, %20 : i64
          %703 = llvm.mul %702, %27 : i64
          %704 = llvm.add %703, %569 : i64
          %705 = llvm.getelementptr %36[%704] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %648, %705 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %706 = llvm.add %94, %19 : i64
          %707 = llvm.mul %706, %27 : i64
          %708 = llvm.add %707, %569 : i64
          %709 = llvm.getelementptr %36[%708] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %649, %709 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %710 = llvm.add %94, %18 : i64
          %711 = llvm.mul %710, %27 : i64
          %712 = llvm.add %711, %569 : i64
          %713 = llvm.getelementptr %36[%712] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %650, %713 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %714 = llvm.add %569, %24 : i64
          llvm.br ^bb34(%714 : i64)
        ^bb36:  // pred: ^bb34
          %715 = llvm.add %94, %24 : i64
          llvm.br ^bb5(%715 : i64)
        ^bb37(%716: i64):  // 2 preds: ^bb5, ^bb40
          %717 = llvm.icmp "slt" %716, %27 : i64
          llvm.cond_br %717, ^bb38(%23 : i64), ^bb41
        ^bb38(%718: i64):  // 2 preds: ^bb37, ^bb39
          %719 = llvm.icmp "slt" %718, %27 : i64
          llvm.cond_br %719, ^bb39, ^bb40
        ^bb39:  // pred: ^bb38
          %720 = llvm.mul %716, %27 overflow<nsw, nuw> : i64
          %721 = llvm.add %720, %718 overflow<nsw, nuw> : i64
          %722 = llvm.getelementptr inbounds|nuw %36[%721] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %723 = llvm.load %722 : !llvm.ptr -> f32
          %724 = llvm.add %79, %716 : i64
          %725 = llvm.mul %724, %27 overflow<nsw, nuw> : i64
          %726 = llvm.add %725, %718 overflow<nsw, nuw> : i64
          %727 = llvm.getelementptr inbounds|nuw %68[%726] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %723, %727 : f32, !llvm.ptr
          %728 = llvm.add %718, %25 : i64
          llvm.br ^bb38(%728 : i64)
        ^bb40:  // pred: ^bb38
          %729 = llvm.add %716, %25 : i64
          llvm.br ^bb37(%729 : i64)
        ^bb41:  // pred: ^bb37
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer
  util.initializer {
    %c96516096 = arith.constant 96516096 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c96516096}
    util.global.store %buffer, @main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0_i32 = arith.constant 0 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c802816_i32 = arith.constant 802816 : i32
    %c1204224_i32 = arith.constant 1204224 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c64344064 = arith.constant 64344064 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer = util.global.load immutable @main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_20::@embedded_elf_riscv_64::@main_graph$async_dispatch_20_reduction_3136x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_20) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_20::@embedded_elf_riscv_64::@main_graph$async_dispatch_20_reduction_3136x32_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c0_i32, %c401408_i32, %c802816_i32, %c1204224_i32]) bindings([
      (%main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer)[%c32172032, %c32172032], 
      (%main_graph$async_dispatch_20_embedded_elf_riscv_64_main_graph$async_dispatch_20_reduction_3136x32_f32_buffer : !hal.buffer)[%c64344064, %c32172032]
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
