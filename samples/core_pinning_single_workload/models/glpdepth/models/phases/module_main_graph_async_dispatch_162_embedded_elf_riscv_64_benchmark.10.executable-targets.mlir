#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_162 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<7xf32>
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(81 : index) : i64
          %10 = llvm.mlir.constant(9 : index) : i64
          %11 = llvm.mlir.constant(1024 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(1792 : index) : i64
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.poison : !llvm.array<7 x vector<7xf32>>
          %17 = llvm.mlir.constant(7 : index) : i64
          %18 = llvm.mlir.constant(6 : index) : i64
          %19 = llvm.mlir.constant(5 : index) : i64
          %20 = llvm.mlir.constant(4 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x7xf32>) : !llvm.array<7 x vector<7xf32>>
          %24 = llvm.mlir.constant(64 : index) : i64
          %25 = llvm.mlir.constant(1 : index) : i64
          %26 = llvm.mlir.constant(256 : index) : i64
          %27 = llvm.mlir.constant(0 : index) : i64
          %28 = llvm.mlir.constant(677376 : index) : i64
          %29 = llvm.mlir.constant(1003520 : index) : i64
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> i32
          %33 = llvm.zext %32 : i32 to i64
          %34 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %28, %14 : i64
          %37 = llvm.udiv %36, %15 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%38, %24 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.getelementptr %40[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          %43 = llvm.mul %33, %14 : i64
          %44 = llvm.udiv %43, %15 : i64
          %45 = llvm.getelementptr %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%45, %24 : !llvm.ptr, i64)] : i1
          %46 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %47 = llvm.extractvalue %46[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %48 = llvm.getelementptr %47[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %49 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
          %50 = llvm.mul %29, %14 : i64
          %51 = llvm.udiv %50, %15 : i64
          %52 = llvm.getelementptr %49[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%52, %24 : !llvm.ptr, i64)] : i1
          %53 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %54 = llvm.extractvalue %53[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %55 = llvm.zext %54 : i32 to i64
          %56 = llvm.mul %55, %24 overflow<nsw> : i64
          llvm.br ^bb1(%27 : i64)
        ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb4
          %58 = llvm.icmp "slt" %57, %24 : i64
          llvm.cond_br %58, ^bb2(%27, %23 : i64, !llvm.array<7 x vector<7xf32>>), ^bb5
        ^bb2(%59: i64, %60: !llvm.array<7 x vector<7xf32>>):  // 2 preds: ^bb1, ^bb3
          %61 = llvm.icmp "slt" %59, %26 : i64
          llvm.cond_br %61, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %62 = llvm.mul %27, %13 : i64
          %63 = llvm.mul %27, %26 : i64
          %64 = llvm.add %62, %63 : i64
          %65 = llvm.add %64, %59 : i64
          %66 = llvm.getelementptr %38[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %68 = llvm.mul %25, %26 : i64
          %69 = llvm.add %62, %68 : i64
          %70 = llvm.add %69, %59 : i64
          %71 = llvm.getelementptr %38[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %73 = llvm.mul %22, %26 : i64
          %74 = llvm.add %62, %73 : i64
          %75 = llvm.add %74, %59 : i64
          %76 = llvm.getelementptr %38[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %78 = llvm.mul %21, %26 : i64
          %79 = llvm.add %62, %78 : i64
          %80 = llvm.add %79, %59 : i64
          %81 = llvm.getelementptr %38[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %83 = llvm.mul %20, %26 : i64
          %84 = llvm.add %62, %83 : i64
          %85 = llvm.add %84, %59 : i64
          %86 = llvm.getelementptr %38[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %88 = llvm.mul %19, %26 : i64
          %89 = llvm.add %62, %88 : i64
          %90 = llvm.add %89, %59 : i64
          %91 = llvm.getelementptr %38[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %93 = llvm.mul %18, %26 : i64
          %94 = llvm.add %62, %93 : i64
          %95 = llvm.add %94, %59 : i64
          %96 = llvm.getelementptr %38[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %98 = llvm.extractelement %67[%8 : i64] : vector<1xf32>
          %99 = llvm.extractelement %72[%8 : i64] : vector<1xf32>
          %100 = llvm.extractelement %77[%8 : i64] : vector<1xf32>
          %101 = llvm.extractelement %82[%8 : i64] : vector<1xf32>
          %102 = llvm.extractelement %87[%8 : i64] : vector<1xf32>
          %103 = llvm.extractelement %92[%8 : i64] : vector<1xf32>
          %104 = llvm.extractelement %97[%8 : i64] : vector<1xf32>
          %105 = llvm.mul %25, %13 : i64
          %106 = llvm.add %105, %63 : i64
          %107 = llvm.add %106, %59 : i64
          %108 = llvm.getelementptr %38[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %110 = llvm.add %105, %68 : i64
          %111 = llvm.add %110, %59 : i64
          %112 = llvm.getelementptr %38[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %114 = llvm.add %105, %73 : i64
          %115 = llvm.add %114, %59 : i64
          %116 = llvm.getelementptr %38[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %118 = llvm.add %105, %78 : i64
          %119 = llvm.add %118, %59 : i64
          %120 = llvm.getelementptr %38[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %122 = llvm.add %105, %83 : i64
          %123 = llvm.add %122, %59 : i64
          %124 = llvm.getelementptr %38[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %126 = llvm.add %105, %88 : i64
          %127 = llvm.add %126, %59 : i64
          %128 = llvm.getelementptr %38[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %130 = llvm.add %105, %93 : i64
          %131 = llvm.add %130, %59 : i64
          %132 = llvm.getelementptr %38[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.load %132 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %134 = llvm.extractelement %109[%8 : i64] : vector<1xf32>
          %135 = llvm.extractelement %113[%8 : i64] : vector<1xf32>
          %136 = llvm.extractelement %117[%8 : i64] : vector<1xf32>
          %137 = llvm.extractelement %121[%8 : i64] : vector<1xf32>
          %138 = llvm.extractelement %125[%8 : i64] : vector<1xf32>
          %139 = llvm.extractelement %129[%8 : i64] : vector<1xf32>
          %140 = llvm.extractelement %133[%8 : i64] : vector<1xf32>
          %141 = llvm.mul %22, %13 : i64
          %142 = llvm.add %141, %63 : i64
          %143 = llvm.add %142, %59 : i64
          %144 = llvm.getelementptr %38[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %146 = llvm.add %141, %68 : i64
          %147 = llvm.add %146, %59 : i64
          %148 = llvm.getelementptr %38[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %149 = llvm.load %148 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %150 = llvm.add %141, %73 : i64
          %151 = llvm.add %150, %59 : i64
          %152 = llvm.getelementptr %38[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %153 = llvm.load %152 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %154 = llvm.add %141, %78 : i64
          %155 = llvm.add %154, %59 : i64
          %156 = llvm.getelementptr %38[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %157 = llvm.load %156 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %158 = llvm.add %141, %83 : i64
          %159 = llvm.add %158, %59 : i64
          %160 = llvm.getelementptr %38[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %161 = llvm.load %160 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %162 = llvm.add %141, %88 : i64
          %163 = llvm.add %162, %59 : i64
          %164 = llvm.getelementptr %38[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %166 = llvm.add %141, %93 : i64
          %167 = llvm.add %166, %59 : i64
          %168 = llvm.getelementptr %38[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %169 = llvm.load %168 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %170 = llvm.extractelement %145[%8 : i64] : vector<1xf32>
          %171 = llvm.extractelement %149[%8 : i64] : vector<1xf32>
          %172 = llvm.extractelement %153[%8 : i64] : vector<1xf32>
          %173 = llvm.extractelement %157[%8 : i64] : vector<1xf32>
          %174 = llvm.extractelement %161[%8 : i64] : vector<1xf32>
          %175 = llvm.extractelement %165[%8 : i64] : vector<1xf32>
          %176 = llvm.extractelement %169[%8 : i64] : vector<1xf32>
          %177 = llvm.mul %21, %13 : i64
          %178 = llvm.add %177, %63 : i64
          %179 = llvm.add %178, %59 : i64
          %180 = llvm.getelementptr %38[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %181 = llvm.load %180 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %182 = llvm.add %177, %68 : i64
          %183 = llvm.add %182, %59 : i64
          %184 = llvm.getelementptr %38[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %185 = llvm.load %184 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %186 = llvm.add %177, %73 : i64
          %187 = llvm.add %186, %59 : i64
          %188 = llvm.getelementptr %38[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %189 = llvm.load %188 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %190 = llvm.add %177, %78 : i64
          %191 = llvm.add %190, %59 : i64
          %192 = llvm.getelementptr %38[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %193 = llvm.load %192 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %194 = llvm.add %177, %83 : i64
          %195 = llvm.add %194, %59 : i64
          %196 = llvm.getelementptr %38[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %197 = llvm.load %196 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %198 = llvm.add %177, %88 : i64
          %199 = llvm.add %198, %59 : i64
          %200 = llvm.getelementptr %38[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %201 = llvm.load %200 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %202 = llvm.add %177, %93 : i64
          %203 = llvm.add %202, %59 : i64
          %204 = llvm.getelementptr %38[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %205 = llvm.load %204 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %206 = llvm.extractelement %181[%8 : i64] : vector<1xf32>
          %207 = llvm.extractelement %185[%8 : i64] : vector<1xf32>
          %208 = llvm.extractelement %189[%8 : i64] : vector<1xf32>
          %209 = llvm.extractelement %193[%8 : i64] : vector<1xf32>
          %210 = llvm.extractelement %197[%8 : i64] : vector<1xf32>
          %211 = llvm.extractelement %201[%8 : i64] : vector<1xf32>
          %212 = llvm.extractelement %205[%8 : i64] : vector<1xf32>
          %213 = llvm.mul %20, %13 : i64
          %214 = llvm.add %213, %63 : i64
          %215 = llvm.add %214, %59 : i64
          %216 = llvm.getelementptr %38[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %217 = llvm.load %216 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %218 = llvm.add %213, %68 : i64
          %219 = llvm.add %218, %59 : i64
          %220 = llvm.getelementptr %38[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %222 = llvm.add %213, %73 : i64
          %223 = llvm.add %222, %59 : i64
          %224 = llvm.getelementptr %38[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %225 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %226 = llvm.add %213, %78 : i64
          %227 = llvm.add %226, %59 : i64
          %228 = llvm.getelementptr %38[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %229 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %230 = llvm.add %213, %83 : i64
          %231 = llvm.add %230, %59 : i64
          %232 = llvm.getelementptr %38[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %233 = llvm.load %232 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %234 = llvm.add %213, %88 : i64
          %235 = llvm.add %234, %59 : i64
          %236 = llvm.getelementptr %38[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %237 = llvm.load %236 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %238 = llvm.add %213, %93 : i64
          %239 = llvm.add %238, %59 : i64
          %240 = llvm.getelementptr %38[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %241 = llvm.load %240 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %242 = llvm.extractelement %217[%8 : i64] : vector<1xf32>
          %243 = llvm.extractelement %221[%8 : i64] : vector<1xf32>
          %244 = llvm.extractelement %225[%8 : i64] : vector<1xf32>
          %245 = llvm.extractelement %229[%8 : i64] : vector<1xf32>
          %246 = llvm.extractelement %233[%8 : i64] : vector<1xf32>
          %247 = llvm.extractelement %237[%8 : i64] : vector<1xf32>
          %248 = llvm.extractelement %241[%8 : i64] : vector<1xf32>
          %249 = llvm.mul %19, %13 : i64
          %250 = llvm.add %249, %63 : i64
          %251 = llvm.add %250, %59 : i64
          %252 = llvm.getelementptr %38[%251] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %253 = llvm.load %252 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %254 = llvm.add %249, %68 : i64
          %255 = llvm.add %254, %59 : i64
          %256 = llvm.getelementptr %38[%255] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %257 = llvm.load %256 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %258 = llvm.add %249, %73 : i64
          %259 = llvm.add %258, %59 : i64
          %260 = llvm.getelementptr %38[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %261 = llvm.load %260 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %262 = llvm.add %249, %78 : i64
          %263 = llvm.add %262, %59 : i64
          %264 = llvm.getelementptr %38[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %265 = llvm.load %264 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %266 = llvm.add %249, %83 : i64
          %267 = llvm.add %266, %59 : i64
          %268 = llvm.getelementptr %38[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %269 = llvm.load %268 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %270 = llvm.add %249, %88 : i64
          %271 = llvm.add %270, %59 : i64
          %272 = llvm.getelementptr %38[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %273 = llvm.load %272 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %274 = llvm.add %249, %93 : i64
          %275 = llvm.add %274, %59 : i64
          %276 = llvm.getelementptr %38[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %277 = llvm.load %276 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %278 = llvm.extractelement %253[%8 : i64] : vector<1xf32>
          %279 = llvm.extractelement %257[%8 : i64] : vector<1xf32>
          %280 = llvm.extractelement %261[%8 : i64] : vector<1xf32>
          %281 = llvm.extractelement %265[%8 : i64] : vector<1xf32>
          %282 = llvm.extractelement %269[%8 : i64] : vector<1xf32>
          %283 = llvm.extractelement %273[%8 : i64] : vector<1xf32>
          %284 = llvm.extractelement %277[%8 : i64] : vector<1xf32>
          %285 = llvm.mul %18, %13 : i64
          %286 = llvm.add %285, %63 : i64
          %287 = llvm.add %286, %59 : i64
          %288 = llvm.getelementptr %38[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %289 = llvm.load %288 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %290 = llvm.add %285, %68 : i64
          %291 = llvm.add %290, %59 : i64
          %292 = llvm.getelementptr %38[%291] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %293 = llvm.load %292 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %294 = llvm.add %285, %73 : i64
          %295 = llvm.add %294, %59 : i64
          %296 = llvm.getelementptr %38[%295] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %297 = llvm.load %296 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %298 = llvm.add %285, %78 : i64
          %299 = llvm.add %298, %59 : i64
          %300 = llvm.getelementptr %38[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %301 = llvm.load %300 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %302 = llvm.add %285, %83 : i64
          %303 = llvm.add %302, %59 : i64
          %304 = llvm.getelementptr %38[%303] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %305 = llvm.load %304 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %306 = llvm.add %285, %88 : i64
          %307 = llvm.add %306, %59 : i64
          %308 = llvm.getelementptr %38[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %309 = llvm.load %308 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %310 = llvm.add %285, %93 : i64
          %311 = llvm.add %310, %59 : i64
          %312 = llvm.getelementptr %38[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %313 = llvm.load %312 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %314 = llvm.extractelement %289[%8 : i64] : vector<1xf32>
          %315 = llvm.extractelement %293[%8 : i64] : vector<1xf32>
          %316 = llvm.extractelement %297[%8 : i64] : vector<1xf32>
          %317 = llvm.extractelement %301[%8 : i64] : vector<1xf32>
          %318 = llvm.extractelement %305[%8 : i64] : vector<1xf32>
          %319 = llvm.extractelement %309[%8 : i64] : vector<1xf32>
          %320 = llvm.extractelement %313[%8 : i64] : vector<1xf32>
          %321 = llvm.extractvalue %60[0] : !llvm.array<7 x vector<7xf32>> 
          %322 = llvm.insertelement %98, %7[%8 : i64] : vector<7xf32>
          %323 = llvm.insertelement %99, %322[%6 : i64] : vector<7xf32>
          %324 = llvm.insertelement %100, %323[%5 : i64] : vector<7xf32>
          %325 = llvm.insertelement %101, %324[%4 : i64] : vector<7xf32>
          %326 = llvm.insertelement %102, %325[%3 : i64] : vector<7xf32>
          %327 = llvm.insertelement %103, %326[%2 : i64] : vector<7xf32>
          %328 = llvm.insertelement %104, %327[%1 : i64] : vector<7xf32>
          %329 = llvm.add %57, %56 : i64
          %330 = llvm.mul %59, %11 overflow<nsw, nuw> : i64
          %331 = llvm.add %330, %329 overflow<nsw, nuw> : i64
          %332 = llvm.getelementptr inbounds|nuw %45[%331] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %333 = llvm.load %332 : !llvm.ptr -> f32
          %334 = llvm.insertelement %333, %7[%0 : i32] : vector<7xf32>
          %335 = llvm.shufflevector %334, %7 [0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %336 = llvm.intr.fmuladd(%328, %335, %321) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %337 = llvm.extractvalue %60[1] : !llvm.array<7 x vector<7xf32>> 
          %338 = llvm.insertelement %134, %7[%8 : i64] : vector<7xf32>
          %339 = llvm.insertelement %135, %338[%6 : i64] : vector<7xf32>
          %340 = llvm.insertelement %136, %339[%5 : i64] : vector<7xf32>
          %341 = llvm.insertelement %137, %340[%4 : i64] : vector<7xf32>
          %342 = llvm.insertelement %138, %341[%3 : i64] : vector<7xf32>
          %343 = llvm.insertelement %139, %342[%2 : i64] : vector<7xf32>
          %344 = llvm.insertelement %140, %343[%1 : i64] : vector<7xf32>
          %345 = llvm.intr.fmuladd(%344, %335, %337) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %346 = llvm.extractvalue %60[2] : !llvm.array<7 x vector<7xf32>> 
          %347 = llvm.insertelement %170, %7[%8 : i64] : vector<7xf32>
          %348 = llvm.insertelement %171, %347[%6 : i64] : vector<7xf32>
          %349 = llvm.insertelement %172, %348[%5 : i64] : vector<7xf32>
          %350 = llvm.insertelement %173, %349[%4 : i64] : vector<7xf32>
          %351 = llvm.insertelement %174, %350[%3 : i64] : vector<7xf32>
          %352 = llvm.insertelement %175, %351[%2 : i64] : vector<7xf32>
          %353 = llvm.insertelement %176, %352[%1 : i64] : vector<7xf32>
          %354 = llvm.intr.fmuladd(%353, %335, %346) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %355 = llvm.extractvalue %60[3] : !llvm.array<7 x vector<7xf32>> 
          %356 = llvm.insertelement %206, %7[%8 : i64] : vector<7xf32>
          %357 = llvm.insertelement %207, %356[%6 : i64] : vector<7xf32>
          %358 = llvm.insertelement %208, %357[%5 : i64] : vector<7xf32>
          %359 = llvm.insertelement %209, %358[%4 : i64] : vector<7xf32>
          %360 = llvm.insertelement %210, %359[%3 : i64] : vector<7xf32>
          %361 = llvm.insertelement %211, %360[%2 : i64] : vector<7xf32>
          %362 = llvm.insertelement %212, %361[%1 : i64] : vector<7xf32>
          %363 = llvm.intr.fmuladd(%362, %335, %355) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %364 = llvm.extractvalue %60[4] : !llvm.array<7 x vector<7xf32>> 
          %365 = llvm.insertelement %242, %7[%8 : i64] : vector<7xf32>
          %366 = llvm.insertelement %243, %365[%6 : i64] : vector<7xf32>
          %367 = llvm.insertelement %244, %366[%5 : i64] : vector<7xf32>
          %368 = llvm.insertelement %245, %367[%4 : i64] : vector<7xf32>
          %369 = llvm.insertelement %246, %368[%3 : i64] : vector<7xf32>
          %370 = llvm.insertelement %247, %369[%2 : i64] : vector<7xf32>
          %371 = llvm.insertelement %248, %370[%1 : i64] : vector<7xf32>
          %372 = llvm.intr.fmuladd(%371, %335, %364) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %373 = llvm.extractvalue %60[5] : !llvm.array<7 x vector<7xf32>> 
          %374 = llvm.insertelement %278, %7[%8 : i64] : vector<7xf32>
          %375 = llvm.insertelement %279, %374[%6 : i64] : vector<7xf32>
          %376 = llvm.insertelement %280, %375[%5 : i64] : vector<7xf32>
          %377 = llvm.insertelement %281, %376[%4 : i64] : vector<7xf32>
          %378 = llvm.insertelement %282, %377[%3 : i64] : vector<7xf32>
          %379 = llvm.insertelement %283, %378[%2 : i64] : vector<7xf32>
          %380 = llvm.insertelement %284, %379[%1 : i64] : vector<7xf32>
          %381 = llvm.intr.fmuladd(%380, %335, %373) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %382 = llvm.extractvalue %60[6] : !llvm.array<7 x vector<7xf32>> 
          %383 = llvm.insertelement %314, %7[%8 : i64] : vector<7xf32>
          %384 = llvm.insertelement %315, %383[%6 : i64] : vector<7xf32>
          %385 = llvm.insertelement %316, %384[%5 : i64] : vector<7xf32>
          %386 = llvm.insertelement %317, %385[%4 : i64] : vector<7xf32>
          %387 = llvm.insertelement %318, %386[%3 : i64] : vector<7xf32>
          %388 = llvm.insertelement %319, %387[%2 : i64] : vector<7xf32>
          %389 = llvm.insertelement %320, %388[%1 : i64] : vector<7xf32>
          %390 = llvm.intr.fmuladd(%389, %335, %382) : (vector<7xf32>, vector<7xf32>, vector<7xf32>) -> vector<7xf32>
          %391 = llvm.insertvalue %336, %16[0] : !llvm.array<7 x vector<7xf32>> 
          %392 = llvm.insertvalue %345, %391[1] : !llvm.array<7 x vector<7xf32>> 
          %393 = llvm.insertvalue %354, %392[2] : !llvm.array<7 x vector<7xf32>> 
          %394 = llvm.insertvalue %363, %393[3] : !llvm.array<7 x vector<7xf32>> 
          %395 = llvm.insertvalue %372, %394[4] : !llvm.array<7 x vector<7xf32>> 
          %396 = llvm.insertvalue %381, %395[5] : !llvm.array<7 x vector<7xf32>> 
          %397 = llvm.insertvalue %390, %396[6] : !llvm.array<7 x vector<7xf32>> 
          %398 = llvm.add %59, %25 : i64
          llvm.br ^bb2(%398, %397 : i64, !llvm.array<7 x vector<7xf32>>)
        ^bb4:  // pred: ^bb2
          %399 = llvm.extractvalue %60[0] : !llvm.array<7 x vector<7xf32>> 
          %400 = llvm.extractvalue %23[0] : !llvm.array<7 x vector<7xf32>> 
          %401 = llvm.fadd %399, %400 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %402 = llvm.extractvalue %60[1] : !llvm.array<7 x vector<7xf32>> 
          %403 = llvm.extractvalue %23[1] : !llvm.array<7 x vector<7xf32>> 
          %404 = llvm.fadd %402, %403 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %405 = llvm.extractvalue %60[2] : !llvm.array<7 x vector<7xf32>> 
          %406 = llvm.extractvalue %23[2] : !llvm.array<7 x vector<7xf32>> 
          %407 = llvm.fadd %405, %406 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %408 = llvm.extractvalue %60[3] : !llvm.array<7 x vector<7xf32>> 
          %409 = llvm.extractvalue %23[3] : !llvm.array<7 x vector<7xf32>> 
          %410 = llvm.fadd %408, %409 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %411 = llvm.extractvalue %60[4] : !llvm.array<7 x vector<7xf32>> 
          %412 = llvm.extractvalue %23[4] : !llvm.array<7 x vector<7xf32>> 
          %413 = llvm.fadd %411, %412 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %414 = llvm.extractvalue %60[5] : !llvm.array<7 x vector<7xf32>> 
          %415 = llvm.extractvalue %23[5] : !llvm.array<7 x vector<7xf32>> 
          %416 = llvm.fadd %414, %415 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %417 = llvm.extractvalue %60[6] : !llvm.array<7 x vector<7xf32>> 
          %418 = llvm.extractvalue %23[6] : !llvm.array<7 x vector<7xf32>> 
          %419 = llvm.fadd %417, %418 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %420 = llvm.add %56, %57 : i64
          %421 = llvm.mul %420, %9 : i64
          %422 = llvm.mul %25, %10 : i64
          %423 = llvm.add %421, %422 : i64
          %424 = llvm.add %423, %25 : i64
          %425 = llvm.getelementptr %52[%424] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %401, %425 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %426 = llvm.mul %22, %10 : i64
          %427 = llvm.add %421, %426 : i64
          %428 = llvm.add %427, %25 : i64
          %429 = llvm.getelementptr %52[%428] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %404, %429 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %430 = llvm.mul %21, %10 : i64
          %431 = llvm.add %421, %430 : i64
          %432 = llvm.add %431, %25 : i64
          %433 = llvm.getelementptr %52[%432] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %407, %433 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %434 = llvm.mul %20, %10 : i64
          %435 = llvm.add %421, %434 : i64
          %436 = llvm.add %435, %25 : i64
          %437 = llvm.getelementptr %52[%436] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %410, %437 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %438 = llvm.mul %19, %10 : i64
          %439 = llvm.add %421, %438 : i64
          %440 = llvm.add %439, %25 : i64
          %441 = llvm.getelementptr %52[%440] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %413, %441 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %442 = llvm.mul %18, %10 : i64
          %443 = llvm.add %421, %442 : i64
          %444 = llvm.add %443, %25 : i64
          %445 = llvm.getelementptr %52[%444] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %416, %445 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %446 = llvm.mul %17, %10 : i64
          %447 = llvm.add %421, %446 : i64
          %448 = llvm.add %447, %25 : i64
          %449 = llvm.getelementptr %52[%448] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %419, %449 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %450 = llvm.add %57, %25 : i64
          llvm.br ^bb1(%450 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c5424896_i32 = arith.constant 5424896 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer = util.global.load immutable @main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_162::@embedded_elf_riscv_64::@main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_162) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_162::@embedded_elf_riscv_64::@main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c5424896_i32]) bindings([
      (%main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_162_embedded_elf_riscv_64_main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
