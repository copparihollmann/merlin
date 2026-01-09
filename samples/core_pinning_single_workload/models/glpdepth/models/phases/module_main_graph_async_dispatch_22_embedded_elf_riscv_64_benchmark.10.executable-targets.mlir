#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_22 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_22_conv_56x56x128x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_22_conv_56x56x128x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(7168 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(3364 : index) : i64
          %8 = llvm.mlir.constant(58 : index) : i64
          %9 = llvm.mlir.constant(128 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.constant(5.000000e-01 : f32) : f32
          %13 = llvm.mlir.constant(1.000000e+00 : f32) : f32
          %14 = llvm.mlir.constant(-1 : index) : i64
          %15 = llvm.mlir.constant(dense<3.750000e+00> : vector<1xf32>) : vector<1xf32>
          %16 = llvm.mlir.constant(dense<2.000000e+00> : vector<1xf32>) : vector<1xf32>
          %17 = llvm.mlir.constant(dense<8.000000e-01> : vector<1xf32>) : vector<1xf32>
          %18 = llvm.mlir.constant(dense<0.0821908935> : vector<1xf32>) : vector<1xf32>
          %19 = llvm.mlir.constant(dense<-0.583389878> : vector<1xf32>) : vector<1xf32>
          %20 = llvm.mlir.constant(dense<1.62705934> : vector<1xf32>) : vector<1xf32>
          %21 = llvm.mlir.constant(dense<-2.0606916> : vector<1xf32>) : vector<1xf32>
          %22 = llvm.mlir.constant(dense<0.0572442785> : vector<1xf32>) : vector<1xf32>
          %23 = llvm.mlir.constant(dense<-0.0883462652> : vector<1xf32>) : vector<1xf32>
          %24 = llvm.mlir.constant(dense<0.448369086> : vector<1xf32>) : vector<1xf32>
          %25 = llvm.mlir.constant(dense<-3.276070e-01> : vector<1xf32>) : vector<1xf32>
          %26 = llvm.mlir.constant(dense<0.0739796459> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<-0.131808966> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(dense<0.519230127> : vector<1xf32>) : vector<1xf32>
          %29 = llvm.mlir.constant(dense<-0.463513821> : vector<1xf32>) : vector<1xf32>
          %30 = llvm.mlir.constant(dense<-1.71048032E-5> : vector<1xf32>) : vector<1xf32>
          %31 = llvm.mlir.constant(dense<2.53447099E-4> : vector<1xf32>) : vector<1xf32>
          %32 = llvm.mlir.constant(dense<-0.00141373626> : vector<1xf32>) : vector<1xf32>
          %33 = llvm.mlir.constant(dense<0.00351961935> : vector<1xf32>) : vector<1xf32>
          %34 = llvm.mlir.constant(dense<-0.00330093061> : vector<1xf32>) : vector<1xf32>
          %35 = llvm.mlir.constant(dense<0.0370645523> : vector<1xf32>) : vector<1xf32>
          %36 = llvm.mlir.constant(dense<0.118407398> : vector<1xf32>) : vector<1xf32>
          %37 = llvm.mlir.constant(dense<-0.364721417> : vector<1xf32>) : vector<1xf32>
          %38 = llvm.mlir.constant(dense<1.12750685> : vector<1xf32>) : vector<1xf32>
          %39 = llvm.mlir.constant(dense<0.0258146804> : vector<1xf32>) : vector<1xf32>
          %40 = llvm.mlir.constant(dense<0.209741712> : vector<1xf32>) : vector<1xf32>
          %41 = llvm.mlir.constant(dense<-0.523018539> : vector<1xf32>) : vector<1xf32>
          %42 = llvm.mlir.constant(dense<1.12837911> : vector<1xf32>) : vector<1xf32>
          %43 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %44 = llvm.mlir.constant(4 : index) : i64
          %45 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %46 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %47 = llvm.mlir.constant(dense<1.41421354> : vector<1xf32>) : vector<1xf32>
          %48 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %49 = llvm.mlir.constant(3328000 : index) : i64
          %50 = llvm.mlir.constant(1605632 : index) : i64
          %51 = llvm.mlir.constant(0 : index) : i64
          %52 = llvm.mlir.constant(3 : index) : i64
          %53 = llvm.mlir.constant(1 : index) : i64
          %54 = llvm.mlir.constant(28 : index) : i64
          %55 = llvm.mlir.constant(32 : index) : i64
          %56 = llvm.mlir.constant(8 : index) : i64
          %57 = llvm.alloca %56 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %58 = llvm.alloca %56 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %59 = llvm.alloca %56 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %60 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %61 = llvm.extractvalue %60[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %62 = llvm.load %61 : !llvm.ptr -> i32
          %63 = llvm.zext %62 : i32 to i64
          %64 = llvm.extractvalue %60[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
          %66 = llvm.mul %50, %10 : i64
          %67 = llvm.udiv %66, %11 : i64
          %68 = llvm.getelementptr %65[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%68, %5 : !llvm.ptr, i64)] : i1
          %69 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %70 = llvm.extractvalue %69[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %71 = llvm.getelementptr %70[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %72 = llvm.load %71 : !llvm.ptr -> !llvm.ptr
          %73 = llvm.mul %63, %10 : i64
          %74 = llvm.udiv %73, %11 : i64
          %75 = llvm.getelementptr %72[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%75, %5 : !llvm.ptr, i64)] : i1
          %76 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %77 = llvm.extractvalue %76[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %78 = llvm.getelementptr %77[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %79 = llvm.load %78 : !llvm.ptr -> !llvm.ptr
          %80 = llvm.mul %49, %10 : i64
          %81 = llvm.udiv %80, %11 : i64
          %82 = llvm.getelementptr %79[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%82, %5 : !llvm.ptr, i64)] : i1
          %83 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %84 = llvm.extractvalue %83[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %85 = llvm.zext %84 : i32 to i64
          %86 = llvm.sdiv %85, %56 : i64
          %87 = llvm.mul %86, %56 : i64
          %88 = llvm.icmp "ne" %85, %87 : i64
          %89 = llvm.icmp "slt" %85, %51 : i64
          %90 = llvm.and %88, %89 : i1
          %91 = llvm.add %86, %14 : i64
          %92 = llvm.select %90, %91, %86 : i1, i64
          %93 = llvm.srem %85, %56 : i64
          %94 = llvm.icmp "slt" %93, %51 : i64
          %95 = llvm.add %93, %56 overflow<nsw> : i64
          %96 = llvm.select %94, %95, %93 : i1, i64
          %97 = llvm.sdiv %96, %44 : i64
          %98 = llvm.srem %85, %44 : i64
          %99 = llvm.icmp "slt" %98, %51 : i64
          %100 = llvm.add %98, %44 overflow<nsw> : i64
          %101 = llvm.select %99, %100, %98 : i1, i64
          %102 = llvm.mul %92, %54 overflow<nsw> : i64
          %103 = llvm.mul %97, %54 overflow<nsw> : i64
          %104 = llvm.mul %101, %55 overflow<nsw> : i64
          llvm.br ^bb1(%51 : i64)
        ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb23
          %106 = llvm.icmp "slt" %105, %54 : i64
          llvm.cond_br %106, ^bb2(%51 : i64), ^bb24
        ^bb2(%107: i64):  // 2 preds: ^bb1, ^bb22
          %108 = llvm.icmp "slt" %107, %54 : i64
          llvm.cond_br %108, ^bb3, ^bb23
        ^bb3:  // pred: ^bb2
          %109 = llvm.sub %54, %107 : i64
          %110 = llvm.icmp "slt" %109, %56 : i64
          %111 = llvm.select %110, %109, %56 : i1, i64
          %112 = llvm.trunc %111 : i64 to i32
          %113 = llvm.insertelement %112, %2[%1 : i32] : vector<8xi32>
          %114 = llvm.shufflevector %113, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %115 = llvm.icmp "sgt" %114, %45 : vector<8xi32>
          %116 = llvm.mul %51, %56 : i64
          %117 = llvm.add %116, %116 : i64
          %118 = llvm.add %117, %51 : i64
          %119 = llvm.getelementptr %59[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %48, %119, %115 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %120 = llvm.add %107, %103 : i64
          llvm.br ^bb4(%51 : i64)
        ^bb4(%121: i64):  // 2 preds: ^bb3, ^bb21
          %122 = llvm.icmp "slt" %121, %55 : i64
          llvm.cond_br %122, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %123 = llvm.add %121, %104 : i64
          llvm.br ^bb6(%51 : i64)
        ^bb6(%124: i64):  // 2 preds: ^bb5, ^bb7
          %125 = llvm.icmp "slt" %124, %111 : i64
          llvm.cond_br %125, ^bb7, ^bb8(%51 : i64)
        ^bb7:  // pred: ^bb6
          %126 = llvm.mul %51, %56 overflow<nsw, nuw> : i64
          %127 = llvm.add %126, %126 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %124 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %59[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 : !llvm.ptr -> f32
          %131 = llvm.getelementptr inbounds|nuw %58[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %130, %131 : f32, !llvm.ptr
          %132 = llvm.add %124, %53 : i64
          llvm.br ^bb6(%132 : i64)
        ^bb8(%133: i64):  // 2 preds: ^bb6, ^bb14
          %134 = llvm.icmp "slt" %133, %52 : i64
          llvm.cond_br %134, ^bb9, ^bb15(%51 : i64)
        ^bb9:  // pred: ^bb8
          %135 = llvm.add %133, %105 : i64
          %136 = llvm.add %135, %102 : i64
          llvm.br ^bb10(%51 : i64)
        ^bb10(%137: i64):  // 2 preds: ^bb9, ^bb13
          %138 = llvm.icmp "slt" %137, %111 : i64
          llvm.cond_br %138, ^bb11(%51 : i64), ^bb14
        ^bb11(%139: i64):  // 2 preds: ^bb10, ^bb12
          %140 = llvm.icmp "slt" %139, %52 : i64
          llvm.cond_br %140, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %141 = llvm.add %120, %137 : i64
          %142 = llvm.add %141, %139 : i64
          %143 = llvm.mul %123, %7 overflow<nsw, nuw> : i64
          %144 = llvm.mul %136, %8 overflow<nsw, nuw> : i64
          %145 = llvm.add %143, %144 overflow<nsw, nuw> : i64
          %146 = llvm.add %145, %142 overflow<nsw, nuw> : i64
          %147 = llvm.getelementptr inbounds|nuw %68[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %148 = llvm.load %147 : !llvm.ptr -> f32
          %149 = llvm.mul %123, %4 overflow<nsw, nuw> : i64
          %150 = llvm.mul %133, %52 overflow<nsw, nuw> : i64
          %151 = llvm.add %149, %150 overflow<nsw, nuw> : i64
          %152 = llvm.add %151, %139 overflow<nsw, nuw> : i64
          %153 = llvm.getelementptr inbounds|nuw %75[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %154 = llvm.load %153 : !llvm.ptr -> f32
          %155 = llvm.mul %51, %56 overflow<nsw, nuw> : i64
          %156 = llvm.add %155, %155 overflow<nsw, nuw> : i64
          %157 = llvm.add %156, %137 overflow<nsw, nuw> : i64
          %158 = llvm.getelementptr inbounds|nuw %58[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %159 = llvm.load %158 : !llvm.ptr -> f32
          %160 = llvm.fmul %148, %154 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %161 = llvm.fadd %159, %160 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %161, %158 : f32, !llvm.ptr
          %162 = llvm.add %139, %53 : i64
          llvm.br ^bb11(%162 : i64)
        ^bb13:  // pred: ^bb11
          %163 = llvm.add %137, %53 : i64
          llvm.br ^bb10(%163 : i64)
        ^bb14:  // pred: ^bb10
          %164 = llvm.add %133, %53 : i64
          llvm.br ^bb8(%164 : i64)
        ^bb15(%165: i64):  // 2 preds: ^bb8, ^bb16
          %166 = llvm.icmp "slt" %165, %111 : i64
          llvm.cond_br %166, ^bb16, ^bb17(%51 : i64)
        ^bb16:  // pred: ^bb15
          %167 = llvm.mul %51, %56 overflow<nsw, nuw> : i64
          %168 = llvm.add %167, %167 overflow<nsw, nuw> : i64
          %169 = llvm.add %168, %165 overflow<nsw, nuw> : i64
          %170 = llvm.getelementptr inbounds|nuw %59[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %171 = llvm.load %170 : !llvm.ptr -> f32
          %172 = llvm.getelementptr inbounds|nuw %57[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %171, %172 : f32, !llvm.ptr
          %173 = llvm.add %165, %53 : i64
          llvm.br ^bb15(%173 : i64)
        ^bb17(%174: i64):  // 2 preds: ^bb15, ^bb18
          %175 = llvm.icmp "slt" %174, %111 : i64
          llvm.cond_br %175, ^bb18, ^bb19(%51 : i64)
        ^bb18:  // pred: ^bb17
          %176 = llvm.mul %51, %56 overflow<nsw, nuw> : i64
          %177 = llvm.add %176, %176 overflow<nsw, nuw> : i64
          %178 = llvm.add %177, %174 overflow<nsw, nuw> : i64
          %179 = llvm.getelementptr inbounds|nuw %58[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %180 = llvm.load %179 : !llvm.ptr -> f32
          %181 = llvm.getelementptr inbounds|nuw %57[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %180, %181 : f32, !llvm.ptr
          %182 = llvm.add %174, %53 : i64
          llvm.br ^bb17(%182 : i64)
        ^bb19(%183: i64):  // 2 preds: ^bb17, ^bb20
          %184 = llvm.icmp "slt" %183, %111 : i64
          llvm.cond_br %184, ^bb20, ^bb21
        ^bb20:  // pred: ^bb19
          %185 = llvm.add %117, %183 : i64
          %186 = llvm.getelementptr %57[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %187 = llvm.load %186 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %188 = llvm.fdiv %187, %47 : vector<1xf32>
          %189 = llvm.fcmp "olt" %188, %43 : vector<1xf32>
          %190 = llvm.fneg %188 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %191 = llvm.select %189, %190, %188 : vector<1xi1>, vector<1xf32>
          %192 = llvm.fcmp "olt" %191, %17 : vector<1xf32>
          %193 = llvm.select %192, %42, %38 : vector<1xi1>, vector<1xf32>
          %194 = llvm.select %192, %29, %25 : vector<1xi1>, vector<1xf32>
          %195 = llvm.select %192, %41, %37 : vector<1xi1>, vector<1xf32>
          %196 = llvm.select %192, %28, %24 : vector<1xi1>, vector<1xf32>
          %197 = llvm.select %192, %40, %36 : vector<1xi1>, vector<1xf32>
          %198 = llvm.select %192, %27, %23 : vector<1xi1>, vector<1xf32>
          %199 = llvm.select %192, %39, %35 : vector<1xi1>, vector<1xf32>
          %200 = llvm.select %192, %26, %22 : vector<1xi1>, vector<1xf32>
          %201 = llvm.fcmp "olt" %191, %16 : vector<1xf32>
          %202 = llvm.select %201, %43, %34 : vector<1xi1>, vector<1xf32>
          %203 = llvm.select %201, %193, %33 : vector<1xi1>, vector<1xf32>
          %204 = llvm.select %201, %194, %21 : vector<1xi1>, vector<1xf32>
          %205 = llvm.select %201, %195, %32 : vector<1xi1>, vector<1xf32>
          %206 = llvm.select %201, %196, %20 : vector<1xi1>, vector<1xf32>
          %207 = llvm.select %201, %197, %31 : vector<1xi1>, vector<1xf32>
          %208 = llvm.select %201, %198, %19 : vector<1xi1>, vector<1xf32>
          %209 = llvm.select %201, %199, %30 : vector<1xi1>, vector<1xf32>
          %210 = llvm.select %201, %200, %18 : vector<1xi1>, vector<1xf32>
          %211 = llvm.select %201, %43, %46 : vector<1xi1>, vector<1xf32>
          %212 = llvm.fcmp "ult" %191, %15 : vector<1xf32>
          %213 = llvm.intr.fma(%191, %209, %207) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %214 = llvm.intr.fma(%191, %213, %205) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %215 = llvm.intr.fma(%191, %214, %203) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %216 = llvm.intr.fma(%191, %215, %202) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %217 = llvm.intr.fma(%191, %210, %208) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %218 = llvm.intr.fma(%191, %217, %206) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %219 = llvm.intr.fma(%191, %218, %204) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %220 = llvm.intr.fma(%191, %219, %46) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %221 = llvm.fdiv %216, %220 : vector<1xf32>
          %222 = llvm.fadd %211, %221 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %223 = llvm.select %212, %222, %46 : vector<1xi1>, vector<1xf32>
          %224 = llvm.fneg %223 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %225 = llvm.select %189, %224, %223 : vector<1xi1>, vector<1xf32>
          %226 = llvm.extractelement %225[%0 : i64] : vector<1xf32>
          %227 = llvm.fadd %226, %13 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %228 = llvm.fmul %227, %12 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %229 = llvm.extractelement %187[%0 : i64] : vector<1xf32>
          %230 = llvm.fmul %229, %228 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %231 = llvm.add %102, %105 : i64
          %232 = llvm.add %120, %183 : i64
          %233 = llvm.mul %231, %3 overflow<nsw, nuw> : i64
          %234 = llvm.mul %232, %9 overflow<nsw, nuw> : i64
          %235 = llvm.add %233, %234 overflow<nsw, nuw> : i64
          %236 = llvm.add %235, %123 overflow<nsw, nuw> : i64
          %237 = llvm.getelementptr inbounds|nuw %82[%236] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %230, %237 : f32, !llvm.ptr
          %238 = llvm.add %183, %53 : i64
          llvm.br ^bb19(%238 : i64)
        ^bb21:  // pred: ^bb19
          %239 = llvm.add %121, %53 : i64
          llvm.br ^bb4(%239 : i64)
        ^bb22:  // pred: ^bb4
          %240 = llvm.add %107, %56 : i64
          llvm.br ^bb2(%240 : i64)
        ^bb23:  // pred: ^bb2
          %241 = llvm.add %105, %53 : i64
          llvm.br ^bb1(%241 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c13573504_i32 = arith.constant 13573504 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_22::@embedded_elf_riscv_64::@main_graph$async_dispatch_22_conv_56x56x128x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_22) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_22::@embedded_elf_riscv_64::@main_graph$async_dispatch_22_conv_56x56x128x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c13573504_i32]) bindings([
      (%main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_22_embedded_elf_riscv_64_main_graph$async_dispatch_22_conv_56x56x128x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
