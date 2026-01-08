#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_202 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_202_elementwise_50176_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c13 = arith.constant 13 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c13, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_202_elementwise_50176_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<7xi64>
          %1 = llvm.mlir.poison : vector<7xi32>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %3 = llvm.mlir.constant(0 : i32) : i32
          %4 = llvm.mlir.poison : vector<8xi64>
          %5 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %6 = llvm.mlir.constant(12544 : index) : i64
          %7 = llvm.mlir.constant(196 : index) : i64
          %8 = llvm.mlir.constant(14 : index) : i64
          %9 = llvm.mlir.constant(64 : index) : i64
          %10 = llvm.mlir.constant(true) : i1
          %11 = llvm.mlir.constant(1568 : index) : i64
          %12 = llvm.mlir.constant(784 : index) : i64
          %13 = llvm.mlir.constant(28 : index) : i64
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.constant(-4096 : index) : i64
          %17 = llvm.mlir.constant(50176 : index) : i64
          %18 = llvm.mlir.constant(-1 : index) : i64
          %19 = llvm.mlir.constant(4096 : index) : i64
          %20 = llvm.mlir.poison : vector<7xf32>
          %21 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %22 = llvm.mlir.constant(dense<14> : vector<7xindex>) : vector<7xi64>
          %23 = llvm.mlir.constant(dense<14> : vector<8xindex>) : vector<8xi64>
          %24 = llvm.mlir.constant(dense<1.000000e+00> : vector<7xf32>) : vector<7xf32>
          %25 = llvm.mlir.constant(dense<1.300000e+01> : vector<7xf32>) : vector<7xf32>
          %26 = llvm.mlir.constant(dense<2.000000e+00> : vector<7xf32>) : vector<7xf32>
          %27 = llvm.mlir.constant(dense<5.000000e-01> : vector<7xf32>) : vector<7xf32>
          %28 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %29 = llvm.mlir.constant(dense<64> : vector<7xindex>) : vector<7xi64>
          %30 = llvm.mlir.constant(dense<28> : vector<7xindex>) : vector<7xi64>
          %31 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %32 = llvm.mlir.constant(dense<1.300000e+01> : vector<8xf32>) : vector<8xf32>
          %33 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %34 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %35 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %36 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %37 = llvm.mlir.constant(dense<64> : vector<8xindex>) : vector<8xi64>
          %38 = llvm.mlir.constant(dense<28> : vector<8xindex>) : vector<8xi64>
          %39 = llvm.mlir.constant(8 : index) : i64
          %40 = llvm.mlir.constant(0 : index) : i64
          %41 = llvm.mlir.constant(805120 : index) : i64
          %42 = llvm.mlir.constant(639744 : index) : i64
          %43 = llvm.mlir.constant(1003520 : index) : i64
          %44 = llvm.mlir.constant(401408 : index) : i64
          %45 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %46 = llvm.extractvalue %45[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %41, %14 : i64
          %49 = llvm.udiv %48, %15 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %10 ["align"(%50, %9 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %52 = llvm.extractvalue %51[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %42, %14 : i64
          %55 = llvm.udiv %54, %15 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %10 ["align"(%56, %9 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %58 = llvm.extractvalue %57[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %59 = llvm.load %58 : !llvm.ptr -> !llvm.ptr
          %60 = llvm.mul %43, %14 : i64
          %61 = llvm.udiv %60, %15 : i64
          %62 = llvm.getelementptr %59[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %10 ["align"(%62, %9 : !llvm.ptr, i64)] : i1
          %63 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %64 = llvm.extractvalue %63[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %65 = llvm.getelementptr %64[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %66 = llvm.load %65 : !llvm.ptr -> !llvm.ptr
          %67 = llvm.mul %44, %14 : i64
          %68 = llvm.udiv %67, %15 : i64
          %69 = llvm.getelementptr %66[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %10 ["align"(%69, %9 : !llvm.ptr, i64)] : i1
          %70 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %71 = llvm.extractvalue %70[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %72 = llvm.zext %71 : i32 to i64
          %73 = llvm.mul %72, %19 overflow<nsw> : i64
          %74 = llvm.mul %72, %16 overflow<nsw> : i64
          %75 = llvm.add %74, %17 : i64
          %76 = llvm.icmp "slt" %75, %19 : i64
          %77 = llvm.select %76, %75, %19 : i1, i64
          %78 = llvm.icmp "slt" %77, %40 : i64
          %79 = llvm.sub %18, %77 : i64
          %80 = llvm.select %78, %79, %77 : i1, i64
          %81 = llvm.sdiv %80, %39 : i64
          %82 = llvm.sub %18, %81 : i64
          %83 = llvm.select %78, %82, %81 : i1, i64
          %84 = llvm.mul %83, %39 overflow<nsw> : i64
          llvm.br ^bb1(%40 : i64)
        ^bb1(%85: i64):  // 2 preds: ^bb0, ^bb2
          %86 = llvm.icmp "slt" %85, %84 : i64
          llvm.cond_br %86, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %87 = llvm.add %85, %73 : i64
          %88 = llvm.getelementptr %62[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %90 = llvm.insertelement %87, %4[%3 : i32] : vector<8xi64>
          %91 = llvm.shufflevector %90, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %92 = llvm.add %91, %5 : vector<8xi64>
          %93 = llvm.srem %92, %38 : vector<8xi64>
          %94 = llvm.sdiv %92, %38 : vector<8xi64>
          %95 = llvm.srem %94, %38 : vector<8xi64>
          %96 = llvm.sdiv %94, %38 : vector<8xi64>
          %97 = llvm.srem %96, %37 : vector<8xi64>
          %98 = llvm.mul %95, %38 : vector<8xi64>
          %99 = llvm.add %93, %98 : vector<8xi64>
          %100 = llvm.mul %40, %11 : i64
          %101 = llvm.mul %40, %12 : i64
          %102 = llvm.add %100, %101 : i64
          %103 = llvm.mul %40, %13 : i64
          %104 = llvm.add %102, %103 : i64
          %105 = llvm.add %104, %40 : i64
          %106 = llvm.getelementptr %50[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.getelementptr %106[%99] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %108 = llvm.intr.masked.gather %107, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %109 = llvm.add %95, %38 : vector<8xi64>
          %110 = llvm.mul %109, %38 : vector<8xi64>
          %111 = llvm.add %93, %110 : vector<8xi64>
          %112 = llvm.getelementptr %106[%111] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %113 = llvm.intr.masked.gather %112, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %114 = llvm.sitofp %95 : vector<8xi64> to vector<8xf32>
          %115 = llvm.fadd %114, %34 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %116 = llvm.fdiv %115, %33 : vector<8xf32>
          %117 = llvm.fsub %116, %34 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %118 = llvm.fcmp "ugt" %117, %35 : vector<8xf32>
          %119 = llvm.select %118, %117, %35 : vector<8xi1>, vector<8xf32>
          %120 = llvm.fcmp "uno" %35, %35 : vector<8xf32>
          %121 = llvm.select %120, %35, %119 : vector<8xi1>, vector<8xf32>
          %122 = llvm.fcmp "ult" %121, %32 : vector<8xf32>
          %123 = llvm.select %122, %121, %32 : vector<8xi1>, vector<8xf32>
          %124 = llvm.fcmp "uno" %32, %32 : vector<8xf32>
          %125 = llvm.select %124, %32, %123 : vector<8xi1>, vector<8xf32>
          %126 = llvm.sitofp %93 : vector<8xi64> to vector<8xf32>
          %127 = llvm.fadd %126, %34 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %128 = llvm.fdiv %127, %33 : vector<8xf32>
          %129 = llvm.fsub %128, %34 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %130 = llvm.fcmp "ugt" %129, %35 : vector<8xf32>
          %131 = llvm.select %130, %129, %35 : vector<8xi1>, vector<8xf32>
          %132 = llvm.select %120, %35, %131 : vector<8xi1>, vector<8xf32>
          %133 = llvm.fcmp "ult" %132, %32 : vector<8xf32>
          %134 = llvm.select %133, %132, %32 : vector<8xi1>, vector<8xf32>
          %135 = llvm.select %124, %32, %134 : vector<8xi1>, vector<8xf32>
          %136 = llvm.intr.floor(%125) : (vector<8xf32>) -> vector<8xf32>
          %137 = llvm.fadd %125, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %138 = llvm.intr.floor(%137) : (vector<8xf32>) -> vector<8xf32>
          %139 = llvm.fptosi %136 : vector<8xf32> to vector<8xi64>
          %140 = llvm.fcmp "ult" %137, %32 : vector<8xf32>
          %141 = llvm.select %140, %137, %32 : vector<8xi1>, vector<8xf32>
          %142 = llvm.select %124, %32, %141 : vector<8xi1>, vector<8xf32>
          %143 = llvm.fptosi %142 : vector<8xf32> to vector<8xi64>
          %144 = llvm.intr.floor(%135) : (vector<8xf32>) -> vector<8xf32>
          %145 = llvm.fadd %135, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %146 = llvm.intr.floor(%145) : (vector<8xf32>) -> vector<8xf32>
          %147 = llvm.fptosi %144 : vector<8xf32> to vector<8xi64>
          %148 = llvm.fcmp "ult" %145, %32 : vector<8xf32>
          %149 = llvm.select %148, %145, %32 : vector<8xi1>, vector<8xf32>
          %150 = llvm.select %124, %32, %149 : vector<8xi1>, vector<8xf32>
          %151 = llvm.fptosi %150 : vector<8xf32> to vector<8xi64>
          %152 = llvm.mul %97, %23 : vector<8xi64>
          %153 = llvm.add %139, %152 : vector<8xi64>
          %154 = llvm.mul %153, %23 : vector<8xi64>
          %155 = llvm.add %147, %154 : vector<8xi64>
          %156 = llvm.mul %40, %6 : i64
          %157 = llvm.mul %40, %7 : i64
          %158 = llvm.add %156, %157 : i64
          %159 = llvm.mul %40, %8 : i64
          %160 = llvm.add %158, %159 : i64
          %161 = llvm.add %160, %40 : i64
          %162 = llvm.getelementptr %56[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %163 = llvm.getelementptr %162[%155] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %164 = llvm.intr.masked.gather %163, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %165 = llvm.add %151, %154 : vector<8xi64>
          %166 = llvm.getelementptr %162[%165] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %167 = llvm.intr.masked.gather %166, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %168 = llvm.add %143, %152 : vector<8xi64>
          %169 = llvm.mul %168, %23 : vector<8xi64>
          %170 = llvm.add %147, %169 : vector<8xi64>
          %171 = llvm.getelementptr %162[%170] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %172 = llvm.intr.masked.gather %171, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %173 = llvm.add %151, %169 : vector<8xi64>
          %174 = llvm.getelementptr %162[%173] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %175 = llvm.intr.masked.gather %174, %36, %35 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %176 = llvm.fsub %138, %125 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %177 = llvm.fsub %125, %136 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %178 = llvm.fsub %146, %135 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %179 = llvm.fsub %135, %144 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %180 = llvm.fmul %178, %164 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %181 = llvm.fmul %179, %167 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %182 = llvm.fadd %180, %181 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %183 = llvm.fmul %176, %182 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %184 = llvm.fmul %178, %172 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %185 = llvm.fmul %179, %175 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %186 = llvm.fadd %184, %185 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %187 = llvm.fmul %177, %186 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %188 = llvm.fadd %183, %187 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %189 = llvm.fmul %188, %113 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %190 = llvm.fmul %89, %108 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %191 = llvm.fadd %190, %189 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %192 = llvm.getelementptr %69[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %191, %192 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %193 = llvm.add %85, %39 : i64
          llvm.br ^bb1(%193 : i64)
        ^bb3:  // pred: ^bb1
          llvm.br ^bb4(%84 : i64)
        ^bb4(%194: i64):  // 2 preds: ^bb3, ^bb5
          %195 = llvm.icmp "slt" %194, %77 : i64
          llvm.cond_br %195, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %196 = llvm.sub %77, %194 : i64
          %197 = llvm.add %194, %73 : i64
          %198 = llvm.trunc %196 : i64 to i32
          %199 = llvm.insertelement %198, %1[%3 : i32] : vector<7xi32>
          %200 = llvm.shufflevector %199, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %201 = llvm.icmp "sgt" %200, %21 : vector<7xi32>
          %202 = llvm.getelementptr %62[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %203 = llvm.intr.masked.load %202, %201, %20 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %204 = llvm.insertelement %197, %0[%3 : i32] : vector<7xi64>
          %205 = llvm.shufflevector %204, %0 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %206 = llvm.add %205, %2 : vector<7xi64>
          %207 = llvm.srem %206, %30 : vector<7xi64>
          %208 = llvm.sdiv %206, %30 : vector<7xi64>
          %209 = llvm.srem %208, %30 : vector<7xi64>
          %210 = llvm.sdiv %208, %30 : vector<7xi64>
          %211 = llvm.srem %210, %29 : vector<7xi64>
          %212 = llvm.mul %209, %30 : vector<7xi64>
          %213 = llvm.add %207, %212 : vector<7xi64>
          %214 = llvm.mul %40, %11 : i64
          %215 = llvm.mul %40, %12 : i64
          %216 = llvm.add %214, %215 : i64
          %217 = llvm.mul %40, %13 : i64
          %218 = llvm.add %216, %217 : i64
          %219 = llvm.add %218, %40 : i64
          %220 = llvm.getelementptr %50[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %221 = llvm.getelementptr %220[%213] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %222 = llvm.intr.masked.gather %221, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %223 = llvm.add %209, %30 : vector<7xi64>
          %224 = llvm.mul %223, %30 : vector<7xi64>
          %225 = llvm.add %207, %224 : vector<7xi64>
          %226 = llvm.getelementptr %220[%225] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %227 = llvm.intr.masked.gather %226, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %228 = llvm.sitofp %209 : vector<7xi64> to vector<7xf32>
          %229 = llvm.fadd %228, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %230 = llvm.fdiv %229, %26 : vector<7xf32>
          %231 = llvm.fsub %230, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %232 = llvm.fcmp "ugt" %231, %28 : vector<7xf32>
          %233 = llvm.select %232, %231, %28 : vector<7xi1>, vector<7xf32>
          %234 = llvm.fcmp "uno" %28, %28 : vector<7xf32>
          %235 = llvm.select %234, %28, %233 : vector<7xi1>, vector<7xf32>
          %236 = llvm.fcmp "ult" %235, %25 : vector<7xf32>
          %237 = llvm.select %236, %235, %25 : vector<7xi1>, vector<7xf32>
          %238 = llvm.fcmp "uno" %25, %25 : vector<7xf32>
          %239 = llvm.select %238, %25, %237 : vector<7xi1>, vector<7xf32>
          %240 = llvm.sitofp %207 : vector<7xi64> to vector<7xf32>
          %241 = llvm.fadd %240, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %242 = llvm.fdiv %241, %26 : vector<7xf32>
          %243 = llvm.fsub %242, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %244 = llvm.fcmp "ugt" %243, %28 : vector<7xf32>
          %245 = llvm.select %244, %243, %28 : vector<7xi1>, vector<7xf32>
          %246 = llvm.select %234, %28, %245 : vector<7xi1>, vector<7xf32>
          %247 = llvm.fcmp "ult" %246, %25 : vector<7xf32>
          %248 = llvm.select %247, %246, %25 : vector<7xi1>, vector<7xf32>
          %249 = llvm.select %238, %25, %248 : vector<7xi1>, vector<7xf32>
          %250 = llvm.intr.floor(%239) : (vector<7xf32>) -> vector<7xf32>
          %251 = llvm.fadd %239, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %252 = llvm.intr.floor(%251) : (vector<7xf32>) -> vector<7xf32>
          %253 = llvm.fptosi %250 : vector<7xf32> to vector<7xi64>
          %254 = llvm.fcmp "ult" %251, %25 : vector<7xf32>
          %255 = llvm.select %254, %251, %25 : vector<7xi1>, vector<7xf32>
          %256 = llvm.select %238, %25, %255 : vector<7xi1>, vector<7xf32>
          %257 = llvm.fptosi %256 : vector<7xf32> to vector<7xi64>
          %258 = llvm.intr.floor(%249) : (vector<7xf32>) -> vector<7xf32>
          %259 = llvm.fadd %249, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %260 = llvm.intr.floor(%259) : (vector<7xf32>) -> vector<7xf32>
          %261 = llvm.fptosi %258 : vector<7xf32> to vector<7xi64>
          %262 = llvm.fcmp "ult" %259, %25 : vector<7xf32>
          %263 = llvm.select %262, %259, %25 : vector<7xi1>, vector<7xf32>
          %264 = llvm.select %238, %25, %263 : vector<7xi1>, vector<7xf32>
          %265 = llvm.fptosi %264 : vector<7xf32> to vector<7xi64>
          %266 = llvm.mul %211, %22 : vector<7xi64>
          %267 = llvm.add %253, %266 : vector<7xi64>
          %268 = llvm.mul %267, %22 : vector<7xi64>
          %269 = llvm.add %261, %268 : vector<7xi64>
          %270 = llvm.mul %40, %6 : i64
          %271 = llvm.mul %40, %7 : i64
          %272 = llvm.add %270, %271 : i64
          %273 = llvm.mul %40, %8 : i64
          %274 = llvm.add %272, %273 : i64
          %275 = llvm.add %274, %40 : i64
          %276 = llvm.getelementptr %56[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %277 = llvm.getelementptr %276[%269] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %278 = llvm.intr.masked.gather %277, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %279 = llvm.add %265, %268 : vector<7xi64>
          %280 = llvm.getelementptr %276[%279] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %281 = llvm.intr.masked.gather %280, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %282 = llvm.add %257, %266 : vector<7xi64>
          %283 = llvm.mul %282, %22 : vector<7xi64>
          %284 = llvm.add %261, %283 : vector<7xi64>
          %285 = llvm.getelementptr %276[%284] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %286 = llvm.intr.masked.gather %285, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %287 = llvm.add %265, %283 : vector<7xi64>
          %288 = llvm.getelementptr %276[%287] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %289 = llvm.intr.masked.gather %288, %201, %28 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %290 = llvm.fsub %252, %239 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %291 = llvm.fsub %239, %250 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %292 = llvm.fsub %260, %249 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %293 = llvm.fsub %249, %258 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %294 = llvm.fmul %292, %278 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %295 = llvm.fmul %293, %281 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %296 = llvm.fadd %294, %295 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %297 = llvm.fmul %290, %296 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %298 = llvm.fmul %292, %286 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %299 = llvm.fmul %293, %289 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %300 = llvm.fadd %298, %299 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %301 = llvm.fmul %291, %300 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %302 = llvm.fadd %297, %301 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %303 = llvm.fmul %302, %227 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %304 = llvm.fmul %203, %222 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %305 = llvm.fadd %304, %303 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %306 = llvm.getelementptr %69[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %305, %306, %201 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %307 = llvm.add %194, %39 : i64
          llvm.br ^bb4(%307 : i64)
        ^bb6:  // pred: ^bb4
          llvm.return %3 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer = util.global.load immutable @main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_202::@embedded_elf_riscv_64::@main_graph$async_dispatch_202_elementwise_50176_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_202) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_202::@embedded_elf_riscv_64::@main_graph$async_dispatch_202_elementwise_50176_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_202_embedded_elf_riscv_64_main_graph$async_dispatch_202_elementwise_50176_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
