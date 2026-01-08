#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_118 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_118_conv_14x14x640x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c20 = arith.constant 20 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c20, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_118_conv_14x14x640x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(8960 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(256 : index) : i64
          %8 = llvm.mlir.constant(16 : index) : i64
          %9 = llvm.mlir.constant(640 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.constant(5.000000e-01 : f32) : f32
          %13 = llvm.mlir.constant(1.000000e+00 : f32) : f32
          %14 = llvm.mlir.constant(dense<3.750000e+00> : vector<1xf32>) : vector<1xf32>
          %15 = llvm.mlir.constant(dense<2.000000e+00> : vector<1xf32>) : vector<1xf32>
          %16 = llvm.mlir.constant(dense<8.000000e-01> : vector<1xf32>) : vector<1xf32>
          %17 = llvm.mlir.constant(dense<0.0821908935> : vector<1xf32>) : vector<1xf32>
          %18 = llvm.mlir.constant(dense<-0.583389878> : vector<1xf32>) : vector<1xf32>
          %19 = llvm.mlir.constant(dense<1.62705934> : vector<1xf32>) : vector<1xf32>
          %20 = llvm.mlir.constant(dense<-2.0606916> : vector<1xf32>) : vector<1xf32>
          %21 = llvm.mlir.constant(dense<0.0572442785> : vector<1xf32>) : vector<1xf32>
          %22 = llvm.mlir.constant(dense<-0.0883462652> : vector<1xf32>) : vector<1xf32>
          %23 = llvm.mlir.constant(dense<0.448369086> : vector<1xf32>) : vector<1xf32>
          %24 = llvm.mlir.constant(dense<-3.276070e-01> : vector<1xf32>) : vector<1xf32>
          %25 = llvm.mlir.constant(dense<0.0739796459> : vector<1xf32>) : vector<1xf32>
          %26 = llvm.mlir.constant(dense<-0.131808966> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<0.519230127> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(dense<-0.463513821> : vector<1xf32>) : vector<1xf32>
          %29 = llvm.mlir.constant(dense<-1.71048032E-5> : vector<1xf32>) : vector<1xf32>
          %30 = llvm.mlir.constant(dense<2.53447099E-4> : vector<1xf32>) : vector<1xf32>
          %31 = llvm.mlir.constant(dense<-0.00141373626> : vector<1xf32>) : vector<1xf32>
          %32 = llvm.mlir.constant(dense<0.00351961935> : vector<1xf32>) : vector<1xf32>
          %33 = llvm.mlir.constant(dense<-0.00330093061> : vector<1xf32>) : vector<1xf32>
          %34 = llvm.mlir.constant(dense<0.0370645523> : vector<1xf32>) : vector<1xf32>
          %35 = llvm.mlir.constant(dense<0.118407398> : vector<1xf32>) : vector<1xf32>
          %36 = llvm.mlir.constant(dense<-0.364721417> : vector<1xf32>) : vector<1xf32>
          %37 = llvm.mlir.constant(dense<1.12750685> : vector<1xf32>) : vector<1xf32>
          %38 = llvm.mlir.constant(dense<0.0258146804> : vector<1xf32>) : vector<1xf32>
          %39 = llvm.mlir.constant(dense<0.209741712> : vector<1xf32>) : vector<1xf32>
          %40 = llvm.mlir.constant(dense<-0.523018539> : vector<1xf32>) : vector<1xf32>
          %41 = llvm.mlir.constant(dense<1.12837911> : vector<1xf32>) : vector<1xf32>
          %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %43 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %44 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %45 = llvm.mlir.constant(dense<1.41421354> : vector<1xf32>) : vector<1xf32>
          %46 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %47 = llvm.mlir.constant(1784320 : index) : i64
          %48 = llvm.mlir.constant(1128960 : index) : i64
          %49 = llvm.mlir.constant(0 : index) : i64
          %50 = llvm.mlir.constant(3 : index) : i64
          %51 = llvm.mlir.constant(1 : index) : i64
          %52 = llvm.mlir.constant(14 : index) : i64
          %53 = llvm.mlir.constant(32 : index) : i64
          %54 = llvm.mlir.constant(8 : index) : i64
          %55 = llvm.alloca %54 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %56 = llvm.alloca %54 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %57 = llvm.alloca %54 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %58 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %59 = llvm.extractvalue %58[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %60 = llvm.load %59 : !llvm.ptr -> i32
          %61 = llvm.zext %60 : i32 to i64
          %62 = llvm.extractvalue %58[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %63 = llvm.load %62 : !llvm.ptr -> !llvm.ptr
          %64 = llvm.mul %48, %10 : i64
          %65 = llvm.udiv %64, %11 : i64
          %66 = llvm.getelementptr %63[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%66, %5 : !llvm.ptr, i64)] : i1
          %67 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %68 = llvm.extractvalue %67[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %69 = llvm.getelementptr %68[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %70 = llvm.load %69 : !llvm.ptr -> !llvm.ptr
          %71 = llvm.mul %61, %10 : i64
          %72 = llvm.udiv %71, %11 : i64
          %73 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%73, %5 : !llvm.ptr, i64)] : i1
          %74 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %75 = llvm.extractvalue %74[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %76 = llvm.getelementptr %75[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %77 = llvm.load %76 : !llvm.ptr -> !llvm.ptr
          %78 = llvm.mul %47, %10 : i64
          %79 = llvm.udiv %78, %11 : i64
          %80 = llvm.getelementptr %77[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%80, %5 : !llvm.ptr, i64)] : i1
          %81 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %82 = llvm.extractvalue %81[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %83 = llvm.zext %82 : i32 to i64
          %84 = llvm.mul %83, %53 overflow<nsw> : i64
          llvm.br ^bb1(%49 : i64)
        ^bb1(%85: i64):  // 2 preds: ^bb0, ^bb23
          %86 = llvm.icmp "slt" %85, %52 : i64
          llvm.cond_br %86, ^bb2(%49 : i64), ^bb24
        ^bb2(%87: i64):  // 2 preds: ^bb1, ^bb22
          %88 = llvm.icmp "slt" %87, %52 : i64
          llvm.cond_br %88, ^bb3, ^bb23
        ^bb3:  // pred: ^bb2
          %89 = llvm.sub %52, %87 : i64
          %90 = llvm.icmp "slt" %89, %54 : i64
          %91 = llvm.select %90, %89, %54 : i1, i64
          %92 = llvm.trunc %91 : i64 to i32
          %93 = llvm.insertelement %92, %2[%1 : i32] : vector<8xi32>
          %94 = llvm.shufflevector %93, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %95 = llvm.icmp "sgt" %94, %43 : vector<8xi32>
          %96 = llvm.mul %49, %54 : i64
          %97 = llvm.add %96, %96 : i64
          %98 = llvm.add %97, %49 : i64
          %99 = llvm.getelementptr %57[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %46, %99, %95 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb4(%49 : i64)
        ^bb4(%100: i64):  // 2 preds: ^bb3, ^bb21
          %101 = llvm.icmp "slt" %100, %53 : i64
          llvm.cond_br %101, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %102 = llvm.add %100, %84 : i64
          llvm.br ^bb6(%49 : i64)
        ^bb6(%103: i64):  // 2 preds: ^bb5, ^bb7
          %104 = llvm.icmp "slt" %103, %91 : i64
          llvm.cond_br %104, ^bb7, ^bb8(%49 : i64)
        ^bb7:  // pred: ^bb6
          %105 = llvm.mul %49, %54 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %105 overflow<nsw, nuw> : i64
          %107 = llvm.add %106, %103 overflow<nsw, nuw> : i64
          %108 = llvm.getelementptr inbounds|nuw %57[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 : !llvm.ptr -> f32
          %110 = llvm.getelementptr inbounds|nuw %56[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %109, %110 : f32, !llvm.ptr
          %111 = llvm.add %103, %51 : i64
          llvm.br ^bb6(%111 : i64)
        ^bb8(%112: i64):  // 2 preds: ^bb6, ^bb14
          %113 = llvm.icmp "slt" %112, %50 : i64
          llvm.cond_br %113, ^bb9, ^bb15(%49 : i64)
        ^bb9:  // pred: ^bb8
          %114 = llvm.add %112, %85 : i64
          llvm.br ^bb10(%49 : i64)
        ^bb10(%115: i64):  // 2 preds: ^bb9, ^bb13
          %116 = llvm.icmp "slt" %115, %91 : i64
          llvm.cond_br %116, ^bb11(%49 : i64), ^bb14
        ^bb11(%117: i64):  // 2 preds: ^bb10, ^bb12
          %118 = llvm.icmp "slt" %117, %50 : i64
          llvm.cond_br %118, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %119 = llvm.add %87, %115 : i64
          %120 = llvm.add %119, %117 : i64
          %121 = llvm.mul %102, %7 overflow<nsw, nuw> : i64
          %122 = llvm.mul %114, %8 overflow<nsw, nuw> : i64
          %123 = llvm.add %121, %122 overflow<nsw, nuw> : i64
          %124 = llvm.add %123, %120 overflow<nsw, nuw> : i64
          %125 = llvm.getelementptr inbounds|nuw %66[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %126 = llvm.load %125 : !llvm.ptr -> f32
          %127 = llvm.mul %102, %4 overflow<nsw, nuw> : i64
          %128 = llvm.mul %112, %50 overflow<nsw, nuw> : i64
          %129 = llvm.add %127, %128 overflow<nsw, nuw> : i64
          %130 = llvm.add %129, %117 overflow<nsw, nuw> : i64
          %131 = llvm.getelementptr inbounds|nuw %73[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 : !llvm.ptr -> f32
          %133 = llvm.mul %49, %54 overflow<nsw, nuw> : i64
          %134 = llvm.add %133, %133 overflow<nsw, nuw> : i64
          %135 = llvm.add %134, %115 overflow<nsw, nuw> : i64
          %136 = llvm.getelementptr inbounds|nuw %56[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %137 = llvm.load %136 : !llvm.ptr -> f32
          %138 = llvm.fmul %126, %132 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %139 = llvm.fadd %137, %138 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %139, %136 : f32, !llvm.ptr
          %140 = llvm.add %117, %51 : i64
          llvm.br ^bb11(%140 : i64)
        ^bb13:  // pred: ^bb11
          %141 = llvm.add %115, %51 : i64
          llvm.br ^bb10(%141 : i64)
        ^bb14:  // pred: ^bb10
          %142 = llvm.add %112, %51 : i64
          llvm.br ^bb8(%142 : i64)
        ^bb15(%143: i64):  // 2 preds: ^bb8, ^bb16
          %144 = llvm.icmp "slt" %143, %91 : i64
          llvm.cond_br %144, ^bb16, ^bb17(%49 : i64)
        ^bb16:  // pred: ^bb15
          %145 = llvm.mul %49, %54 overflow<nsw, nuw> : i64
          %146 = llvm.add %145, %145 overflow<nsw, nuw> : i64
          %147 = llvm.add %146, %143 overflow<nsw, nuw> : i64
          %148 = llvm.getelementptr inbounds|nuw %57[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %149 = llvm.load %148 : !llvm.ptr -> f32
          %150 = llvm.getelementptr inbounds|nuw %55[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %149, %150 : f32, !llvm.ptr
          %151 = llvm.add %143, %51 : i64
          llvm.br ^bb15(%151 : i64)
        ^bb17(%152: i64):  // 2 preds: ^bb15, ^bb18
          %153 = llvm.icmp "slt" %152, %91 : i64
          llvm.cond_br %153, ^bb18, ^bb19(%49 : i64)
        ^bb18:  // pred: ^bb17
          %154 = llvm.mul %49, %54 overflow<nsw, nuw> : i64
          %155 = llvm.add %154, %154 overflow<nsw, nuw> : i64
          %156 = llvm.add %155, %152 overflow<nsw, nuw> : i64
          %157 = llvm.getelementptr inbounds|nuw %56[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %158 = llvm.load %157 : !llvm.ptr -> f32
          %159 = llvm.getelementptr inbounds|nuw %55[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %158, %159 : f32, !llvm.ptr
          %160 = llvm.add %152, %51 : i64
          llvm.br ^bb17(%160 : i64)
        ^bb19(%161: i64):  // 2 preds: ^bb17, ^bb20
          %162 = llvm.icmp "slt" %161, %91 : i64
          llvm.cond_br %162, ^bb20, ^bb21
        ^bb20:  // pred: ^bb19
          %163 = llvm.add %97, %161 : i64
          %164 = llvm.getelementptr %55[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %166 = llvm.fdiv %165, %45 : vector<1xf32>
          %167 = llvm.fcmp "olt" %166, %42 : vector<1xf32>
          %168 = llvm.fneg %166 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %169 = llvm.select %167, %168, %166 : vector<1xi1>, vector<1xf32>
          %170 = llvm.fcmp "olt" %169, %16 : vector<1xf32>
          %171 = llvm.select %170, %41, %37 : vector<1xi1>, vector<1xf32>
          %172 = llvm.select %170, %28, %24 : vector<1xi1>, vector<1xf32>
          %173 = llvm.select %170, %40, %36 : vector<1xi1>, vector<1xf32>
          %174 = llvm.select %170, %27, %23 : vector<1xi1>, vector<1xf32>
          %175 = llvm.select %170, %39, %35 : vector<1xi1>, vector<1xf32>
          %176 = llvm.select %170, %26, %22 : vector<1xi1>, vector<1xf32>
          %177 = llvm.select %170, %38, %34 : vector<1xi1>, vector<1xf32>
          %178 = llvm.select %170, %25, %21 : vector<1xi1>, vector<1xf32>
          %179 = llvm.fcmp "olt" %169, %15 : vector<1xf32>
          %180 = llvm.select %179, %42, %33 : vector<1xi1>, vector<1xf32>
          %181 = llvm.select %179, %171, %32 : vector<1xi1>, vector<1xf32>
          %182 = llvm.select %179, %172, %20 : vector<1xi1>, vector<1xf32>
          %183 = llvm.select %179, %173, %31 : vector<1xi1>, vector<1xf32>
          %184 = llvm.select %179, %174, %19 : vector<1xi1>, vector<1xf32>
          %185 = llvm.select %179, %175, %30 : vector<1xi1>, vector<1xf32>
          %186 = llvm.select %179, %176, %18 : vector<1xi1>, vector<1xf32>
          %187 = llvm.select %179, %177, %29 : vector<1xi1>, vector<1xf32>
          %188 = llvm.select %179, %178, %17 : vector<1xi1>, vector<1xf32>
          %189 = llvm.select %179, %42, %44 : vector<1xi1>, vector<1xf32>
          %190 = llvm.fcmp "ult" %169, %14 : vector<1xf32>
          %191 = llvm.intr.fma(%169, %187, %185) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %192 = llvm.intr.fma(%169, %191, %183) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %193 = llvm.intr.fma(%169, %192, %181) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %194 = llvm.intr.fma(%169, %193, %180) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %195 = llvm.intr.fma(%169, %188, %186) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %196 = llvm.intr.fma(%169, %195, %184) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %197 = llvm.intr.fma(%169, %196, %182) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %198 = llvm.intr.fma(%169, %197, %44) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %199 = llvm.fdiv %194, %198 : vector<1xf32>
          %200 = llvm.fadd %189, %199 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %201 = llvm.select %190, %200, %44 : vector<1xi1>, vector<1xf32>
          %202 = llvm.fneg %201 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %203 = llvm.select %167, %202, %201 : vector<1xi1>, vector<1xf32>
          %204 = llvm.extractelement %203[%0 : i64] : vector<1xf32>
          %205 = llvm.fadd %204, %13 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %206 = llvm.fmul %205, %12 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %207 = llvm.extractelement %165[%0 : i64] : vector<1xf32>
          %208 = llvm.fmul %207, %206 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %209 = llvm.add %87, %161 : i64
          %210 = llvm.mul %85, %3 overflow<nsw, nuw> : i64
          %211 = llvm.mul %209, %9 overflow<nsw, nuw> : i64
          %212 = llvm.add %210, %211 overflow<nsw, nuw> : i64
          %213 = llvm.add %212, %102 overflow<nsw, nuw> : i64
          %214 = llvm.getelementptr inbounds|nuw %80[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %208, %214 : f32, !llvm.ptr
          %215 = llvm.add %161, %51 : i64
          llvm.br ^bb19(%215 : i64)
        ^bb21:  // pred: ^bb19
          %216 = llvm.add %100, %51 : i64
          llvm.br ^bb4(%216 : i64)
        ^bb22:  // pred: ^bb4
          %217 = llvm.add %87, %54 : i64
          llvm.br ^bb2(%217 : i64)
        ^bb23:  // pred: ^bb2
          %218 = llvm.add %85, %51 : i64
          llvm.br ^bb1(%218 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c13619584_i32 = arith.constant 13619584 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_118::@embedded_elf_riscv_64::@main_graph$async_dispatch_118_conv_14x14x640x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_118) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_118::@embedded_elf_riscv_64::@main_graph$async_dispatch_118_conv_14x14x640x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c13619584_i32]) bindings([
      (%main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_118_embedded_elf_riscv_64_main_graph$async_dispatch_118_conv_14x14x640x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
