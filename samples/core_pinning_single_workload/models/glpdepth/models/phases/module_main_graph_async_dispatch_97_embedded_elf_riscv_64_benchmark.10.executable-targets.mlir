#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_97 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_97_reduction_784x64_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c28 = arith.constant 28 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c28, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_97_reduction_784x64_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %3 = llvm.mlir.constant(dense<1.000000e+00> : vector<4xf32>) : vector<4xf32>
          %4 = llvm.mlir.constant(27 : i64) : i64
          %5 = llvm.mlir.constant(26 : i64) : i64
          %6 = llvm.mlir.constant(25 : i64) : i64
          %7 = llvm.mlir.constant(24 : i64) : i64
          %8 = llvm.mlir.constant(23 : i64) : i64
          %9 = llvm.mlir.constant(22 : i64) : i64
          %10 = llvm.mlir.constant(21 : i64) : i64
          %11 = llvm.mlir.constant(20 : i64) : i64
          %12 = llvm.mlir.constant(19 : i64) : i64
          %13 = llvm.mlir.constant(18 : i64) : i64
          %14 = llvm.mlir.constant(17 : i64) : i64
          %15 = llvm.mlir.constant(16 : i64) : i64
          %16 = llvm.mlir.constant(15 : i64) : i64
          %17 = llvm.mlir.constant(14 : i64) : i64
          %18 = llvm.mlir.constant(13 : i64) : i64
          %19 = llvm.mlir.constant(12 : i64) : i64
          %20 = llvm.mlir.constant(11 : i64) : i64
          %21 = llvm.mlir.constant(10 : i64) : i64
          %22 = llvm.mlir.constant(9 : i64) : i64
          %23 = llvm.mlir.constant(7 : i64) : i64
          %24 = llvm.mlir.constant(6 : i64) : i64
          %25 = llvm.mlir.constant(5 : i64) : i64
          %26 = llvm.mlir.constant(4 : i64) : i64
          %27 = llvm.mlir.constant(3 : i64) : i64
          %28 = llvm.mlir.constant(2 : i64) : i64
          %29 = llvm.mlir.constant(1 : i64) : i64
          %30 = llvm.mlir.constant(0 : i64) : i64
          %31 = llvm.mlir.poison : vector<7xf32>
          %32 = llvm.mlir.constant(true) : i1
          %33 = llvm.mlir.constant(784 : index) : i64
          %34 = llvm.mlir.constant(8 : i64) : i64
          %35 = llvm.mlir.constant(32 : i64) : i64
          %36 = llvm.mlir.constant(27 : index) : i64
          %37 = llvm.mlir.constant(26 : index) : i64
          %38 = llvm.mlir.constant(25 : index) : i64
          %39 = llvm.mlir.constant(23 : index) : i64
          %40 = llvm.mlir.constant(22 : index) : i64
          %41 = llvm.mlir.constant(21 : index) : i64
          %42 = llvm.mlir.constant(20 : index) : i64
          %43 = llvm.mlir.constant(19 : index) : i64
          %44 = llvm.mlir.constant(18 : index) : i64
          %45 = llvm.mlir.constant(17 : index) : i64
          %46 = llvm.mlir.constant(16 : index) : i64
          %47 = llvm.mlir.constant(15 : index) : i64
          %48 = llvm.mlir.constant(14 : index) : i64
          %49 = llvm.mlir.constant(13 : index) : i64
          %50 = llvm.mlir.constant(12 : index) : i64
          %51 = llvm.mlir.constant(11 : index) : i64
          %52 = llvm.mlir.constant(10 : index) : i64
          %53 = llvm.mlir.constant(9 : index) : i64
          %54 = llvm.mlir.constant(6 : index) : i64
          %55 = llvm.mlir.constant(5 : index) : i64
          %56 = llvm.mlir.constant(4 : index) : i64
          %57 = llvm.mlir.constant(3 : index) : i64
          %58 = llvm.mlir.constant(2 : index) : i64
          %59 = llvm.mlir.poison : vector<28xf32>
          %60 = llvm.mlir.poison : vector<56xf32>
          %61 = llvm.mlir.poison : vector<224xf32>
          %62 = llvm.mlir.poison : vector<8xf32>
          %63 = llvm.mlir.constant(1 : index) : i64
          %64 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %65 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %66 = llvm.mlir.constant(802816 : index) : i64
          %67 = llvm.mlir.constant(401408 : index) : i64
          %68 = llvm.mlir.constant(602112 : index) : i64
          %69 = llvm.mlir.constant(0 : index) : i64
          %70 = llvm.mlir.constant(64 : index) : i64
          %71 = llvm.mlir.constant(8 : index) : i64
          %72 = llvm.mlir.constant(28 : index) : i64
          %73 = llvm.mlir.constant(7 : index) : i64
          %74 = llvm.mlir.constant(63 : index) : i64
          %75 = llvm.mlir.constant(24 : index) : i64
          %76 = llvm.mlir.constant(dense<0.000000e+00> : vector<28xf32>) : vector<28xf32>
          %77 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %78 = llvm.mlir.constant(dense<0.000000e+00> : vector<28x8xf32>) : !llvm.array<28 x vector<8xf32>>
          %79 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x4xf32>) : !llvm.array<7 x vector<4xf32>>
          %80 = llvm.mlir.constant(dense<6.400000e+01> : vector<28xf32>) : vector<28xf32>
          %81 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x7xf32>) : !llvm.array<8 x vector<7xf32>>
          %82 = llvm.mlir.constant(dense<6.400000e+01> : vector<8xf32>) : vector<8xf32>
          %83 = llvm.mlir.constant(dense<9.99999997E-7> : vector<8xf32>) : vector<8xf32>
          %84 = llvm.mlir.constant(dense<0.000000e+00> : vector<4x7xf32>) : !llvm.array<4 x vector<7xf32>>
          %85 = llvm.mlir.constant(dense<6.400000e+01> : vector<4xf32>) : vector<4xf32>
          %86 = llvm.mlir.constant(dense<9.99999997E-7> : vector<4xf32>) : vector<4xf32>
          %87 = llvm.alloca %72 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %88 = llvm.alloca %72 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %89 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %90 = llvm.extractvalue %89[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %91 = llvm.load %90 : !llvm.ptr -> !llvm.ptr
          %92 = llvm.mul %68, %34 : i64
          %93 = llvm.udiv %92, %35 : i64
          %94 = llvm.getelementptr %91[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %32 ["align"(%94, %70 : !llvm.ptr, i64)] : i1
          %95 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %96 = llvm.extractvalue %95[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %97 = llvm.load %96 : !llvm.ptr -> !llvm.ptr
          %98 = llvm.mul %67, %34 : i64
          %99 = llvm.udiv %98, %35 : i64
          %100 = llvm.getelementptr %97[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %32 ["align"(%100, %70 : !llvm.ptr, i64)] : i1
          %101 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %102 = llvm.extractvalue %101[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %103 = llvm.getelementptr %102[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %104 = llvm.load %103 : !llvm.ptr -> !llvm.ptr
          %105 = llvm.mul %66, %34 : i64
          %106 = llvm.udiv %105, %35 : i64
          %107 = llvm.getelementptr %104[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %32 ["align"(%107, %70 : !llvm.ptr, i64)] : i1
          %108 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %109 = llvm.extractvalue %108[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %110 = llvm.zext %109 : i32 to i64
          %111 = llvm.mul %110, %72 overflow<nsw> : i64
          llvm.store %76, %88 {alignment = 4 : i64} : vector<28xf32>, !llvm.ptr
          llvm.br ^bb1(%69 : i64)
        ^bb1(%112: i64):  // 2 preds: ^bb0, ^bb4
          %113 = llvm.icmp "slt" %112, %70 : i64
          llvm.cond_br %113, ^bb2(%69 : i64), ^bb5
        ^bb2(%114: i64):  // 2 preds: ^bb1, ^bb3
          %115 = llvm.icmp "slt" %114, %72 : i64
          llvm.cond_br %115, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %116 = llvm.add %114, %111 : i64
          %117 = llvm.mul %116, %70 : i64
          %118 = llvm.add %117, %112 : i64
          %119 = llvm.getelementptr %94[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %121 = llvm.add %116, %63 : i64
          %122 = llvm.mul %121, %70 : i64
          %123 = llvm.add %122, %112 : i64
          %124 = llvm.getelementptr %94[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %126 = llvm.add %116, %58 : i64
          %127 = llvm.mul %126, %70 : i64
          %128 = llvm.add %127, %112 : i64
          %129 = llvm.getelementptr %94[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %131 = llvm.add %116, %57 : i64
          %132 = llvm.mul %131, %70 : i64
          %133 = llvm.add %132, %112 : i64
          %134 = llvm.getelementptr %94[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %136 = llvm.add %116, %56 : i64
          %137 = llvm.mul %136, %70 : i64
          %138 = llvm.add %137, %112 : i64
          %139 = llvm.getelementptr %94[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %140 = llvm.load %139 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %141 = llvm.add %116, %55 : i64
          %142 = llvm.mul %141, %70 : i64
          %143 = llvm.add %142, %112 : i64
          %144 = llvm.getelementptr %94[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %146 = llvm.add %116, %54 : i64
          %147 = llvm.mul %146, %70 : i64
          %148 = llvm.add %147, %112 : i64
          %149 = llvm.getelementptr %94[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %150 = llvm.load %149 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %151 = llvm.getelementptr %100[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %152 = llvm.load %151 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %153 = llvm.getelementptr %100[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %154 = llvm.load %153 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %155 = llvm.getelementptr %100[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %156 = llvm.load %155 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %157 = llvm.getelementptr %100[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %158 = llvm.load %157 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %159 = llvm.getelementptr %100[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %160 = llvm.load %159 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %161 = llvm.getelementptr %100[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %162 = llvm.load %161 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %163 = llvm.getelementptr %100[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %164 = llvm.load %163 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %165 = llvm.extractvalue %77[0] : !llvm.array<7 x vector<8xf32>> 
          %166 = llvm.fadd %152, %165 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %167 = llvm.extractvalue %77[1] : !llvm.array<7 x vector<8xf32>> 
          %168 = llvm.fadd %154, %167 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %169 = llvm.extractvalue %77[2] : !llvm.array<7 x vector<8xf32>> 
          %170 = llvm.fadd %156, %169 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %171 = llvm.extractvalue %77[3] : !llvm.array<7 x vector<8xf32>> 
          %172 = llvm.fadd %158, %171 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %173 = llvm.extractvalue %77[4] : !llvm.array<7 x vector<8xf32>> 
          %174 = llvm.fadd %160, %173 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %175 = llvm.extractvalue %77[5] : !llvm.array<7 x vector<8xf32>> 
          %176 = llvm.fadd %162, %175 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %177 = llvm.extractvalue %77[6] : !llvm.array<7 x vector<8xf32>> 
          %178 = llvm.fadd %164, %177 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %179 = llvm.fadd %120, %166 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %180 = llvm.fadd %125, %168 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %181 = llvm.fadd %130, %170 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %182 = llvm.fadd %135, %172 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %183 = llvm.fadd %140, %174 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %184 = llvm.fadd %145, %176 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %185 = llvm.fadd %150, %178 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %186 = llvm.getelementptr inbounds|nuw %88[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %187 = llvm.load %186 : !llvm.ptr -> f32
          %188 = "llvm.intr.vector.reduce.fadd"(%187, %179) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %189 = llvm.add %114, %63 : i64
          %190 = llvm.getelementptr inbounds|nuw %88[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %191 = llvm.load %190 : !llvm.ptr -> f32
          %192 = "llvm.intr.vector.reduce.fadd"(%191, %180) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %193 = llvm.add %114, %58 : i64
          %194 = llvm.getelementptr inbounds|nuw %88[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %195 = llvm.load %194 : !llvm.ptr -> f32
          %196 = "llvm.intr.vector.reduce.fadd"(%195, %181) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %197 = llvm.add %114, %57 : i64
          %198 = llvm.getelementptr inbounds|nuw %88[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %199 = llvm.load %198 : !llvm.ptr -> f32
          %200 = "llvm.intr.vector.reduce.fadd"(%199, %182) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %201 = llvm.add %114, %56 : i64
          %202 = llvm.getelementptr inbounds|nuw %88[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %203 = llvm.load %202 : !llvm.ptr -> f32
          %204 = "llvm.intr.vector.reduce.fadd"(%203, %183) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %205 = llvm.add %114, %55 : i64
          %206 = llvm.getelementptr inbounds|nuw %88[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %207 = llvm.load %206 : !llvm.ptr -> f32
          %208 = "llvm.intr.vector.reduce.fadd"(%207, %184) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %209 = llvm.add %114, %54 : i64
          %210 = llvm.getelementptr inbounds|nuw %88[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %211 = llvm.load %210 : !llvm.ptr -> f32
          %212 = "llvm.intr.vector.reduce.fadd"(%211, %185) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %213 = llvm.insertelement %188, %31[%30 : i64] : vector<7xf32>
          %214 = llvm.insertelement %192, %213[%29 : i64] : vector<7xf32>
          %215 = llvm.insertelement %196, %214[%28 : i64] : vector<7xf32>
          %216 = llvm.insertelement %200, %215[%27 : i64] : vector<7xf32>
          %217 = llvm.insertelement %204, %216[%26 : i64] : vector<7xf32>
          %218 = llvm.insertelement %208, %217[%25 : i64] : vector<7xf32>
          %219 = llvm.insertelement %212, %218[%24 : i64] : vector<7xf32>
          %220 = llvm.getelementptr %88[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %219, %220 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %221 = llvm.add %114, %73 : i64
          llvm.br ^bb2(%221 : i64)
        ^bb4:  // pred: ^bb2
          %222 = llvm.add %112, %71 : i64
          llvm.br ^bb1(%222 : i64)
        ^bb5:  // pred: ^bb1
          %223 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<28xf32>
          %224 = llvm.fdiv %223, %80 : vector<28xf32>
          %225 = llvm.shufflevector %224, %224 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<28xf32> 
          %226 = llvm.shufflevector %225, %61 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %227 = llvm.shufflevector %225, %226 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %228 = llvm.shufflevector %225, %227 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %229 = llvm.shufflevector %225, %228 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %230 = llvm.shufflevector %225, %229 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %231 = llvm.shufflevector %225, %230 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %232 = llvm.shufflevector %225, %231 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %233 = llvm.shufflevector %225, %232 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27] : vector<224xf32> 
          %234 = llvm.shufflevector %233, %233 [0, 28, 56, 84, 112, 140, 168, 196, 1, 29, 57, 85, 113, 141, 169, 197, 2, 30, 58, 86, 114, 142, 170, 198, 3, 31, 59, 87, 115, 143, 171, 199, 4, 32, 60, 88, 116, 144, 172, 200, 5, 33, 61, 89, 117, 145, 173, 201, 6, 34, 62, 90, 118, 146, 174, 202, 7, 35, 63, 91, 119, 147, 175, 203, 8, 36, 64, 92, 120, 148, 176, 204, 9, 37, 65, 93, 121, 149, 177, 205, 10, 38, 66, 94, 122, 150, 178, 206, 11, 39, 67, 95, 123, 151, 179, 207, 12, 40, 68, 96, 124, 152, 180, 208, 13, 41, 69, 97, 125, 153, 181, 209, 14, 42, 70, 98, 126, 154, 182, 210, 15, 43, 71, 99, 127, 155, 183, 211, 16, 44, 72, 100, 128, 156, 184, 212, 17, 45, 73, 101, 129, 157, 185, 213, 18, 46, 74, 102, 130, 158, 186, 214, 19, 47, 75, 103, 131, 159, 187, 215, 20, 48, 76, 104, 132, 160, 188, 216, 21, 49, 77, 105, 133, 161, 189, 217, 22, 50, 78, 106, 134, 162, 190, 218, 23, 51, 79, 107, 135, 163, 191, 219, 24, 52, 80, 108, 136, 164, 192, 220, 25, 53, 81, 109, 137, 165, 193, 221, 26, 54, 82, 110, 138, 166, 194, 222, 27, 55, 83, 111, 139, 167, 195, 223] : vector<224xf32> 
          %235 = llvm.shufflevector %234, %234 [0, 1, 2, 3, 4, 5, 6, 7] : vector<224xf32> 
          %236 = llvm.shufflevector %234, %234 [8, 9, 10, 11, 12, 13, 14, 15] : vector<224xf32> 
          %237 = llvm.shufflevector %234, %234 [16, 17, 18, 19, 20, 21, 22, 23] : vector<224xf32> 
          %238 = llvm.shufflevector %234, %234 [24, 25, 26, 27, 28, 29, 30, 31] : vector<224xf32> 
          %239 = llvm.shufflevector %234, %234 [32, 33, 34, 35, 36, 37, 38, 39] : vector<224xf32> 
          %240 = llvm.shufflevector %234, %234 [40, 41, 42, 43, 44, 45, 46, 47] : vector<224xf32> 
          %241 = llvm.shufflevector %234, %234 [48, 49, 50, 51, 52, 53, 54, 55] : vector<224xf32> 
          %242 = llvm.shufflevector %234, %234 [56, 57, 58, 59, 60, 61, 62, 63] : vector<224xf32> 
          %243 = llvm.shufflevector %234, %234 [64, 65, 66, 67, 68, 69, 70, 71] : vector<224xf32> 
          %244 = llvm.shufflevector %234, %234 [72, 73, 74, 75, 76, 77, 78, 79] : vector<224xf32> 
          %245 = llvm.shufflevector %234, %234 [80, 81, 82, 83, 84, 85, 86, 87] : vector<224xf32> 
          %246 = llvm.shufflevector %234, %234 [88, 89, 90, 91, 92, 93, 94, 95] : vector<224xf32> 
          %247 = llvm.shufflevector %234, %234 [96, 97, 98, 99, 100, 101, 102, 103] : vector<224xf32> 
          %248 = llvm.shufflevector %234, %234 [104, 105, 106, 107, 108, 109, 110, 111] : vector<224xf32> 
          %249 = llvm.shufflevector %234, %234 [112, 113, 114, 115, 116, 117, 118, 119] : vector<224xf32> 
          %250 = llvm.shufflevector %234, %234 [120, 121, 122, 123, 124, 125, 126, 127] : vector<224xf32> 
          %251 = llvm.shufflevector %234, %234 [128, 129, 130, 131, 132, 133, 134, 135] : vector<224xf32> 
          %252 = llvm.shufflevector %234, %234 [136, 137, 138, 139, 140, 141, 142, 143] : vector<224xf32> 
          %253 = llvm.shufflevector %234, %234 [144, 145, 146, 147, 148, 149, 150, 151] : vector<224xf32> 
          %254 = llvm.shufflevector %234, %234 [152, 153, 154, 155, 156, 157, 158, 159] : vector<224xf32> 
          %255 = llvm.shufflevector %234, %234 [160, 161, 162, 163, 164, 165, 166, 167] : vector<224xf32> 
          %256 = llvm.shufflevector %234, %234 [168, 169, 170, 171, 172, 173, 174, 175] : vector<224xf32> 
          %257 = llvm.shufflevector %234, %234 [176, 177, 178, 179, 180, 181, 182, 183] : vector<224xf32> 
          %258 = llvm.shufflevector %234, %234 [184, 185, 186, 187, 188, 189, 190, 191] : vector<224xf32> 
          %259 = llvm.shufflevector %234, %234 [192, 193, 194, 195, 196, 197, 198, 199] : vector<224xf32> 
          %260 = llvm.shufflevector %234, %234 [200, 201, 202, 203, 204, 205, 206, 207] : vector<224xf32> 
          %261 = llvm.shufflevector %234, %234 [208, 209, 210, 211, 212, 213, 214, 215] : vector<224xf32> 
          %262 = llvm.shufflevector %234, %234 [216, 217, 218, 219, 220, 221, 222, 223] : vector<224xf32> 
          llvm.br ^bb6(%69, %76 : i64, vector<28xf32>)
        ^bb6(%263: i64, %264: vector<28xf32>):  // 2 preds: ^bb5, ^bb7
          %265 = llvm.icmp "slt" %263, %70 : i64
          llvm.cond_br %265, ^bb7, ^bb8
        ^bb7:  // pred: ^bb6
          %266 = llvm.mul %111, %70 : i64
          %267 = llvm.add %266, %263 : i64
          %268 = llvm.getelementptr %94[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %269 = llvm.load %268 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %270 = llvm.add %111, %63 : i64
          %271 = llvm.mul %270, %70 : i64
          %272 = llvm.add %271, %263 : i64
          %273 = llvm.getelementptr %94[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %274 = llvm.load %273 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %275 = llvm.add %111, %58 : i64
          %276 = llvm.mul %275, %70 : i64
          %277 = llvm.add %276, %263 : i64
          %278 = llvm.getelementptr %94[%277] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %279 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %280 = llvm.add %111, %57 : i64
          %281 = llvm.mul %280, %70 : i64
          %282 = llvm.add %281, %263 : i64
          %283 = llvm.getelementptr %94[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %284 = llvm.load %283 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %285 = llvm.add %111, %56 : i64
          %286 = llvm.mul %285, %70 : i64
          %287 = llvm.add %286, %263 : i64
          %288 = llvm.getelementptr %94[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %289 = llvm.load %288 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %290 = llvm.add %111, %55 : i64
          %291 = llvm.mul %290, %70 : i64
          %292 = llvm.add %291, %263 : i64
          %293 = llvm.getelementptr %94[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %294 = llvm.load %293 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %295 = llvm.add %111, %54 : i64
          %296 = llvm.mul %295, %70 : i64
          %297 = llvm.add %296, %263 : i64
          %298 = llvm.getelementptr %94[%297] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %299 = llvm.load %298 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %300 = llvm.add %111, %73 : i64
          %301 = llvm.mul %300, %70 : i64
          %302 = llvm.add %301, %263 : i64
          %303 = llvm.getelementptr %94[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %304 = llvm.load %303 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %305 = llvm.add %111, %71 : i64
          %306 = llvm.mul %305, %70 : i64
          %307 = llvm.add %306, %263 : i64
          %308 = llvm.getelementptr %94[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %309 = llvm.load %308 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %310 = llvm.add %111, %53 : i64
          %311 = llvm.mul %310, %70 : i64
          %312 = llvm.add %311, %263 : i64
          %313 = llvm.getelementptr %94[%312] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %314 = llvm.load %313 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %315 = llvm.add %111, %52 : i64
          %316 = llvm.mul %315, %70 : i64
          %317 = llvm.add %316, %263 : i64
          %318 = llvm.getelementptr %94[%317] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %319 = llvm.load %318 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %320 = llvm.add %111, %51 : i64
          %321 = llvm.mul %320, %70 : i64
          %322 = llvm.add %321, %263 : i64
          %323 = llvm.getelementptr %94[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %324 = llvm.load %323 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %325 = llvm.add %111, %50 : i64
          %326 = llvm.mul %325, %70 : i64
          %327 = llvm.add %326, %263 : i64
          %328 = llvm.getelementptr %94[%327] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %329 = llvm.load %328 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %330 = llvm.add %111, %49 : i64
          %331 = llvm.mul %330, %70 : i64
          %332 = llvm.add %331, %263 : i64
          %333 = llvm.getelementptr %94[%332] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %334 = llvm.load %333 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %335 = llvm.add %111, %48 : i64
          %336 = llvm.mul %335, %70 : i64
          %337 = llvm.add %336, %263 : i64
          %338 = llvm.getelementptr %94[%337] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %339 = llvm.load %338 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %340 = llvm.add %111, %47 : i64
          %341 = llvm.mul %340, %70 : i64
          %342 = llvm.add %341, %263 : i64
          %343 = llvm.getelementptr %94[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %344 = llvm.load %343 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %345 = llvm.add %111, %46 : i64
          %346 = llvm.mul %345, %70 : i64
          %347 = llvm.add %346, %263 : i64
          %348 = llvm.getelementptr %94[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %349 = llvm.load %348 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %350 = llvm.add %111, %45 : i64
          %351 = llvm.mul %350, %70 : i64
          %352 = llvm.add %351, %263 : i64
          %353 = llvm.getelementptr %94[%352] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %354 = llvm.load %353 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %355 = llvm.add %111, %44 : i64
          %356 = llvm.mul %355, %70 : i64
          %357 = llvm.add %356, %263 : i64
          %358 = llvm.getelementptr %94[%357] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %359 = llvm.load %358 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %360 = llvm.add %111, %43 : i64
          %361 = llvm.mul %360, %70 : i64
          %362 = llvm.add %361, %263 : i64
          %363 = llvm.getelementptr %94[%362] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %364 = llvm.load %363 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %365 = llvm.add %111, %42 : i64
          %366 = llvm.mul %365, %70 : i64
          %367 = llvm.add %366, %263 : i64
          %368 = llvm.getelementptr %94[%367] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %369 = llvm.load %368 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %370 = llvm.add %111, %41 : i64
          %371 = llvm.mul %370, %70 : i64
          %372 = llvm.add %371, %263 : i64
          %373 = llvm.getelementptr %94[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %374 = llvm.load %373 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %375 = llvm.add %111, %40 : i64
          %376 = llvm.mul %375, %70 : i64
          %377 = llvm.add %376, %263 : i64
          %378 = llvm.getelementptr %94[%377] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %379 = llvm.load %378 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %380 = llvm.add %111, %39 : i64
          %381 = llvm.mul %380, %70 : i64
          %382 = llvm.add %381, %263 : i64
          %383 = llvm.getelementptr %94[%382] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %384 = llvm.load %383 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %385 = llvm.add %111, %75 : i64
          %386 = llvm.mul %385, %70 : i64
          %387 = llvm.add %386, %263 : i64
          %388 = llvm.getelementptr %94[%387] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %389 = llvm.load %388 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %390 = llvm.add %111, %38 : i64
          %391 = llvm.mul %390, %70 : i64
          %392 = llvm.add %391, %263 : i64
          %393 = llvm.getelementptr %94[%392] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %394 = llvm.load %393 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %395 = llvm.add %111, %37 : i64
          %396 = llvm.mul %395, %70 : i64
          %397 = llvm.add %396, %263 : i64
          %398 = llvm.getelementptr %94[%397] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %399 = llvm.load %398 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %400 = llvm.add %111, %36 : i64
          %401 = llvm.mul %400, %70 : i64
          %402 = llvm.add %401, %263 : i64
          %403 = llvm.getelementptr %94[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %404 = llvm.load %403 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %405 = llvm.getelementptr %100[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %406 = llvm.load %405 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %407 = llvm.getelementptr %100[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %408 = llvm.load %407 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %409 = llvm.getelementptr %100[%277] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %410 = llvm.load %409 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %411 = llvm.getelementptr %100[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %412 = llvm.load %411 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %413 = llvm.getelementptr %100[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %414 = llvm.load %413 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %415 = llvm.getelementptr %100[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %416 = llvm.load %415 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %417 = llvm.getelementptr %100[%297] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %418 = llvm.load %417 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %419 = llvm.getelementptr %100[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %420 = llvm.load %419 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %421 = llvm.getelementptr %100[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %422 = llvm.load %421 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %423 = llvm.getelementptr %100[%312] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %424 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %425 = llvm.getelementptr %100[%317] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %426 = llvm.load %425 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %427 = llvm.getelementptr %100[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %428 = llvm.load %427 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %429 = llvm.getelementptr %100[%327] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %430 = llvm.load %429 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %431 = llvm.getelementptr %100[%332] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %432 = llvm.load %431 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %433 = llvm.getelementptr %100[%337] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %434 = llvm.load %433 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %435 = llvm.getelementptr %100[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %436 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %437 = llvm.getelementptr %100[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %438 = llvm.load %437 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %439 = llvm.getelementptr %100[%352] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %440 = llvm.load %439 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %441 = llvm.getelementptr %100[%357] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %442 = llvm.load %441 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %443 = llvm.getelementptr %100[%362] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %444 = llvm.load %443 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %445 = llvm.getelementptr %100[%367] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %446 = llvm.load %445 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %447 = llvm.getelementptr %100[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %448 = llvm.load %447 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %449 = llvm.getelementptr %100[%377] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %450 = llvm.load %449 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %451 = llvm.getelementptr %100[%382] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %452 = llvm.load %451 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %453 = llvm.getelementptr %100[%387] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %454 = llvm.load %453 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %455 = llvm.getelementptr %100[%392] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %456 = llvm.load %455 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %457 = llvm.getelementptr %100[%397] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %458 = llvm.load %457 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %459 = llvm.getelementptr %100[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %460 = llvm.load %459 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %461 = llvm.extractvalue %78[0] : !llvm.array<28 x vector<8xf32>> 
          %462 = llvm.fadd %406, %461 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %463 = llvm.extractvalue %78[1] : !llvm.array<28 x vector<8xf32>> 
          %464 = llvm.fadd %408, %463 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %465 = llvm.extractvalue %78[2] : !llvm.array<28 x vector<8xf32>> 
          %466 = llvm.fadd %410, %465 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %467 = llvm.extractvalue %78[3] : !llvm.array<28 x vector<8xf32>> 
          %468 = llvm.fadd %412, %467 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %469 = llvm.extractvalue %78[4] : !llvm.array<28 x vector<8xf32>> 
          %470 = llvm.fadd %414, %469 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %471 = llvm.extractvalue %78[5] : !llvm.array<28 x vector<8xf32>> 
          %472 = llvm.fadd %416, %471 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %473 = llvm.extractvalue %78[6] : !llvm.array<28 x vector<8xf32>> 
          %474 = llvm.fadd %418, %473 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %475 = llvm.extractvalue %78[7] : !llvm.array<28 x vector<8xf32>> 
          %476 = llvm.fadd %420, %475 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %477 = llvm.extractvalue %78[8] : !llvm.array<28 x vector<8xf32>> 
          %478 = llvm.fadd %422, %477 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %479 = llvm.extractvalue %78[9] : !llvm.array<28 x vector<8xf32>> 
          %480 = llvm.fadd %424, %479 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %481 = llvm.extractvalue %78[10] : !llvm.array<28 x vector<8xf32>> 
          %482 = llvm.fadd %426, %481 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %483 = llvm.extractvalue %78[11] : !llvm.array<28 x vector<8xf32>> 
          %484 = llvm.fadd %428, %483 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %485 = llvm.extractvalue %78[12] : !llvm.array<28 x vector<8xf32>> 
          %486 = llvm.fadd %430, %485 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %487 = llvm.extractvalue %78[13] : !llvm.array<28 x vector<8xf32>> 
          %488 = llvm.fadd %432, %487 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %489 = llvm.extractvalue %78[14] : !llvm.array<28 x vector<8xf32>> 
          %490 = llvm.fadd %434, %489 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %491 = llvm.extractvalue %78[15] : !llvm.array<28 x vector<8xf32>> 
          %492 = llvm.fadd %436, %491 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %493 = llvm.extractvalue %78[16] : !llvm.array<28 x vector<8xf32>> 
          %494 = llvm.fadd %438, %493 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %495 = llvm.extractvalue %78[17] : !llvm.array<28 x vector<8xf32>> 
          %496 = llvm.fadd %440, %495 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %497 = llvm.extractvalue %78[18] : !llvm.array<28 x vector<8xf32>> 
          %498 = llvm.fadd %442, %497 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %499 = llvm.extractvalue %78[19] : !llvm.array<28 x vector<8xf32>> 
          %500 = llvm.fadd %444, %499 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %501 = llvm.extractvalue %78[20] : !llvm.array<28 x vector<8xf32>> 
          %502 = llvm.fadd %446, %501 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %503 = llvm.extractvalue %78[21] : !llvm.array<28 x vector<8xf32>> 
          %504 = llvm.fadd %448, %503 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %505 = llvm.extractvalue %78[22] : !llvm.array<28 x vector<8xf32>> 
          %506 = llvm.fadd %450, %505 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %507 = llvm.extractvalue %78[23] : !llvm.array<28 x vector<8xf32>> 
          %508 = llvm.fadd %452, %507 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %509 = llvm.extractvalue %78[24] : !llvm.array<28 x vector<8xf32>> 
          %510 = llvm.fadd %454, %509 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %511 = llvm.extractvalue %78[25] : !llvm.array<28 x vector<8xf32>> 
          %512 = llvm.fadd %456, %511 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %513 = llvm.extractvalue %78[26] : !llvm.array<28 x vector<8xf32>> 
          %514 = llvm.fadd %458, %513 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %515 = llvm.extractvalue %78[27] : !llvm.array<28 x vector<8xf32>> 
          %516 = llvm.fadd %460, %515 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %517 = llvm.fadd %269, %462 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %518 = llvm.fadd %274, %464 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %519 = llvm.fadd %279, %466 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %520 = llvm.fadd %284, %468 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %521 = llvm.fadd %289, %470 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %522 = llvm.fadd %294, %472 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %523 = llvm.fadd %299, %474 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %524 = llvm.fadd %304, %476 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %525 = llvm.fadd %309, %478 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %526 = llvm.fadd %314, %480 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %527 = llvm.fadd %319, %482 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %528 = llvm.fadd %324, %484 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %529 = llvm.fadd %329, %486 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %530 = llvm.fadd %334, %488 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %531 = llvm.fadd %339, %490 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %532 = llvm.fadd %344, %492 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %533 = llvm.fadd %349, %494 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %534 = llvm.fadd %354, %496 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %535 = llvm.fadd %359, %498 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %536 = llvm.fadd %364, %500 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %537 = llvm.fadd %369, %502 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %538 = llvm.fadd %374, %504 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %539 = llvm.fadd %379, %506 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %540 = llvm.fadd %384, %508 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %541 = llvm.fadd %389, %510 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %542 = llvm.fadd %394, %512 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %543 = llvm.fadd %399, %514 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %544 = llvm.fadd %404, %516 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %545 = llvm.fsub %517, %235 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %546 = llvm.fsub %518, %236 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %547 = llvm.fsub %519, %237 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %548 = llvm.fsub %520, %238 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %549 = llvm.fsub %521, %239 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %550 = llvm.fsub %522, %240 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %551 = llvm.fsub %523, %241 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %552 = llvm.fsub %524, %242 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %553 = llvm.fsub %525, %243 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %554 = llvm.fsub %526, %244 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %555 = llvm.fsub %527, %245 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %556 = llvm.fsub %528, %246 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %557 = llvm.fsub %529, %247 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %558 = llvm.fsub %530, %248 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %559 = llvm.fsub %531, %249 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %560 = llvm.fsub %532, %250 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %561 = llvm.fsub %533, %251 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %562 = llvm.fsub %534, %252 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %563 = llvm.fsub %535, %253 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %564 = llvm.fsub %536, %254 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %565 = llvm.fsub %537, %255 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %566 = llvm.fsub %538, %256 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %567 = llvm.fsub %539, %257 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %568 = llvm.fsub %540, %258 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %569 = llvm.fsub %541, %259 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %570 = llvm.fsub %542, %260 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %571 = llvm.fsub %543, %261 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %572 = llvm.fsub %544, %262 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %573 = llvm.extractelement %264[%30 : i64] : vector<28xf32>
          %574 = llvm.fmul %545, %545 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %575 = "llvm.intr.vector.reduce.fadd"(%573, %574) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %576 = llvm.extractelement %264[%29 : i64] : vector<28xf32>
          %577 = llvm.fmul %546, %546 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %578 = "llvm.intr.vector.reduce.fadd"(%576, %577) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %579 = llvm.extractelement %264[%28 : i64] : vector<28xf32>
          %580 = llvm.fmul %547, %547 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %581 = "llvm.intr.vector.reduce.fadd"(%579, %580) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %582 = llvm.extractelement %264[%27 : i64] : vector<28xf32>
          %583 = llvm.fmul %548, %548 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %584 = "llvm.intr.vector.reduce.fadd"(%582, %583) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %585 = llvm.extractelement %264[%26 : i64] : vector<28xf32>
          %586 = llvm.fmul %549, %549 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %587 = "llvm.intr.vector.reduce.fadd"(%585, %586) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %588 = llvm.extractelement %264[%25 : i64] : vector<28xf32>
          %589 = llvm.fmul %550, %550 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %590 = "llvm.intr.vector.reduce.fadd"(%588, %589) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %591 = llvm.extractelement %264[%24 : i64] : vector<28xf32>
          %592 = llvm.fmul %551, %551 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %593 = "llvm.intr.vector.reduce.fadd"(%591, %592) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %594 = llvm.extractelement %264[%23 : i64] : vector<28xf32>
          %595 = llvm.fmul %552, %552 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %596 = "llvm.intr.vector.reduce.fadd"(%594, %595) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %597 = llvm.extractelement %264[%34 : i64] : vector<28xf32>
          %598 = llvm.fmul %553, %553 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %599 = "llvm.intr.vector.reduce.fadd"(%597, %598) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %600 = llvm.extractelement %264[%22 : i64] : vector<28xf32>
          %601 = llvm.fmul %554, %554 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %602 = "llvm.intr.vector.reduce.fadd"(%600, %601) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %603 = llvm.extractelement %264[%21 : i64] : vector<28xf32>
          %604 = llvm.fmul %555, %555 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %605 = "llvm.intr.vector.reduce.fadd"(%603, %604) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %606 = llvm.extractelement %264[%20 : i64] : vector<28xf32>
          %607 = llvm.fmul %556, %556 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %608 = "llvm.intr.vector.reduce.fadd"(%606, %607) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %609 = llvm.extractelement %264[%19 : i64] : vector<28xf32>
          %610 = llvm.fmul %557, %557 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %611 = "llvm.intr.vector.reduce.fadd"(%609, %610) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %612 = llvm.extractelement %264[%18 : i64] : vector<28xf32>
          %613 = llvm.fmul %558, %558 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %614 = "llvm.intr.vector.reduce.fadd"(%612, %613) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %615 = llvm.extractelement %264[%17 : i64] : vector<28xf32>
          %616 = llvm.fmul %559, %559 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %617 = "llvm.intr.vector.reduce.fadd"(%615, %616) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %618 = llvm.extractelement %264[%16 : i64] : vector<28xf32>
          %619 = llvm.fmul %560, %560 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %620 = "llvm.intr.vector.reduce.fadd"(%618, %619) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %621 = llvm.extractelement %264[%15 : i64] : vector<28xf32>
          %622 = llvm.fmul %561, %561 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %623 = "llvm.intr.vector.reduce.fadd"(%621, %622) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %624 = llvm.extractelement %264[%14 : i64] : vector<28xf32>
          %625 = llvm.fmul %562, %562 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %626 = "llvm.intr.vector.reduce.fadd"(%624, %625) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %627 = llvm.extractelement %264[%13 : i64] : vector<28xf32>
          %628 = llvm.fmul %563, %563 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %629 = "llvm.intr.vector.reduce.fadd"(%627, %628) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %630 = llvm.extractelement %264[%12 : i64] : vector<28xf32>
          %631 = llvm.fmul %564, %564 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %632 = "llvm.intr.vector.reduce.fadd"(%630, %631) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %633 = llvm.extractelement %264[%11 : i64] : vector<28xf32>
          %634 = llvm.fmul %565, %565 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %635 = "llvm.intr.vector.reduce.fadd"(%633, %634) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %636 = llvm.extractelement %264[%10 : i64] : vector<28xf32>
          %637 = llvm.fmul %566, %566 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %638 = "llvm.intr.vector.reduce.fadd"(%636, %637) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %639 = llvm.extractelement %264[%9 : i64] : vector<28xf32>
          %640 = llvm.fmul %567, %567 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %641 = "llvm.intr.vector.reduce.fadd"(%639, %640) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %642 = llvm.extractelement %264[%8 : i64] : vector<28xf32>
          %643 = llvm.fmul %568, %568 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %644 = "llvm.intr.vector.reduce.fadd"(%642, %643) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %645 = llvm.extractelement %264[%7 : i64] : vector<28xf32>
          %646 = llvm.fmul %569, %569 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %647 = "llvm.intr.vector.reduce.fadd"(%645, %646) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %648 = llvm.extractelement %264[%6 : i64] : vector<28xf32>
          %649 = llvm.fmul %570, %570 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %650 = "llvm.intr.vector.reduce.fadd"(%648, %649) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %651 = llvm.extractelement %264[%5 : i64] : vector<28xf32>
          %652 = llvm.fmul %571, %571 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %653 = "llvm.intr.vector.reduce.fadd"(%651, %652) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %654 = llvm.extractelement %264[%4 : i64] : vector<28xf32>
          %655 = llvm.fmul %572, %572 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %656 = "llvm.intr.vector.reduce.fadd"(%654, %655) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %657 = llvm.insertelement %575, %59[%30 : i64] : vector<28xf32>
          %658 = llvm.insertelement %578, %657[%29 : i64] : vector<28xf32>
          %659 = llvm.insertelement %581, %658[%28 : i64] : vector<28xf32>
          %660 = llvm.insertelement %584, %659[%27 : i64] : vector<28xf32>
          %661 = llvm.insertelement %587, %660[%26 : i64] : vector<28xf32>
          %662 = llvm.insertelement %590, %661[%25 : i64] : vector<28xf32>
          %663 = llvm.insertelement %593, %662[%24 : i64] : vector<28xf32>
          %664 = llvm.insertelement %596, %663[%23 : i64] : vector<28xf32>
          %665 = llvm.insertelement %599, %664[%34 : i64] : vector<28xf32>
          %666 = llvm.insertelement %602, %665[%22 : i64] : vector<28xf32>
          %667 = llvm.insertelement %605, %666[%21 : i64] : vector<28xf32>
          %668 = llvm.insertelement %608, %667[%20 : i64] : vector<28xf32>
          %669 = llvm.insertelement %611, %668[%19 : i64] : vector<28xf32>
          %670 = llvm.insertelement %614, %669[%18 : i64] : vector<28xf32>
          %671 = llvm.insertelement %617, %670[%17 : i64] : vector<28xf32>
          %672 = llvm.insertelement %620, %671[%16 : i64] : vector<28xf32>
          %673 = llvm.insertelement %623, %672[%15 : i64] : vector<28xf32>
          %674 = llvm.insertelement %626, %673[%14 : i64] : vector<28xf32>
          %675 = llvm.insertelement %629, %674[%13 : i64] : vector<28xf32>
          %676 = llvm.insertelement %632, %675[%12 : i64] : vector<28xf32>
          %677 = llvm.insertelement %635, %676[%11 : i64] : vector<28xf32>
          %678 = llvm.insertelement %638, %677[%10 : i64] : vector<28xf32>
          %679 = llvm.insertelement %641, %678[%9 : i64] : vector<28xf32>
          %680 = llvm.insertelement %644, %679[%8 : i64] : vector<28xf32>
          %681 = llvm.insertelement %647, %680[%7 : i64] : vector<28xf32>
          %682 = llvm.insertelement %650, %681[%6 : i64] : vector<28xf32>
          %683 = llvm.insertelement %653, %682[%5 : i64] : vector<28xf32>
          %684 = llvm.insertelement %656, %683[%4 : i64] : vector<28xf32>
          %685 = llvm.add %263, %71 : i64
          llvm.br ^bb6(%685, %684 : i64, vector<28xf32>)
        ^bb8:  // pred: ^bb6
          llvm.store %264, %87 {alignment = 4 : i64} : vector<28xf32>, !llvm.ptr
          %686 = llvm.getelementptr %88[24] : (!llvm.ptr) -> !llvm.ptr, f32
          %687 = llvm.load %686 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %688 = llvm.getelementptr %87[24] : (!llvm.ptr) -> !llvm.ptr, f32
          %689 = llvm.load %688 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %690 = llvm.fdiv %687, %85 : vector<4xf32>
          %691 = llvm.fdiv %689, %85 : vector<4xf32>
          %692 = llvm.fadd %691, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %693 = llvm.intr.sqrt(%692) : (vector<4xf32>) -> vector<4xf32>
          %694 = llvm.fdiv %3, %693 : vector<4xf32>
          llvm.br ^bb9(%69 : i64)
        ^bb9(%695: i64):  // 2 preds: ^bb8, ^bb12
          %696 = llvm.icmp "slt" %695, %74 : i64
          llvm.cond_br %696, ^bb10(%69 : i64), ^bb13(%69 : i64)
        ^bb10(%697: i64):  // 2 preds: ^bb9, ^bb11
          %698 = llvm.icmp "slt" %697, %75 : i64
          llvm.cond_br %698, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %699 = llvm.add %697, %111 : i64
          %700 = llvm.mul %699, %70 : i64
          %701 = llvm.add %700, %695 : i64
          %702 = llvm.getelementptr %94[%701] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %703 = llvm.load %702 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %704 = llvm.add %699, %63 : i64
          %705 = llvm.mul %704, %70 : i64
          %706 = llvm.add %705, %695 : i64
          %707 = llvm.getelementptr %94[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %708 = llvm.load %707 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %709 = llvm.add %699, %58 : i64
          %710 = llvm.mul %709, %70 : i64
          %711 = llvm.add %710, %695 : i64
          %712 = llvm.getelementptr %94[%711] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %713 = llvm.load %712 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %714 = llvm.add %699, %57 : i64
          %715 = llvm.mul %714, %70 : i64
          %716 = llvm.add %715, %695 : i64
          %717 = llvm.getelementptr %94[%716] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %718 = llvm.load %717 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %719 = llvm.add %699, %56 : i64
          %720 = llvm.mul %719, %70 : i64
          %721 = llvm.add %720, %695 : i64
          %722 = llvm.getelementptr %94[%721] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %723 = llvm.load %722 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %724 = llvm.add %699, %55 : i64
          %725 = llvm.mul %724, %70 : i64
          %726 = llvm.add %725, %695 : i64
          %727 = llvm.getelementptr %94[%726] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %728 = llvm.load %727 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %729 = llvm.add %699, %54 : i64
          %730 = llvm.mul %729, %70 : i64
          %731 = llvm.add %730, %695 : i64
          %732 = llvm.getelementptr %94[%731] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %733 = llvm.load %732 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %734 = llvm.add %699, %73 : i64
          %735 = llvm.mul %734, %70 : i64
          %736 = llvm.add %735, %695 : i64
          %737 = llvm.getelementptr %94[%736] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %738 = llvm.load %737 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %739 = llvm.getelementptr %100[%701] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %740 = llvm.load %739 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %741 = llvm.getelementptr %100[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %742 = llvm.load %741 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %743 = llvm.getelementptr %100[%711] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %744 = llvm.load %743 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %745 = llvm.getelementptr %100[%716] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %746 = llvm.load %745 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %747 = llvm.getelementptr %100[%721] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %748 = llvm.load %747 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %749 = llvm.getelementptr %100[%726] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %750 = llvm.load %749 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %751 = llvm.getelementptr %100[%731] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %752 = llvm.load %751 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %753 = llvm.getelementptr %100[%736] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %754 = llvm.load %753 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %755 = llvm.getelementptr %88[%697] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %756 = llvm.load %755 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %757 = llvm.getelementptr %87[%697] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %758 = llvm.load %757 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %759 = llvm.extractvalue %81[0] : !llvm.array<8 x vector<7xf32>> 
          %760 = llvm.fadd %740, %759 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %761 = llvm.extractvalue %81[1] : !llvm.array<8 x vector<7xf32>> 
          %762 = llvm.fadd %742, %761 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %763 = llvm.extractvalue %81[2] : !llvm.array<8 x vector<7xf32>> 
          %764 = llvm.fadd %744, %763 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %765 = llvm.extractvalue %81[3] : !llvm.array<8 x vector<7xf32>> 
          %766 = llvm.fadd %746, %765 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %767 = llvm.extractvalue %81[4] : !llvm.array<8 x vector<7xf32>> 
          %768 = llvm.fadd %748, %767 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %769 = llvm.extractvalue %81[5] : !llvm.array<8 x vector<7xf32>> 
          %770 = llvm.fadd %750, %769 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %771 = llvm.extractvalue %81[6] : !llvm.array<8 x vector<7xf32>> 
          %772 = llvm.fadd %752, %771 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %773 = llvm.extractvalue %81[7] : !llvm.array<8 x vector<7xf32>> 
          %774 = llvm.fadd %754, %773 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %775 = llvm.fadd %703, %760 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %776 = llvm.fadd %708, %762 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %777 = llvm.fadd %713, %764 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %778 = llvm.fadd %718, %766 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %779 = llvm.fadd %723, %768 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %780 = llvm.fadd %728, %770 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %781 = llvm.fadd %733, %772 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %782 = llvm.fadd %738, %774 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %783 = llvm.shufflevector %775, %775 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %784 = llvm.shufflevector %783, %60 [0, 1, 2, 3, 4, 5, 6, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %785 = llvm.shufflevector %776, %776 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %786 = llvm.shufflevector %785, %784 [56, 57, 58, 59, 60, 61, 62, 0, 1, 2, 3, 4, 5, 6, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %787 = llvm.shufflevector %777, %777 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %788 = llvm.shufflevector %787, %786 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 0, 1, 2, 3, 4, 5, 6, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %789 = llvm.shufflevector %778, %778 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %790 = llvm.shufflevector %789, %788 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 0, 1, 2, 3, 4, 5, 6, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %791 = llvm.shufflevector %779, %779 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %792 = llvm.shufflevector %791, %790 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 0, 1, 2, 3, 4, 5, 6, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %793 = llvm.shufflevector %780, %780 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %794 = llvm.shufflevector %793, %792 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0, 1, 2, 3, 4, 5, 6, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %795 = llvm.shufflevector %781, %781 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %796 = llvm.shufflevector %795, %794 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 0, 1, 2, 3, 4, 5, 6, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %797 = llvm.shufflevector %782, %782 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %798 = llvm.shufflevector %797, %796 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 0, 1, 2, 3, 4, 5, 6] : vector<56xf32> 
          %799 = llvm.shufflevector %798, %798 [0, 7, 14, 21, 28, 35, 42, 49, 1, 8, 15, 22, 29, 36, 43, 50, 2, 9, 16, 23, 30, 37, 44, 51, 3, 10, 17, 24, 31, 38, 45, 52, 4, 11, 18, 25, 32, 39, 46, 53, 5, 12, 19, 26, 33, 40, 47, 54, 6, 13, 20, 27, 34, 41, 48, 55] : vector<56xf32> 
          %800 = llvm.shufflevector %799, %799 [0, 1, 2, 3, 4, 5, 6, 7] : vector<56xf32> 
          %801 = llvm.shufflevector %799, %799 [8, 9, 10, 11, 12, 13, 14, 15] : vector<56xf32> 
          %802 = llvm.shufflevector %799, %799 [16, 17, 18, 19, 20, 21, 22, 23] : vector<56xf32> 
          %803 = llvm.shufflevector %799, %799 [24, 25, 26, 27, 28, 29, 30, 31] : vector<56xf32> 
          %804 = llvm.shufflevector %799, %799 [32, 33, 34, 35, 36, 37, 38, 39] : vector<56xf32> 
          %805 = llvm.shufflevector %799, %799 [40, 41, 42, 43, 44, 45, 46, 47] : vector<56xf32> 
          %806 = llvm.shufflevector %799, %799 [48, 49, 50, 51, 52, 53, 54, 55] : vector<56xf32> 
          %807 = llvm.fdiv %756, %82 : vector<8xf32>
          %808 = llvm.fsub %800, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %809 = llvm.fsub %801, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %810 = llvm.fsub %802, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %811 = llvm.fsub %803, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %812 = llvm.fsub %804, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %813 = llvm.fsub %805, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %814 = llvm.fsub %806, %807 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %815 = llvm.fdiv %758, %82 : vector<8xf32>
          %816 = llvm.fadd %815, %83 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %817 = llvm.intr.sqrt(%816) : (vector<8xf32>) -> vector<8xf32>
          %818 = llvm.fdiv %2, %817 : vector<8xf32>
          %819 = llvm.fmul %808, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %820 = llvm.fmul %809, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %821 = llvm.fmul %810, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %822 = llvm.fmul %811, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %823 = llvm.fmul %812, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %824 = llvm.fmul %813, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %825 = llvm.fmul %814, %818 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %826 = llvm.extractvalue %77[0] : !llvm.array<7 x vector<8xf32>> 
          %827 = llvm.fadd %819, %826 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %828 = llvm.extractvalue %77[1] : !llvm.array<7 x vector<8xf32>> 
          %829 = llvm.fadd %820, %828 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %830 = llvm.extractvalue %77[2] : !llvm.array<7 x vector<8xf32>> 
          %831 = llvm.fadd %821, %830 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %832 = llvm.extractvalue %77[3] : !llvm.array<7 x vector<8xf32>> 
          %833 = llvm.fadd %822, %832 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %834 = llvm.extractvalue %77[4] : !llvm.array<7 x vector<8xf32>> 
          %835 = llvm.fadd %823, %834 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %836 = llvm.extractvalue %77[5] : !llvm.array<7 x vector<8xf32>> 
          %837 = llvm.fadd %824, %836 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %838 = llvm.extractvalue %77[6] : !llvm.array<7 x vector<8xf32>> 
          %839 = llvm.fadd %825, %838 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %840 = llvm.mul %695, %33 : i64
          %841 = llvm.add %840, %699 : i64
          %842 = llvm.getelementptr %107[%841] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %827, %842 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %843 = llvm.add %695, %63 : i64
          %844 = llvm.mul %843, %33 : i64
          %845 = llvm.add %844, %699 : i64
          %846 = llvm.getelementptr %107[%845] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %829, %846 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %847 = llvm.add %695, %58 : i64
          %848 = llvm.mul %847, %33 : i64
          %849 = llvm.add %848, %699 : i64
          %850 = llvm.getelementptr %107[%849] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %831, %850 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %851 = llvm.add %695, %57 : i64
          %852 = llvm.mul %851, %33 : i64
          %853 = llvm.add %852, %699 : i64
          %854 = llvm.getelementptr %107[%853] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %833, %854 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %855 = llvm.add %695, %56 : i64
          %856 = llvm.mul %855, %33 : i64
          %857 = llvm.add %856, %699 : i64
          %858 = llvm.getelementptr %107[%857] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %835, %858 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %859 = llvm.add %695, %55 : i64
          %860 = llvm.mul %859, %33 : i64
          %861 = llvm.add %860, %699 : i64
          %862 = llvm.getelementptr %107[%861] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %837, %862 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %863 = llvm.add %695, %54 : i64
          %864 = llvm.mul %863, %33 : i64
          %865 = llvm.add %864, %699 : i64
          %866 = llvm.getelementptr %107[%865] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %839, %866 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %867 = llvm.add %697, %71 : i64
          llvm.br ^bb10(%867 : i64)
        ^bb12:  // pred: ^bb10
          %868 = llvm.add %111, %75 : i64
          %869 = llvm.mul %868, %70 : i64
          %870 = llvm.add %869, %695 : i64
          %871 = llvm.getelementptr %94[%870] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %872 = llvm.load %871 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %873 = llvm.add %111, %38 : i64
          %874 = llvm.mul %873, %70 : i64
          %875 = llvm.add %874, %695 : i64
          %876 = llvm.getelementptr %94[%875] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %877 = llvm.load %876 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %878 = llvm.add %111, %37 : i64
          %879 = llvm.mul %878, %70 : i64
          %880 = llvm.add %879, %695 : i64
          %881 = llvm.getelementptr %94[%880] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %882 = llvm.load %881 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %883 = llvm.add %111, %36 : i64
          %884 = llvm.mul %883, %70 : i64
          %885 = llvm.add %884, %695 : i64
          %886 = llvm.getelementptr %94[%885] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %887 = llvm.load %886 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %888 = llvm.getelementptr %100[%870] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %889 = llvm.load %888 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %890 = llvm.getelementptr %100[%875] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %891 = llvm.load %890 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %892 = llvm.getelementptr %100[%880] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %893 = llvm.load %892 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %894 = llvm.getelementptr %100[%885] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %895 = llvm.load %894 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %896 = llvm.extractvalue %84[0] : !llvm.array<4 x vector<7xf32>> 
          %897 = llvm.fadd %889, %896 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %898 = llvm.extractvalue %84[1] : !llvm.array<4 x vector<7xf32>> 
          %899 = llvm.fadd %891, %898 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %900 = llvm.extractvalue %84[2] : !llvm.array<4 x vector<7xf32>> 
          %901 = llvm.fadd %893, %900 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %902 = llvm.extractvalue %84[3] : !llvm.array<4 x vector<7xf32>> 
          %903 = llvm.fadd %895, %902 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %904 = llvm.fadd %872, %897 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %905 = llvm.fadd %877, %899 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %906 = llvm.fadd %882, %901 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %907 = llvm.fadd %887, %903 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %908 = llvm.shufflevector %904, %904 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %909 = llvm.shufflevector %908, %59 [0, 1, 2, 3, 4, 5, 6, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55] : vector<28xf32> 
          %910 = llvm.shufflevector %905, %905 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %911 = llvm.shufflevector %910, %909 [28, 29, 30, 31, 32, 33, 34, 0, 1, 2, 3, 4, 5, 6, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55] : vector<28xf32> 
          %912 = llvm.shufflevector %906, %906 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %913 = llvm.shufflevector %912, %911 [28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 0, 1, 2, 3, 4, 5, 6, 49, 50, 51, 52, 53, 54, 55] : vector<28xf32> 
          %914 = llvm.shufflevector %907, %907 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %915 = llvm.shufflevector %914, %913 [28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 0, 1, 2, 3, 4, 5, 6] : vector<28xf32> 
          %916 = llvm.shufflevector %915, %915 [0, 7, 14, 21, 1, 8, 15, 22, 2, 9, 16, 23, 3, 10, 17, 24, 4, 11, 18, 25, 5, 12, 19, 26, 6, 13, 20, 27] : vector<28xf32> 
          %917 = llvm.shufflevector %916, %916 [0, 1, 2, 3] : vector<28xf32> 
          %918 = llvm.shufflevector %916, %916 [4, 5, 6, 7] : vector<28xf32> 
          %919 = llvm.shufflevector %916, %916 [8, 9, 10, 11] : vector<28xf32> 
          %920 = llvm.shufflevector %916, %916 [12, 13, 14, 15] : vector<28xf32> 
          %921 = llvm.shufflevector %916, %916 [16, 17, 18, 19] : vector<28xf32> 
          %922 = llvm.shufflevector %916, %916 [20, 21, 22, 23] : vector<28xf32> 
          %923 = llvm.shufflevector %916, %916 [24, 25, 26, 27] : vector<28xf32> 
          %924 = llvm.fsub %917, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %925 = llvm.fsub %918, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %926 = llvm.fsub %919, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %927 = llvm.fsub %920, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %928 = llvm.fsub %921, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %929 = llvm.fsub %922, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %930 = llvm.fsub %923, %690 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %931 = llvm.fmul %924, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %932 = llvm.fmul %925, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %933 = llvm.fmul %926, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %934 = llvm.fmul %927, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %935 = llvm.fmul %928, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %936 = llvm.fmul %929, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %937 = llvm.fmul %930, %694 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %938 = llvm.extractvalue %79[0] : !llvm.array<7 x vector<4xf32>> 
          %939 = llvm.fadd %931, %938 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %940 = llvm.extractvalue %79[1] : !llvm.array<7 x vector<4xf32>> 
          %941 = llvm.fadd %932, %940 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %942 = llvm.extractvalue %79[2] : !llvm.array<7 x vector<4xf32>> 
          %943 = llvm.fadd %933, %942 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %944 = llvm.extractvalue %79[3] : !llvm.array<7 x vector<4xf32>> 
          %945 = llvm.fadd %934, %944 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %946 = llvm.extractvalue %79[4] : !llvm.array<7 x vector<4xf32>> 
          %947 = llvm.fadd %935, %946 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %948 = llvm.extractvalue %79[5] : !llvm.array<7 x vector<4xf32>> 
          %949 = llvm.fadd %936, %948 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %950 = llvm.extractvalue %79[6] : !llvm.array<7 x vector<4xf32>> 
          %951 = llvm.fadd %937, %950 {fastmathFlags = #llvm.fastmath<contract>} : vector<4xf32>
          %952 = llvm.mul %695, %33 : i64
          %953 = llvm.add %952, %868 : i64
          %954 = llvm.getelementptr %107[%953] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %939, %954 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %955 = llvm.add %695, %63 : i64
          %956 = llvm.mul %955, %33 : i64
          %957 = llvm.add %956, %868 : i64
          %958 = llvm.getelementptr %107[%957] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %941, %958 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %959 = llvm.add %695, %58 : i64
          %960 = llvm.mul %959, %33 : i64
          %961 = llvm.add %960, %868 : i64
          %962 = llvm.getelementptr %107[%961] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %943, %962 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %963 = llvm.add %695, %57 : i64
          %964 = llvm.mul %963, %33 : i64
          %965 = llvm.add %964, %868 : i64
          %966 = llvm.getelementptr %107[%965] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %945, %966 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %967 = llvm.add %695, %56 : i64
          %968 = llvm.mul %967, %33 : i64
          %969 = llvm.add %968, %868 : i64
          %970 = llvm.getelementptr %107[%969] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %947, %970 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %971 = llvm.add %695, %55 : i64
          %972 = llvm.mul %971, %33 : i64
          %973 = llvm.add %972, %868 : i64
          %974 = llvm.getelementptr %107[%973] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %949, %974 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %975 = llvm.add %695, %54 : i64
          %976 = llvm.mul %975, %33 : i64
          %977 = llvm.add %976, %868 : i64
          %978 = llvm.getelementptr %107[%977] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %951, %978 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %979 = llvm.add %695, %73 : i64
          llvm.br ^bb9(%979 : i64)
        ^bb13(%980: i64):  // 2 preds: ^bb9, ^bb23
          %981 = llvm.icmp "slt" %980, %72 : i64
          llvm.cond_br %981, ^bb14, ^bb24
        ^bb14:  // pred: ^bb13
          %982 = llvm.sub %72, %980 : i64
          %983 = llvm.icmp "slt" %982, %71 : i64
          %984 = llvm.select %983, %982, %71 : i1, i64
          %985 = llvm.add %980, %111 : i64
          %986 = llvm.trunc %984 : i64 to i32
          %987 = llvm.insertelement %986, %1[%0 : i32] : vector<8xi32>
          %988 = llvm.shufflevector %987, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %989 = llvm.icmp "sgt" %988, %64 : vector<8xi32>
          llvm.br ^bb15(%69, %62 : i64, vector<8xf32>)
        ^bb15(%990: i64, %991: vector<8xf32>):  // 2 preds: ^bb14, ^bb18
          %992 = llvm.icmp "slt" %990, %71 : i64
          llvm.cond_br %992, ^bb16, ^bb19(%69, %62 : i64, vector<8xf32>)
        ^bb16:  // pred: ^bb15
          %993 = llvm.extractelement %989[%990 : i64] : vector<8xi1>
          llvm.cond_br %993, ^bb17, ^bb18(%991 : vector<8xf32>)
        ^bb17:  // pred: ^bb16
          %994 = llvm.add %985, %990 : i64
          %995 = llvm.mul %994, %70 overflow<nsw, nuw> : i64
          %996 = llvm.add %995, %74 overflow<nsw, nuw> : i64
          %997 = llvm.getelementptr inbounds|nuw %94[%996] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %998 = llvm.load %997 : !llvm.ptr -> f32
          %999 = llvm.insertelement %998, %991[%990 : i64] : vector<8xf32>
          llvm.br ^bb18(%999 : vector<8xf32>)
        ^bb18(%1000: vector<8xf32>):  // 2 preds: ^bb16, ^bb17
          %1001 = llvm.add %990, %63 : i64
          llvm.br ^bb15(%1001, %1000 : i64, vector<8xf32>)
        ^bb19(%1002: i64, %1003: vector<8xf32>):  // 2 preds: ^bb15, ^bb22
          %1004 = llvm.icmp "slt" %1002, %71 : i64
          llvm.cond_br %1004, ^bb20, ^bb23
        ^bb20:  // pred: ^bb19
          %1005 = llvm.extractelement %989[%1002 : i64] : vector<8xi1>
          llvm.cond_br %1005, ^bb21, ^bb22(%1003 : vector<8xf32>)
        ^bb21:  // pred: ^bb20
          %1006 = llvm.add %985, %1002 : i64
          %1007 = llvm.mul %1006, %70 overflow<nsw, nuw> : i64
          %1008 = llvm.add %1007, %74 overflow<nsw, nuw> : i64
          %1009 = llvm.getelementptr inbounds|nuw %100[%1008] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %1010 = llvm.load %1009 : !llvm.ptr -> f32
          %1011 = llvm.insertelement %1010, %1003[%1002 : i64] : vector<8xf32>
          llvm.br ^bb22(%1011 : vector<8xf32>)
        ^bb22(%1012: vector<8xf32>):  // 2 preds: ^bb20, ^bb21
          %1013 = llvm.add %1002, %63 : i64
          llvm.br ^bb19(%1013, %1012 : i64, vector<8xf32>)
        ^bb23:  // pred: ^bb19
          %1014 = llvm.getelementptr %88[%980] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %1015 = llvm.intr.masked.load %1014, %989, %62 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %1016 = llvm.getelementptr %87[%980] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %1017 = llvm.intr.masked.load %1016, %989, %62 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %1018 = llvm.fadd %1003, %65 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1019 = llvm.fadd %991, %1018 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1020 = llvm.fdiv %1015, %82 : vector<8xf32>
          %1021 = llvm.fsub %1019, %1020 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1022 = llvm.fdiv %1017, %82 : vector<8xf32>
          %1023 = llvm.fadd %1022, %83 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1024 = llvm.intr.sqrt(%1023) : (vector<8xf32>) -> vector<8xf32>
          %1025 = llvm.fdiv %2, %1024 : vector<8xf32>
          %1026 = llvm.fmul %1021, %1025 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1027 = llvm.fadd %1026, %65 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1028 = llvm.mul %74, %33 : i64
          %1029 = llvm.add %1028, %985 : i64
          %1030 = llvm.getelementptr %107[%1029] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1027, %1030, %989 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1031 = llvm.add %980, %71 : i64
          llvm.br ^bb13(%1031 : i64)
        ^bb24:  // pred: ^bb13
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer = util.global.load immutable @main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_97::@embedded_elf_riscv_64::@main_graph$async_dispatch_97_reduction_784x64_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_97) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_97::@embedded_elf_riscv_64::@main_graph$async_dispatch_97_reduction_784x64_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_97_embedded_elf_riscv_64_main_graph$async_dispatch_97_reduction_784x64_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
