#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_148 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<7xf32>
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<1xf32>
          %3 = llvm.mlir.constant(6 : i64) : i64
          %4 = llvm.mlir.constant(5 : i64) : i64
          %5 = llvm.mlir.constant(4 : i64) : i64
          %6 = llvm.mlir.constant(3 : i64) : i64
          %7 = llvm.mlir.constant(2 : i64) : i64
          %8 = llvm.mlir.constant(1 : i64) : i64
          %9 = llvm.mlir.constant(0 : i64) : i64
          %10 = llvm.mlir.constant(1568 : index) : i64
          %11 = llvm.mlir.constant(224 : index) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.poison : !llvm.array<7 x vector<1xf32>>
          %17 = llvm.mlir.constant(6 : index) : i64
          %18 = llvm.mlir.constant(5 : index) : i64
          %19 = llvm.mlir.constant(4 : index) : i64
          %20 = llvm.mlir.constant(3 : index) : i64
          %21 = llvm.mlir.constant(2 : index) : i64
          %22 = llvm.mlir.constant(-1 : index) : i64
          %23 = llvm.mlir.constant(7 : index) : i64
          %24 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %25 = llvm.mlir.constant(32 : index) : i64
          %26 = llvm.mlir.constant(1 : index) : i64
          %27 = llvm.mlir.constant(256 : index) : i64
          %28 = llvm.mlir.constant(0 : index) : i64
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> i32
          %32 = llvm.getelementptr %30[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %33 = llvm.load %32 : !llvm.ptr -> i32
          %34 = llvm.getelementptr %30[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %35 = llvm.load %34 : !llvm.ptr -> i32
          %36 = llvm.zext %31 : i32 to i64
          %37 = llvm.zext %33 : i32 to i64
          %38 = llvm.zext %35 : i32 to i64
          %39 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          %41 = llvm.mul %36, %14 : i64
          %42 = llvm.udiv %41, %15 : i64
          %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%43, %12 : !llvm.ptr, i64)] : i1
          %44 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %45 = llvm.extractvalue %44[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.getelementptr %45[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %37, %14 : i64
          %49 = llvm.udiv %48, %15 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%50, %12 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %52 = llvm.extractvalue %51[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.getelementptr %52[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %54 = llvm.load %53 : !llvm.ptr -> !llvm.ptr
          %55 = llvm.mul %38, %14 : i64
          %56 = llvm.udiv %55, %15 : i64
          %57 = llvm.getelementptr %54[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%57, %12 : !llvm.ptr, i64)] : i1
          %58 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %59 = llvm.extractvalue %58[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %60 = llvm.zext %59 : i32 to i64
          %61 = llvm.sdiv %60, %23 : i64
          %62 = llvm.mul %61, %23 : i64
          %63 = llvm.icmp "ne" %60, %62 : i64
          %64 = llvm.icmp "slt" %60, %28 : i64
          %65 = llvm.and %63, %64 : i1
          %66 = llvm.add %61, %22 : i64
          %67 = llvm.select %65, %66, %61 : i1, i64
          %68 = llvm.srem %60, %23 : i64
          %69 = llvm.icmp "slt" %68, %28 : i64
          %70 = llvm.add %68, %23 overflow<nsw> : i64
          %71 = llvm.select %69, %70, %68 : i1, i64
          %72 = llvm.mul %71, %23 overflow<nsw> : i64
          %73 = llvm.icmp "slt" %72, %28 : i64
          %74 = llvm.sub %22, %72 : i64
          %75 = llvm.select %73, %74, %72 : i1, i64
          %76 = llvm.sdiv %75, %23 : i64
          %77 = llvm.sub %22, %76 : i64
          %78 = llvm.select %73, %77, %76 : i1, i64
          llvm.br ^bb1(%28 : i64)
        ^bb1(%79: i64):  // 2 preds: ^bb0, ^bb4
          %80 = llvm.icmp "slt" %79, %25 : i64
          llvm.cond_br %80, ^bb2(%28, %24 : i64, vector<7xf32>), ^bb5
        ^bb2(%81: i64, %82: vector<7xf32>):  // 2 preds: ^bb1, ^bb3
          %83 = llvm.icmp "slt" %81, %27 : i64
          llvm.cond_br %83, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %84 = llvm.mul %81, %27 : i64
          %85 = llvm.mul %67, %25 : i64
          %86 = llvm.add %84, %85 : i64
          %87 = llvm.add %86, %79 : i64
          %88 = llvm.getelementptr %50[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %90 = llvm.extractelement %82[%9 : i64] : vector<7xf32>
          %91 = llvm.extractvalue %16[0] : !llvm.array<7 x vector<1xf32>> 
          %92 = llvm.insertelement %90, %91[%9 : i64] : vector<1xf32>
          %93 = llvm.extractelement %82[%8 : i64] : vector<7xf32>
          %94 = llvm.extractvalue %16[1] : !llvm.array<7 x vector<1xf32>> 
          %95 = llvm.insertelement %93, %94[%9 : i64] : vector<1xf32>
          %96 = llvm.extractelement %82[%7 : i64] : vector<7xf32>
          %97 = llvm.extractvalue %16[2] : !llvm.array<7 x vector<1xf32>> 
          %98 = llvm.insertelement %96, %97[%9 : i64] : vector<1xf32>
          %99 = llvm.extractelement %82[%6 : i64] : vector<7xf32>
          %100 = llvm.extractvalue %16[3] : !llvm.array<7 x vector<1xf32>> 
          %101 = llvm.insertelement %99, %100[%9 : i64] : vector<1xf32>
          %102 = llvm.extractelement %82[%5 : i64] : vector<7xf32>
          %103 = llvm.extractvalue %16[4] : !llvm.array<7 x vector<1xf32>> 
          %104 = llvm.insertelement %102, %103[%9 : i64] : vector<1xf32>
          %105 = llvm.extractelement %82[%4 : i64] : vector<7xf32>
          %106 = llvm.extractvalue %16[5] : !llvm.array<7 x vector<1xf32>> 
          %107 = llvm.insertelement %105, %106[%9 : i64] : vector<1xf32>
          %108 = llvm.extractelement %82[%3 : i64] : vector<7xf32>
          %109 = llvm.extractvalue %16[6] : !llvm.array<7 x vector<1xf32>> 
          %110 = llvm.insertelement %108, %109[%9 : i64] : vector<1xf32>
          %111 = llvm.mul %72, %27 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %81 overflow<nsw, nuw> : i64
          %113 = llvm.getelementptr inbounds|nuw %43[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 : !llvm.ptr -> f32
          %115 = llvm.insertelement %114, %2[%1 : i32] : vector<1xf32>
          %116 = llvm.intr.fmuladd(%115, %89, %92) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %117 = llvm.add %72, %26 : i64
          %118 = llvm.mul %117, %27 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %81 overflow<nsw, nuw> : i64
          %120 = llvm.getelementptr inbounds|nuw %43[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 : !llvm.ptr -> f32
          %122 = llvm.insertelement %121, %2[%1 : i32] : vector<1xf32>
          %123 = llvm.intr.fmuladd(%122, %89, %95) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %124 = llvm.add %72, %21 : i64
          %125 = llvm.mul %124, %27 overflow<nsw, nuw> : i64
          %126 = llvm.add %125, %81 overflow<nsw, nuw> : i64
          %127 = llvm.getelementptr inbounds|nuw %43[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 : !llvm.ptr -> f32
          %129 = llvm.insertelement %128, %2[%1 : i32] : vector<1xf32>
          %130 = llvm.intr.fmuladd(%129, %89, %98) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %131 = llvm.add %72, %20 : i64
          %132 = llvm.mul %131, %27 overflow<nsw, nuw> : i64
          %133 = llvm.add %132, %81 overflow<nsw, nuw> : i64
          %134 = llvm.getelementptr inbounds|nuw %43[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 : !llvm.ptr -> f32
          %136 = llvm.insertelement %135, %2[%1 : i32] : vector<1xf32>
          %137 = llvm.intr.fmuladd(%136, %89, %101) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %138 = llvm.add %72, %19 : i64
          %139 = llvm.mul %138, %27 overflow<nsw, nuw> : i64
          %140 = llvm.add %139, %81 overflow<nsw, nuw> : i64
          %141 = llvm.getelementptr inbounds|nuw %43[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %142 = llvm.load %141 : !llvm.ptr -> f32
          %143 = llvm.insertelement %142, %2[%1 : i32] : vector<1xf32>
          %144 = llvm.intr.fmuladd(%143, %89, %104) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %145 = llvm.add %72, %18 : i64
          %146 = llvm.mul %145, %27 overflow<nsw, nuw> : i64
          %147 = llvm.add %146, %81 overflow<nsw, nuw> : i64
          %148 = llvm.getelementptr inbounds|nuw %43[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %149 = llvm.load %148 : !llvm.ptr -> f32
          %150 = llvm.insertelement %149, %2[%1 : i32] : vector<1xf32>
          %151 = llvm.intr.fmuladd(%150, %89, %107) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %152 = llvm.add %72, %17 : i64
          %153 = llvm.mul %152, %27 overflow<nsw, nuw> : i64
          %154 = llvm.add %153, %81 overflow<nsw, nuw> : i64
          %155 = llvm.getelementptr inbounds|nuw %43[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %156 = llvm.load %155 : !llvm.ptr -> f32
          %157 = llvm.insertelement %156, %2[%1 : i32] : vector<1xf32>
          %158 = llvm.intr.fmuladd(%157, %89, %110) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %159 = llvm.extractelement %116[%9 : i64] : vector<1xf32>
          %160 = llvm.extractelement %123[%9 : i64] : vector<1xf32>
          %161 = llvm.extractelement %130[%9 : i64] : vector<1xf32>
          %162 = llvm.extractelement %137[%9 : i64] : vector<1xf32>
          %163 = llvm.extractelement %144[%9 : i64] : vector<1xf32>
          %164 = llvm.extractelement %151[%9 : i64] : vector<1xf32>
          %165 = llvm.extractelement %158[%9 : i64] : vector<1xf32>
          %166 = llvm.insertelement %159, %0[%9 : i64] : vector<7xf32>
          %167 = llvm.insertelement %160, %166[%8 : i64] : vector<7xf32>
          %168 = llvm.insertelement %161, %167[%7 : i64] : vector<7xf32>
          %169 = llvm.insertelement %162, %168[%6 : i64] : vector<7xf32>
          %170 = llvm.insertelement %163, %169[%5 : i64] : vector<7xf32>
          %171 = llvm.insertelement %164, %170[%4 : i64] : vector<7xf32>
          %172 = llvm.insertelement %165, %171[%3 : i64] : vector<7xf32>
          %173 = llvm.add %81, %26 : i64
          llvm.br ^bb2(%173, %172 : i64, vector<7xf32>)
        ^bb4:  // pred: ^bb2
          %174 = llvm.fadd %82, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<7xf32>
          %175 = llvm.mul %67, %10 : i64
          %176 = llvm.mul %78, %11 : i64
          %177 = llvm.add %175, %176 : i64
          %178 = llvm.mul %79, %23 : i64
          %179 = llvm.add %177, %178 : i64
          %180 = llvm.add %179, %28 : i64
          %181 = llvm.add %180, %28 : i64
          %182 = llvm.getelementptr %57[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %174, %182 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %183 = llvm.add %79, %26 : i64
          llvm.br ^bb1(%183 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c14349440_i32 = arith.constant 14349440 : i32
    %c727552_i32 = arith.constant 727552 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_148::@embedded_elf_riscv_64::@main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_148) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_148::@embedded_elf_riscv_64::@main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32, %c14349440_i32, %c727552_i32]) bindings([
      (%main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_148_embedded_elf_riscv_64_main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack_buffer : !hal.buffer)[%c46783744, %c32172032]
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
