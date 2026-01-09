#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_208 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_2xf32(dense<[-0.0414347202, 0.0221716873]> : tensor<2xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<2 x f32>
        llvm.func @main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(3136 : index) : i64
          %4 = llvm.mlir.constant(56 : index) : i64
          %5 = llvm.mlir.constant(288 : index) : i64
          %6 = llvm.mlir.constant(9 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(true) : i1
          %9 = llvm.mlir.constant(3364 : index) : i64
          %10 = llvm.mlir.constant(58 : index) : i64
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.addressof @__constant_2xf32 : !llvm.ptr
          %14 = llvm.mlir.constant(-1 : index) : i64
          %15 = llvm.mlir.constant(dense<127> : vector<8xi32>) : vector<8xi32>
          %16 = llvm.mlir.constant(dense<23> : vector<8xi32>) : vector<8xi32>
          %17 = llvm.mlir.constant(dense<1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %18 = llvm.mlir.constant(dense<-1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(dense<8.880000e+01> : vector<8xf32>) : vector<8xf32>
          %20 = llvm.mlir.constant(dense<-8.780000e+01> : vector<8xf32>) : vector<8xf32>
          %21 = llvm.mlir.constant(dense<0.166666657> : vector<8xf32>) : vector<8xf32>
          %22 = llvm.mlir.constant(dense<0.0416657962> : vector<8xf32>) : vector<8xf32>
          %23 = llvm.mlir.constant(dense<0.00833345205> : vector<8xf32>) : vector<8xf32>
          %24 = llvm.mlir.constant(dense<0.00139819994> : vector<8xf32>) : vector<8xf32>
          %25 = llvm.mlir.constant(dense<1.98756912E-4> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(dense<2.12194442E-4> : vector<8xf32>) : vector<8xf32>
          %27 = llvm.mlir.constant(dense<-0.693359375> : vector<8xf32>) : vector<8xf32>
          %28 = llvm.mlir.constant(dense<1.44269502> : vector<8xf32>) : vector<8xf32>
          %29 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %30 = llvm.mlir.constant(8 : index) : i64
          %31 = llvm.mlir.constant(28 : index) : i64
          %32 = llvm.mlir.constant(14 : index) : i64
          %33 = llvm.mlir.constant(1 : index) : i64
          %34 = llvm.mlir.constant(3 : index) : i64
          %35 = llvm.mlir.constant(32 : index) : i64
          %36 = llvm.mlir.constant(0 : index) : i64
          %37 = llvm.mlir.constant(2 : index) : i64
          %38 = llvm.mlir.poison : vector<8xf32>
          %39 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %40 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %41 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %42 = llvm.mlir.constant(1032704 : index) : i64
          %43 = llvm.mlir.constant(8652544 : index) : i64
          %44 = llvm.mlir.constant(602112 : index) : i64
          %45 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x f32>
          %46 = llvm.alloca %30 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %47 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %48 = llvm.extractvalue %47[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
          %50 = llvm.mul %44, %11 : i64
          %51 = llvm.udiv %50, %12 : i64
          %52 = llvm.getelementptr %49[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%52, %7 : !llvm.ptr, i64)] : i1
          %53 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %54 = llvm.extractvalue %53[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %55 = llvm.getelementptr %54[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %56 = llvm.load %55 : !llvm.ptr -> !llvm.ptr
          %57 = llvm.mul %43, %11 : i64
          %58 = llvm.udiv %57, %12 : i64
          %59 = llvm.getelementptr %56[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%59, %7 : !llvm.ptr, i64)] : i1
          %60 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %61 = llvm.extractvalue %60[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %62 = llvm.getelementptr %61[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %63 = llvm.load %62 : !llvm.ptr -> !llvm.ptr
          %64 = llvm.mul %42, %11 : i64
          %65 = llvm.udiv %64, %12 : i64
          %66 = llvm.getelementptr %63[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%66, %7 : !llvm.ptr, i64)] : i1
          %67 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %68 = llvm.extractvalue %67[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %69 = llvm.zext %68 : i32 to i64
          %70 = llvm.sdiv %69, %30 : i64
          %71 = llvm.mul %70, %30 : i64
          %72 = llvm.icmp "ne" %69, %71 : i64
          %73 = llvm.icmp "slt" %69, %36 : i64
          %74 = llvm.and %72, %73 : i1
          %75 = llvm.add %70, %14 : i64
          %76 = llvm.select %74, %75, %70 : i1, i64
          %77 = llvm.srem %69, %30 : i64
          %78 = llvm.icmp "slt" %77, %36 : i64
          %79 = llvm.add %77, %30 overflow<nsw> : i64
          %80 = llvm.select %78, %79, %77 : i1, i64
          %81 = llvm.sdiv %80, %37 : i64
          %82 = llvm.srem %69, %37 : i64
          %83 = llvm.icmp "slt" %82, %36 : i64
          %84 = llvm.add %82, %37 overflow<nsw> : i64
          %85 = llvm.select %83, %84, %82 : i1, i64
          %86 = llvm.mul %81, %32 overflow<nsw> : i64
          %87 = llvm.mul %85, %31 overflow<nsw> : i64
          %88 = llvm.getelementptr %45[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb1(%36 : i64)
        ^bb1(%90: i64):  // 2 preds: ^bb0, ^bb16
          %91 = llvm.icmp "slt" %90, %32 : i64
          llvm.cond_br %91, ^bb2(%36 : i64), ^bb17
        ^bb2(%92: i64):  // 2 preds: ^bb1, ^bb15
          %93 = llvm.icmp "slt" %92, %31 : i64
          llvm.cond_br %93, ^bb3, ^bb16
        ^bb3:  // pred: ^bb2
          %94 = llvm.sub %31, %92 : i64
          %95 = llvm.icmp "slt" %94, %30 : i64
          %96 = llvm.select %95, %94, %30 : i1, i64
          %97 = llvm.trunc %96 : i64 to i32
          %98 = llvm.insertelement %97, %2[%1 : i32] : vector<8xi32>
          %99 = llvm.shufflevector %98, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %100 = llvm.icmp "sgt" %99, %39 : vector<8xi32>
          %101 = llvm.mul %36, %30 : i64
          %102 = llvm.add %101, %101 : i64
          %103 = llvm.add %102, %36 : i64
          %104 = llvm.getelementptr %46[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %41, %104, %100 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %105 = llvm.add %92, %87 : i64
          llvm.br ^bb4(%36 : i64)
        ^bb4(%106: i64):  // 2 preds: ^bb3, ^bb12
          %107 = llvm.icmp "slt" %106, %35 : i64
          llvm.cond_br %107, ^bb5(%36 : i64), ^bb13
        ^bb5(%108: i64):  // 2 preds: ^bb4, ^bb11
          %109 = llvm.icmp "slt" %108, %34 : i64
          llvm.cond_br %109, ^bb6, ^bb12
        ^bb6:  // pred: ^bb5
          %110 = llvm.add %108, %90 : i64
          %111 = llvm.add %110, %86 : i64
          llvm.br ^bb7(%36 : i64)
        ^bb7(%112: i64):  // 2 preds: ^bb6, ^bb10
          %113 = llvm.icmp "slt" %112, %96 : i64
          llvm.cond_br %113, ^bb8(%36 : i64), ^bb11
        ^bb8(%114: i64):  // 2 preds: ^bb7, ^bb9
          %115 = llvm.icmp "slt" %114, %34 : i64
          llvm.cond_br %115, ^bb9, ^bb10
        ^bb9:  // pred: ^bb8
          %116 = llvm.add %105, %112 : i64
          %117 = llvm.add %116, %114 : i64
          %118 = llvm.mul %106, %9 overflow<nsw, nuw> : i64
          %119 = llvm.mul %111, %10 overflow<nsw, nuw> : i64
          %120 = llvm.add %118, %119 overflow<nsw, nuw> : i64
          %121 = llvm.add %120, %117 overflow<nsw, nuw> : i64
          %122 = llvm.getelementptr inbounds|nuw %52[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 : !llvm.ptr -> f32
          %124 = llvm.mul %76, %5 overflow<nsw, nuw> : i64
          %125 = llvm.mul %106, %6 overflow<nsw, nuw> : i64
          %126 = llvm.add %124, %125 overflow<nsw, nuw> : i64
          %127 = llvm.mul %108, %34 overflow<nsw, nuw> : i64
          %128 = llvm.add %126, %127 overflow<nsw, nuw> : i64
          %129 = llvm.add %128, %114 overflow<nsw, nuw> : i64
          %130 = llvm.getelementptr inbounds|nuw %59[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %131 = llvm.load %130 : !llvm.ptr -> f32
          %132 = llvm.mul %36, %30 overflow<nsw, nuw> : i64
          %133 = llvm.add %132, %132 overflow<nsw, nuw> : i64
          %134 = llvm.add %133, %112 overflow<nsw, nuw> : i64
          %135 = llvm.getelementptr inbounds|nuw %46[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %136 = llvm.load %135 : !llvm.ptr -> f32
          %137 = llvm.fmul %123, %131 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %138 = llvm.fadd %136, %137 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %138, %135 : f32, !llvm.ptr
          %139 = llvm.add %114, %33 : i64
          llvm.br ^bb8(%139 : i64)
        ^bb10:  // pred: ^bb8
          %140 = llvm.add %112, %33 : i64
          llvm.br ^bb7(%140 : i64)
        ^bb11:  // pred: ^bb7
          %141 = llvm.add %108, %33 : i64
          llvm.br ^bb5(%141 : i64)
        ^bb12:  // pred: ^bb5
          %142 = llvm.add %106, %33 : i64
          llvm.br ^bb4(%142 : i64)
        ^bb13:  // pred: ^bb4
          %143 = llvm.icmp "sgt" %96, %36 : i64
          llvm.cond_br %143, ^bb14, ^bb15
        ^bb14:  // pred: ^bb13
          %144 = llvm.intr.masked.load %104, %100, %38 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %145 = llvm.extractelement %89[%0 : i64] : vector<1xf32>
          %146 = llvm.insertelement %145, %38[%1 : i32] : vector<8xf32>
          %147 = llvm.shufflevector %146, %38 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %148 = llvm.fadd %144, %147 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %149 = llvm.fneg %148 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %150 = llvm.fcmp "uge" %149, %20 : vector<8xf32>
          %151 = llvm.select %150, %149, %20 : vector<8xi1>, vector<8xf32>
          %152 = llvm.fcmp "ule" %151, %19 : vector<8xf32>
          %153 = llvm.select %152, %151, %19 : vector<8xi1>, vector<8xf32>
          %154 = llvm.intr.fma(%153, %28, %29) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %155 = llvm.intr.floor(%154) : (vector<8xf32>) -> vector<8xf32>
          %156 = llvm.fcmp "uge" %155, %18 : vector<8xf32>
          %157 = llvm.select %156, %155, %18 : vector<8xi1>, vector<8xf32>
          %158 = llvm.fcmp "ule" %157, %17 : vector<8xf32>
          %159 = llvm.select %158, %157, %17 : vector<8xi1>, vector<8xf32>
          %160 = llvm.intr.fma(%27, %159, %153) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %161 = llvm.intr.fma(%26, %159, %160) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %162 = llvm.intr.fma(%161, %25, %24) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %163 = llvm.intr.fma(%162, %161, %23) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %164 = llvm.intr.fma(%163, %161, %22) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %165 = llvm.intr.fma(%164, %161, %21) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %166 = llvm.intr.fma(%165, %161, %29) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %167 = llvm.fmul %161, %161 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %168 = llvm.intr.fma(%166, %167, %161) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %169 = llvm.fadd %168, %40 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %170 = llvm.fptosi %159 : vector<8xf32> to vector<8xi32>
          %171 = llvm.add %170, %15 : vector<8xi32>
          %172 = llvm.shl %171, %16 : vector<8xi32>
          %173 = llvm.bitcast %172 : vector<8xi32> to vector<8xf32>
          %174 = llvm.fmul %169, %173 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %175 = llvm.fadd %174, %40 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %176 = llvm.fdiv %40, %175 : vector<8xf32>
          %177 = llvm.add %86, %90 : i64
          %178 = llvm.mul %76, %3 : i64
          %179 = llvm.mul %177, %4 : i64
          %180 = llvm.add %178, %179 : i64
          %181 = llvm.add %180, %105 : i64
          %182 = llvm.getelementptr %66[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %176, %182, %100 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb15
        ^bb15:  // 2 preds: ^bb13, ^bb14
          %183 = llvm.add %92, %30 : i64
          llvm.br ^bb2(%183 : i64)
        ^bb16:  // pred: ^bb2
          %184 = llvm.add %90, %33 : i64
          llvm.br ^bb1(%184 : i64)
        ^bb17:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_208::@embedded_elf_riscv_64::@main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_208) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_208::@embedded_elf_riscv_64::@main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_208_embedded_elf_riscv_64_main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
