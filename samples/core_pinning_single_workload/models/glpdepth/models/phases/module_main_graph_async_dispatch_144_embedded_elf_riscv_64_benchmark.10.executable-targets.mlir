#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_144 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_144_reduction_196x160_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c14 = arith.constant 14 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c14, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_144_reduction_196x160_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(dense<1.000000e+00> : vector<6xf32>) : vector<6xf32>
          %3 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %4 = llvm.mlir.poison : vector<14xf32>
          %5 = llvm.mlir.constant(13 : i64) : i64
          %6 = llvm.mlir.constant(12 : i64) : i64
          %7 = llvm.mlir.constant(11 : i64) : i64
          %8 = llvm.mlir.constant(10 : i64) : i64
          %9 = llvm.mlir.constant(9 : i64) : i64
          %10 = llvm.mlir.constant(7 : i64) : i64
          %11 = llvm.mlir.constant(6 : i64) : i64
          %12 = llvm.mlir.constant(5 : i64) : i64
          %13 = llvm.mlir.constant(4 : i64) : i64
          %14 = llvm.mlir.constant(3 : i64) : i64
          %15 = llvm.mlir.constant(2 : i64) : i64
          %16 = llvm.mlir.constant(1 : i64) : i64
          %17 = llvm.mlir.constant(0 : i64) : i64
          %18 = llvm.mlir.poison : vector<7xf32>
          %19 = llvm.mlir.constant(64 : index) : i64
          %20 = llvm.mlir.constant(true) : i1
          %21 = llvm.mlir.constant(196 : index) : i64
          %22 = llvm.mlir.constant(8 : i64) : i64
          %23 = llvm.mlir.constant(32 : i64) : i64
          %24 = llvm.mlir.constant(dense<false> : vector<6xi1>) : vector<6xi1>
          %25 = llvm.mlir.constant(dense<true> : vector<6xi1>) : vector<6xi1>
          %26 = llvm.mlir.constant(159 : index) : i64
          %27 = llvm.mlir.constant(158 : index) : i64
          %28 = llvm.mlir.constant(157 : index) : i64
          %29 = llvm.mlir.constant(156 : index) : i64
          %30 = llvm.mlir.constant(155 : index) : i64
          %31 = llvm.mlir.constant(13 : index) : i64
          %32 = llvm.mlir.constant(12 : index) : i64
          %33 = llvm.mlir.constant(11 : index) : i64
          %34 = llvm.mlir.constant(10 : index) : i64
          %35 = llvm.mlir.constant(9 : index) : i64
          %36 = llvm.mlir.poison : vector<48xf32>
          %37 = llvm.mlir.poison : vector<42xf32>
          %38 = llvm.mlir.poison : vector<56xf32>
          %39 = llvm.mlir.poison : vector<112xf32>
          %40 = llvm.mlir.poison : vector<8xf32>
          %41 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %42 = llvm.mlir.constant(5 : index) : i64
          %43 = llvm.mlir.constant(4 : index) : i64
          %44 = llvm.mlir.constant(3 : index) : i64
          %45 = llvm.mlir.constant(2 : index) : i64
          %46 = llvm.mlir.constant(1 : index) : i64
          %47 = llvm.mlir.poison : vector<6xf32>
          %48 = llvm.mlir.constant(401408 : index) : i64
          %49 = llvm.mlir.constant(1003520 : index) : i64
          %50 = llvm.mlir.constant(652288 : index) : i64
          %51 = llvm.mlir.constant(0 : index) : i64
          %52 = llvm.mlir.constant(160 : index) : i64
          %53 = llvm.mlir.constant(8 : index) : i64
          %54 = llvm.mlir.constant(14 : index) : i64
          %55 = llvm.mlir.constant(7 : index) : i64
          %56 = llvm.mlir.constant(154 : index) : i64
          %57 = llvm.mlir.constant(dense<0.000000e+00> : vector<14xf32>) : vector<14xf32>
          %58 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %59 = llvm.mlir.constant(dense<0.000000e+00> : vector<14x8xf32>) : !llvm.array<14 x vector<8xf32>>
          %60 = llvm.mlir.constant(6 : index) : i64
          %61 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x6xf32>) : !llvm.array<7 x vector<6xf32>>
          %62 = llvm.mlir.constant(dense<0.000000e+00> : vector<6x8xf32>) : !llvm.array<6 x vector<8xf32>>
          %63 = llvm.mlir.constant(dense<1.600000e+02> : vector<14xf32>) : vector<14xf32>
          %64 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x7xf32>) : !llvm.array<8 x vector<7xf32>>
          %65 = llvm.mlir.constant(dense<1.600000e+02> : vector<8xf32>) : vector<8xf32>
          %66 = llvm.mlir.constant(dense<9.99999997E-7> : vector<8xf32>) : vector<8xf32>
          %67 = llvm.mlir.constant(dense<0.000000e+00> : vector<6x7xf32>) : !llvm.array<6 x vector<7xf32>>
          %68 = llvm.mlir.constant(dense<1.600000e+02> : vector<6xf32>) : vector<6xf32>
          %69 = llvm.mlir.constant(dense<9.99999997E-7> : vector<6xf32>) : vector<6xf32>
          %70 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x6xf32>) : !llvm.array<8 x vector<6xf32>>
          %71 = llvm.alloca %54 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %72 = llvm.alloca %54 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %73 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %74 = llvm.extractvalue %73[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %75 = llvm.load %74 : !llvm.ptr -> !llvm.ptr
          %76 = llvm.mul %50, %22 : i64
          %77 = llvm.udiv %76, %23 : i64
          %78 = llvm.getelementptr %75[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %20 ["align"(%78, %19 : !llvm.ptr, i64)] : i1
          %79 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %80 = llvm.extractvalue %79[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %81 = llvm.load %80 : !llvm.ptr -> !llvm.ptr
          %82 = llvm.mul %49, %22 : i64
          %83 = llvm.udiv %82, %23 : i64
          %84 = llvm.getelementptr %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %20 ["align"(%84, %19 : !llvm.ptr, i64)] : i1
          %85 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %86 = llvm.extractvalue %85[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %87 = llvm.getelementptr %86[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %88 = llvm.load %87 : !llvm.ptr -> !llvm.ptr
          %89 = llvm.mul %48, %22 : i64
          %90 = llvm.udiv %89, %23 : i64
          %91 = llvm.getelementptr %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %20 ["align"(%91, %19 : !llvm.ptr, i64)] : i1
          %92 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %93 = llvm.extractvalue %92[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %94 = llvm.zext %93 : i32 to i64
          %95 = llvm.mul %94, %54 overflow<nsw> : i64
          llvm.store %57, %72 {alignment = 4 : i64} : vector<14xf32>, !llvm.ptr
          llvm.br ^bb1(%51 : i64)
        ^bb1(%96: i64):  // 2 preds: ^bb0, ^bb4
          %97 = llvm.icmp "slt" %96, %52 : i64
          llvm.cond_br %97, ^bb2(%51 : i64), ^bb5
        ^bb2(%98: i64):  // 2 preds: ^bb1, ^bb3
          %99 = llvm.icmp "slt" %98, %54 : i64
          llvm.cond_br %99, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %100 = llvm.add %98, %95 : i64
          %101 = llvm.mul %100, %52 : i64
          %102 = llvm.add %101, %96 : i64
          %103 = llvm.getelementptr %78[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %105 = llvm.add %100, %46 : i64
          %106 = llvm.mul %105, %52 : i64
          %107 = llvm.add %106, %96 : i64
          %108 = llvm.getelementptr %78[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %110 = llvm.add %100, %45 : i64
          %111 = llvm.mul %110, %52 : i64
          %112 = llvm.add %111, %96 : i64
          %113 = llvm.getelementptr %78[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %115 = llvm.add %100, %44 : i64
          %116 = llvm.mul %115, %52 : i64
          %117 = llvm.add %116, %96 : i64
          %118 = llvm.getelementptr %78[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %120 = llvm.add %100, %43 : i64
          %121 = llvm.mul %120, %52 : i64
          %122 = llvm.add %121, %96 : i64
          %123 = llvm.getelementptr %78[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %125 = llvm.add %100, %42 : i64
          %126 = llvm.mul %125, %52 : i64
          %127 = llvm.add %126, %96 : i64
          %128 = llvm.getelementptr %78[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %130 = llvm.add %100, %60 : i64
          %131 = llvm.mul %130, %52 : i64
          %132 = llvm.add %131, %96 : i64
          %133 = llvm.getelementptr %78[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %135 = llvm.getelementptr %84[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %136 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %137 = llvm.getelementptr %84[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %139 = llvm.getelementptr %84[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %140 = llvm.load %139 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %141 = llvm.getelementptr %84[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %142 = llvm.load %141 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %143 = llvm.getelementptr %84[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %144 = llvm.load %143 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %145 = llvm.getelementptr %84[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %146 = llvm.load %145 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %147 = llvm.getelementptr %84[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %148 = llvm.load %147 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %149 = llvm.extractvalue %58[0] : !llvm.array<7 x vector<8xf32>> 
          %150 = llvm.fadd %136, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %151 = llvm.extractvalue %58[1] : !llvm.array<7 x vector<8xf32>> 
          %152 = llvm.fadd %138, %151 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %153 = llvm.extractvalue %58[2] : !llvm.array<7 x vector<8xf32>> 
          %154 = llvm.fadd %140, %153 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %155 = llvm.extractvalue %58[3] : !llvm.array<7 x vector<8xf32>> 
          %156 = llvm.fadd %142, %155 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %157 = llvm.extractvalue %58[4] : !llvm.array<7 x vector<8xf32>> 
          %158 = llvm.fadd %144, %157 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %159 = llvm.extractvalue %58[5] : !llvm.array<7 x vector<8xf32>> 
          %160 = llvm.fadd %146, %159 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %161 = llvm.extractvalue %58[6] : !llvm.array<7 x vector<8xf32>> 
          %162 = llvm.fadd %148, %161 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %163 = llvm.fadd %104, %150 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %164 = llvm.fadd %109, %152 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %165 = llvm.fadd %114, %154 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %166 = llvm.fadd %119, %156 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %167 = llvm.fadd %124, %158 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %168 = llvm.fadd %129, %160 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %169 = llvm.fadd %134, %162 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %170 = llvm.getelementptr inbounds|nuw %72[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %171 = llvm.load %170 : !llvm.ptr -> f32
          %172 = "llvm.intr.vector.reduce.fadd"(%171, %163) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %173 = llvm.add %98, %46 : i64
          %174 = llvm.getelementptr inbounds|nuw %72[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %175 = llvm.load %174 : !llvm.ptr -> f32
          %176 = "llvm.intr.vector.reduce.fadd"(%175, %164) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %177 = llvm.add %98, %45 : i64
          %178 = llvm.getelementptr inbounds|nuw %72[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %179 = llvm.load %178 : !llvm.ptr -> f32
          %180 = "llvm.intr.vector.reduce.fadd"(%179, %165) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %181 = llvm.add %98, %44 : i64
          %182 = llvm.getelementptr inbounds|nuw %72[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %183 = llvm.load %182 : !llvm.ptr -> f32
          %184 = "llvm.intr.vector.reduce.fadd"(%183, %166) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %185 = llvm.add %98, %43 : i64
          %186 = llvm.getelementptr inbounds|nuw %72[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %187 = llvm.load %186 : !llvm.ptr -> f32
          %188 = "llvm.intr.vector.reduce.fadd"(%187, %167) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %189 = llvm.add %98, %42 : i64
          %190 = llvm.getelementptr inbounds|nuw %72[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %191 = llvm.load %190 : !llvm.ptr -> f32
          %192 = "llvm.intr.vector.reduce.fadd"(%191, %168) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %193 = llvm.add %98, %60 : i64
          %194 = llvm.getelementptr inbounds|nuw %72[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %195 = llvm.load %194 : !llvm.ptr -> f32
          %196 = "llvm.intr.vector.reduce.fadd"(%195, %169) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %197 = llvm.insertelement %172, %18[%17 : i64] : vector<7xf32>
          %198 = llvm.insertelement %176, %197[%16 : i64] : vector<7xf32>
          %199 = llvm.insertelement %180, %198[%15 : i64] : vector<7xf32>
          %200 = llvm.insertelement %184, %199[%14 : i64] : vector<7xf32>
          %201 = llvm.insertelement %188, %200[%13 : i64] : vector<7xf32>
          %202 = llvm.insertelement %192, %201[%12 : i64] : vector<7xf32>
          %203 = llvm.insertelement %196, %202[%11 : i64] : vector<7xf32>
          %204 = llvm.getelementptr %72[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %203, %204 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %205 = llvm.add %98, %55 : i64
          llvm.br ^bb2(%205 : i64)
        ^bb4:  // pred: ^bb2
          %206 = llvm.add %96, %53 : i64
          llvm.br ^bb1(%206 : i64)
        ^bb5:  // pred: ^bb1
          %207 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<14xf32>
          %208 = llvm.fdiv %207, %63 : vector<14xf32>
          %209 = llvm.shufflevector %208, %208 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<14xf32> 
          %210 = llvm.shufflevector %209, %39 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %211 = llvm.shufflevector %209, %210 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %212 = llvm.shufflevector %209, %211 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %213 = llvm.shufflevector %209, %212 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %214 = llvm.shufflevector %209, %213 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %215 = llvm.shufflevector %209, %214 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %216 = llvm.shufflevector %209, %215 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223] : vector<112xf32> 
          %217 = llvm.shufflevector %209, %216 [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] : vector<112xf32> 
          %218 = llvm.shufflevector %217, %217 [0, 14, 28, 42, 56, 70, 84, 98, 1, 15, 29, 43, 57, 71, 85, 99, 2, 16, 30, 44, 58, 72, 86, 100, 3, 17, 31, 45, 59, 73, 87, 101, 4, 18, 32, 46, 60, 74, 88, 102, 5, 19, 33, 47, 61, 75, 89, 103, 6, 20, 34, 48, 62, 76, 90, 104, 7, 21, 35, 49, 63, 77, 91, 105, 8, 22, 36, 50, 64, 78, 92, 106, 9, 23, 37, 51, 65, 79, 93, 107, 10, 24, 38, 52, 66, 80, 94, 108, 11, 25, 39, 53, 67, 81, 95, 109, 12, 26, 40, 54, 68, 82, 96, 110, 13, 27, 41, 55, 69, 83, 97, 111] : vector<112xf32> 
          %219 = llvm.shufflevector %218, %218 [0, 1, 2, 3, 4, 5, 6, 7] : vector<112xf32> 
          %220 = llvm.shufflevector %218, %218 [8, 9, 10, 11, 12, 13, 14, 15] : vector<112xf32> 
          %221 = llvm.shufflevector %218, %218 [16, 17, 18, 19, 20, 21, 22, 23] : vector<112xf32> 
          %222 = llvm.shufflevector %218, %218 [24, 25, 26, 27, 28, 29, 30, 31] : vector<112xf32> 
          %223 = llvm.shufflevector %218, %218 [32, 33, 34, 35, 36, 37, 38, 39] : vector<112xf32> 
          %224 = llvm.shufflevector %218, %218 [40, 41, 42, 43, 44, 45, 46, 47] : vector<112xf32> 
          %225 = llvm.shufflevector %218, %218 [48, 49, 50, 51, 52, 53, 54, 55] : vector<112xf32> 
          %226 = llvm.shufflevector %218, %218 [56, 57, 58, 59, 60, 61, 62, 63] : vector<112xf32> 
          %227 = llvm.shufflevector %218, %218 [64, 65, 66, 67, 68, 69, 70, 71] : vector<112xf32> 
          %228 = llvm.shufflevector %218, %218 [72, 73, 74, 75, 76, 77, 78, 79] : vector<112xf32> 
          %229 = llvm.shufflevector %218, %218 [80, 81, 82, 83, 84, 85, 86, 87] : vector<112xf32> 
          %230 = llvm.shufflevector %218, %218 [88, 89, 90, 91, 92, 93, 94, 95] : vector<112xf32> 
          %231 = llvm.shufflevector %218, %218 [96, 97, 98, 99, 100, 101, 102, 103] : vector<112xf32> 
          %232 = llvm.shufflevector %218, %218 [104, 105, 106, 107, 108, 109, 110, 111] : vector<112xf32> 
          llvm.br ^bb6(%51, %57 : i64, vector<14xf32>)
        ^bb6(%233: i64, %234: vector<14xf32>):  // 2 preds: ^bb5, ^bb7
          %235 = llvm.icmp "slt" %233, %52 : i64
          llvm.cond_br %235, ^bb7, ^bb8
        ^bb7:  // pred: ^bb6
          %236 = llvm.mul %95, %52 : i64
          %237 = llvm.add %236, %233 : i64
          %238 = llvm.getelementptr %78[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %239 = llvm.load %238 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %240 = llvm.add %95, %46 : i64
          %241 = llvm.mul %240, %52 : i64
          %242 = llvm.add %241, %233 : i64
          %243 = llvm.getelementptr %78[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %244 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %245 = llvm.add %95, %45 : i64
          %246 = llvm.mul %245, %52 : i64
          %247 = llvm.add %246, %233 : i64
          %248 = llvm.getelementptr %78[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %249 = llvm.load %248 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %250 = llvm.add %95, %44 : i64
          %251 = llvm.mul %250, %52 : i64
          %252 = llvm.add %251, %233 : i64
          %253 = llvm.getelementptr %78[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %254 = llvm.load %253 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %255 = llvm.add %95, %43 : i64
          %256 = llvm.mul %255, %52 : i64
          %257 = llvm.add %256, %233 : i64
          %258 = llvm.getelementptr %78[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %259 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %260 = llvm.add %95, %42 : i64
          %261 = llvm.mul %260, %52 : i64
          %262 = llvm.add %261, %233 : i64
          %263 = llvm.getelementptr %78[%262] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %264 = llvm.load %263 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %265 = llvm.add %95, %60 : i64
          %266 = llvm.mul %265, %52 : i64
          %267 = llvm.add %266, %233 : i64
          %268 = llvm.getelementptr %78[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %269 = llvm.load %268 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %270 = llvm.add %95, %55 : i64
          %271 = llvm.mul %270, %52 : i64
          %272 = llvm.add %271, %233 : i64
          %273 = llvm.getelementptr %78[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %274 = llvm.load %273 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %275 = llvm.add %95, %53 : i64
          %276 = llvm.mul %275, %52 : i64
          %277 = llvm.add %276, %233 : i64
          %278 = llvm.getelementptr %78[%277] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %279 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %280 = llvm.add %95, %35 : i64
          %281 = llvm.mul %280, %52 : i64
          %282 = llvm.add %281, %233 : i64
          %283 = llvm.getelementptr %78[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %284 = llvm.load %283 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %285 = llvm.add %95, %34 : i64
          %286 = llvm.mul %285, %52 : i64
          %287 = llvm.add %286, %233 : i64
          %288 = llvm.getelementptr %78[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %289 = llvm.load %288 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %290 = llvm.add %95, %33 : i64
          %291 = llvm.mul %290, %52 : i64
          %292 = llvm.add %291, %233 : i64
          %293 = llvm.getelementptr %78[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %294 = llvm.load %293 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %295 = llvm.add %95, %32 : i64
          %296 = llvm.mul %295, %52 : i64
          %297 = llvm.add %296, %233 : i64
          %298 = llvm.getelementptr %78[%297] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %299 = llvm.load %298 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %300 = llvm.add %95, %31 : i64
          %301 = llvm.mul %300, %52 : i64
          %302 = llvm.add %301, %233 : i64
          %303 = llvm.getelementptr %78[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %304 = llvm.load %303 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %305 = llvm.getelementptr %84[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %306 = llvm.load %305 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %307 = llvm.getelementptr %84[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %308 = llvm.load %307 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %309 = llvm.getelementptr %84[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %310 = llvm.load %309 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %311 = llvm.getelementptr %84[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %312 = llvm.load %311 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %313 = llvm.getelementptr %84[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %314 = llvm.load %313 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %315 = llvm.getelementptr %84[%262] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %316 = llvm.load %315 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %317 = llvm.getelementptr %84[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %318 = llvm.load %317 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %319 = llvm.getelementptr %84[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %320 = llvm.load %319 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %321 = llvm.getelementptr %84[%277] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %322 = llvm.load %321 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %323 = llvm.getelementptr %84[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %324 = llvm.load %323 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %325 = llvm.getelementptr %84[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %326 = llvm.load %325 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %327 = llvm.getelementptr %84[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %328 = llvm.load %327 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %329 = llvm.getelementptr %84[%297] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %330 = llvm.load %329 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %331 = llvm.getelementptr %84[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %332 = llvm.load %331 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %333 = llvm.extractvalue %59[0] : !llvm.array<14 x vector<8xf32>> 
          %334 = llvm.fadd %306, %333 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %335 = llvm.extractvalue %59[1] : !llvm.array<14 x vector<8xf32>> 
          %336 = llvm.fadd %308, %335 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %337 = llvm.extractvalue %59[2] : !llvm.array<14 x vector<8xf32>> 
          %338 = llvm.fadd %310, %337 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %339 = llvm.extractvalue %59[3] : !llvm.array<14 x vector<8xf32>> 
          %340 = llvm.fadd %312, %339 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %341 = llvm.extractvalue %59[4] : !llvm.array<14 x vector<8xf32>> 
          %342 = llvm.fadd %314, %341 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %343 = llvm.extractvalue %59[5] : !llvm.array<14 x vector<8xf32>> 
          %344 = llvm.fadd %316, %343 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %345 = llvm.extractvalue %59[6] : !llvm.array<14 x vector<8xf32>> 
          %346 = llvm.fadd %318, %345 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %347 = llvm.extractvalue %59[7] : !llvm.array<14 x vector<8xf32>> 
          %348 = llvm.fadd %320, %347 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %349 = llvm.extractvalue %59[8] : !llvm.array<14 x vector<8xf32>> 
          %350 = llvm.fadd %322, %349 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %351 = llvm.extractvalue %59[9] : !llvm.array<14 x vector<8xf32>> 
          %352 = llvm.fadd %324, %351 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %353 = llvm.extractvalue %59[10] : !llvm.array<14 x vector<8xf32>> 
          %354 = llvm.fadd %326, %353 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %355 = llvm.extractvalue %59[11] : !llvm.array<14 x vector<8xf32>> 
          %356 = llvm.fadd %328, %355 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %357 = llvm.extractvalue %59[12] : !llvm.array<14 x vector<8xf32>> 
          %358 = llvm.fadd %330, %357 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %359 = llvm.extractvalue %59[13] : !llvm.array<14 x vector<8xf32>> 
          %360 = llvm.fadd %332, %359 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %361 = llvm.fadd %239, %334 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %362 = llvm.fadd %244, %336 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %363 = llvm.fadd %249, %338 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %364 = llvm.fadd %254, %340 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %365 = llvm.fadd %259, %342 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %366 = llvm.fadd %264, %344 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %367 = llvm.fadd %269, %346 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %368 = llvm.fadd %274, %348 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %369 = llvm.fadd %279, %350 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %370 = llvm.fadd %284, %352 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %371 = llvm.fadd %289, %354 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %372 = llvm.fadd %294, %356 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %373 = llvm.fadd %299, %358 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %374 = llvm.fadd %304, %360 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %375 = llvm.fsub %361, %219 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %376 = llvm.fsub %362, %220 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %377 = llvm.fsub %363, %221 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %378 = llvm.fsub %364, %222 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %379 = llvm.fsub %365, %223 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %380 = llvm.fsub %366, %224 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %381 = llvm.fsub %367, %225 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %382 = llvm.fsub %368, %226 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %383 = llvm.fsub %369, %227 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %384 = llvm.fsub %370, %228 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %385 = llvm.fsub %371, %229 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %386 = llvm.fsub %372, %230 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %387 = llvm.fsub %373, %231 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %388 = llvm.fsub %374, %232 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %389 = llvm.extractelement %234[%17 : i64] : vector<14xf32>
          %390 = llvm.fmul %375, %375 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %391 = "llvm.intr.vector.reduce.fadd"(%389, %390) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %392 = llvm.extractelement %234[%16 : i64] : vector<14xf32>
          %393 = llvm.fmul %376, %376 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %394 = "llvm.intr.vector.reduce.fadd"(%392, %393) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %395 = llvm.extractelement %234[%15 : i64] : vector<14xf32>
          %396 = llvm.fmul %377, %377 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %397 = "llvm.intr.vector.reduce.fadd"(%395, %396) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %398 = llvm.extractelement %234[%14 : i64] : vector<14xf32>
          %399 = llvm.fmul %378, %378 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %400 = "llvm.intr.vector.reduce.fadd"(%398, %399) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %401 = llvm.extractelement %234[%13 : i64] : vector<14xf32>
          %402 = llvm.fmul %379, %379 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %403 = "llvm.intr.vector.reduce.fadd"(%401, %402) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %404 = llvm.extractelement %234[%12 : i64] : vector<14xf32>
          %405 = llvm.fmul %380, %380 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %406 = "llvm.intr.vector.reduce.fadd"(%404, %405) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %407 = llvm.extractelement %234[%11 : i64] : vector<14xf32>
          %408 = llvm.fmul %381, %381 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %409 = "llvm.intr.vector.reduce.fadd"(%407, %408) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %410 = llvm.extractelement %234[%10 : i64] : vector<14xf32>
          %411 = llvm.fmul %382, %382 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %412 = "llvm.intr.vector.reduce.fadd"(%410, %411) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %413 = llvm.extractelement %234[%22 : i64] : vector<14xf32>
          %414 = llvm.fmul %383, %383 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %415 = "llvm.intr.vector.reduce.fadd"(%413, %414) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %416 = llvm.extractelement %234[%9 : i64] : vector<14xf32>
          %417 = llvm.fmul %384, %384 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %418 = "llvm.intr.vector.reduce.fadd"(%416, %417) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %419 = llvm.extractelement %234[%8 : i64] : vector<14xf32>
          %420 = llvm.fmul %385, %385 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %421 = "llvm.intr.vector.reduce.fadd"(%419, %420) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %422 = llvm.extractelement %234[%7 : i64] : vector<14xf32>
          %423 = llvm.fmul %386, %386 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %424 = "llvm.intr.vector.reduce.fadd"(%422, %423) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %425 = llvm.extractelement %234[%6 : i64] : vector<14xf32>
          %426 = llvm.fmul %387, %387 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %427 = "llvm.intr.vector.reduce.fadd"(%425, %426) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %428 = llvm.extractelement %234[%5 : i64] : vector<14xf32>
          %429 = llvm.fmul %388, %388 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %430 = "llvm.intr.vector.reduce.fadd"(%428, %429) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %431 = llvm.insertelement %391, %4[%17 : i64] : vector<14xf32>
          %432 = llvm.insertelement %394, %431[%16 : i64] : vector<14xf32>
          %433 = llvm.insertelement %397, %432[%15 : i64] : vector<14xf32>
          %434 = llvm.insertelement %400, %433[%14 : i64] : vector<14xf32>
          %435 = llvm.insertelement %403, %434[%13 : i64] : vector<14xf32>
          %436 = llvm.insertelement %406, %435[%12 : i64] : vector<14xf32>
          %437 = llvm.insertelement %409, %436[%11 : i64] : vector<14xf32>
          %438 = llvm.insertelement %412, %437[%10 : i64] : vector<14xf32>
          %439 = llvm.insertelement %415, %438[%22 : i64] : vector<14xf32>
          %440 = llvm.insertelement %418, %439[%9 : i64] : vector<14xf32>
          %441 = llvm.insertelement %421, %440[%8 : i64] : vector<14xf32>
          %442 = llvm.insertelement %424, %441[%7 : i64] : vector<14xf32>
          %443 = llvm.insertelement %427, %442[%6 : i64] : vector<14xf32>
          %444 = llvm.insertelement %430, %443[%5 : i64] : vector<14xf32>
          %445 = llvm.add %233, %53 : i64
          llvm.br ^bb6(%445, %444 : i64, vector<14xf32>)
        ^bb8:  // pred: ^bb6
          llvm.store %234, %71 {alignment = 4 : i64} : vector<14xf32>, !llvm.ptr
          %446 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %447 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %448 = llvm.fdiv %446, %65 : vector<8xf32>
          %449 = llvm.fdiv %447, %65 : vector<8xf32>
          %450 = llvm.fadd %449, %66 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %451 = llvm.intr.sqrt(%450) : (vector<8xf32>) -> vector<8xf32>
          %452 = llvm.fdiv %3, %451 : vector<8xf32>
          %453 = llvm.getelementptr %72[8] : (!llvm.ptr) -> !llvm.ptr, f32
          %454 = llvm.load %453 {alignment = 4 : i64} : !llvm.ptr -> vector<6xf32>
          %455 = llvm.getelementptr %71[8] : (!llvm.ptr) -> !llvm.ptr, f32
          %456 = llvm.load %455 {alignment = 4 : i64} : !llvm.ptr -> vector<6xf32>
          %457 = llvm.fdiv %454, %68 : vector<6xf32>
          %458 = llvm.fdiv %456, %68 : vector<6xf32>
          %459 = llvm.fadd %458, %69 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %460 = llvm.intr.sqrt(%459) : (vector<6xf32>) -> vector<6xf32>
          %461 = llvm.fdiv %2, %460 : vector<6xf32>
          llvm.br ^bb9(%51 : i64)
        ^bb9(%462: i64):  // 2 preds: ^bb8, ^bb10
          %463 = llvm.icmp "slt" %462, %56 : i64
          llvm.cond_br %463, ^bb10, ^bb11(%51 : i64)
        ^bb10:  // pred: ^bb9
          %464 = llvm.mul %95, %52 : i64
          %465 = llvm.add %464, %462 : i64
          %466 = llvm.getelementptr %78[%465] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %467 = llvm.load %466 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %468 = llvm.add %95, %46 : i64
          %469 = llvm.mul %468, %52 : i64
          %470 = llvm.add %469, %462 : i64
          %471 = llvm.getelementptr %78[%470] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %472 = llvm.load %471 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %473 = llvm.add %95, %45 : i64
          %474 = llvm.mul %473, %52 : i64
          %475 = llvm.add %474, %462 : i64
          %476 = llvm.getelementptr %78[%475] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %477 = llvm.load %476 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %478 = llvm.add %95, %44 : i64
          %479 = llvm.mul %478, %52 : i64
          %480 = llvm.add %479, %462 : i64
          %481 = llvm.getelementptr %78[%480] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %482 = llvm.load %481 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %483 = llvm.add %95, %43 : i64
          %484 = llvm.mul %483, %52 : i64
          %485 = llvm.add %484, %462 : i64
          %486 = llvm.getelementptr %78[%485] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %487 = llvm.load %486 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %488 = llvm.add %95, %42 : i64
          %489 = llvm.mul %488, %52 : i64
          %490 = llvm.add %489, %462 : i64
          %491 = llvm.getelementptr %78[%490] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %492 = llvm.load %491 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %493 = llvm.add %95, %60 : i64
          %494 = llvm.mul %493, %52 : i64
          %495 = llvm.add %494, %462 : i64
          %496 = llvm.getelementptr %78[%495] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %497 = llvm.load %496 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %498 = llvm.add %95, %55 : i64
          %499 = llvm.mul %498, %52 : i64
          %500 = llvm.add %499, %462 : i64
          %501 = llvm.getelementptr %78[%500] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %502 = llvm.load %501 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %503 = llvm.getelementptr %84[%465] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %504 = llvm.load %503 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %505 = llvm.getelementptr %84[%470] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %506 = llvm.load %505 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %507 = llvm.getelementptr %84[%475] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %508 = llvm.load %507 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %509 = llvm.getelementptr %84[%480] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %510 = llvm.load %509 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %511 = llvm.getelementptr %84[%485] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %512 = llvm.load %511 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %513 = llvm.getelementptr %84[%490] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %514 = llvm.load %513 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %515 = llvm.getelementptr %84[%495] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %516 = llvm.load %515 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %517 = llvm.getelementptr %84[%500] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %518 = llvm.load %517 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %519 = llvm.extractvalue %64[0] : !llvm.array<8 x vector<7xf32>> 
          %520 = llvm.fadd %504, %519 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %521 = llvm.extractvalue %64[1] : !llvm.array<8 x vector<7xf32>> 
          %522 = llvm.fadd %506, %521 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %523 = llvm.extractvalue %64[2] : !llvm.array<8 x vector<7xf32>> 
          %524 = llvm.fadd %508, %523 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %525 = llvm.extractvalue %64[3] : !llvm.array<8 x vector<7xf32>> 
          %526 = llvm.fadd %510, %525 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %527 = llvm.extractvalue %64[4] : !llvm.array<8 x vector<7xf32>> 
          %528 = llvm.fadd %512, %527 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %529 = llvm.extractvalue %64[5] : !llvm.array<8 x vector<7xf32>> 
          %530 = llvm.fadd %514, %529 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %531 = llvm.extractvalue %64[6] : !llvm.array<8 x vector<7xf32>> 
          %532 = llvm.fadd %516, %531 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %533 = llvm.extractvalue %64[7] : !llvm.array<8 x vector<7xf32>> 
          %534 = llvm.fadd %518, %533 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %535 = llvm.fadd %467, %520 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %536 = llvm.fadd %472, %522 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %537 = llvm.fadd %477, %524 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %538 = llvm.fadd %482, %526 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %539 = llvm.fadd %487, %528 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %540 = llvm.fadd %492, %530 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %541 = llvm.fadd %497, %532 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %542 = llvm.fadd %502, %534 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %543 = llvm.shufflevector %535, %535 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %544 = llvm.shufflevector %543, %38 [0, 1, 2, 3, 4, 5, 6, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %545 = llvm.shufflevector %536, %536 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %546 = llvm.shufflevector %545, %544 [56, 57, 58, 59, 60, 61, 62, 0, 1, 2, 3, 4, 5, 6, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %547 = llvm.shufflevector %537, %537 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %548 = llvm.shufflevector %547, %546 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 0, 1, 2, 3, 4, 5, 6, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %549 = llvm.shufflevector %538, %538 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %550 = llvm.shufflevector %549, %548 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 0, 1, 2, 3, 4, 5, 6, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %551 = llvm.shufflevector %539, %539 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %552 = llvm.shufflevector %551, %550 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 0, 1, 2, 3, 4, 5, 6, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %553 = llvm.shufflevector %540, %540 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %554 = llvm.shufflevector %553, %552 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0, 1, 2, 3, 4, 5, 6, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %555 = llvm.shufflevector %541, %541 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %556 = llvm.shufflevector %555, %554 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 0, 1, 2, 3, 4, 5, 6, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %557 = llvm.shufflevector %542, %542 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %558 = llvm.shufflevector %557, %556 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 0, 1, 2, 3, 4, 5, 6] : vector<56xf32> 
          %559 = llvm.shufflevector %558, %558 [0, 7, 14, 21, 28, 35, 42, 49, 1, 8, 15, 22, 29, 36, 43, 50, 2, 9, 16, 23, 30, 37, 44, 51, 3, 10, 17, 24, 31, 38, 45, 52, 4, 11, 18, 25, 32, 39, 46, 53, 5, 12, 19, 26, 33, 40, 47, 54, 6, 13, 20, 27, 34, 41, 48, 55] : vector<56xf32> 
          %560 = llvm.shufflevector %559, %559 [0, 1, 2, 3, 4, 5, 6, 7] : vector<56xf32> 
          %561 = llvm.shufflevector %559, %559 [8, 9, 10, 11, 12, 13, 14, 15] : vector<56xf32> 
          %562 = llvm.shufflevector %559, %559 [16, 17, 18, 19, 20, 21, 22, 23] : vector<56xf32> 
          %563 = llvm.shufflevector %559, %559 [24, 25, 26, 27, 28, 29, 30, 31] : vector<56xf32> 
          %564 = llvm.shufflevector %559, %559 [32, 33, 34, 35, 36, 37, 38, 39] : vector<56xf32> 
          %565 = llvm.shufflevector %559, %559 [40, 41, 42, 43, 44, 45, 46, 47] : vector<56xf32> 
          %566 = llvm.shufflevector %559, %559 [48, 49, 50, 51, 52, 53, 54, 55] : vector<56xf32> 
          %567 = llvm.fsub %560, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %568 = llvm.fsub %561, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %569 = llvm.fsub %562, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %570 = llvm.fsub %563, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %571 = llvm.fsub %564, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %572 = llvm.fsub %565, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %573 = llvm.fsub %566, %448 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %574 = llvm.fmul %567, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %575 = llvm.fmul %568, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %576 = llvm.fmul %569, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %577 = llvm.fmul %570, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %578 = llvm.fmul %571, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %579 = llvm.fmul %572, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %580 = llvm.fmul %573, %452 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %581 = llvm.extractvalue %58[0] : !llvm.array<7 x vector<8xf32>> 
          %582 = llvm.fadd %574, %581 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %583 = llvm.extractvalue %58[1] : !llvm.array<7 x vector<8xf32>> 
          %584 = llvm.fadd %575, %583 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %585 = llvm.extractvalue %58[2] : !llvm.array<7 x vector<8xf32>> 
          %586 = llvm.fadd %576, %585 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %587 = llvm.extractvalue %58[3] : !llvm.array<7 x vector<8xf32>> 
          %588 = llvm.fadd %577, %587 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %589 = llvm.extractvalue %58[4] : !llvm.array<7 x vector<8xf32>> 
          %590 = llvm.fadd %578, %589 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %591 = llvm.extractvalue %58[5] : !llvm.array<7 x vector<8xf32>> 
          %592 = llvm.fadd %579, %591 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %593 = llvm.extractvalue %58[6] : !llvm.array<7 x vector<8xf32>> 
          %594 = llvm.fadd %580, %593 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %595 = llvm.mul %462, %21 : i64
          %596 = llvm.add %595, %95 : i64
          %597 = llvm.getelementptr %91[%596] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %582, %597 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %598 = llvm.add %462, %46 : i64
          %599 = llvm.mul %598, %21 : i64
          %600 = llvm.add %599, %95 : i64
          %601 = llvm.getelementptr %91[%600] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %584, %601 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %602 = llvm.add %462, %45 : i64
          %603 = llvm.mul %602, %21 : i64
          %604 = llvm.add %603, %95 : i64
          %605 = llvm.getelementptr %91[%604] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %586, %605 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %606 = llvm.add %462, %44 : i64
          %607 = llvm.mul %606, %21 : i64
          %608 = llvm.add %607, %95 : i64
          %609 = llvm.getelementptr %91[%608] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %588, %609 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %610 = llvm.add %462, %43 : i64
          %611 = llvm.mul %610, %21 : i64
          %612 = llvm.add %611, %95 : i64
          %613 = llvm.getelementptr %91[%612] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %590, %613 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %614 = llvm.add %462, %42 : i64
          %615 = llvm.mul %614, %21 : i64
          %616 = llvm.add %615, %95 : i64
          %617 = llvm.getelementptr %91[%616] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %592, %617 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %618 = llvm.add %462, %60 : i64
          %619 = llvm.mul %618, %21 : i64
          %620 = llvm.add %619, %95 : i64
          %621 = llvm.getelementptr %91[%620] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %594, %621 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %622 = llvm.add %95, %53 : i64
          %623 = llvm.mul %622, %52 : i64
          %624 = llvm.add %623, %462 : i64
          %625 = llvm.getelementptr %78[%624] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %626 = llvm.load %625 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %627 = llvm.add %95, %35 : i64
          %628 = llvm.mul %627, %52 : i64
          %629 = llvm.add %628, %462 : i64
          %630 = llvm.getelementptr %78[%629] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %631 = llvm.load %630 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %632 = llvm.add %95, %34 : i64
          %633 = llvm.mul %632, %52 : i64
          %634 = llvm.add %633, %462 : i64
          %635 = llvm.getelementptr %78[%634] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %636 = llvm.load %635 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %637 = llvm.add %95, %33 : i64
          %638 = llvm.mul %637, %52 : i64
          %639 = llvm.add %638, %462 : i64
          %640 = llvm.getelementptr %78[%639] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %641 = llvm.load %640 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %642 = llvm.add %95, %32 : i64
          %643 = llvm.mul %642, %52 : i64
          %644 = llvm.add %643, %462 : i64
          %645 = llvm.getelementptr %78[%644] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %646 = llvm.load %645 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %647 = llvm.add %95, %31 : i64
          %648 = llvm.mul %647, %52 : i64
          %649 = llvm.add %648, %462 : i64
          %650 = llvm.getelementptr %78[%649] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %651 = llvm.load %650 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %652 = llvm.getelementptr %84[%624] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %653 = llvm.load %652 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %654 = llvm.getelementptr %84[%629] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %655 = llvm.load %654 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %656 = llvm.getelementptr %84[%634] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %657 = llvm.load %656 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %658 = llvm.getelementptr %84[%639] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %659 = llvm.load %658 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %660 = llvm.getelementptr %84[%644] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %661 = llvm.load %660 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %662 = llvm.getelementptr %84[%649] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %663 = llvm.load %662 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %664 = llvm.extractvalue %67[0] : !llvm.array<6 x vector<7xf32>> 
          %665 = llvm.fadd %653, %664 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %666 = llvm.extractvalue %67[1] : !llvm.array<6 x vector<7xf32>> 
          %667 = llvm.fadd %655, %666 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %668 = llvm.extractvalue %67[2] : !llvm.array<6 x vector<7xf32>> 
          %669 = llvm.fadd %657, %668 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %670 = llvm.extractvalue %67[3] : !llvm.array<6 x vector<7xf32>> 
          %671 = llvm.fadd %659, %670 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %672 = llvm.extractvalue %67[4] : !llvm.array<6 x vector<7xf32>> 
          %673 = llvm.fadd %661, %672 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %674 = llvm.extractvalue %67[5] : !llvm.array<6 x vector<7xf32>> 
          %675 = llvm.fadd %663, %674 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %676 = llvm.fadd %626, %665 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %677 = llvm.fadd %631, %667 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %678 = llvm.fadd %636, %669 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %679 = llvm.fadd %641, %671 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %680 = llvm.fadd %646, %673 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %681 = llvm.fadd %651, %675 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %682 = llvm.shufflevector %676, %676 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %683 = llvm.shufflevector %682, %37 [0, 1, 2, 3, 4, 5, 6, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83] : vector<42xf32> 
          %684 = llvm.shufflevector %677, %677 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %685 = llvm.shufflevector %684, %683 [42, 43, 44, 45, 46, 47, 48, 0, 1, 2, 3, 4, 5, 6, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83] : vector<42xf32> 
          %686 = llvm.shufflevector %678, %678 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %687 = llvm.shufflevector %686, %685 [42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 0, 1, 2, 3, 4, 5, 6, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83] : vector<42xf32> 
          %688 = llvm.shufflevector %679, %679 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %689 = llvm.shufflevector %688, %687 [42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 0, 1, 2, 3, 4, 5, 6, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83] : vector<42xf32> 
          %690 = llvm.shufflevector %680, %680 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %691 = llvm.shufflevector %690, %689 [42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 0, 1, 2, 3, 4, 5, 6, 77, 78, 79, 80, 81, 82, 83] : vector<42xf32> 
          %692 = llvm.shufflevector %681, %681 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %693 = llvm.shufflevector %692, %691 [42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 0, 1, 2, 3, 4, 5, 6] : vector<42xf32> 
          %694 = llvm.shufflevector %693, %693 [0, 7, 14, 21, 28, 35, 1, 8, 15, 22, 29, 36, 2, 9, 16, 23, 30, 37, 3, 10, 17, 24, 31, 38, 4, 11, 18, 25, 32, 39, 5, 12, 19, 26, 33, 40, 6, 13, 20, 27, 34, 41] : vector<42xf32> 
          %695 = llvm.shufflevector %694, %694 [0, 1, 2, 3, 4, 5] : vector<42xf32> 
          %696 = llvm.shufflevector %694, %694 [6, 7, 8, 9, 10, 11] : vector<42xf32> 
          %697 = llvm.shufflevector %694, %694 [12, 13, 14, 15, 16, 17] : vector<42xf32> 
          %698 = llvm.shufflevector %694, %694 [18, 19, 20, 21, 22, 23] : vector<42xf32> 
          %699 = llvm.shufflevector %694, %694 [24, 25, 26, 27, 28, 29] : vector<42xf32> 
          %700 = llvm.shufflevector %694, %694 [30, 31, 32, 33, 34, 35] : vector<42xf32> 
          %701 = llvm.shufflevector %694, %694 [36, 37, 38, 39, 40, 41] : vector<42xf32> 
          %702 = llvm.fsub %695, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %703 = llvm.fsub %696, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %704 = llvm.fsub %697, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %705 = llvm.fsub %698, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %706 = llvm.fsub %699, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %707 = llvm.fsub %700, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %708 = llvm.fsub %701, %457 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %709 = llvm.fmul %702, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %710 = llvm.fmul %703, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %711 = llvm.fmul %704, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %712 = llvm.fmul %705, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %713 = llvm.fmul %706, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %714 = llvm.fmul %707, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %715 = llvm.fmul %708, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %716 = llvm.extractvalue %61[0] : !llvm.array<7 x vector<6xf32>> 
          %717 = llvm.fadd %709, %716 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %718 = llvm.extractvalue %61[1] : !llvm.array<7 x vector<6xf32>> 
          %719 = llvm.fadd %710, %718 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %720 = llvm.extractvalue %61[2] : !llvm.array<7 x vector<6xf32>> 
          %721 = llvm.fadd %711, %720 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %722 = llvm.extractvalue %61[3] : !llvm.array<7 x vector<6xf32>> 
          %723 = llvm.fadd %712, %722 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %724 = llvm.extractvalue %61[4] : !llvm.array<7 x vector<6xf32>> 
          %725 = llvm.fadd %713, %724 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %726 = llvm.extractvalue %61[5] : !llvm.array<7 x vector<6xf32>> 
          %727 = llvm.fadd %714, %726 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %728 = llvm.extractvalue %61[6] : !llvm.array<7 x vector<6xf32>> 
          %729 = llvm.fadd %715, %728 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %730 = llvm.add %595, %622 : i64
          %731 = llvm.getelementptr %91[%730] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %717, %731 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %732 = llvm.add %599, %622 : i64
          %733 = llvm.getelementptr %91[%732] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %719, %733 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %734 = llvm.add %603, %622 : i64
          %735 = llvm.getelementptr %91[%734] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %721, %735 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %736 = llvm.add %607, %622 : i64
          %737 = llvm.getelementptr %91[%736] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %723, %737 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %738 = llvm.add %611, %622 : i64
          %739 = llvm.getelementptr %91[%738] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %725, %739 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %740 = llvm.add %615, %622 : i64
          %741 = llvm.getelementptr %91[%740] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %727, %741 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %742 = llvm.add %619, %622 : i64
          %743 = llvm.getelementptr %91[%742] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %729, %743 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %744 = llvm.add %462, %55 : i64
          llvm.br ^bb9(%744 : i64)
        ^bb11(%745: i64):  // 2 preds: ^bb9, ^bb12
          %746 = llvm.icmp "slt" %745, %54 : i64
          llvm.cond_br %746, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %747 = llvm.sub %54, %745 : i64
          %748 = llvm.icmp "slt" %747, %53 : i64
          %749 = llvm.select %748, %747, %53 : i1, i64
          %750 = llvm.add %745, %95 : i64
          %751 = llvm.icmp "sgt" %749, %51 : i64
          %752 = llvm.select %751, %25, %24 : i1, vector<6xi1>
          %753 = llvm.icmp "sgt" %749, %46 : i64
          %754 = llvm.select %753, %25, %24 : i1, vector<6xi1>
          %755 = llvm.icmp "sgt" %749, %45 : i64
          %756 = llvm.select %755, %25, %24 : i1, vector<6xi1>
          %757 = llvm.icmp "sgt" %749, %44 : i64
          %758 = llvm.select %757, %25, %24 : i1, vector<6xi1>
          %759 = llvm.icmp "sgt" %749, %43 : i64
          %760 = llvm.select %759, %25, %24 : i1, vector<6xi1>
          %761 = llvm.icmp "sgt" %749, %42 : i64
          %762 = llvm.select %761, %25, %24 : i1, vector<6xi1>
          %763 = llvm.icmp "sgt" %749, %60 : i64
          %764 = llvm.select %763, %25, %24 : i1, vector<6xi1>
          %765 = llvm.icmp "sgt" %749, %55 : i64
          %766 = llvm.select %765, %25, %24 : i1, vector<6xi1>
          %767 = llvm.mul %750, %52 : i64
          %768 = llvm.add %767, %56 : i64
          %769 = llvm.getelementptr %78[%768] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %770 = llvm.intr.masked.load %769, %752, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %771 = llvm.add %750, %46 : i64
          %772 = llvm.mul %771, %52 : i64
          %773 = llvm.add %772, %56 : i64
          %774 = llvm.getelementptr %78[%773] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %775 = llvm.intr.masked.load %774, %754, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %776 = llvm.add %750, %45 : i64
          %777 = llvm.mul %776, %52 : i64
          %778 = llvm.add %777, %56 : i64
          %779 = llvm.getelementptr %78[%778] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %780 = llvm.intr.masked.load %779, %756, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %781 = llvm.add %750, %44 : i64
          %782 = llvm.mul %781, %52 : i64
          %783 = llvm.add %782, %56 : i64
          %784 = llvm.getelementptr %78[%783] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %785 = llvm.intr.masked.load %784, %758, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %786 = llvm.add %750, %43 : i64
          %787 = llvm.mul %786, %52 : i64
          %788 = llvm.add %787, %56 : i64
          %789 = llvm.getelementptr %78[%788] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %790 = llvm.intr.masked.load %789, %760, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %791 = llvm.add %750, %42 : i64
          %792 = llvm.mul %791, %52 : i64
          %793 = llvm.add %792, %56 : i64
          %794 = llvm.getelementptr %78[%793] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %795 = llvm.intr.masked.load %794, %762, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %796 = llvm.add %750, %60 : i64
          %797 = llvm.mul %796, %52 : i64
          %798 = llvm.add %797, %56 : i64
          %799 = llvm.getelementptr %78[%798] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %800 = llvm.intr.masked.load %799, %764, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %801 = llvm.add %750, %55 : i64
          %802 = llvm.mul %801, %52 : i64
          %803 = llvm.add %802, %56 : i64
          %804 = llvm.getelementptr %78[%803] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %805 = llvm.intr.masked.load %804, %766, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %806 = llvm.getelementptr %84[%768] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %807 = llvm.intr.masked.load %806, %752, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %808 = llvm.getelementptr %84[%773] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %809 = llvm.intr.masked.load %808, %754, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %810 = llvm.getelementptr %84[%778] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %811 = llvm.intr.masked.load %810, %756, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %812 = llvm.getelementptr %84[%783] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %813 = llvm.intr.masked.load %812, %758, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %814 = llvm.getelementptr %84[%788] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %815 = llvm.intr.masked.load %814, %760, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %816 = llvm.getelementptr %84[%793] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %817 = llvm.intr.masked.load %816, %762, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %818 = llvm.getelementptr %84[%798] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %819 = llvm.intr.masked.load %818, %764, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %820 = llvm.getelementptr %84[%803] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %821 = llvm.intr.masked.load %820, %766, %47 {alignment = 4 : i32} : (!llvm.ptr, vector<6xi1>, vector<6xf32>) -> vector<6xf32>
          %822 = llvm.trunc %749 : i64 to i32
          %823 = llvm.insertelement %822, %1[%0 : i32] : vector<8xi32>
          %824 = llvm.shufflevector %823, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %825 = llvm.icmp "sgt" %824, %41 : vector<8xi32>
          %826 = llvm.getelementptr %72[%745] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %827 = llvm.intr.masked.load %826, %825, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %828 = llvm.getelementptr %71[%745] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %829 = llvm.intr.masked.load %828, %825, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %830 = llvm.extractvalue %70[0] : !llvm.array<8 x vector<6xf32>> 
          %831 = llvm.fadd %807, %830 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %832 = llvm.extractvalue %70[1] : !llvm.array<8 x vector<6xf32>> 
          %833 = llvm.fadd %809, %832 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %834 = llvm.extractvalue %70[2] : !llvm.array<8 x vector<6xf32>> 
          %835 = llvm.fadd %811, %834 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %836 = llvm.extractvalue %70[3] : !llvm.array<8 x vector<6xf32>> 
          %837 = llvm.fadd %813, %836 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %838 = llvm.extractvalue %70[4] : !llvm.array<8 x vector<6xf32>> 
          %839 = llvm.fadd %815, %838 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %840 = llvm.extractvalue %70[5] : !llvm.array<8 x vector<6xf32>> 
          %841 = llvm.fadd %817, %840 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %842 = llvm.extractvalue %70[6] : !llvm.array<8 x vector<6xf32>> 
          %843 = llvm.fadd %819, %842 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %844 = llvm.extractvalue %70[7] : !llvm.array<8 x vector<6xf32>> 
          %845 = llvm.fadd %821, %844 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %846 = llvm.fadd %770, %831 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %847 = llvm.fadd %775, %833 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %848 = llvm.fadd %780, %835 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %849 = llvm.fadd %785, %837 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %850 = llvm.fadd %790, %839 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %851 = llvm.fadd %795, %841 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %852 = llvm.fadd %800, %843 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %853 = llvm.fadd %805, %845 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %854 = llvm.shufflevector %846, %846 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %855 = llvm.shufflevector %854, %36 [0, 1, 2, 3, 4, 5, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %856 = llvm.shufflevector %847, %847 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %857 = llvm.shufflevector %856, %855 [48, 49, 50, 51, 52, 53, 0, 1, 2, 3, 4, 5, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %858 = llvm.shufflevector %848, %848 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %859 = llvm.shufflevector %858, %857 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 0, 1, 2, 3, 4, 5, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %860 = llvm.shufflevector %849, %849 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %861 = llvm.shufflevector %860, %859 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 0, 1, 2, 3, 4, 5, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %862 = llvm.shufflevector %850, %850 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %863 = llvm.shufflevector %862, %861 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %864 = llvm.shufflevector %851, %851 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %865 = llvm.shufflevector %864, %863 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 0, 1, 2, 3, 4, 5, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %866 = llvm.shufflevector %852, %852 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %867 = llvm.shufflevector %866, %865 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 0, 1, 2, 3, 4, 5, 90, 91, 92, 93, 94, 95] : vector<48xf32> 
          %868 = llvm.shufflevector %853, %853 [0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %869 = llvm.shufflevector %868, %867 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 0, 1, 2, 3, 4, 5] : vector<48xf32> 
          %870 = llvm.shufflevector %869, %869 [0, 6, 12, 18, 24, 30, 36, 42, 1, 7, 13, 19, 25, 31, 37, 43, 2, 8, 14, 20, 26, 32, 38, 44, 3, 9, 15, 21, 27, 33, 39, 45, 4, 10, 16, 22, 28, 34, 40, 46, 5, 11, 17, 23, 29, 35, 41, 47] : vector<48xf32> 
          %871 = llvm.shufflevector %870, %870 [0, 1, 2, 3, 4, 5, 6, 7] : vector<48xf32> 
          %872 = llvm.shufflevector %870, %870 [8, 9, 10, 11, 12, 13, 14, 15] : vector<48xf32> 
          %873 = llvm.shufflevector %870, %870 [16, 17, 18, 19, 20, 21, 22, 23] : vector<48xf32> 
          %874 = llvm.shufflevector %870, %870 [24, 25, 26, 27, 28, 29, 30, 31] : vector<48xf32> 
          %875 = llvm.shufflevector %870, %870 [32, 33, 34, 35, 36, 37, 38, 39] : vector<48xf32> 
          %876 = llvm.shufflevector %870, %870 [40, 41, 42, 43, 44, 45, 46, 47] : vector<48xf32> 
          %877 = llvm.fdiv %827, %65 : vector<8xf32>
          %878 = llvm.fsub %871, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %879 = llvm.fsub %872, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %880 = llvm.fsub %873, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %881 = llvm.fsub %874, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %882 = llvm.fsub %875, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %883 = llvm.fsub %876, %877 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %884 = llvm.fdiv %829, %65 : vector<8xf32>
          %885 = llvm.fadd %884, %66 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %886 = llvm.intr.sqrt(%885) : (vector<8xf32>) -> vector<8xf32>
          %887 = llvm.fdiv %3, %886 : vector<8xf32>
          %888 = llvm.fmul %878, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %889 = llvm.fmul %879, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %890 = llvm.fmul %880, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %891 = llvm.fmul %881, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %892 = llvm.fmul %882, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %893 = llvm.fmul %883, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %894 = llvm.extractvalue %62[0] : !llvm.array<6 x vector<8xf32>> 
          %895 = llvm.fadd %888, %894 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %896 = llvm.extractvalue %62[1] : !llvm.array<6 x vector<8xf32>> 
          %897 = llvm.fadd %889, %896 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %898 = llvm.extractvalue %62[2] : !llvm.array<6 x vector<8xf32>> 
          %899 = llvm.fadd %890, %898 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %900 = llvm.extractvalue %62[3] : !llvm.array<6 x vector<8xf32>> 
          %901 = llvm.fadd %891, %900 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %902 = llvm.extractvalue %62[4] : !llvm.array<6 x vector<8xf32>> 
          %903 = llvm.fadd %892, %902 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %904 = llvm.extractvalue %62[5] : !llvm.array<6 x vector<8xf32>> 
          %905 = llvm.fadd %893, %904 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %906 = llvm.mul %56, %21 : i64
          %907 = llvm.add %906, %750 : i64
          %908 = llvm.getelementptr %91[%907] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %895, %908, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %909 = llvm.mul %30, %21 : i64
          %910 = llvm.add %909, %750 : i64
          %911 = llvm.getelementptr %91[%910] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %897, %911, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %912 = llvm.mul %29, %21 : i64
          %913 = llvm.add %912, %750 : i64
          %914 = llvm.getelementptr %91[%913] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %899, %914, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %915 = llvm.mul %28, %21 : i64
          %916 = llvm.add %915, %750 : i64
          %917 = llvm.getelementptr %91[%916] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %901, %917, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %918 = llvm.mul %27, %21 : i64
          %919 = llvm.add %918, %750 : i64
          %920 = llvm.getelementptr %91[%919] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %903, %920, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %921 = llvm.mul %26, %21 : i64
          %922 = llvm.add %921, %750 : i64
          %923 = llvm.getelementptr %91[%922] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %905, %923, %825 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %924 = llvm.add %745, %53 : i64
          llvm.br ^bb11(%924 : i64)
        ^bb13:  // pred: ^bb11
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer = util.global.load immutable @main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_144::@embedded_elf_riscv_64::@main_graph$async_dispatch_144_reduction_196x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_144) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_144::@embedded_elf_riscv_64::@main_graph$async_dispatch_144_reduction_196x160_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_144_embedded_elf_riscv_64_main_graph$async_dispatch_144_reduction_196x160_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
