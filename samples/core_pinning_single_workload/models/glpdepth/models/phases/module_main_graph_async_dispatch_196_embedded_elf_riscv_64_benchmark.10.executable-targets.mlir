#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_196 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_196_elementwise_broadcast_50176_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c13 = arith.constant 13 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c13, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_196_elementwise_broadcast_50176_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<7xi64>
          %1 = llvm.mlir.poison : vector<7xi32>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %3 = llvm.mlir.constant(0 : i32) : i32
          %4 = llvm.mlir.poison : vector<8xi64>
          %5 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(12544 : index) : i64
          %8 = llvm.mlir.constant(196 : index) : i64
          %9 = llvm.mlir.constant(14 : index) : i64
          %10 = llvm.mlir.constant(64 : index) : i64
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.constant(-4096 : index) : i64
          %14 = llvm.mlir.constant(50176 : index) : i64
          %15 = llvm.mlir.constant(-1 : index) : i64
          %16 = llvm.mlir.constant(4096 : index) : i64
          %17 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %18 = llvm.mlir.constant(dense<14> : vector<7xindex>) : vector<7xi64>
          %19 = llvm.mlir.constant(dense<14> : vector<8xindex>) : vector<8xi64>
          %20 = llvm.mlir.constant(dense<1.000000e+00> : vector<7xf32>) : vector<7xf32>
          %21 = llvm.mlir.constant(dense<1.300000e+01> : vector<7xf32>) : vector<7xf32>
          %22 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %23 = llvm.mlir.constant(dense<2.000000e+00> : vector<7xf32>) : vector<7xf32>
          %24 = llvm.mlir.constant(dense<5.000000e-01> : vector<7xf32>) : vector<7xf32>
          %25 = llvm.mlir.constant(dense<28> : vector<7xindex>) : vector<7xi64>
          %26 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %27 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %28 = llvm.mlir.constant(dense<1.300000e+01> : vector<8xf32>) : vector<8xf32>
          %29 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %30 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %31 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %32 = llvm.mlir.constant(dense<28> : vector<8xindex>) : vector<8xi64>
          %33 = llvm.mlir.constant(8 : index) : i64
          %34 = llvm.mlir.constant(0 : index) : i64
          %35 = llvm.mlir.constant(639744 : index) : i64
          %36 = llvm.mlir.constant(1404928 : index) : i64
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %35, %11 : i64
          %41 = llvm.udiv %40, %12 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%42, %10 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %36, %11 : i64
          %48 = llvm.udiv %47, %12 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%49, %10 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.mul %52, %16 overflow<nsw> : i64
          %54 = llvm.mul %52, %13 overflow<nsw> : i64
          %55 = llvm.add %54, %14 : i64
          %56 = llvm.icmp "slt" %55, %16 : i64
          %57 = llvm.select %56, %55, %16 : i1, i64
          %58 = llvm.icmp "slt" %57, %34 : i64
          %59 = llvm.sub %15, %57 : i64
          %60 = llvm.select %58, %59, %57 : i1, i64
          %61 = llvm.sdiv %60, %33 : i64
          %62 = llvm.sub %15, %61 : i64
          %63 = llvm.select %58, %62, %61 : i1, i64
          %64 = llvm.mul %63, %33 overflow<nsw> : i64
          llvm.br ^bb1(%34 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb2
          %66 = llvm.icmp "slt" %65, %64 : i64
          llvm.cond_br %66, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %67 = llvm.add %53, %65 : i64
          %68 = llvm.insertelement %67, %4[%3 : i32] : vector<8xi64>
          %69 = llvm.shufflevector %68, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %70 = llvm.add %69, %5 : vector<8xi64>
          %71 = llvm.srem %70, %32 : vector<8xi64>
          %72 = llvm.sdiv %70, %32 : vector<8xi64>
          %73 = llvm.srem %72, %32 : vector<8xi64>
          %74 = llvm.sdiv %72, %32 : vector<8xi64>
          %75 = llvm.sitofp %73 : vector<8xi64> to vector<8xf32>
          %76 = llvm.fadd %75, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %77 = llvm.fdiv %76, %30 : vector<8xf32>
          %78 = llvm.fsub %77, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %79 = llvm.fcmp "ugt" %78, %29 : vector<8xf32>
          %80 = llvm.select %79, %78, %29 : vector<8xi1>, vector<8xf32>
          %81 = llvm.fcmp "uno" %29, %29 : vector<8xf32>
          %82 = llvm.select %81, %29, %80 : vector<8xi1>, vector<8xf32>
          %83 = llvm.fcmp "ult" %82, %28 : vector<8xf32>
          %84 = llvm.select %83, %82, %28 : vector<8xi1>, vector<8xf32>
          %85 = llvm.fcmp "uno" %28, %28 : vector<8xf32>
          %86 = llvm.select %85, %28, %84 : vector<8xi1>, vector<8xf32>
          %87 = llvm.sitofp %71 : vector<8xi64> to vector<8xf32>
          %88 = llvm.fadd %87, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %89 = llvm.fdiv %88, %30 : vector<8xf32>
          %90 = llvm.fsub %89, %31 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %91 = llvm.fcmp "ugt" %90, %29 : vector<8xf32>
          %92 = llvm.select %91, %90, %29 : vector<8xi1>, vector<8xf32>
          %93 = llvm.select %81, %29, %92 : vector<8xi1>, vector<8xf32>
          %94 = llvm.fcmp "ult" %93, %28 : vector<8xf32>
          %95 = llvm.select %94, %93, %28 : vector<8xi1>, vector<8xf32>
          %96 = llvm.select %85, %28, %95 : vector<8xi1>, vector<8xf32>
          %97 = llvm.intr.floor(%86) : (vector<8xf32>) -> vector<8xf32>
          %98 = llvm.fadd %86, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %99 = llvm.intr.floor(%98) : (vector<8xf32>) -> vector<8xf32>
          %100 = llvm.fptosi %97 : vector<8xf32> to vector<8xi64>
          %101 = llvm.fcmp "ult" %98, %28 : vector<8xf32>
          %102 = llvm.select %101, %98, %28 : vector<8xi1>, vector<8xf32>
          %103 = llvm.select %85, %28, %102 : vector<8xi1>, vector<8xf32>
          %104 = llvm.fptosi %103 : vector<8xf32> to vector<8xi64>
          %105 = llvm.intr.floor(%96) : (vector<8xf32>) -> vector<8xf32>
          %106 = llvm.fadd %96, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %107 = llvm.intr.floor(%106) : (vector<8xf32>) -> vector<8xf32>
          %108 = llvm.fptosi %105 : vector<8xf32> to vector<8xi64>
          %109 = llvm.fcmp "ult" %106, %28 : vector<8xf32>
          %110 = llvm.select %109, %106, %28 : vector<8xi1>, vector<8xf32>
          %111 = llvm.select %85, %28, %110 : vector<8xi1>, vector<8xf32>
          %112 = llvm.fptosi %111 : vector<8xf32> to vector<8xi64>
          %113 = llvm.mul %74, %19 : vector<8xi64>
          %114 = llvm.add %100, %113 : vector<8xi64>
          %115 = llvm.mul %114, %19 : vector<8xi64>
          %116 = llvm.add %108, %115 : vector<8xi64>
          %117 = llvm.mul %34, %7 : i64
          %118 = llvm.mul %34, %8 : i64
          %119 = llvm.add %117, %118 : i64
          %120 = llvm.mul %34, %9 : i64
          %121 = llvm.add %119, %120 : i64
          %122 = llvm.add %121, %34 : i64
          %123 = llvm.getelementptr %42[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.getelementptr %123[%116] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %125 = llvm.intr.masked.gather %124, %26, %29 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %126 = llvm.add %112, %115 : vector<8xi64>
          %127 = llvm.getelementptr %123[%126] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %128 = llvm.intr.masked.gather %127, %26, %29 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %129 = llvm.add %104, %113 : vector<8xi64>
          %130 = llvm.mul %129, %19 : vector<8xi64>
          %131 = llvm.add %108, %130 : vector<8xi64>
          %132 = llvm.getelementptr %123[%131] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %133 = llvm.intr.masked.gather %132, %26, %29 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %134 = llvm.add %112, %130 : vector<8xi64>
          %135 = llvm.getelementptr %123[%134] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %136 = llvm.intr.masked.gather %135, %26, %29 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %137 = llvm.fsub %99, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %138 = llvm.fsub %86, %97 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %139 = llvm.fsub %107, %96 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %140 = llvm.fsub %96, %105 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %141 = llvm.fmul %139, %125 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %142 = llvm.fmul %140, %128 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %143 = llvm.fadd %141, %142 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %144 = llvm.fmul %137, %143 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %145 = llvm.fmul %139, %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %146 = llvm.fmul %140, %136 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %147 = llvm.fadd %145, %146 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %148 = llvm.fmul %138, %147 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %149 = llvm.fadd %144, %148 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %150 = llvm.getelementptr %49[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %149, %150 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %151 = llvm.add %65, %33 : i64
          llvm.br ^bb1(%151 : i64)
        ^bb3:  // pred: ^bb1
          llvm.br ^bb4(%64 : i64)
        ^bb4(%152: i64):  // 2 preds: ^bb3, ^bb5
          %153 = llvm.icmp "slt" %152, %57 : i64
          llvm.cond_br %153, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %154 = llvm.sub %57, %152 : i64
          %155 = llvm.trunc %154 : i64 to i32
          %156 = llvm.insertelement %155, %1[%3 : i32] : vector<7xi32>
          %157 = llvm.shufflevector %156, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %158 = llvm.icmp "sgt" %157, %17 : vector<7xi32>
          %159 = llvm.add %53, %152 : i64
          %160 = llvm.insertelement %159, %0[%3 : i32] : vector<7xi64>
          %161 = llvm.shufflevector %160, %0 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %162 = llvm.add %161, %2 : vector<7xi64>
          %163 = llvm.srem %162, %25 : vector<7xi64>
          %164 = llvm.sdiv %162, %25 : vector<7xi64>
          %165 = llvm.srem %164, %25 : vector<7xi64>
          %166 = llvm.sdiv %164, %25 : vector<7xi64>
          %167 = llvm.sitofp %165 : vector<7xi64> to vector<7xf32>
          %168 = llvm.fadd %167, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %169 = llvm.fdiv %168, %23 : vector<7xf32>
          %170 = llvm.fsub %169, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %171 = llvm.fcmp "ugt" %170, %22 : vector<7xf32>
          %172 = llvm.select %171, %170, %22 : vector<7xi1>, vector<7xf32>
          %173 = llvm.fcmp "uno" %22, %22 : vector<7xf32>
          %174 = llvm.select %173, %22, %172 : vector<7xi1>, vector<7xf32>
          %175 = llvm.fcmp "ult" %174, %21 : vector<7xf32>
          %176 = llvm.select %175, %174, %21 : vector<7xi1>, vector<7xf32>
          %177 = llvm.fcmp "uno" %21, %21 : vector<7xf32>
          %178 = llvm.select %177, %21, %176 : vector<7xi1>, vector<7xf32>
          %179 = llvm.sitofp %163 : vector<7xi64> to vector<7xf32>
          %180 = llvm.fadd %179, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %181 = llvm.fdiv %180, %23 : vector<7xf32>
          %182 = llvm.fsub %181, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %183 = llvm.fcmp "ugt" %182, %22 : vector<7xf32>
          %184 = llvm.select %183, %182, %22 : vector<7xi1>, vector<7xf32>
          %185 = llvm.select %173, %22, %184 : vector<7xi1>, vector<7xf32>
          %186 = llvm.fcmp "ult" %185, %21 : vector<7xf32>
          %187 = llvm.select %186, %185, %21 : vector<7xi1>, vector<7xf32>
          %188 = llvm.select %177, %21, %187 : vector<7xi1>, vector<7xf32>
          %189 = llvm.intr.floor(%178) : (vector<7xf32>) -> vector<7xf32>
          %190 = llvm.fadd %178, %20 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %191 = llvm.intr.floor(%190) : (vector<7xf32>) -> vector<7xf32>
          %192 = llvm.fptosi %189 : vector<7xf32> to vector<7xi64>
          %193 = llvm.fcmp "ult" %190, %21 : vector<7xf32>
          %194 = llvm.select %193, %190, %21 : vector<7xi1>, vector<7xf32>
          %195 = llvm.select %177, %21, %194 : vector<7xi1>, vector<7xf32>
          %196 = llvm.fptosi %195 : vector<7xf32> to vector<7xi64>
          %197 = llvm.intr.floor(%188) : (vector<7xf32>) -> vector<7xf32>
          %198 = llvm.fadd %188, %20 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %199 = llvm.intr.floor(%198) : (vector<7xf32>) -> vector<7xf32>
          %200 = llvm.fptosi %197 : vector<7xf32> to vector<7xi64>
          %201 = llvm.fcmp "ult" %198, %21 : vector<7xf32>
          %202 = llvm.select %201, %198, %21 : vector<7xi1>, vector<7xf32>
          %203 = llvm.select %177, %21, %202 : vector<7xi1>, vector<7xf32>
          %204 = llvm.fptosi %203 : vector<7xf32> to vector<7xi64>
          %205 = llvm.mul %166, %18 : vector<7xi64>
          %206 = llvm.add %192, %205 : vector<7xi64>
          %207 = llvm.mul %206, %18 : vector<7xi64>
          %208 = llvm.add %200, %207 : vector<7xi64>
          %209 = llvm.mul %34, %7 : i64
          %210 = llvm.mul %34, %8 : i64
          %211 = llvm.add %209, %210 : i64
          %212 = llvm.mul %34, %9 : i64
          %213 = llvm.add %211, %212 : i64
          %214 = llvm.add %213, %34 : i64
          %215 = llvm.getelementptr %42[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %216 = llvm.getelementptr %215[%208] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %217 = llvm.intr.masked.gather %216, %158, %22 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %218 = llvm.add %204, %207 : vector<7xi64>
          %219 = llvm.getelementptr %215[%218] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %220 = llvm.intr.masked.gather %219, %158, %22 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %221 = llvm.add %196, %205 : vector<7xi64>
          %222 = llvm.mul %221, %18 : vector<7xi64>
          %223 = llvm.add %200, %222 : vector<7xi64>
          %224 = llvm.getelementptr %215[%223] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %225 = llvm.intr.masked.gather %224, %158, %22 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %226 = llvm.add %204, %222 : vector<7xi64>
          %227 = llvm.getelementptr %215[%226] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %228 = llvm.intr.masked.gather %227, %158, %22 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %229 = llvm.fsub %191, %178 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %230 = llvm.fsub %178, %189 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %231 = llvm.fsub %199, %188 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %232 = llvm.fsub %188, %197 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %233 = llvm.fmul %231, %217 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %234 = llvm.fmul %232, %220 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %235 = llvm.fadd %233, %234 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %236 = llvm.fmul %229, %235 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %237 = llvm.fmul %231, %225 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %238 = llvm.fmul %232, %228 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %239 = llvm.fadd %237, %238 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %240 = llvm.fmul %230, %239 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %241 = llvm.fadd %236, %240 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %242 = llvm.getelementptr %49[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %241, %242, %158 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %243 = llvm.add %152, %33 : i64
          llvm.br ^bb4(%243 : i64)
        ^bb6:  // pred: ^bb4
          llvm.return %3 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer = util.global.load immutable @main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_196::@embedded_elf_riscv_64::@main_graph$async_dispatch_196_elementwise_broadcast_50176_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_196) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_196::@embedded_elf_riscv_64::@main_graph$async_dispatch_196_elementwise_broadcast_50176_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_196_embedded_elf_riscv_64_main_graph$async_dispatch_196_elementwise_broadcast_50176_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
