#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_147 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_147_reduction_49x256_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_147_reduction_49x256_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<8xf32>
          %8 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %9 = llvm.mlir.constant(0 : i32) : i32
          %10 = llvm.mlir.poison : vector<1xf32>
          %11 = llvm.mlir.constant(0 : i64) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(49 : index) : i64
          %15 = llvm.mlir.constant(8 : i64) : i64
          %16 = llvm.mlir.constant(32 : i64) : i64
          %17 = llvm.mlir.constant(2.560000e+02 : f32) : f32
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(4 : index) : i64
          %22 = llvm.mlir.constant(3 : index) : i64
          %23 = llvm.mlir.constant(2 : index) : i64
          %24 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(577024 : index) : i64
          %27 = llvm.mlir.constant(526848 : index) : i64
          %28 = llvm.mlir.constant(1003520 : index) : i64
          %29 = llvm.mlir.constant(1053696 : index) : i64
          %30 = llvm.mlir.constant(0 : index) : i64
          %31 = llvm.mlir.constant(1 : index) : i64
          %32 = llvm.mlir.constant(32 : index) : i64
          %33 = llvm.mlir.constant(256 : index) : i64
          %34 = llvm.mlir.constant(8 : index) : i64
          %35 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %36 = llvm.mlir.constant(dense<2.560000e+02> : vector<1xf32>) : vector<1xf32>
          %37 = llvm.mlir.constant(dense<9.99999974E-6> : vector<1xf32>) : vector<1xf32>
          %38 = llvm.mlir.constant(dense<9.99999997E-7> : vector<1xf32>) : vector<1xf32>
          %39 = llvm.alloca %33 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          %43 = llvm.mul %29, %15 : i64
          %44 = llvm.udiv %43, %16 : i64
          %45 = llvm.getelementptr %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%45, %12 : !llvm.ptr, i64)] : i1
          %46 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %47 = llvm.extractvalue %46[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          %49 = llvm.mul %28, %15 : i64
          %50 = llvm.udiv %49, %16 : i64
          %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%51, %12 : !llvm.ptr, i64)] : i1
          %52 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %53 = llvm.extractvalue %52[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %54 = llvm.getelementptr %53[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %55 = llvm.load %54 : !llvm.ptr -> !llvm.ptr
          %56 = llvm.mul %27, %15 : i64
          %57 = llvm.udiv %56, %16 : i64
          %58 = llvm.getelementptr %55[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%58, %12 : !llvm.ptr, i64)] : i1
          %59 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %60 = llvm.extractvalue %59[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %61 = llvm.getelementptr %60[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %62 = llvm.load %61 : !llvm.ptr -> !llvm.ptr
          %63 = llvm.mul %26, %15 : i64
          %64 = llvm.udiv %63, %16 : i64
          %65 = llvm.getelementptr %62[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%65, %12 : !llvm.ptr, i64)] : i1
          %66 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %67 = llvm.extractvalue %66[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %68 = llvm.zext %67 : i32 to i64
          llvm.br ^bb1(%30, %25 : i64, vector<8xf32>)
        ^bb1(%69: i64, %70: vector<8xf32>):  // 2 preds: ^bb0, ^bb2
          %71 = llvm.icmp "slt" %69, %32 : i64
          llvm.cond_br %71, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %72 = llvm.mul %69, %34 overflow<nsw> : i64
          %73 = llvm.mul %68, %33 : i64
          %74 = llvm.add %73, %72 : i64
          %75 = llvm.getelementptr %45[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %77 = llvm.fadd %70, %76 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %78 = llvm.add %69, %31 : i64
          llvm.br ^bb1(%78, %77 : i64, vector<8xf32>)
        ^bb3:  // pred: ^bb1
          %79 = "llvm.intr.vector.reduce.fadd"(%24, %70) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %80 = llvm.fdiv %79, %17 : f32
          llvm.br ^bb4(%30, %35 : i64, vector<1xf32>)
        ^bb4(%81: i64, %82: vector<1xf32>):  // 2 preds: ^bb3, ^bb5
          %83 = llvm.icmp "slt" %81, %33 : i64
          llvm.cond_br %83, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %84 = llvm.mul %81, %14 : i64
          %85 = llvm.add %84, %68 : i64
          %86 = llvm.getelementptr %51[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %88 = llvm.extractelement %87[%11 : i64] : vector<1xf32>
          %89 = llvm.fsub %88, %80 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %90 = llvm.extractelement %82[%11 : i64] : vector<1xf32>
          %91 = llvm.fmul %89, %89 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %92 = llvm.fadd %91, %90 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %93 = llvm.insertelement %92, %10[%9 : i32] : vector<1xf32>
          %94 = llvm.add %81, %31 : i64
          llvm.br ^bb4(%94, %93 : i64, vector<1xf32>)
        ^bb6:  // pred: ^bb4
          %95 = llvm.fdiv %82, %36 : vector<1xf32>
          %96 = llvm.fadd %95, %37 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %97 = llvm.intr.sqrt(%96) : (vector<1xf32>) -> vector<1xf32>
          %98 = llvm.fdiv %8, %97 : vector<1xf32>
          llvm.br ^bb7(%30 : i64)
        ^bb7(%99: i64):  // 2 preds: ^bb6, ^bb8
          %100 = llvm.icmp "slt" %99, %33 : i64
          llvm.cond_br %100, ^bb8, ^bb9(%30 : i64)
        ^bb8:  // pred: ^bb7
          %101 = llvm.mul %68, %33 overflow<nsw, nuw> : i64
          %102 = llvm.add %101, %99 overflow<nsw, nuw> : i64
          %103 = llvm.getelementptr inbounds|nuw %58[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 : !llvm.ptr -> f32
          %105 = llvm.mul %30, %33 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %99 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %39[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %104, %107 : f32, !llvm.ptr
          %108 = llvm.add %99, %31 : i64
          llvm.br ^bb7(%108 : i64)
        ^bb9(%109: i64):  // 2 preds: ^bb7, ^bb10
          %110 = llvm.icmp "slt" %109, %33 : i64
          llvm.cond_br %110, ^bb10, ^bb11(%30, %25 : i64, vector<8xf32>)
        ^bb10:  // pred: ^bb9
          %111 = llvm.mul %109, %14 : i64
          %112 = llvm.add %111, %68 : i64
          %113 = llvm.getelementptr %51[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %115 = llvm.add %109, %31 : i64
          %116 = llvm.mul %115, %14 : i64
          %117 = llvm.add %116, %68 : i64
          %118 = llvm.getelementptr %51[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %120 = llvm.add %109, %23 : i64
          %121 = llvm.mul %120, %14 : i64
          %122 = llvm.add %121, %68 : i64
          %123 = llvm.getelementptr %51[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %125 = llvm.add %109, %22 : i64
          %126 = llvm.mul %125, %14 : i64
          %127 = llvm.add %126, %68 : i64
          %128 = llvm.getelementptr %51[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %130 = llvm.add %109, %21 : i64
          %131 = llvm.mul %130, %14 : i64
          %132 = llvm.add %131, %68 : i64
          %133 = llvm.getelementptr %51[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %135 = llvm.add %109, %20 : i64
          %136 = llvm.mul %135, %14 : i64
          %137 = llvm.add %136, %68 : i64
          %138 = llvm.getelementptr %51[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %139 = llvm.load %138 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %140 = llvm.add %109, %19 : i64
          %141 = llvm.mul %140, %14 : i64
          %142 = llvm.add %141, %68 : i64
          %143 = llvm.getelementptr %51[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %144 = llvm.load %143 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %145 = llvm.add %109, %18 : i64
          %146 = llvm.mul %145, %14 : i64
          %147 = llvm.add %146, %68 : i64
          %148 = llvm.getelementptr %51[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %149 = llvm.load %148 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %150 = llvm.extractelement %114[%11 : i64] : vector<1xf32>
          %151 = llvm.extractelement %119[%11 : i64] : vector<1xf32>
          %152 = llvm.extractelement %124[%11 : i64] : vector<1xf32>
          %153 = llvm.extractelement %129[%11 : i64] : vector<1xf32>
          %154 = llvm.extractelement %134[%11 : i64] : vector<1xf32>
          %155 = llvm.extractelement %139[%11 : i64] : vector<1xf32>
          %156 = llvm.extractelement %144[%11 : i64] : vector<1xf32>
          %157 = llvm.extractelement %149[%11 : i64] : vector<1xf32>
          %158 = llvm.insertelement %150, %7[%11 : i64] : vector<8xf32>
          %159 = llvm.insertelement %151, %158[%6 : i64] : vector<8xf32>
          %160 = llvm.insertelement %152, %159[%5 : i64] : vector<8xf32>
          %161 = llvm.insertelement %153, %160[%4 : i64] : vector<8xf32>
          %162 = llvm.insertelement %154, %161[%3 : i64] : vector<8xf32>
          %163 = llvm.insertelement %155, %162[%2 : i64] : vector<8xf32>
          %164 = llvm.insertelement %156, %163[%1 : i64] : vector<8xf32>
          %165 = llvm.insertelement %157, %164[%0 : i64] : vector<8xf32>
          %166 = llvm.insertelement %80, %7[%9 : i32] : vector<8xf32>
          %167 = llvm.shufflevector %166, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %168 = llvm.fsub %165, %167 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %169 = llvm.extractelement %98[%11 : i64] : vector<1xf32>
          %170 = llvm.insertelement %169, %7[%9 : i32] : vector<8xf32>
          %171 = llvm.shufflevector %170, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %172 = llvm.fmul %168, %171 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %173 = llvm.fadd %172, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %174 = llvm.mul %30, %33 : i64
          %175 = llvm.add %174, %109 : i64
          %176 = llvm.getelementptr %39[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %173, %176 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %177 = llvm.add %109, %34 : i64
          llvm.br ^bb9(%177 : i64)
        ^bb11(%178: i64, %179: vector<8xf32>):  // 2 preds: ^bb9, ^bb12
          %180 = llvm.icmp "slt" %178, %32 : i64
          llvm.cond_br %180, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %181 = llvm.mul %178, %34 overflow<nsw> : i64
          %182 = llvm.mul %30, %33 : i64
          %183 = llvm.add %182, %181 : i64
          %184 = llvm.getelementptr %39[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %185 = llvm.load %184 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %186 = llvm.fadd %179, %185 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %187 = llvm.add %178, %31 : i64
          llvm.br ^bb11(%187, %186 : i64, vector<8xf32>)
        ^bb13:  // pred: ^bb11
          %188 = "llvm.intr.vector.reduce.fadd"(%24, %179) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %189 = llvm.fdiv %188, %17 : f32
          llvm.br ^bb14(%30, %35 : i64, vector<1xf32>)
        ^bb14(%190: i64, %191: vector<1xf32>):  // 2 preds: ^bb13, ^bb15
          %192 = llvm.icmp "slt" %190, %33 : i64
          llvm.cond_br %192, ^bb15, ^bb16
        ^bb15:  // pred: ^bb14
          %193 = llvm.mul %190, %14 : i64
          %194 = llvm.add %193, %68 : i64
          %195 = llvm.getelementptr %51[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %196 = llvm.load %195 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %197 = llvm.add %190, %31 : i64
          %198 = llvm.mul %197, %14 : i64
          %199 = llvm.add %198, %68 : i64
          %200 = llvm.getelementptr %51[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %201 = llvm.load %200 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %202 = llvm.add %190, %23 : i64
          %203 = llvm.mul %202, %14 : i64
          %204 = llvm.add %203, %68 : i64
          %205 = llvm.getelementptr %51[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %206 = llvm.load %205 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %207 = llvm.add %190, %22 : i64
          %208 = llvm.mul %207, %14 : i64
          %209 = llvm.add %208, %68 : i64
          %210 = llvm.getelementptr %51[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %211 = llvm.load %210 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %212 = llvm.add %190, %21 : i64
          %213 = llvm.mul %212, %14 : i64
          %214 = llvm.add %213, %68 : i64
          %215 = llvm.getelementptr %51[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %216 = llvm.load %215 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %217 = llvm.add %190, %20 : i64
          %218 = llvm.mul %217, %14 : i64
          %219 = llvm.add %218, %68 : i64
          %220 = llvm.getelementptr %51[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %222 = llvm.add %190, %19 : i64
          %223 = llvm.mul %222, %14 : i64
          %224 = llvm.add %223, %68 : i64
          %225 = llvm.getelementptr %51[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %226 = llvm.load %225 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %227 = llvm.add %190, %18 : i64
          %228 = llvm.mul %227, %14 : i64
          %229 = llvm.add %228, %68 : i64
          %230 = llvm.getelementptr %51[%229] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %231 = llvm.load %230 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %232 = llvm.extractelement %196[%11 : i64] : vector<1xf32>
          %233 = llvm.extractelement %201[%11 : i64] : vector<1xf32>
          %234 = llvm.extractelement %206[%11 : i64] : vector<1xf32>
          %235 = llvm.extractelement %211[%11 : i64] : vector<1xf32>
          %236 = llvm.extractelement %216[%11 : i64] : vector<1xf32>
          %237 = llvm.extractelement %221[%11 : i64] : vector<1xf32>
          %238 = llvm.extractelement %226[%11 : i64] : vector<1xf32>
          %239 = llvm.extractelement %231[%11 : i64] : vector<1xf32>
          %240 = llvm.insertelement %232, %7[%11 : i64] : vector<8xf32>
          %241 = llvm.insertelement %233, %240[%6 : i64] : vector<8xf32>
          %242 = llvm.insertelement %234, %241[%5 : i64] : vector<8xf32>
          %243 = llvm.insertelement %235, %242[%4 : i64] : vector<8xf32>
          %244 = llvm.insertelement %236, %243[%3 : i64] : vector<8xf32>
          %245 = llvm.insertelement %237, %244[%2 : i64] : vector<8xf32>
          %246 = llvm.insertelement %238, %245[%1 : i64] : vector<8xf32>
          %247 = llvm.insertelement %239, %246[%0 : i64] : vector<8xf32>
          %248 = llvm.insertelement %80, %7[%9 : i32] : vector<8xf32>
          %249 = llvm.shufflevector %248, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %250 = llvm.fsub %247, %249 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %251 = llvm.extractelement %98[%11 : i64] : vector<1xf32>
          %252 = llvm.insertelement %251, %7[%9 : i32] : vector<8xf32>
          %253 = llvm.shufflevector %252, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %254 = llvm.fmul %250, %253 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %255 = llvm.fadd %254, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %256 = llvm.insertelement %189, %7[%9 : i32] : vector<8xf32>
          %257 = llvm.shufflevector %256, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %258 = llvm.fsub %255, %257 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %259 = llvm.extractelement %191[%11 : i64] : vector<1xf32>
          %260 = llvm.fmul %258, %258 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %261 = "llvm.intr.vector.reduce.fadd"(%259, %260) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %262 = llvm.insertelement %261, %10[%9 : i32] : vector<1xf32>
          %263 = llvm.add %190, %34 : i64
          llvm.br ^bb14(%263, %262 : i64, vector<1xf32>)
        ^bb16:  // pred: ^bb14
          %264 = llvm.fdiv %191, %36 : vector<1xf32>
          %265 = llvm.fadd %264, %38 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %266 = llvm.intr.sqrt(%265) : (vector<1xf32>) -> vector<1xf32>
          %267 = llvm.fdiv %8, %266 : vector<1xf32>
          llvm.br ^bb17(%30 : i64)
        ^bb17(%268: i64):  // 2 preds: ^bb16, ^bb18
          %269 = llvm.icmp "slt" %268, %33 : i64
          llvm.cond_br %269, ^bb18, ^bb19
        ^bb18:  // pred: ^bb17
          %270 = llvm.mul %268, %14 : i64
          %271 = llvm.add %270, %68 : i64
          %272 = llvm.getelementptr %51[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %273 = llvm.load %272 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %274 = llvm.add %268, %31 : i64
          %275 = llvm.mul %274, %14 : i64
          %276 = llvm.add %275, %68 : i64
          %277 = llvm.getelementptr %51[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %278 = llvm.load %277 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %279 = llvm.add %268, %23 : i64
          %280 = llvm.mul %279, %14 : i64
          %281 = llvm.add %280, %68 : i64
          %282 = llvm.getelementptr %51[%281] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %283 = llvm.load %282 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %284 = llvm.add %268, %22 : i64
          %285 = llvm.mul %284, %14 : i64
          %286 = llvm.add %285, %68 : i64
          %287 = llvm.getelementptr %51[%286] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %288 = llvm.load %287 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %289 = llvm.add %268, %21 : i64
          %290 = llvm.mul %289, %14 : i64
          %291 = llvm.add %290, %68 : i64
          %292 = llvm.getelementptr %51[%291] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %293 = llvm.load %292 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %294 = llvm.add %268, %20 : i64
          %295 = llvm.mul %294, %14 : i64
          %296 = llvm.add %295, %68 : i64
          %297 = llvm.getelementptr %51[%296] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %298 = llvm.load %297 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %299 = llvm.add %268, %19 : i64
          %300 = llvm.mul %299, %14 : i64
          %301 = llvm.add %300, %68 : i64
          %302 = llvm.getelementptr %51[%301] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %303 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %304 = llvm.add %268, %18 : i64
          %305 = llvm.mul %304, %14 : i64
          %306 = llvm.add %305, %68 : i64
          %307 = llvm.getelementptr %51[%306] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %308 = llvm.load %307 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %309 = llvm.extractelement %273[%11 : i64] : vector<1xf32>
          %310 = llvm.extractelement %278[%11 : i64] : vector<1xf32>
          %311 = llvm.extractelement %283[%11 : i64] : vector<1xf32>
          %312 = llvm.extractelement %288[%11 : i64] : vector<1xf32>
          %313 = llvm.extractelement %293[%11 : i64] : vector<1xf32>
          %314 = llvm.extractelement %298[%11 : i64] : vector<1xf32>
          %315 = llvm.extractelement %303[%11 : i64] : vector<1xf32>
          %316 = llvm.extractelement %308[%11 : i64] : vector<1xf32>
          %317 = llvm.insertelement %309, %7[%11 : i64] : vector<8xf32>
          %318 = llvm.insertelement %310, %317[%6 : i64] : vector<8xf32>
          %319 = llvm.insertelement %311, %318[%5 : i64] : vector<8xf32>
          %320 = llvm.insertelement %312, %319[%4 : i64] : vector<8xf32>
          %321 = llvm.insertelement %313, %320[%3 : i64] : vector<8xf32>
          %322 = llvm.insertelement %314, %321[%2 : i64] : vector<8xf32>
          %323 = llvm.insertelement %315, %322[%1 : i64] : vector<8xf32>
          %324 = llvm.insertelement %316, %323[%0 : i64] : vector<8xf32>
          %325 = llvm.insertelement %80, %7[%9 : i32] : vector<8xf32>
          %326 = llvm.shufflevector %325, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %327 = llvm.fsub %324, %326 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %328 = llvm.extractelement %98[%11 : i64] : vector<1xf32>
          %329 = llvm.insertelement %328, %7[%9 : i32] : vector<8xf32>
          %330 = llvm.shufflevector %329, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %331 = llvm.fmul %327, %330 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %332 = llvm.fadd %331, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %333 = llvm.insertelement %189, %7[%9 : i32] : vector<8xf32>
          %334 = llvm.shufflevector %333, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %335 = llvm.fsub %332, %334 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %336 = llvm.extractelement %267[%11 : i64] : vector<1xf32>
          %337 = llvm.insertelement %336, %7[%9 : i32] : vector<8xf32>
          %338 = llvm.shufflevector %337, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %339 = llvm.fmul %335, %338 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %340 = llvm.fadd %339, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %341 = llvm.mul %68, %33 : i64
          %342 = llvm.add %341, %268 : i64
          %343 = llvm.getelementptr %65[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %340, %343 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %344 = llvm.getelementptr %58[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %332, %344 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %345 = llvm.add %268, %34 : i64
          llvm.br ^bb17(%345 : i64)
        ^bb19:  // pred: ^bb17
          llvm.return %9 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer
  util.initializer {
    %c96516096 = arith.constant 96516096 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c96516096}
    util.global.store %buffer, @main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c64344064 = arith.constant 64344064 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer = util.global.load immutable @main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_147::@embedded_elf_riscv_64::@main_graph$async_dispatch_147_reduction_49x256_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_147) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_147::@embedded_elf_riscv_64::@main_graph$async_dispatch_147_reduction_49x256_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer)[%c32172032, %c32172032], 
      (%main_graph$async_dispatch_147_embedded_elf_riscv_64_main_graph$async_dispatch_147_reduction_49x256_f32_buffer : !hal.buffer)[%c64344064, %c32172032]
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
