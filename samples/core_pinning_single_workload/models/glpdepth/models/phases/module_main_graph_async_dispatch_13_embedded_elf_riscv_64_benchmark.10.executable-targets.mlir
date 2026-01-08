#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_13 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_13_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c98 = arith.constant 98 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c98, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_13_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %33 = llvm.mlir.constant(1568 : index) : i64
          %34 = llvm.mlir.constant(64 : index) : i64
          %35 = llvm.mlir.constant(true) : i1
          %36 = llvm.mlir.constant(8 : i64) : i64
          %37 = llvm.mlir.constant(32 : i64) : i64
          %38 = llvm.mlir.constant(31 : index) : i64
          %39 = llvm.mlir.constant(30 : index) : i64
          %40 = llvm.mlir.constant(29 : index) : i64
          %41 = llvm.mlir.constant(28 : index) : i64
          %42 = llvm.mlir.constant(27 : index) : i64
          %43 = llvm.mlir.constant(26 : index) : i64
          %44 = llvm.mlir.constant(25 : index) : i64
          %45 = llvm.mlir.constant(24 : index) : i64
          %46 = llvm.mlir.constant(23 : index) : i64
          %47 = llvm.mlir.constant(22 : index) : i64
          %48 = llvm.mlir.constant(21 : index) : i64
          %49 = llvm.mlir.constant(20 : index) : i64
          %50 = llvm.mlir.constant(19 : index) : i64
          %51 = llvm.mlir.constant(18 : index) : i64
          %52 = llvm.mlir.constant(17 : index) : i64
          %53 = llvm.mlir.constant(16 : index) : i64
          %54 = llvm.mlir.constant(15 : index) : i64
          %55 = llvm.mlir.constant(14 : index) : i64
          %56 = llvm.mlir.constant(13 : index) : i64
          %57 = llvm.mlir.constant(12 : index) : i64
          %58 = llvm.mlir.constant(11 : index) : i64
          %59 = llvm.mlir.constant(10 : index) : i64
          %60 = llvm.mlir.constant(9 : index) : i64
          %61 = llvm.mlir.constant(8 : index) : i64
          %62 = llvm.mlir.constant(7 : index) : i64
          %63 = llvm.mlir.constant(6 : index) : i64
          %64 = llvm.mlir.constant(5 : index) : i64
          %65 = llvm.mlir.constant(4 : index) : i64
          %66 = llvm.mlir.constant(3 : index) : i64
          %67 = llvm.mlir.constant(2 : index) : i64
          %68 = llvm.mlir.constant(32 : index) : i64
          %69 = llvm.mlir.constant(49 : index) : i64
          %70 = llvm.mlir.constant(1 : index) : i64
          %71 = llvm.mlir.constant(0 : index) : i64
          %72 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %73 = llvm.extractvalue %72[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %74 = llvm.load %73 : !llvm.ptr -> i32
          %75 = llvm.getelementptr %73[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %76 = llvm.load %75 : !llvm.ptr -> i32
          %77 = llvm.zext %74 : i32 to i64
          %78 = llvm.zext %76 : i32 to i64
          %79 = llvm.extractvalue %72[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %80 = llvm.load %79 : !llvm.ptr -> !llvm.ptr
          %81 = llvm.mul %77, %36 : i64
          %82 = llvm.udiv %81, %37 : i64
          %83 = llvm.getelementptr %80[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %35 ["align"(%83, %34 : !llvm.ptr, i64)] : i1
          %84 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %85 = llvm.extractvalue %84[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %86 = llvm.getelementptr %85[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %87 = llvm.load %86 : !llvm.ptr -> !llvm.ptr
          %88 = llvm.mul %78, %36 : i64
          %89 = llvm.udiv %88, %37 : i64
          %90 = llvm.getelementptr %87[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %35 ["align"(%90, %34 : !llvm.ptr, i64)] : i1
          %91 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %92 = llvm.extractvalue %91[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %93 = llvm.zext %92 : i32 to i64
          llvm.br ^bb1(%71 : i64)
        ^bb1(%94: i64):  // 2 preds: ^bb0, ^bb2
          %95 = llvm.icmp "slt" %94, %69 : i64
          llvm.cond_br %95, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %96 = llvm.mul %93, %68 overflow<nsw> : i64
          %97 = llvm.mul %96, %69 : i64
          %98 = llvm.add %97, %94 : i64
          %99 = llvm.getelementptr %83[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %101 = llvm.add %96, %70 : i64
          %102 = llvm.mul %101, %69 : i64
          %103 = llvm.add %102, %94 : i64
          %104 = llvm.getelementptr %83[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %106 = llvm.add %96, %67 : i64
          %107 = llvm.mul %106, %69 : i64
          %108 = llvm.add %107, %94 : i64
          %109 = llvm.getelementptr %83[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %111 = llvm.add %96, %66 : i64
          %112 = llvm.mul %111, %69 : i64
          %113 = llvm.add %112, %94 : i64
          %114 = llvm.getelementptr %83[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %116 = llvm.add %96, %65 : i64
          %117 = llvm.mul %116, %69 : i64
          %118 = llvm.add %117, %94 : i64
          %119 = llvm.getelementptr %83[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %121 = llvm.add %96, %64 : i64
          %122 = llvm.mul %121, %69 : i64
          %123 = llvm.add %122, %94 : i64
          %124 = llvm.getelementptr %83[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %126 = llvm.add %96, %63 : i64
          %127 = llvm.mul %126, %69 : i64
          %128 = llvm.add %127, %94 : i64
          %129 = llvm.getelementptr %83[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %131 = llvm.add %96, %62 : i64
          %132 = llvm.mul %131, %69 : i64
          %133 = llvm.add %132, %94 : i64
          %134 = llvm.getelementptr %83[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %136 = llvm.add %96, %61 : i64
          %137 = llvm.mul %136, %69 : i64
          %138 = llvm.add %137, %94 : i64
          %139 = llvm.getelementptr %83[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %140 = llvm.load %139 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %141 = llvm.add %96, %60 : i64
          %142 = llvm.mul %141, %69 : i64
          %143 = llvm.add %142, %94 : i64
          %144 = llvm.getelementptr %83[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %146 = llvm.add %96, %59 : i64
          %147 = llvm.mul %146, %69 : i64
          %148 = llvm.add %147, %94 : i64
          %149 = llvm.getelementptr %83[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %150 = llvm.load %149 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %151 = llvm.add %96, %58 : i64
          %152 = llvm.mul %151, %69 : i64
          %153 = llvm.add %152, %94 : i64
          %154 = llvm.getelementptr %83[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %155 = llvm.load %154 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %156 = llvm.add %96, %57 : i64
          %157 = llvm.mul %156, %69 : i64
          %158 = llvm.add %157, %94 : i64
          %159 = llvm.getelementptr %83[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %160 = llvm.load %159 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %161 = llvm.add %96, %56 : i64
          %162 = llvm.mul %161, %69 : i64
          %163 = llvm.add %162, %94 : i64
          %164 = llvm.getelementptr %83[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %166 = llvm.add %96, %55 : i64
          %167 = llvm.mul %166, %69 : i64
          %168 = llvm.add %167, %94 : i64
          %169 = llvm.getelementptr %83[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %170 = llvm.load %169 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %171 = llvm.add %96, %54 : i64
          %172 = llvm.mul %171, %69 : i64
          %173 = llvm.add %172, %94 : i64
          %174 = llvm.getelementptr %83[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %175 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %176 = llvm.add %96, %53 : i64
          %177 = llvm.mul %176, %69 : i64
          %178 = llvm.add %177, %94 : i64
          %179 = llvm.getelementptr %83[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %180 = llvm.load %179 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %181 = llvm.add %96, %52 : i64
          %182 = llvm.mul %181, %69 : i64
          %183 = llvm.add %182, %94 : i64
          %184 = llvm.getelementptr %83[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %185 = llvm.load %184 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %186 = llvm.add %96, %51 : i64
          %187 = llvm.mul %186, %69 : i64
          %188 = llvm.add %187, %94 : i64
          %189 = llvm.getelementptr %83[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %190 = llvm.load %189 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %191 = llvm.add %96, %50 : i64
          %192 = llvm.mul %191, %69 : i64
          %193 = llvm.add %192, %94 : i64
          %194 = llvm.getelementptr %83[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %195 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %196 = llvm.add %96, %49 : i64
          %197 = llvm.mul %196, %69 : i64
          %198 = llvm.add %197, %94 : i64
          %199 = llvm.getelementptr %83[%198] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %200 = llvm.load %199 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %201 = llvm.add %96, %48 : i64
          %202 = llvm.mul %201, %69 : i64
          %203 = llvm.add %202, %94 : i64
          %204 = llvm.getelementptr %83[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %205 = llvm.load %204 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %206 = llvm.add %96, %47 : i64
          %207 = llvm.mul %206, %69 : i64
          %208 = llvm.add %207, %94 : i64
          %209 = llvm.getelementptr %83[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %210 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %211 = llvm.add %96, %46 : i64
          %212 = llvm.mul %211, %69 : i64
          %213 = llvm.add %212, %94 : i64
          %214 = llvm.getelementptr %83[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %215 = llvm.load %214 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %216 = llvm.add %96, %45 : i64
          %217 = llvm.mul %216, %69 : i64
          %218 = llvm.add %217, %94 : i64
          %219 = llvm.getelementptr %83[%218] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %220 = llvm.load %219 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %221 = llvm.add %96, %44 : i64
          %222 = llvm.mul %221, %69 : i64
          %223 = llvm.add %222, %94 : i64
          %224 = llvm.getelementptr %83[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %225 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %226 = llvm.add %96, %43 : i64
          %227 = llvm.mul %226, %69 : i64
          %228 = llvm.add %227, %94 : i64
          %229 = llvm.getelementptr %83[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %230 = llvm.load %229 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %231 = llvm.add %96, %42 : i64
          %232 = llvm.mul %231, %69 : i64
          %233 = llvm.add %232, %94 : i64
          %234 = llvm.getelementptr %83[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %235 = llvm.load %234 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %236 = llvm.add %96, %41 : i64
          %237 = llvm.mul %236, %69 : i64
          %238 = llvm.add %237, %94 : i64
          %239 = llvm.getelementptr %83[%238] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %241 = llvm.add %96, %40 : i64
          %242 = llvm.mul %241, %69 : i64
          %243 = llvm.add %242, %94 : i64
          %244 = llvm.getelementptr %83[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %245 = llvm.load %244 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %246 = llvm.add %96, %39 : i64
          %247 = llvm.mul %246, %69 : i64
          %248 = llvm.add %247, %94 : i64
          %249 = llvm.getelementptr %83[%248] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %250 = llvm.load %249 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %251 = llvm.add %96, %38 : i64
          %252 = llvm.mul %251, %69 : i64
          %253 = llvm.add %252, %94 : i64
          %254 = llvm.getelementptr %83[%253] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %255 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %256 = llvm.extractelement %100[%32 : i64] : vector<1xf32>
          %257 = llvm.extractelement %105[%32 : i64] : vector<1xf32>
          %258 = llvm.extractelement %110[%32 : i64] : vector<1xf32>
          %259 = llvm.extractelement %115[%32 : i64] : vector<1xf32>
          %260 = llvm.extractelement %120[%32 : i64] : vector<1xf32>
          %261 = llvm.extractelement %125[%32 : i64] : vector<1xf32>
          %262 = llvm.extractelement %130[%32 : i64] : vector<1xf32>
          %263 = llvm.extractelement %135[%32 : i64] : vector<1xf32>
          %264 = llvm.extractelement %140[%32 : i64] : vector<1xf32>
          %265 = llvm.extractelement %145[%32 : i64] : vector<1xf32>
          %266 = llvm.extractelement %150[%32 : i64] : vector<1xf32>
          %267 = llvm.extractelement %155[%32 : i64] : vector<1xf32>
          %268 = llvm.extractelement %160[%32 : i64] : vector<1xf32>
          %269 = llvm.extractelement %165[%32 : i64] : vector<1xf32>
          %270 = llvm.extractelement %170[%32 : i64] : vector<1xf32>
          %271 = llvm.extractelement %175[%32 : i64] : vector<1xf32>
          %272 = llvm.extractelement %180[%32 : i64] : vector<1xf32>
          %273 = llvm.extractelement %185[%32 : i64] : vector<1xf32>
          %274 = llvm.extractelement %190[%32 : i64] : vector<1xf32>
          %275 = llvm.extractelement %195[%32 : i64] : vector<1xf32>
          %276 = llvm.extractelement %200[%32 : i64] : vector<1xf32>
          %277 = llvm.extractelement %205[%32 : i64] : vector<1xf32>
          %278 = llvm.extractelement %210[%32 : i64] : vector<1xf32>
          %279 = llvm.extractelement %215[%32 : i64] : vector<1xf32>
          %280 = llvm.extractelement %220[%32 : i64] : vector<1xf32>
          %281 = llvm.extractelement %225[%32 : i64] : vector<1xf32>
          %282 = llvm.extractelement %230[%32 : i64] : vector<1xf32>
          %283 = llvm.extractelement %235[%32 : i64] : vector<1xf32>
          %284 = llvm.extractelement %240[%32 : i64] : vector<1xf32>
          %285 = llvm.extractelement %245[%32 : i64] : vector<1xf32>
          %286 = llvm.extractelement %250[%32 : i64] : vector<1xf32>
          %287 = llvm.extractelement %255[%32 : i64] : vector<1xf32>
          %288 = llvm.insertelement %256, %31[%32 : i64] : vector<32xf32>
          %289 = llvm.insertelement %257, %288[%30 : i64] : vector<32xf32>
          %290 = llvm.insertelement %258, %289[%29 : i64] : vector<32xf32>
          %291 = llvm.insertelement %259, %290[%28 : i64] : vector<32xf32>
          %292 = llvm.insertelement %260, %291[%27 : i64] : vector<32xf32>
          %293 = llvm.insertelement %261, %292[%26 : i64] : vector<32xf32>
          %294 = llvm.insertelement %262, %293[%25 : i64] : vector<32xf32>
          %295 = llvm.insertelement %263, %294[%24 : i64] : vector<32xf32>
          %296 = llvm.insertelement %264, %295[%36 : i64] : vector<32xf32>
          %297 = llvm.insertelement %265, %296[%23 : i64] : vector<32xf32>
          %298 = llvm.insertelement %266, %297[%22 : i64] : vector<32xf32>
          %299 = llvm.insertelement %267, %298[%21 : i64] : vector<32xf32>
          %300 = llvm.insertelement %268, %299[%20 : i64] : vector<32xf32>
          %301 = llvm.insertelement %269, %300[%19 : i64] : vector<32xf32>
          %302 = llvm.insertelement %270, %301[%18 : i64] : vector<32xf32>
          %303 = llvm.insertelement %271, %302[%17 : i64] : vector<32xf32>
          %304 = llvm.insertelement %272, %303[%16 : i64] : vector<32xf32>
          %305 = llvm.insertelement %273, %304[%15 : i64] : vector<32xf32>
          %306 = llvm.insertelement %274, %305[%14 : i64] : vector<32xf32>
          %307 = llvm.insertelement %275, %306[%13 : i64] : vector<32xf32>
          %308 = llvm.insertelement %276, %307[%12 : i64] : vector<32xf32>
          %309 = llvm.insertelement %277, %308[%11 : i64] : vector<32xf32>
          %310 = llvm.insertelement %278, %309[%10 : i64] : vector<32xf32>
          %311 = llvm.insertelement %279, %310[%9 : i64] : vector<32xf32>
          %312 = llvm.insertelement %280, %311[%8 : i64] : vector<32xf32>
          %313 = llvm.insertelement %281, %312[%7 : i64] : vector<32xf32>
          %314 = llvm.insertelement %282, %313[%6 : i64] : vector<32xf32>
          %315 = llvm.insertelement %283, %314[%5 : i64] : vector<32xf32>
          %316 = llvm.insertelement %284, %315[%4 : i64] : vector<32xf32>
          %317 = llvm.insertelement %285, %316[%3 : i64] : vector<32xf32>
          %318 = llvm.insertelement %286, %317[%2 : i64] : vector<32xf32>
          %319 = llvm.insertelement %287, %318[%1 : i64] : vector<32xf32>
          %320 = llvm.mul %93, %33 : i64
          %321 = llvm.mul %94, %68 : i64
          %322 = llvm.add %320, %321 : i64
          %323 = llvm.add %322, %71 : i64
          %324 = llvm.add %323, %71 : i64
          %325 = llvm.getelementptr %90[%324] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %319, %325 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %326 = llvm.add %94, %70 : i64
          llvm.br ^bb1(%326 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c1034880_i32 = arith.constant 1034880 : i32
    %c420224_i32 = arith.constant 420224 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_13::@embedded_elf_riscv_64::@main_graph$async_dispatch_13_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_13) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_13::@embedded_elf_riscv_64::@main_graph$async_dispatch_13_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1034880_i32, %c420224_i32]) bindings([
      (%main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_13_embedded_elf_riscv_64_main_graph$async_dispatch_13_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
