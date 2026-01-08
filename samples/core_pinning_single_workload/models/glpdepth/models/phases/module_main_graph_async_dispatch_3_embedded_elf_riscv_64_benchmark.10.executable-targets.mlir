#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_3 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_3_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c98 = arith.constant 98 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c98, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_3_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %33 = llvm.mlir.constant(1024 : index) : i64
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
          %69 = llvm.mlir.constant(1 : index) : i64
          %70 = llvm.mlir.constant(0 : index) : i64
          %71 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %72 = llvm.extractvalue %71[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %73 = llvm.load %72 : !llvm.ptr -> i32
          %74 = llvm.getelementptr %72[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %75 = llvm.load %74 : !llvm.ptr -> i32
          %76 = llvm.zext %73 : i32 to i64
          %77 = llvm.zext %75 : i32 to i64
          %78 = llvm.extractvalue %71[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %79 = llvm.load %78 : !llvm.ptr -> !llvm.ptr
          %80 = llvm.mul %76, %36 : i64
          %81 = llvm.udiv %80, %37 : i64
          %82 = llvm.getelementptr %79[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %35 ["align"(%82, %34 : !llvm.ptr, i64)] : i1
          %83 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %84 = llvm.extractvalue %83[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %85 = llvm.getelementptr %84[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %86 = llvm.load %85 : !llvm.ptr -> !llvm.ptr
          %87 = llvm.mul %77, %36 : i64
          %88 = llvm.udiv %87, %37 : i64
          %89 = llvm.getelementptr %86[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %35 ["align"(%89, %34 : !llvm.ptr, i64)] : i1
          %90 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %91 = llvm.extractvalue %90[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %92 = llvm.zext %91 : i32 to i64
          llvm.br ^bb1(%70 : i64)
        ^bb1(%93: i64):  // 2 preds: ^bb0, ^bb2
          %94 = llvm.icmp "slt" %93, %68 : i64
          llvm.cond_br %94, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %95 = llvm.mul %92, %68 overflow<nsw> : i64
          %96 = llvm.mul %95, %68 : i64
          %97 = llvm.add %96, %93 : i64
          %98 = llvm.getelementptr %82[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.load %98 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %100 = llvm.add %95, %69 : i64
          %101 = llvm.mul %100, %68 : i64
          %102 = llvm.add %101, %93 : i64
          %103 = llvm.getelementptr %82[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %105 = llvm.add %95, %67 : i64
          %106 = llvm.mul %105, %68 : i64
          %107 = llvm.add %106, %93 : i64
          %108 = llvm.getelementptr %82[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %110 = llvm.add %95, %66 : i64
          %111 = llvm.mul %110, %68 : i64
          %112 = llvm.add %111, %93 : i64
          %113 = llvm.getelementptr %82[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %115 = llvm.add %95, %65 : i64
          %116 = llvm.mul %115, %68 : i64
          %117 = llvm.add %116, %93 : i64
          %118 = llvm.getelementptr %82[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %120 = llvm.add %95, %64 : i64
          %121 = llvm.mul %120, %68 : i64
          %122 = llvm.add %121, %93 : i64
          %123 = llvm.getelementptr %82[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %125 = llvm.add %95, %63 : i64
          %126 = llvm.mul %125, %68 : i64
          %127 = llvm.add %126, %93 : i64
          %128 = llvm.getelementptr %82[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %130 = llvm.add %95, %62 : i64
          %131 = llvm.mul %130, %68 : i64
          %132 = llvm.add %131, %93 : i64
          %133 = llvm.getelementptr %82[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %135 = llvm.add %95, %61 : i64
          %136 = llvm.mul %135, %68 : i64
          %137 = llvm.add %136, %93 : i64
          %138 = llvm.getelementptr %82[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %139 = llvm.load %138 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %140 = llvm.add %95, %60 : i64
          %141 = llvm.mul %140, %68 : i64
          %142 = llvm.add %141, %93 : i64
          %143 = llvm.getelementptr %82[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %144 = llvm.load %143 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %145 = llvm.add %95, %59 : i64
          %146 = llvm.mul %145, %68 : i64
          %147 = llvm.add %146, %93 : i64
          %148 = llvm.getelementptr %82[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %149 = llvm.load %148 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %150 = llvm.add %95, %58 : i64
          %151 = llvm.mul %150, %68 : i64
          %152 = llvm.add %151, %93 : i64
          %153 = llvm.getelementptr %82[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %154 = llvm.load %153 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %155 = llvm.add %95, %57 : i64
          %156 = llvm.mul %155, %68 : i64
          %157 = llvm.add %156, %93 : i64
          %158 = llvm.getelementptr %82[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %159 = llvm.load %158 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %160 = llvm.add %95, %56 : i64
          %161 = llvm.mul %160, %68 : i64
          %162 = llvm.add %161, %93 : i64
          %163 = llvm.getelementptr %82[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %164 = llvm.load %163 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %165 = llvm.add %95, %55 : i64
          %166 = llvm.mul %165, %68 : i64
          %167 = llvm.add %166, %93 : i64
          %168 = llvm.getelementptr %82[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %169 = llvm.load %168 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %170 = llvm.add %95, %54 : i64
          %171 = llvm.mul %170, %68 : i64
          %172 = llvm.add %171, %93 : i64
          %173 = llvm.getelementptr %82[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %174 = llvm.load %173 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %175 = llvm.add %95, %53 : i64
          %176 = llvm.mul %175, %68 : i64
          %177 = llvm.add %176, %93 : i64
          %178 = llvm.getelementptr %82[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %179 = llvm.load %178 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %180 = llvm.add %95, %52 : i64
          %181 = llvm.mul %180, %68 : i64
          %182 = llvm.add %181, %93 : i64
          %183 = llvm.getelementptr %82[%182] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %184 = llvm.load %183 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %185 = llvm.add %95, %51 : i64
          %186 = llvm.mul %185, %68 : i64
          %187 = llvm.add %186, %93 : i64
          %188 = llvm.getelementptr %82[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %189 = llvm.load %188 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %190 = llvm.add %95, %50 : i64
          %191 = llvm.mul %190, %68 : i64
          %192 = llvm.add %191, %93 : i64
          %193 = llvm.getelementptr %82[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %194 = llvm.load %193 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %195 = llvm.add %95, %49 : i64
          %196 = llvm.mul %195, %68 : i64
          %197 = llvm.add %196, %93 : i64
          %198 = llvm.getelementptr %82[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %199 = llvm.load %198 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %200 = llvm.add %95, %48 : i64
          %201 = llvm.mul %200, %68 : i64
          %202 = llvm.add %201, %93 : i64
          %203 = llvm.getelementptr %82[%202] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %204 = llvm.load %203 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %205 = llvm.add %95, %47 : i64
          %206 = llvm.mul %205, %68 : i64
          %207 = llvm.add %206, %93 : i64
          %208 = llvm.getelementptr %82[%207] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %209 = llvm.load %208 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %210 = llvm.add %95, %46 : i64
          %211 = llvm.mul %210, %68 : i64
          %212 = llvm.add %211, %93 : i64
          %213 = llvm.getelementptr %82[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %214 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %215 = llvm.add %95, %45 : i64
          %216 = llvm.mul %215, %68 : i64
          %217 = llvm.add %216, %93 : i64
          %218 = llvm.getelementptr %82[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %219 = llvm.load %218 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %220 = llvm.add %95, %44 : i64
          %221 = llvm.mul %220, %68 : i64
          %222 = llvm.add %221, %93 : i64
          %223 = llvm.getelementptr %82[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %224 = llvm.load %223 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %225 = llvm.add %95, %43 : i64
          %226 = llvm.mul %225, %68 : i64
          %227 = llvm.add %226, %93 : i64
          %228 = llvm.getelementptr %82[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %229 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %230 = llvm.add %95, %42 : i64
          %231 = llvm.mul %230, %68 : i64
          %232 = llvm.add %231, %93 : i64
          %233 = llvm.getelementptr %82[%232] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %234 = llvm.load %233 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %235 = llvm.add %95, %41 : i64
          %236 = llvm.mul %235, %68 : i64
          %237 = llvm.add %236, %93 : i64
          %238 = llvm.getelementptr %82[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %239 = llvm.load %238 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %240 = llvm.add %95, %40 : i64
          %241 = llvm.mul %240, %68 : i64
          %242 = llvm.add %241, %93 : i64
          %243 = llvm.getelementptr %82[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %244 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %245 = llvm.add %95, %39 : i64
          %246 = llvm.mul %245, %68 : i64
          %247 = llvm.add %246, %93 : i64
          %248 = llvm.getelementptr %82[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %249 = llvm.load %248 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %250 = llvm.add %95, %38 : i64
          %251 = llvm.mul %250, %68 : i64
          %252 = llvm.add %251, %93 : i64
          %253 = llvm.getelementptr %82[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %254 = llvm.load %253 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %255 = llvm.extractelement %99[%32 : i64] : vector<1xf32>
          %256 = llvm.extractelement %104[%32 : i64] : vector<1xf32>
          %257 = llvm.extractelement %109[%32 : i64] : vector<1xf32>
          %258 = llvm.extractelement %114[%32 : i64] : vector<1xf32>
          %259 = llvm.extractelement %119[%32 : i64] : vector<1xf32>
          %260 = llvm.extractelement %124[%32 : i64] : vector<1xf32>
          %261 = llvm.extractelement %129[%32 : i64] : vector<1xf32>
          %262 = llvm.extractelement %134[%32 : i64] : vector<1xf32>
          %263 = llvm.extractelement %139[%32 : i64] : vector<1xf32>
          %264 = llvm.extractelement %144[%32 : i64] : vector<1xf32>
          %265 = llvm.extractelement %149[%32 : i64] : vector<1xf32>
          %266 = llvm.extractelement %154[%32 : i64] : vector<1xf32>
          %267 = llvm.extractelement %159[%32 : i64] : vector<1xf32>
          %268 = llvm.extractelement %164[%32 : i64] : vector<1xf32>
          %269 = llvm.extractelement %169[%32 : i64] : vector<1xf32>
          %270 = llvm.extractelement %174[%32 : i64] : vector<1xf32>
          %271 = llvm.extractelement %179[%32 : i64] : vector<1xf32>
          %272 = llvm.extractelement %184[%32 : i64] : vector<1xf32>
          %273 = llvm.extractelement %189[%32 : i64] : vector<1xf32>
          %274 = llvm.extractelement %194[%32 : i64] : vector<1xf32>
          %275 = llvm.extractelement %199[%32 : i64] : vector<1xf32>
          %276 = llvm.extractelement %204[%32 : i64] : vector<1xf32>
          %277 = llvm.extractelement %209[%32 : i64] : vector<1xf32>
          %278 = llvm.extractelement %214[%32 : i64] : vector<1xf32>
          %279 = llvm.extractelement %219[%32 : i64] : vector<1xf32>
          %280 = llvm.extractelement %224[%32 : i64] : vector<1xf32>
          %281 = llvm.extractelement %229[%32 : i64] : vector<1xf32>
          %282 = llvm.extractelement %234[%32 : i64] : vector<1xf32>
          %283 = llvm.extractelement %239[%32 : i64] : vector<1xf32>
          %284 = llvm.extractelement %244[%32 : i64] : vector<1xf32>
          %285 = llvm.extractelement %249[%32 : i64] : vector<1xf32>
          %286 = llvm.extractelement %254[%32 : i64] : vector<1xf32>
          %287 = llvm.insertelement %255, %31[%32 : i64] : vector<32xf32>
          %288 = llvm.insertelement %256, %287[%30 : i64] : vector<32xf32>
          %289 = llvm.insertelement %257, %288[%29 : i64] : vector<32xf32>
          %290 = llvm.insertelement %258, %289[%28 : i64] : vector<32xf32>
          %291 = llvm.insertelement %259, %290[%27 : i64] : vector<32xf32>
          %292 = llvm.insertelement %260, %291[%26 : i64] : vector<32xf32>
          %293 = llvm.insertelement %261, %292[%25 : i64] : vector<32xf32>
          %294 = llvm.insertelement %262, %293[%24 : i64] : vector<32xf32>
          %295 = llvm.insertelement %263, %294[%36 : i64] : vector<32xf32>
          %296 = llvm.insertelement %264, %295[%23 : i64] : vector<32xf32>
          %297 = llvm.insertelement %265, %296[%22 : i64] : vector<32xf32>
          %298 = llvm.insertelement %266, %297[%21 : i64] : vector<32xf32>
          %299 = llvm.insertelement %267, %298[%20 : i64] : vector<32xf32>
          %300 = llvm.insertelement %268, %299[%19 : i64] : vector<32xf32>
          %301 = llvm.insertelement %269, %300[%18 : i64] : vector<32xf32>
          %302 = llvm.insertelement %270, %301[%17 : i64] : vector<32xf32>
          %303 = llvm.insertelement %271, %302[%16 : i64] : vector<32xf32>
          %304 = llvm.insertelement %272, %303[%15 : i64] : vector<32xf32>
          %305 = llvm.insertelement %273, %304[%14 : i64] : vector<32xf32>
          %306 = llvm.insertelement %274, %305[%13 : i64] : vector<32xf32>
          %307 = llvm.insertelement %275, %306[%12 : i64] : vector<32xf32>
          %308 = llvm.insertelement %276, %307[%11 : i64] : vector<32xf32>
          %309 = llvm.insertelement %277, %308[%10 : i64] : vector<32xf32>
          %310 = llvm.insertelement %278, %309[%9 : i64] : vector<32xf32>
          %311 = llvm.insertelement %279, %310[%8 : i64] : vector<32xf32>
          %312 = llvm.insertelement %280, %311[%7 : i64] : vector<32xf32>
          %313 = llvm.insertelement %281, %312[%6 : i64] : vector<32xf32>
          %314 = llvm.insertelement %282, %313[%5 : i64] : vector<32xf32>
          %315 = llvm.insertelement %283, %314[%4 : i64] : vector<32xf32>
          %316 = llvm.insertelement %284, %315[%3 : i64] : vector<32xf32>
          %317 = llvm.insertelement %285, %316[%2 : i64] : vector<32xf32>
          %318 = llvm.insertelement %286, %317[%1 : i64] : vector<32xf32>
          %319 = llvm.mul %92, %33 : i64
          %320 = llvm.mul %93, %68 : i64
          %321 = llvm.add %319, %320 : i64
          %322 = llvm.add %321, %70 : i64
          %323 = llvm.add %322, %70 : i64
          %324 = llvm.getelementptr %89[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %318, %324 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %325 = llvm.add %93, %69 : i64
          llvm.br ^bb1(%325 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c802816_i32 = arith.constant 802816 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_3::@embedded_elf_riscv_64::@main_graph$async_dispatch_3_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_3) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_3::@embedded_elf_riscv_64::@main_graph$async_dispatch_3_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c802816_i32]) bindings([
      (%main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_3_embedded_elf_riscv_64_main_graph$async_dispatch_3_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
