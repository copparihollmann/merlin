#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_71 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_71_conv_28x28x256x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_71_conv_28x28x256x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(7168 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(900 : index) : i64
          %8 = llvm.mlir.constant(30 : index) : i64
          %9 = llvm.mlir.constant(256 : index) : i64
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
          %44 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %45 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %46 = llvm.mlir.constant(dense<1.41421354> : vector<1xf32>) : vector<1xf32>
          %47 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %48 = llvm.mlir.constant(2125824 : index) : i64
          %49 = llvm.mlir.constant(1204224 : index) : i64
          %50 = llvm.mlir.constant(0 : index) : i64
          %51 = llvm.mlir.constant(3 : index) : i64
          %52 = llvm.mlir.constant(1 : index) : i64
          %53 = llvm.mlir.constant(14 : index) : i64
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
          %66 = llvm.mul %49, %10 : i64
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
          %80 = llvm.mul %48, %10 : i64
          %81 = llvm.udiv %80, %11 : i64
          %82 = llvm.getelementptr %79[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%82, %5 : !llvm.ptr, i64)] : i1
          %83 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %84 = llvm.extractvalue %83[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %85 = llvm.zext %84 : i32 to i64
          %86 = llvm.sdiv %85, %56 : i64
          %87 = llvm.mul %86, %56 : i64
          %88 = llvm.icmp "ne" %85, %87 : i64
          %89 = llvm.icmp "slt" %85, %50 : i64
          %90 = llvm.and %88, %89 : i1
          %91 = llvm.add %86, %14 : i64
          %92 = llvm.select %90, %91, %86 : i1, i64
          %93 = llvm.srem %85, %56 : i64
          %94 = llvm.icmp "slt" %93, %50 : i64
          %95 = llvm.add %93, %56 overflow<nsw> : i64
          %96 = llvm.select %94, %95, %93 : i1, i64
          %97 = llvm.mul %92, %53 overflow<nsw> : i64
          %98 = llvm.mul %96, %55 overflow<nsw> : i64
          llvm.br ^bb1(%50 : i64)
        ^bb1(%99: i64):  // 2 preds: ^bb0, ^bb23
          %100 = llvm.icmp "slt" %99, %53 : i64
          llvm.cond_br %100, ^bb2(%50 : i64), ^bb24
        ^bb2(%101: i64):  // 2 preds: ^bb1, ^bb22
          %102 = llvm.icmp "slt" %101, %54 : i64
          llvm.cond_br %102, ^bb3, ^bb23
        ^bb3:  // pred: ^bb2
          %103 = llvm.sub %54, %101 : i64
          %104 = llvm.icmp "slt" %103, %56 : i64
          %105 = llvm.select %104, %103, %56 : i1, i64
          %106 = llvm.trunc %105 : i64 to i32
          %107 = llvm.insertelement %106, %2[%1 : i32] : vector<8xi32>
          %108 = llvm.shufflevector %107, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %109 = llvm.icmp "sgt" %108, %44 : vector<8xi32>
          %110 = llvm.mul %50, %56 : i64
          %111 = llvm.add %110, %110 : i64
          %112 = llvm.add %111, %50 : i64
          %113 = llvm.getelementptr %59[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %47, %113, %109 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb4(%50 : i64)
        ^bb4(%114: i64):  // 2 preds: ^bb3, ^bb21
          %115 = llvm.icmp "slt" %114, %55 : i64
          llvm.cond_br %115, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %116 = llvm.add %114, %98 : i64
          llvm.br ^bb6(%50 : i64)
        ^bb6(%117: i64):  // 2 preds: ^bb5, ^bb7
          %118 = llvm.icmp "slt" %117, %105 : i64
          llvm.cond_br %118, ^bb7, ^bb8(%50 : i64)
        ^bb7:  // pred: ^bb6
          %119 = llvm.mul %50, %56 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %119 overflow<nsw, nuw> : i64
          %121 = llvm.add %120, %117 overflow<nsw, nuw> : i64
          %122 = llvm.getelementptr inbounds|nuw %59[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 : !llvm.ptr -> f32
          %124 = llvm.getelementptr inbounds|nuw %58[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %123, %124 : f32, !llvm.ptr
          %125 = llvm.add %117, %52 : i64
          llvm.br ^bb6(%125 : i64)
        ^bb8(%126: i64):  // 2 preds: ^bb6, ^bb14
          %127 = llvm.icmp "slt" %126, %51 : i64
          llvm.cond_br %127, ^bb9, ^bb15(%50 : i64)
        ^bb9:  // pred: ^bb8
          %128 = llvm.add %126, %99 : i64
          %129 = llvm.add %128, %97 : i64
          llvm.br ^bb10(%50 : i64)
        ^bb10(%130: i64):  // 2 preds: ^bb9, ^bb13
          %131 = llvm.icmp "slt" %130, %105 : i64
          llvm.cond_br %131, ^bb11(%50 : i64), ^bb14
        ^bb11(%132: i64):  // 2 preds: ^bb10, ^bb12
          %133 = llvm.icmp "slt" %132, %51 : i64
          llvm.cond_br %133, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %134 = llvm.add %101, %130 : i64
          %135 = llvm.add %134, %132 : i64
          %136 = llvm.mul %116, %7 overflow<nsw, nuw> : i64
          %137 = llvm.mul %129, %8 overflow<nsw, nuw> : i64
          %138 = llvm.add %136, %137 overflow<nsw, nuw> : i64
          %139 = llvm.add %138, %135 overflow<nsw, nuw> : i64
          %140 = llvm.getelementptr inbounds|nuw %68[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %141 = llvm.load %140 : !llvm.ptr -> f32
          %142 = llvm.mul %116, %4 overflow<nsw, nuw> : i64
          %143 = llvm.mul %126, %51 overflow<nsw, nuw> : i64
          %144 = llvm.add %142, %143 overflow<nsw, nuw> : i64
          %145 = llvm.add %144, %132 overflow<nsw, nuw> : i64
          %146 = llvm.getelementptr inbounds|nuw %75[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %147 = llvm.load %146 : !llvm.ptr -> f32
          %148 = llvm.mul %50, %56 overflow<nsw, nuw> : i64
          %149 = llvm.add %148, %148 overflow<nsw, nuw> : i64
          %150 = llvm.add %149, %130 overflow<nsw, nuw> : i64
          %151 = llvm.getelementptr inbounds|nuw %58[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %152 = llvm.load %151 : !llvm.ptr -> f32
          %153 = llvm.fmul %141, %147 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %154 = llvm.fadd %152, %153 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %154, %151 : f32, !llvm.ptr
          %155 = llvm.add %132, %52 : i64
          llvm.br ^bb11(%155 : i64)
        ^bb13:  // pred: ^bb11
          %156 = llvm.add %130, %52 : i64
          llvm.br ^bb10(%156 : i64)
        ^bb14:  // pred: ^bb10
          %157 = llvm.add %126, %52 : i64
          llvm.br ^bb8(%157 : i64)
        ^bb15(%158: i64):  // 2 preds: ^bb8, ^bb16
          %159 = llvm.icmp "slt" %158, %105 : i64
          llvm.cond_br %159, ^bb16, ^bb17(%50 : i64)
        ^bb16:  // pred: ^bb15
          %160 = llvm.mul %50, %56 overflow<nsw, nuw> : i64
          %161 = llvm.add %160, %160 overflow<nsw, nuw> : i64
          %162 = llvm.add %161, %158 overflow<nsw, nuw> : i64
          %163 = llvm.getelementptr inbounds|nuw %59[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %164 = llvm.load %163 : !llvm.ptr -> f32
          %165 = llvm.getelementptr inbounds|nuw %57[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %164, %165 : f32, !llvm.ptr
          %166 = llvm.add %158, %52 : i64
          llvm.br ^bb15(%166 : i64)
        ^bb17(%167: i64):  // 2 preds: ^bb15, ^bb18
          %168 = llvm.icmp "slt" %167, %105 : i64
          llvm.cond_br %168, ^bb18, ^bb19(%50 : i64)
        ^bb18:  // pred: ^bb17
          %169 = llvm.mul %50, %56 overflow<nsw, nuw> : i64
          %170 = llvm.add %169, %169 overflow<nsw, nuw> : i64
          %171 = llvm.add %170, %167 overflow<nsw, nuw> : i64
          %172 = llvm.getelementptr inbounds|nuw %58[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %173 = llvm.load %172 : !llvm.ptr -> f32
          %174 = llvm.getelementptr inbounds|nuw %57[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %173, %174 : f32, !llvm.ptr
          %175 = llvm.add %167, %52 : i64
          llvm.br ^bb17(%175 : i64)
        ^bb19(%176: i64):  // 2 preds: ^bb17, ^bb20
          %177 = llvm.icmp "slt" %176, %105 : i64
          llvm.cond_br %177, ^bb20, ^bb21
        ^bb20:  // pred: ^bb19
          %178 = llvm.add %111, %176 : i64
          %179 = llvm.getelementptr %57[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %180 = llvm.load %179 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %181 = llvm.fdiv %180, %46 : vector<1xf32>
          %182 = llvm.fcmp "olt" %181, %43 : vector<1xf32>
          %183 = llvm.fneg %181 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %184 = llvm.select %182, %183, %181 : vector<1xi1>, vector<1xf32>
          %185 = llvm.fcmp "olt" %184, %17 : vector<1xf32>
          %186 = llvm.select %185, %42, %38 : vector<1xi1>, vector<1xf32>
          %187 = llvm.select %185, %29, %25 : vector<1xi1>, vector<1xf32>
          %188 = llvm.select %185, %41, %37 : vector<1xi1>, vector<1xf32>
          %189 = llvm.select %185, %28, %24 : vector<1xi1>, vector<1xf32>
          %190 = llvm.select %185, %40, %36 : vector<1xi1>, vector<1xf32>
          %191 = llvm.select %185, %27, %23 : vector<1xi1>, vector<1xf32>
          %192 = llvm.select %185, %39, %35 : vector<1xi1>, vector<1xf32>
          %193 = llvm.select %185, %26, %22 : vector<1xi1>, vector<1xf32>
          %194 = llvm.fcmp "olt" %184, %16 : vector<1xf32>
          %195 = llvm.select %194, %43, %34 : vector<1xi1>, vector<1xf32>
          %196 = llvm.select %194, %186, %33 : vector<1xi1>, vector<1xf32>
          %197 = llvm.select %194, %187, %21 : vector<1xi1>, vector<1xf32>
          %198 = llvm.select %194, %188, %32 : vector<1xi1>, vector<1xf32>
          %199 = llvm.select %194, %189, %20 : vector<1xi1>, vector<1xf32>
          %200 = llvm.select %194, %190, %31 : vector<1xi1>, vector<1xf32>
          %201 = llvm.select %194, %191, %19 : vector<1xi1>, vector<1xf32>
          %202 = llvm.select %194, %192, %30 : vector<1xi1>, vector<1xf32>
          %203 = llvm.select %194, %193, %18 : vector<1xi1>, vector<1xf32>
          %204 = llvm.select %194, %43, %45 : vector<1xi1>, vector<1xf32>
          %205 = llvm.fcmp "ult" %184, %15 : vector<1xf32>
          %206 = llvm.intr.fma(%184, %202, %200) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %207 = llvm.intr.fma(%184, %206, %198) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %208 = llvm.intr.fma(%184, %207, %196) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %209 = llvm.intr.fma(%184, %208, %195) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %210 = llvm.intr.fma(%184, %203, %201) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %211 = llvm.intr.fma(%184, %210, %199) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %212 = llvm.intr.fma(%184, %211, %197) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %213 = llvm.intr.fma(%184, %212, %45) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %214 = llvm.fdiv %209, %213 : vector<1xf32>
          %215 = llvm.fadd %204, %214 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %216 = llvm.select %205, %215, %45 : vector<1xi1>, vector<1xf32>
          %217 = llvm.fneg %216 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %218 = llvm.select %182, %217, %216 : vector<1xi1>, vector<1xf32>
          %219 = llvm.extractelement %218[%0 : i64] : vector<1xf32>
          %220 = llvm.fadd %219, %13 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %221 = llvm.fmul %220, %12 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %222 = llvm.extractelement %180[%0 : i64] : vector<1xf32>
          %223 = llvm.fmul %222, %221 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %224 = llvm.add %97, %99 : i64
          %225 = llvm.add %101, %176 : i64
          %226 = llvm.mul %224, %3 overflow<nsw, nuw> : i64
          %227 = llvm.mul %225, %9 overflow<nsw, nuw> : i64
          %228 = llvm.add %226, %227 overflow<nsw, nuw> : i64
          %229 = llvm.add %228, %116 overflow<nsw, nuw> : i64
          %230 = llvm.getelementptr inbounds|nuw %82[%229] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %223, %230 : f32, !llvm.ptr
          %231 = llvm.add %176, %52 : i64
          llvm.br ^bb19(%231 : i64)
        ^bb21:  // pred: ^bb19
          %232 = llvm.add %114, %52 : i64
          llvm.br ^bb4(%232 : i64)
        ^bb22:  // pred: ^bb4
          %233 = llvm.add %101, %56 : i64
          llvm.br ^bb2(%233 : i64)
        ^bb23:  // pred: ^bb2
          %234 = llvm.add %99, %52 : i64
          llvm.br ^bb1(%234 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c13587328_i32 = arith.constant 13587328 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_71::@embedded_elf_riscv_64::@main_graph$async_dispatch_71_conv_28x28x256x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_71) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_71::@embedded_elf_riscv_64::@main_graph$async_dispatch_71_conv_28x28x256x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c13587328_i32]) bindings([
      (%main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_71_embedded_elf_riscv_64_main_graph$async_dispatch_71_conv_28x28x256x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
