#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_150 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c2, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(31 : i64) : i64
          %1 = llvm.mlir.constant(30 : i64) : i64
          %2 = llvm.mlir.constant(29 : i64) : i64
          %3 = llvm.mlir.constant(28 : i64) : i64
          %4 = llvm.mlir.constant(27 : i64) : i64
          %5 = llvm.mlir.constant(26 : i64) : i64
          %6 = llvm.mlir.constant(25 : i64) : i64
          %7 = llvm.mlir.constant(24 : i64) : i64
          %8 = llvm.mlir.constant(23 : i64) : i64
          %9 = llvm.mlir.constant(22 : i64) : i64
          %10 = llvm.mlir.constant(21 : i64) : i64
          %11 = llvm.mlir.constant(20 : i64) : i64
          %12 = llvm.mlir.constant(19 : i64) : i64
          %13 = llvm.mlir.constant(18 : i64) : i64
          %14 = llvm.mlir.constant(17 : i64) : i64
          %15 = llvm.mlir.constant(16 : i64) : i64
          %16 = llvm.mlir.constant(15 : i64) : i64
          %17 = llvm.mlir.constant(14 : i64) : i64
          %18 = llvm.mlir.constant(13 : i64) : i64
          %19 = llvm.mlir.constant(12 : i64) : i64
          %20 = llvm.mlir.constant(11 : i64) : i64
          %21 = llvm.mlir.constant(10 : i64) : i64
          %22 = llvm.mlir.constant(9 : i64) : i64
          %23 = llvm.mlir.constant(7 : i64) : i64
          %24 = llvm.mlir.constant(6 : i64) : i64
          %25 = llvm.mlir.constant(5 : i64) : i64
          %26 = llvm.mlir.constant(4 : i64) : i64
          %27 = llvm.mlir.constant(3 : i64) : i64
          %28 = llvm.mlir.constant(2 : i64) : i64
          %29 = llvm.mlir.constant(1 : i64) : i64
          %30 = llvm.mlir.constant(0 : i64) : i64
          %31 = llvm.mlir.poison : vector<32xi32>
          %32 = llvm.mlir.constant(0 : i32) : i32
          %33 = llvm.mlir.poison : vector<32xi64>
          %34 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xindex>) : vector<32xi64>
          %35 = llvm.mlir.constant(2048 : index) : i64
          %36 = llvm.mlir.constant(1024 : index) : i64
          %37 = llvm.mlir.constant(64 : index) : i64
          %38 = llvm.mlir.constant(true) : i1
          %39 = llvm.mlir.constant(12544 : index) : i64
          %40 = llvm.mlir.constant(1568 : index) : i64
          %41 = llvm.mlir.constant(8 : i64) : i64
          %42 = llvm.mlir.constant(32 : i64) : i64
          %43 = llvm.mlir.poison : !llvm.array<32 x vector<1xf32>>
          %44 = llvm.mlir.constant(dense<false> : vector<1x32x1xi1>) : !llvm.array<1 x array<32 x vector<1xi1>>>
          %45 = llvm.mlir.constant(dense<true> : vector<1x32x1xi1>) : !llvm.array<1 x array<32 x vector<1xi1>>>
          %46 = llvm.mlir.constant(31 : index) : i64
          %47 = llvm.mlir.constant(30 : index) : i64
          %48 = llvm.mlir.constant(29 : index) : i64
          %49 = llvm.mlir.constant(28 : index) : i64
          %50 = llvm.mlir.constant(27 : index) : i64
          %51 = llvm.mlir.constant(26 : index) : i64
          %52 = llvm.mlir.constant(25 : index) : i64
          %53 = llvm.mlir.constant(24 : index) : i64
          %54 = llvm.mlir.constant(23 : index) : i64
          %55 = llvm.mlir.constant(22 : index) : i64
          %56 = llvm.mlir.constant(21 : index) : i64
          %57 = llvm.mlir.constant(20 : index) : i64
          %58 = llvm.mlir.constant(19 : index) : i64
          %59 = llvm.mlir.constant(18 : index) : i64
          %60 = llvm.mlir.constant(17 : index) : i64
          %61 = llvm.mlir.constant(15 : index) : i64
          %62 = llvm.mlir.constant(14 : index) : i64
          %63 = llvm.mlir.constant(13 : index) : i64
          %64 = llvm.mlir.constant(12 : index) : i64
          %65 = llvm.mlir.constant(11 : index) : i64
          %66 = llvm.mlir.constant(10 : index) : i64
          %67 = llvm.mlir.constant(9 : index) : i64
          %68 = llvm.mlir.constant(7 : index) : i64
          %69 = llvm.mlir.constant(6 : index) : i64
          %70 = llvm.mlir.constant(5 : index) : i64
          %71 = llvm.mlir.constant(4 : index) : i64
          %72 = llvm.mlir.constant(3 : index) : i64
          %73 = llvm.mlir.constant(2 : index) : i64
          %74 = llvm.mlir.constant(-1 : index) : i64
          %75 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %76 = llvm.mlir.constant(dense<0.000000e+00> : vector<32xf32>) : vector<32xf32>
          %77 = llvm.mlir.constant(dense<32> : vector<32xindex>) : vector<32xi64>
          %78 = llvm.mlir.constant(1003520 : index) : i64
          %79 = llvm.mlir.constant(0 : index) : i64
          %80 = llvm.mlir.constant(8 : index) : i64
          %81 = llvm.mlir.constant(16 : index) : i64
          %82 = llvm.mlir.constant(49 : index) : i64
          %83 = llvm.mlir.constant(1 : index) : i64
          %84 = llvm.mlir.constant(32 : index) : i64
          %85 = llvm.alloca %84 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %86 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %87 = llvm.extractvalue %86[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %88 = llvm.load %87 : !llvm.ptr -> i32
          %89 = llvm.zext %88 : i32 to i64
          %90 = llvm.extractvalue %86[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %91 = llvm.load %90 : !llvm.ptr -> !llvm.ptr
          %92 = llvm.mul %89, %41 : i64
          %93 = llvm.udiv %92, %42 : i64
          %94 = llvm.getelementptr %91[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %38 ["align"(%94, %37 : !llvm.ptr, i64)] : i1
          %95 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %96 = llvm.extractvalue %95[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %97 = llvm.getelementptr %96[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %98 = llvm.load %97 : !llvm.ptr -> !llvm.ptr
          %99 = llvm.mul %78, %41 : i64
          %100 = llvm.udiv %99, %42 : i64
          %101 = llvm.getelementptr %98[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %38 ["align"(%101, %37 : !llvm.ptr, i64)] : i1
          %102 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %103 = llvm.extractvalue %102[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %104 = llvm.zext %103 : i32 to i64
          %105 = llvm.mul %104, %81 overflow<nsw> : i64
          llvm.br ^bb1(%79 : i64)
        ^bb1(%106: i64):  // 2 preds: ^bb0, ^bb8
          %107 = llvm.icmp "slt" %106, %80 : i64
          llvm.cond_br %107, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          %108 = llvm.mul %106, %82 : i64
          llvm.br ^bb3(%79 : i64)
        ^bb3(%109: i64):  // 2 preds: ^bb2, ^bb7
          %110 = llvm.icmp "slt" %109, %81 : i64
          llvm.cond_br %110, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          %111 = llvm.add %105, %109 : i64
          llvm.br ^bb5(%79 : i64)
        ^bb5(%112: i64):  // 2 preds: ^bb4, ^bb6
          %113 = llvm.icmp "slt" %112, %82 : i64
          llvm.cond_br %113, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %114 = llvm.sub %82, %112 : i64
          %115 = llvm.icmp "slt" %114, %84 : i64
          %116 = llvm.select %115, %114, %84 : i1, i64
          %117 = llvm.insertelement %112, %33[%32 : i32] : vector<32xi64>
          %118 = llvm.shufflevector %117, %33 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi64> 
          %119 = llvm.add %118, %34 : vector<32xi64>
          %120 = llvm.insertelement %108, %33[%32 : i32] : vector<32xi64>
          %121 = llvm.shufflevector %120, %33 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi64> 
          %122 = llvm.add %119, %121 : vector<32xi64>
          %123 = llvm.mul %122, %77 : vector<32xi64>
          %124 = llvm.insertelement %111, %33[%32 : i32] : vector<32xi64>
          %125 = llvm.shufflevector %124, %33 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi64> 
          %126 = llvm.add %125, %123 : vector<32xi64>
          %127 = llvm.trunc %116 : i64 to i32
          %128 = llvm.insertelement %127, %31[%32 : i32] : vector<32xi32>
          %129 = llvm.shufflevector %128, %31 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %130 = llvm.icmp "sgt" %129, %75 : vector<32xi32>
          %131 = llvm.mul %79, %39 : i64
          %132 = llvm.add %131, %131 : i64
          %133 = llvm.mul %79, %40 : i64
          %134 = llvm.add %132, %133 : i64
          %135 = llvm.mul %79, %84 : i64
          %136 = llvm.add %134, %135 : i64
          %137 = llvm.add %136, %79 : i64
          %138 = llvm.getelementptr %94[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %139 = llvm.getelementptr %138[%126] : (!llvm.ptr, vector<32xi64>) -> vector<32x!llvm.ptr>, f32
          %140 = llvm.intr.masked.gather %139, %130, %76 {alignment = 4 : i32} : (vector<32x!llvm.ptr>, vector<32xi1>, vector<32xf32>) -> vector<32xf32>
          %141 = llvm.add %135, %135 : i64
          %142 = llvm.add %141, %79 : i64
          %143 = llvm.getelementptr %85[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %140, %143, %130 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %144 = llvm.icmp "slt" %112, %79 : i64
          %145 = llvm.sub %74, %112 : i64
          %146 = llvm.select %144, %145, %112 : i1, i64
          %147 = llvm.sdiv %146, %84 : i64
          %148 = llvm.sub %74, %147 : i64
          %149 = llvm.select %144, %148, %147 : i1, i64
          %150 = llvm.icmp "sle" %116, %79 : i64
          %151 = llvm.sub %79, %116 : i64
          %152 = llvm.sub %116, %83 : i64
          %153 = llvm.select %150, %151, %152 : i1, i64
          %154 = llvm.sdiv %153, %84 : i64
          %155 = llvm.sub %79, %154 : i64
          %156 = llvm.add %154, %83 : i64
          %157 = llvm.select %150, %155, %156 : i1, i64
          %158 = llvm.intr.masked.load %143, %130, %76 {alignment = 4 : i32} : (!llvm.ptr, vector<32xi1>, vector<32xf32>) -> vector<32xf32>
          %159 = llvm.icmp "sgt" %157, %79 : i64
          %160 = llvm.select %159, %45, %44 : i1, !llvm.array<1 x array<32 x vector<1xi1>>>
          %161 = llvm.extractelement %158[%30 : i64] : vector<32xf32>
          %162 = llvm.extractvalue %43[0] : !llvm.array<32 x vector<1xf32>> 
          %163 = llvm.insertelement %161, %162[%30 : i64] : vector<1xf32>
          %164 = llvm.extractelement %158[%29 : i64] : vector<32xf32>
          %165 = llvm.extractvalue %43[1] : !llvm.array<32 x vector<1xf32>> 
          %166 = llvm.insertelement %164, %165[%30 : i64] : vector<1xf32>
          %167 = llvm.extractelement %158[%28 : i64] : vector<32xf32>
          %168 = llvm.extractvalue %43[2] : !llvm.array<32 x vector<1xf32>> 
          %169 = llvm.insertelement %167, %168[%30 : i64] : vector<1xf32>
          %170 = llvm.extractelement %158[%27 : i64] : vector<32xf32>
          %171 = llvm.extractvalue %43[3] : !llvm.array<32 x vector<1xf32>> 
          %172 = llvm.insertelement %170, %171[%30 : i64] : vector<1xf32>
          %173 = llvm.extractelement %158[%26 : i64] : vector<32xf32>
          %174 = llvm.extractvalue %43[4] : !llvm.array<32 x vector<1xf32>> 
          %175 = llvm.insertelement %173, %174[%30 : i64] : vector<1xf32>
          %176 = llvm.extractelement %158[%25 : i64] : vector<32xf32>
          %177 = llvm.extractvalue %43[5] : !llvm.array<32 x vector<1xf32>> 
          %178 = llvm.insertelement %176, %177[%30 : i64] : vector<1xf32>
          %179 = llvm.extractelement %158[%24 : i64] : vector<32xf32>
          %180 = llvm.extractvalue %43[6] : !llvm.array<32 x vector<1xf32>> 
          %181 = llvm.insertelement %179, %180[%30 : i64] : vector<1xf32>
          %182 = llvm.extractelement %158[%23 : i64] : vector<32xf32>
          %183 = llvm.extractvalue %43[7] : !llvm.array<32 x vector<1xf32>> 
          %184 = llvm.insertelement %182, %183[%30 : i64] : vector<1xf32>
          %185 = llvm.extractelement %158[%41 : i64] : vector<32xf32>
          %186 = llvm.extractvalue %43[8] : !llvm.array<32 x vector<1xf32>> 
          %187 = llvm.insertelement %185, %186[%30 : i64] : vector<1xf32>
          %188 = llvm.extractelement %158[%22 : i64] : vector<32xf32>
          %189 = llvm.extractvalue %43[9] : !llvm.array<32 x vector<1xf32>> 
          %190 = llvm.insertelement %188, %189[%30 : i64] : vector<1xf32>
          %191 = llvm.extractelement %158[%21 : i64] : vector<32xf32>
          %192 = llvm.extractvalue %43[10] : !llvm.array<32 x vector<1xf32>> 
          %193 = llvm.insertelement %191, %192[%30 : i64] : vector<1xf32>
          %194 = llvm.extractelement %158[%20 : i64] : vector<32xf32>
          %195 = llvm.extractvalue %43[11] : !llvm.array<32 x vector<1xf32>> 
          %196 = llvm.insertelement %194, %195[%30 : i64] : vector<1xf32>
          %197 = llvm.extractelement %158[%19 : i64] : vector<32xf32>
          %198 = llvm.extractvalue %43[12] : !llvm.array<32 x vector<1xf32>> 
          %199 = llvm.insertelement %197, %198[%30 : i64] : vector<1xf32>
          %200 = llvm.extractelement %158[%18 : i64] : vector<32xf32>
          %201 = llvm.extractvalue %43[13] : !llvm.array<32 x vector<1xf32>> 
          %202 = llvm.insertelement %200, %201[%30 : i64] : vector<1xf32>
          %203 = llvm.extractelement %158[%17 : i64] : vector<32xf32>
          %204 = llvm.extractvalue %43[14] : !llvm.array<32 x vector<1xf32>> 
          %205 = llvm.insertelement %203, %204[%30 : i64] : vector<1xf32>
          %206 = llvm.extractelement %158[%16 : i64] : vector<32xf32>
          %207 = llvm.extractvalue %43[15] : !llvm.array<32 x vector<1xf32>> 
          %208 = llvm.insertelement %206, %207[%30 : i64] : vector<1xf32>
          %209 = llvm.extractelement %158[%15 : i64] : vector<32xf32>
          %210 = llvm.extractvalue %43[16] : !llvm.array<32 x vector<1xf32>> 
          %211 = llvm.insertelement %209, %210[%30 : i64] : vector<1xf32>
          %212 = llvm.extractelement %158[%14 : i64] : vector<32xf32>
          %213 = llvm.extractvalue %43[17] : !llvm.array<32 x vector<1xf32>> 
          %214 = llvm.insertelement %212, %213[%30 : i64] : vector<1xf32>
          %215 = llvm.extractelement %158[%13 : i64] : vector<32xf32>
          %216 = llvm.extractvalue %43[18] : !llvm.array<32 x vector<1xf32>> 
          %217 = llvm.insertelement %215, %216[%30 : i64] : vector<1xf32>
          %218 = llvm.extractelement %158[%12 : i64] : vector<32xf32>
          %219 = llvm.extractvalue %43[19] : !llvm.array<32 x vector<1xf32>> 
          %220 = llvm.insertelement %218, %219[%30 : i64] : vector<1xf32>
          %221 = llvm.extractelement %158[%11 : i64] : vector<32xf32>
          %222 = llvm.extractvalue %43[20] : !llvm.array<32 x vector<1xf32>> 
          %223 = llvm.insertelement %221, %222[%30 : i64] : vector<1xf32>
          %224 = llvm.extractelement %158[%10 : i64] : vector<32xf32>
          %225 = llvm.extractvalue %43[21] : !llvm.array<32 x vector<1xf32>> 
          %226 = llvm.insertelement %224, %225[%30 : i64] : vector<1xf32>
          %227 = llvm.extractelement %158[%9 : i64] : vector<32xf32>
          %228 = llvm.extractvalue %43[22] : !llvm.array<32 x vector<1xf32>> 
          %229 = llvm.insertelement %227, %228[%30 : i64] : vector<1xf32>
          %230 = llvm.extractelement %158[%8 : i64] : vector<32xf32>
          %231 = llvm.extractvalue %43[23] : !llvm.array<32 x vector<1xf32>> 
          %232 = llvm.insertelement %230, %231[%30 : i64] : vector<1xf32>
          %233 = llvm.extractelement %158[%7 : i64] : vector<32xf32>
          %234 = llvm.extractvalue %43[24] : !llvm.array<32 x vector<1xf32>> 
          %235 = llvm.insertelement %233, %234[%30 : i64] : vector<1xf32>
          %236 = llvm.extractelement %158[%6 : i64] : vector<32xf32>
          %237 = llvm.extractvalue %43[25] : !llvm.array<32 x vector<1xf32>> 
          %238 = llvm.insertelement %236, %237[%30 : i64] : vector<1xf32>
          %239 = llvm.extractelement %158[%5 : i64] : vector<32xf32>
          %240 = llvm.extractvalue %43[26] : !llvm.array<32 x vector<1xf32>> 
          %241 = llvm.insertelement %239, %240[%30 : i64] : vector<1xf32>
          %242 = llvm.extractelement %158[%4 : i64] : vector<32xf32>
          %243 = llvm.extractvalue %43[27] : !llvm.array<32 x vector<1xf32>> 
          %244 = llvm.insertelement %242, %243[%30 : i64] : vector<1xf32>
          %245 = llvm.extractelement %158[%3 : i64] : vector<32xf32>
          %246 = llvm.extractvalue %43[28] : !llvm.array<32 x vector<1xf32>> 
          %247 = llvm.insertelement %245, %246[%30 : i64] : vector<1xf32>
          %248 = llvm.extractelement %158[%2 : i64] : vector<32xf32>
          %249 = llvm.extractvalue %43[29] : !llvm.array<32 x vector<1xf32>> 
          %250 = llvm.insertelement %248, %249[%30 : i64] : vector<1xf32>
          %251 = llvm.extractelement %158[%1 : i64] : vector<32xf32>
          %252 = llvm.extractvalue %43[30] : !llvm.array<32 x vector<1xf32>> 
          %253 = llvm.insertelement %251, %252[%30 : i64] : vector<1xf32>
          %254 = llvm.extractelement %158[%0 : i64] : vector<32xf32>
          %255 = llvm.extractvalue %43[31] : !llvm.array<32 x vector<1xf32>> 
          %256 = llvm.insertelement %254, %255[%30 : i64] : vector<1xf32>
          %257 = llvm.extractvalue %160[0, 0] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %258 = llvm.mul %106, %35 : i64
          %259 = llvm.mul %149, %36 : i64
          %260 = llvm.add %258, %259 : i64
          %261 = llvm.mul %111, %84 : i64
          %262 = llvm.add %260, %261 : i64
          %263 = llvm.add %262, %79 : i64
          %264 = llvm.add %263, %79 : i64
          %265 = llvm.getelementptr %101[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %163, %265, %257 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %266 = llvm.extractvalue %160[0, 1] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %267 = llvm.add %262, %83 : i64
          %268 = llvm.add %267, %79 : i64
          %269 = llvm.getelementptr %101[%268] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %166, %269, %266 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %270 = llvm.extractvalue %160[0, 2] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %271 = llvm.add %262, %73 : i64
          %272 = llvm.add %271, %79 : i64
          %273 = llvm.getelementptr %101[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %169, %273, %270 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %274 = llvm.extractvalue %160[0, 3] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %275 = llvm.add %262, %72 : i64
          %276 = llvm.add %275, %79 : i64
          %277 = llvm.getelementptr %101[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %172, %277, %274 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %278 = llvm.extractvalue %160[0, 4] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %279 = llvm.add %262, %71 : i64
          %280 = llvm.add %279, %79 : i64
          %281 = llvm.getelementptr %101[%280] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %175, %281, %278 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %282 = llvm.extractvalue %160[0, 5] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %283 = llvm.add %262, %70 : i64
          %284 = llvm.add %283, %79 : i64
          %285 = llvm.getelementptr %101[%284] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %178, %285, %282 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %286 = llvm.extractvalue %160[0, 6] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %287 = llvm.add %262, %69 : i64
          %288 = llvm.add %287, %79 : i64
          %289 = llvm.getelementptr %101[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %181, %289, %286 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %290 = llvm.extractvalue %160[0, 7] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %291 = llvm.add %262, %68 : i64
          %292 = llvm.add %291, %79 : i64
          %293 = llvm.getelementptr %101[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %184, %293, %290 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %294 = llvm.extractvalue %160[0, 8] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %295 = llvm.add %262, %80 : i64
          %296 = llvm.add %295, %79 : i64
          %297 = llvm.getelementptr %101[%296] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %187, %297, %294 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %298 = llvm.extractvalue %160[0, 9] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %299 = llvm.add %262, %67 : i64
          %300 = llvm.add %299, %79 : i64
          %301 = llvm.getelementptr %101[%300] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %190, %301, %298 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %302 = llvm.extractvalue %160[0, 10] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %303 = llvm.add %262, %66 : i64
          %304 = llvm.add %303, %79 : i64
          %305 = llvm.getelementptr %101[%304] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %193, %305, %302 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %306 = llvm.extractvalue %160[0, 11] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %307 = llvm.add %262, %65 : i64
          %308 = llvm.add %307, %79 : i64
          %309 = llvm.getelementptr %101[%308] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %196, %309, %306 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %310 = llvm.extractvalue %160[0, 12] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %311 = llvm.add %262, %64 : i64
          %312 = llvm.add %311, %79 : i64
          %313 = llvm.getelementptr %101[%312] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %199, %313, %310 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %314 = llvm.extractvalue %160[0, 13] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %315 = llvm.add %262, %63 : i64
          %316 = llvm.add %315, %79 : i64
          %317 = llvm.getelementptr %101[%316] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %202, %317, %314 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %318 = llvm.extractvalue %160[0, 14] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %319 = llvm.add %262, %62 : i64
          %320 = llvm.add %319, %79 : i64
          %321 = llvm.getelementptr %101[%320] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %205, %321, %318 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %322 = llvm.extractvalue %160[0, 15] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %323 = llvm.add %262, %61 : i64
          %324 = llvm.add %323, %79 : i64
          %325 = llvm.getelementptr %101[%324] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %208, %325, %322 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %326 = llvm.extractvalue %160[0, 16] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %327 = llvm.add %262, %81 : i64
          %328 = llvm.add %327, %79 : i64
          %329 = llvm.getelementptr %101[%328] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %211, %329, %326 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %330 = llvm.extractvalue %160[0, 17] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %331 = llvm.add %262, %60 : i64
          %332 = llvm.add %331, %79 : i64
          %333 = llvm.getelementptr %101[%332] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %214, %333, %330 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %334 = llvm.extractvalue %160[0, 18] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %335 = llvm.add %262, %59 : i64
          %336 = llvm.add %335, %79 : i64
          %337 = llvm.getelementptr %101[%336] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %217, %337, %334 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %338 = llvm.extractvalue %160[0, 19] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %339 = llvm.add %262, %58 : i64
          %340 = llvm.add %339, %79 : i64
          %341 = llvm.getelementptr %101[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %220, %341, %338 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %342 = llvm.extractvalue %160[0, 20] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %343 = llvm.add %262, %57 : i64
          %344 = llvm.add %343, %79 : i64
          %345 = llvm.getelementptr %101[%344] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %223, %345, %342 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %346 = llvm.extractvalue %160[0, 21] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %347 = llvm.add %262, %56 : i64
          %348 = llvm.add %347, %79 : i64
          %349 = llvm.getelementptr %101[%348] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %226, %349, %346 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %350 = llvm.extractvalue %160[0, 22] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %351 = llvm.add %262, %55 : i64
          %352 = llvm.add %351, %79 : i64
          %353 = llvm.getelementptr %101[%352] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %229, %353, %350 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %354 = llvm.extractvalue %160[0, 23] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %355 = llvm.add %262, %54 : i64
          %356 = llvm.add %355, %79 : i64
          %357 = llvm.getelementptr %101[%356] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %232, %357, %354 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %358 = llvm.extractvalue %160[0, 24] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %359 = llvm.add %262, %53 : i64
          %360 = llvm.add %359, %79 : i64
          %361 = llvm.getelementptr %101[%360] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %235, %361, %358 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %362 = llvm.extractvalue %160[0, 25] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %363 = llvm.add %262, %52 : i64
          %364 = llvm.add %363, %79 : i64
          %365 = llvm.getelementptr %101[%364] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %238, %365, %362 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %366 = llvm.extractvalue %160[0, 26] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %367 = llvm.add %262, %51 : i64
          %368 = llvm.add %367, %79 : i64
          %369 = llvm.getelementptr %101[%368] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %241, %369, %366 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %370 = llvm.extractvalue %160[0, 27] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %371 = llvm.add %262, %50 : i64
          %372 = llvm.add %371, %79 : i64
          %373 = llvm.getelementptr %101[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %244, %373, %370 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %374 = llvm.extractvalue %160[0, 28] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %375 = llvm.add %262, %49 : i64
          %376 = llvm.add %375, %79 : i64
          %377 = llvm.getelementptr %101[%376] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %247, %377, %374 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %378 = llvm.extractvalue %160[0, 29] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %379 = llvm.add %262, %48 : i64
          %380 = llvm.add %379, %79 : i64
          %381 = llvm.getelementptr %101[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %250, %381, %378 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %382 = llvm.extractvalue %160[0, 30] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %383 = llvm.add %262, %47 : i64
          %384 = llvm.add %383, %79 : i64
          %385 = llvm.getelementptr %101[%384] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %253, %385, %382 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %386 = llvm.extractvalue %160[0, 31] : !llvm.array<1 x array<32 x vector<1xi1>>> 
          %387 = llvm.add %262, %46 : i64
          %388 = llvm.add %387, %79 : i64
          %389 = llvm.getelementptr %101[%388] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %256, %389, %386 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %390 = llvm.add %112, %84 : i64
          llvm.br ^bb5(%390 : i64)
        ^bb7:  // pred: ^bb5
          %391 = llvm.add %109, %83 : i64
          llvm.br ^bb3(%391 : i64)
        ^bb8:  // pred: ^bb3
          %392 = llvm.add %106, %83 : i64
          llvm.br ^bb1(%392 : i64)
        ^bb9:  // pred: ^bb1
          llvm.return %32 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c577024_i32 = arith.constant 577024 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_150::@embedded_elf_riscv_64::@main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_150) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_150::@embedded_elf_riscv_64::@main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c577024_i32]) bindings([
      (%main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_150_embedded_elf_riscv_64_main_graph$async_dispatch_150_elementwise_broadcast_8x32x49_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
