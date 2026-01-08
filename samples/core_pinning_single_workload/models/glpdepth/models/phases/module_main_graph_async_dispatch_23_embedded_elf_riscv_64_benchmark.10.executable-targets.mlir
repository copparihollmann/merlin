#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_23 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_23_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c196 = arith.constant 196 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c196, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_23_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(31 : i64) : i64
          %2 = llvm.mlir.constant(30 : i64) : i64
          %3 = llvm.mlir.constant(29 : i64) : i64
          %4 = llvm.mlir.constant(28 : i64) : i64
          %5 = llvm.mlir.constant(27 : i64) : i64
          %6 = llvm.mlir.constant(26 : i64) : i64
          %7 = llvm.mlir.constant(25 : i64) : i64
          %8 = llvm.mlir.constant(24 : i64) : i64
          %9 = llvm.mlir.constant(23 : i64) : i64
          %10 = llvm.mlir.constant(22 : i64) : i64
          %11 = llvm.mlir.constant(21 : i64) : i64
          %12 = llvm.mlir.constant(20 : i64) : i64
          %13 = llvm.mlir.constant(19 : i64) : i64
          %14 = llvm.mlir.constant(18 : i64) : i64
          %15 = llvm.mlir.constant(17 : i64) : i64
          %16 = llvm.mlir.constant(16 : i64) : i64
          %17 = llvm.mlir.constant(15 : i64) : i64
          %18 = llvm.mlir.constant(14 : i64) : i64
          %19 = llvm.mlir.constant(13 : i64) : i64
          %20 = llvm.mlir.constant(12 : i64) : i64
          %21 = llvm.mlir.constant(11 : i64) : i64
          %22 = llvm.mlir.constant(10 : i64) : i64
          %23 = llvm.mlir.constant(9 : i64) : i64
          %24 = llvm.mlir.constant(7 : i64) : i64
          %25 = llvm.mlir.constant(6 : i64) : i64
          %26 = llvm.mlir.constant(5 : i64) : i64
          %27 = llvm.mlir.constant(4 : i64) : i64
          %28 = llvm.mlir.constant(3 : i64) : i64
          %29 = llvm.mlir.constant(2 : i64) : i64
          %30 = llvm.mlir.constant(1 : i64) : i64
          %31 = llvm.mlir.poison : vector<32xf32>
          %32 = llvm.mlir.constant(0 : i64) : i64
          %33 = llvm.mlir.constant(4096 : index) : i64
          %34 = llvm.mlir.constant(true) : i1
          %35 = llvm.mlir.constant(128 : index) : i64
          %36 = llvm.mlir.constant(8 : i64) : i64
          %37 = llvm.mlir.constant(32 : i64) : i64
          %38 = llvm.mlir.constant(-1 : index) : i64
          %39 = llvm.mlir.constant(31 : index) : i64
          %40 = llvm.mlir.constant(30 : index) : i64
          %41 = llvm.mlir.constant(29 : index) : i64
          %42 = llvm.mlir.constant(28 : index) : i64
          %43 = llvm.mlir.constant(27 : index) : i64
          %44 = llvm.mlir.constant(26 : index) : i64
          %45 = llvm.mlir.constant(25 : index) : i64
          %46 = llvm.mlir.constant(24 : index) : i64
          %47 = llvm.mlir.constant(23 : index) : i64
          %48 = llvm.mlir.constant(22 : index) : i64
          %49 = llvm.mlir.constant(21 : index) : i64
          %50 = llvm.mlir.constant(20 : index) : i64
          %51 = llvm.mlir.constant(19 : index) : i64
          %52 = llvm.mlir.constant(18 : index) : i64
          %53 = llvm.mlir.constant(17 : index) : i64
          %54 = llvm.mlir.constant(16 : index) : i64
          %55 = llvm.mlir.constant(15 : index) : i64
          %56 = llvm.mlir.constant(14 : index) : i64
          %57 = llvm.mlir.constant(13 : index) : i64
          %58 = llvm.mlir.constant(12 : index) : i64
          %59 = llvm.mlir.constant(11 : index) : i64
          %60 = llvm.mlir.constant(10 : index) : i64
          %61 = llvm.mlir.constant(9 : index) : i64
          %62 = llvm.mlir.constant(8 : index) : i64
          %63 = llvm.mlir.constant(7 : index) : i64
          %64 = llvm.mlir.constant(6 : index) : i64
          %65 = llvm.mlir.constant(5 : index) : i64
          %66 = llvm.mlir.constant(4 : index) : i64
          %67 = llvm.mlir.constant(3 : index) : i64
          %68 = llvm.mlir.constant(32 : index) : i64
          %69 = llvm.mlir.constant(2 : index) : i64
          %70 = llvm.mlir.constant(64 : index) : i64
          %71 = llvm.mlir.constant(1 : index) : i64
          %72 = llvm.mlir.constant(0 : index) : i64
          %73 = llvm.mlir.constant(3328000 : index) : i64
          %74 = llvm.mlir.constant(1204224 : index) : i64
          %75 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %76 = llvm.extractvalue %75[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %77 = llvm.load %76 : !llvm.ptr -> !llvm.ptr
          %78 = llvm.mul %73, %36 : i64
          %79 = llvm.udiv %78, %37 : i64
          %80 = llvm.getelementptr %77[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %34 ["align"(%80, %70 : !llvm.ptr, i64)] : i1
          %81 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %82 = llvm.extractvalue %81[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %83 = llvm.getelementptr %82[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %84 = llvm.load %83 : !llvm.ptr -> !llvm.ptr
          %85 = llvm.mul %74, %36 : i64
          %86 = llvm.udiv %85, %37 : i64
          %87 = llvm.getelementptr %84[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %34 ["align"(%87, %70 : !llvm.ptr, i64)] : i1
          %88 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %89 = llvm.extractvalue %88[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %90 = llvm.zext %89 : i32 to i64
          %91 = llvm.sdiv %90, %69 : i64
          %92 = llvm.mul %91, %69 : i64
          %93 = llvm.icmp "ne" %90, %92 : i64
          %94 = llvm.icmp "slt" %90, %72 : i64
          %95 = llvm.and %93, %94 : i1
          %96 = llvm.add %91, %38 : i64
          %97 = llvm.select %95, %96, %91 : i1, i64
          %98 = llvm.srem %90, %69 : i64
          %99 = llvm.icmp "slt" %98, %72 : i64
          %100 = llvm.add %98, %69 overflow<nsw> : i64
          %101 = llvm.select %99, %100, %98 : i1, i64
          %102 = llvm.mul %101, %70 overflow<nsw> : i64
          llvm.br ^bb1(%72 : i64)
        ^bb1(%103: i64):  // 2 preds: ^bb0, ^bb2
          %104 = llvm.icmp "slt" %103, %70 : i64
          llvm.cond_br %104, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %105 = llvm.add %103, %102 : i64
          %106 = llvm.mul %97, %68 overflow<nsw> : i64
          %107 = llvm.mul %106, %35 : i64
          %108 = llvm.add %107, %105 : i64
          %109 = llvm.getelementptr %80[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %111 = llvm.add %106, %71 : i64
          %112 = llvm.mul %111, %35 : i64
          %113 = llvm.add %112, %105 : i64
          %114 = llvm.getelementptr %80[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %116 = llvm.add %106, %69 : i64
          %117 = llvm.mul %116, %35 : i64
          %118 = llvm.add %117, %105 : i64
          %119 = llvm.getelementptr %80[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %121 = llvm.add %106, %67 : i64
          %122 = llvm.mul %121, %35 : i64
          %123 = llvm.add %122, %105 : i64
          %124 = llvm.getelementptr %80[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %126 = llvm.add %106, %66 : i64
          %127 = llvm.mul %126, %35 : i64
          %128 = llvm.add %127, %105 : i64
          %129 = llvm.getelementptr %80[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %131 = llvm.add %106, %65 : i64
          %132 = llvm.mul %131, %35 : i64
          %133 = llvm.add %132, %105 : i64
          %134 = llvm.getelementptr %80[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %136 = llvm.add %106, %64 : i64
          %137 = llvm.mul %136, %35 : i64
          %138 = llvm.add %137, %105 : i64
          %139 = llvm.getelementptr %80[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %140 = llvm.load %139 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %141 = llvm.add %106, %63 : i64
          %142 = llvm.mul %141, %35 : i64
          %143 = llvm.add %142, %105 : i64
          %144 = llvm.getelementptr %80[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %146 = llvm.add %106, %62 : i64
          %147 = llvm.mul %146, %35 : i64
          %148 = llvm.add %147, %105 : i64
          %149 = llvm.getelementptr %80[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %150 = llvm.load %149 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %151 = llvm.add %106, %61 : i64
          %152 = llvm.mul %151, %35 : i64
          %153 = llvm.add %152, %105 : i64
          %154 = llvm.getelementptr %80[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %155 = llvm.load %154 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %156 = llvm.add %106, %60 : i64
          %157 = llvm.mul %156, %35 : i64
          %158 = llvm.add %157, %105 : i64
          %159 = llvm.getelementptr %80[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %160 = llvm.load %159 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %161 = llvm.add %106, %59 : i64
          %162 = llvm.mul %161, %35 : i64
          %163 = llvm.add %162, %105 : i64
          %164 = llvm.getelementptr %80[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %166 = llvm.add %106, %58 : i64
          %167 = llvm.mul %166, %35 : i64
          %168 = llvm.add %167, %105 : i64
          %169 = llvm.getelementptr %80[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %170 = llvm.load %169 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %171 = llvm.add %106, %57 : i64
          %172 = llvm.mul %171, %35 : i64
          %173 = llvm.add %172, %105 : i64
          %174 = llvm.getelementptr %80[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %175 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %176 = llvm.add %106, %56 : i64
          %177 = llvm.mul %176, %35 : i64
          %178 = llvm.add %177, %105 : i64
          %179 = llvm.getelementptr %80[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %180 = llvm.load %179 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %181 = llvm.add %106, %55 : i64
          %182 = llvm.mul %181, %35 : i64
          %183 = llvm.add %182, %105 : i64
          %184 = llvm.getelementptr %80[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %185 = llvm.load %184 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %186 = llvm.add %106, %54 : i64
          %187 = llvm.mul %186, %35 : i64
          %188 = llvm.add %187, %105 : i64
          %189 = llvm.getelementptr %80[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %190 = llvm.load %189 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %191 = llvm.add %106, %53 : i64
          %192 = llvm.mul %191, %35 : i64
          %193 = llvm.add %192, %105 : i64
          %194 = llvm.getelementptr %80[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %195 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %196 = llvm.add %106, %52 : i64
          %197 = llvm.mul %196, %35 : i64
          %198 = llvm.add %197, %105 : i64
          %199 = llvm.getelementptr %80[%198] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %200 = llvm.load %199 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %201 = llvm.add %106, %51 : i64
          %202 = llvm.mul %201, %35 : i64
          %203 = llvm.add %202, %105 : i64
          %204 = llvm.getelementptr %80[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %205 = llvm.load %204 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %206 = llvm.add %106, %50 : i64
          %207 = llvm.mul %206, %35 : i64
          %208 = llvm.add %207, %105 : i64
          %209 = llvm.getelementptr %80[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %210 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %211 = llvm.add %106, %49 : i64
          %212 = llvm.mul %211, %35 : i64
          %213 = llvm.add %212, %105 : i64
          %214 = llvm.getelementptr %80[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %215 = llvm.load %214 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %216 = llvm.add %106, %48 : i64
          %217 = llvm.mul %216, %35 : i64
          %218 = llvm.add %217, %105 : i64
          %219 = llvm.getelementptr %80[%218] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %220 = llvm.load %219 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %221 = llvm.add %106, %47 : i64
          %222 = llvm.mul %221, %35 : i64
          %223 = llvm.add %222, %105 : i64
          %224 = llvm.getelementptr %80[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %225 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %226 = llvm.add %106, %46 : i64
          %227 = llvm.mul %226, %35 : i64
          %228 = llvm.add %227, %105 : i64
          %229 = llvm.getelementptr %80[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %230 = llvm.load %229 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %231 = llvm.add %106, %45 : i64
          %232 = llvm.mul %231, %35 : i64
          %233 = llvm.add %232, %105 : i64
          %234 = llvm.getelementptr %80[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %235 = llvm.load %234 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %236 = llvm.add %106, %44 : i64
          %237 = llvm.mul %236, %35 : i64
          %238 = llvm.add %237, %105 : i64
          %239 = llvm.getelementptr %80[%238] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %241 = llvm.add %106, %43 : i64
          %242 = llvm.mul %241, %35 : i64
          %243 = llvm.add %242, %105 : i64
          %244 = llvm.getelementptr %80[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %245 = llvm.load %244 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %246 = llvm.add %106, %42 : i64
          %247 = llvm.mul %246, %35 : i64
          %248 = llvm.add %247, %105 : i64
          %249 = llvm.getelementptr %80[%248] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %250 = llvm.load %249 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %251 = llvm.add %106, %41 : i64
          %252 = llvm.mul %251, %35 : i64
          %253 = llvm.add %252, %105 : i64
          %254 = llvm.getelementptr %80[%253] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %255 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %256 = llvm.add %106, %40 : i64
          %257 = llvm.mul %256, %35 : i64
          %258 = llvm.add %257, %105 : i64
          %259 = llvm.getelementptr %80[%258] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %260 = llvm.load %259 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %261 = llvm.add %106, %39 : i64
          %262 = llvm.mul %261, %35 : i64
          %263 = llvm.add %262, %105 : i64
          %264 = llvm.getelementptr %80[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %265 = llvm.load %264 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %266 = llvm.extractelement %110[%32 : i64] : vector<1xf32>
          %267 = llvm.extractelement %115[%32 : i64] : vector<1xf32>
          %268 = llvm.extractelement %120[%32 : i64] : vector<1xf32>
          %269 = llvm.extractelement %125[%32 : i64] : vector<1xf32>
          %270 = llvm.extractelement %130[%32 : i64] : vector<1xf32>
          %271 = llvm.extractelement %135[%32 : i64] : vector<1xf32>
          %272 = llvm.extractelement %140[%32 : i64] : vector<1xf32>
          %273 = llvm.extractelement %145[%32 : i64] : vector<1xf32>
          %274 = llvm.extractelement %150[%32 : i64] : vector<1xf32>
          %275 = llvm.extractelement %155[%32 : i64] : vector<1xf32>
          %276 = llvm.extractelement %160[%32 : i64] : vector<1xf32>
          %277 = llvm.extractelement %165[%32 : i64] : vector<1xf32>
          %278 = llvm.extractelement %170[%32 : i64] : vector<1xf32>
          %279 = llvm.extractelement %175[%32 : i64] : vector<1xf32>
          %280 = llvm.extractelement %180[%32 : i64] : vector<1xf32>
          %281 = llvm.extractelement %185[%32 : i64] : vector<1xf32>
          %282 = llvm.extractelement %190[%32 : i64] : vector<1xf32>
          %283 = llvm.extractelement %195[%32 : i64] : vector<1xf32>
          %284 = llvm.extractelement %200[%32 : i64] : vector<1xf32>
          %285 = llvm.extractelement %205[%32 : i64] : vector<1xf32>
          %286 = llvm.extractelement %210[%32 : i64] : vector<1xf32>
          %287 = llvm.extractelement %215[%32 : i64] : vector<1xf32>
          %288 = llvm.extractelement %220[%32 : i64] : vector<1xf32>
          %289 = llvm.extractelement %225[%32 : i64] : vector<1xf32>
          %290 = llvm.extractelement %230[%32 : i64] : vector<1xf32>
          %291 = llvm.extractelement %235[%32 : i64] : vector<1xf32>
          %292 = llvm.extractelement %240[%32 : i64] : vector<1xf32>
          %293 = llvm.extractelement %245[%32 : i64] : vector<1xf32>
          %294 = llvm.extractelement %250[%32 : i64] : vector<1xf32>
          %295 = llvm.extractelement %255[%32 : i64] : vector<1xf32>
          %296 = llvm.extractelement %260[%32 : i64] : vector<1xf32>
          %297 = llvm.extractelement %265[%32 : i64] : vector<1xf32>
          %298 = llvm.insertelement %266, %31[%32 : i64] : vector<32xf32>
          %299 = llvm.insertelement %267, %298[%30 : i64] : vector<32xf32>
          %300 = llvm.insertelement %268, %299[%29 : i64] : vector<32xf32>
          %301 = llvm.insertelement %269, %300[%28 : i64] : vector<32xf32>
          %302 = llvm.insertelement %270, %301[%27 : i64] : vector<32xf32>
          %303 = llvm.insertelement %271, %302[%26 : i64] : vector<32xf32>
          %304 = llvm.insertelement %272, %303[%25 : i64] : vector<32xf32>
          %305 = llvm.insertelement %273, %304[%24 : i64] : vector<32xf32>
          %306 = llvm.insertelement %274, %305[%36 : i64] : vector<32xf32>
          %307 = llvm.insertelement %275, %306[%23 : i64] : vector<32xf32>
          %308 = llvm.insertelement %276, %307[%22 : i64] : vector<32xf32>
          %309 = llvm.insertelement %277, %308[%21 : i64] : vector<32xf32>
          %310 = llvm.insertelement %278, %309[%20 : i64] : vector<32xf32>
          %311 = llvm.insertelement %279, %310[%19 : i64] : vector<32xf32>
          %312 = llvm.insertelement %280, %311[%18 : i64] : vector<32xf32>
          %313 = llvm.insertelement %281, %312[%17 : i64] : vector<32xf32>
          %314 = llvm.insertelement %282, %313[%16 : i64] : vector<32xf32>
          %315 = llvm.insertelement %283, %314[%15 : i64] : vector<32xf32>
          %316 = llvm.insertelement %284, %315[%14 : i64] : vector<32xf32>
          %317 = llvm.insertelement %285, %316[%13 : i64] : vector<32xf32>
          %318 = llvm.insertelement %286, %317[%12 : i64] : vector<32xf32>
          %319 = llvm.insertelement %287, %318[%11 : i64] : vector<32xf32>
          %320 = llvm.insertelement %288, %319[%10 : i64] : vector<32xf32>
          %321 = llvm.insertelement %289, %320[%9 : i64] : vector<32xf32>
          %322 = llvm.insertelement %290, %321[%8 : i64] : vector<32xf32>
          %323 = llvm.insertelement %291, %322[%7 : i64] : vector<32xf32>
          %324 = llvm.insertelement %292, %323[%6 : i64] : vector<32xf32>
          %325 = llvm.insertelement %293, %324[%5 : i64] : vector<32xf32>
          %326 = llvm.insertelement %294, %325[%4 : i64] : vector<32xf32>
          %327 = llvm.insertelement %295, %326[%3 : i64] : vector<32xf32>
          %328 = llvm.insertelement %296, %327[%2 : i64] : vector<32xf32>
          %329 = llvm.insertelement %297, %328[%1 : i64] : vector<32xf32>
          %330 = llvm.mul %97, %33 : i64
          %331 = llvm.mul %105, %68 : i64
          %332 = llvm.add %330, %331 : i64
          %333 = llvm.add %332, %72 : i64
          %334 = llvm.add %333, %72 : i64
          %335 = llvm.getelementptr %87[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %329, %335 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %336 = llvm.add %103, %71 : i64
          llvm.br ^bb1(%336 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_23::@embedded_elf_riscv_64::@main_graph$async_dispatch_23_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_23) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_23::@embedded_elf_riscv_64::@main_graph$async_dispatch_23_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_23_embedded_elf_riscv_64_main_graph$async_dispatch_23_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
