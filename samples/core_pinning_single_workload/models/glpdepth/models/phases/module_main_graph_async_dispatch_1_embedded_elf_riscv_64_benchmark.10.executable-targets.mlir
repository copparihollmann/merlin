#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_1 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(1792 : index) : i64
          %3 = llvm.mlir.constant(3136 : index) : i64
          %4 = llvm.mlir.constant(56 : index) : i64
          %5 = llvm.mlir.constant(147 : index) : i64
          %6 = llvm.mlir.constant(49 : index) : i64
          %7 = llvm.mlir.constant(32 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(64 : index) : i64
          %11 = llvm.mlir.constant(true) : i1
          %12 = llvm.mlir.constant(230 : index) : i64
          %13 = llvm.mlir.constant(52900 : index) : i64
          %14 = llvm.mlir.constant(-1 : index) : i64
          %15 = llvm.mlir.constant(112 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.poison : vector<8xf32>
          %19 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %21 = llvm.mlir.constant(28 : index) : i64
          %22 = llvm.mlir.constant(8 : index) : i64
          %23 = llvm.mlir.constant(1 : index) : i64
          %24 = llvm.mlir.constant(7 : index) : i64
          %25 = llvm.mlir.constant(3 : index) : i64
          %26 = llvm.mlir.constant(0 : index) : i64
          %27 = llvm.mlir.constant(13550080 : index) : i64
          %28 = llvm.mlir.constant(634816 : index) : i64
          %29 = llvm.mlir.constant(1036224 : index) : i64
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %11 ["align"(%32, %10 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          %37 = llvm.mul %27, %8 : i64
          %38 = llvm.udiv %37, %9 : i64
          %39 = llvm.getelementptr %36[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %11 ["align"(%39, %10 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %28, %8 : i64
          %45 = llvm.udiv %44, %9 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %11 ["align"(%46, %10 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %48 = llvm.extractvalue %47[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.getelementptr %48[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          %51 = llvm.mul %29, %8 : i64
          %52 = llvm.udiv %51, %9 : i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %11 ["align"(%53, %10 : !llvm.ptr, i64)] : i1
          %54 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %55 = llvm.extractvalue %54[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %56 = llvm.zext %55 : i32 to i64
          %57 = llvm.sdiv %56, %16 : i64
          %58 = llvm.mul %57, %16 : i64
          %59 = llvm.icmp "ne" %56, %58 : i64
          %60 = llvm.icmp "slt" %56, %26 : i64
          %61 = llvm.and %59, %60 : i1
          %62 = llvm.add %57, %14 : i64
          %63 = llvm.select %61, %62, %57 : i1, i64
          %64 = llvm.srem %56, %16 : i64
          %65 = llvm.icmp "slt" %64, %26 : i64
          %66 = llvm.add %64, %16 overflow<nsw> : i64
          %67 = llvm.select %65, %66, %64 : i1, i64
          %68 = llvm.sdiv %67, %17 : i64
          %69 = llvm.srem %56, %17 : i64
          %70 = llvm.icmp "slt" %69, %26 : i64
          %71 = llvm.add %69, %17 overflow<nsw> : i64
          %72 = llvm.select %70, %71, %69 : i1, i64
          %73 = llvm.mul %63, %22 overflow<nsw> : i64
          %74 = llvm.mul %68, %21 overflow<nsw> : i64
          %75 = llvm.mul %72, %21 overflow<nsw> : i64
          llvm.br ^bb1(%26 : i64)
        ^bb1(%76: i64):  // 2 preds: ^bb0, ^bb23
          %77 = llvm.icmp "slt" %76, %22 : i64
          llvm.cond_br %77, ^bb2, ^bb24
        ^bb2:  // pred: ^bb1
          %78 = llvm.add %76, %73 : i64
          llvm.br ^bb3(%26 : i64)
        ^bb3(%79: i64):  // 2 preds: ^bb2, ^bb22
          %80 = llvm.icmp "slt" %79, %21 : i64
          llvm.cond_br %80, ^bb4(%26 : i64), ^bb23
        ^bb4(%81: i64):  // 2 preds: ^bb3, ^bb21
          %82 = llvm.icmp "slt" %81, %21 : i64
          llvm.cond_br %82, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %83 = llvm.sub %21, %81 : i64
          %84 = llvm.icmp "slt" %83, %22 : i64
          %85 = llvm.select %84, %83, %22 : i1, i64
          %86 = llvm.trunc %85 : i64 to i32
          %87 = llvm.insertelement %86, %1[%0 : i32] : vector<8xi32>
          %88 = llvm.shufflevector %87, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %89 = llvm.icmp "sgt" %88, %19 : vector<8xi32>
          %90 = llvm.add %74, %79 : i64
          %91 = llvm.add %75, %81 : i64
          %92 = llvm.mul %78, %3 : i64
          %93 = llvm.mul %90, %4 : i64
          %94 = llvm.add %92, %93 : i64
          %95 = llvm.add %94, %91 : i64
          %96 = llvm.getelementptr %46[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %20, %96, %89 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %97 = llvm.mul %81, %16 overflow<nsw> : i64
          %98 = llvm.mul %72, %15 overflow<nsw> : i64
          %99 = llvm.add %97, %98 : i64
          llvm.br ^bb6(%26 : i64)
        ^bb6(%100: i64):  // 2 preds: ^bb5, ^bb14
          %101 = llvm.icmp "slt" %100, %25 : i64
          llvm.cond_br %101, ^bb7(%26 : i64), ^bb15
        ^bb7(%102: i64):  // 2 preds: ^bb6, ^bb13
          %103 = llvm.icmp "slt" %102, %24 : i64
          llvm.cond_br %103, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %104 = llvm.mul %79, %16 overflow<nsw> : i64
          %105 = llvm.mul %68, %15 overflow<nsw> : i64
          %106 = llvm.add %104, %105 : i64
          %107 = llvm.add %106, %102 : i64
          llvm.br ^bb9(%26 : i64)
        ^bb9(%108: i64):  // 2 preds: ^bb8, ^bb12
          %109 = llvm.icmp "slt" %108, %85 : i64
          llvm.cond_br %109, ^bb10(%26 : i64), ^bb13
        ^bb10(%110: i64):  // 2 preds: ^bb9, ^bb11
          %111 = llvm.icmp "slt" %110, %24 : i64
          llvm.cond_br %111, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %112 = llvm.mul %108, %16 overflow<nsw> : i64
          %113 = llvm.add %99, %112 : i64
          %114 = llvm.add %113, %110 : i64
          %115 = llvm.mul %100, %13 overflow<nsw, nuw> : i64
          %116 = llvm.mul %107, %12 overflow<nsw, nuw> : i64
          %117 = llvm.add %115, %116 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %114 overflow<nsw, nuw> : i64
          %119 = llvm.getelementptr inbounds|nuw %32[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 : !llvm.ptr -> f32
          %121 = llvm.mul %78, %5 overflow<nsw, nuw> : i64
          %122 = llvm.mul %100, %6 overflow<nsw, nuw> : i64
          %123 = llvm.add %121, %122 overflow<nsw, nuw> : i64
          %124 = llvm.mul %102, %24 overflow<nsw, nuw> : i64
          %125 = llvm.add %123, %124 overflow<nsw, nuw> : i64
          %126 = llvm.add %125, %110 overflow<nsw, nuw> : i64
          %127 = llvm.getelementptr inbounds|nuw %39[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 : !llvm.ptr -> f32
          %129 = llvm.add %91, %108 : i64
          %130 = llvm.mul %78, %3 overflow<nsw, nuw> : i64
          %131 = llvm.mul %90, %4 overflow<nsw, nuw> : i64
          %132 = llvm.add %130, %131 overflow<nsw, nuw> : i64
          %133 = llvm.add %132, %129 overflow<nsw, nuw> : i64
          %134 = llvm.getelementptr inbounds|nuw %46[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 : !llvm.ptr -> f32
          %136 = llvm.fmul %120, %128 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %137 = llvm.fadd %135, %136 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %137, %134 : f32, !llvm.ptr
          %138 = llvm.add %110, %23 : i64
          llvm.br ^bb10(%138 : i64)
        ^bb12:  // pred: ^bb10
          %139 = llvm.add %108, %23 : i64
          llvm.br ^bb9(%139 : i64)
        ^bb13:  // pred: ^bb9
          %140 = llvm.add %102, %23 : i64
          llvm.br ^bb7(%140 : i64)
        ^bb14:  // pred: ^bb7
          %141 = llvm.add %100, %23 : i64
          llvm.br ^bb6(%141 : i64)
        ^bb15:  // pred: ^bb6
          %142 = llvm.icmp "sgt" %85, %26 : i64
          llvm.cond_br %142, ^bb16, ^bb21
        ^bb16:  // pred: ^bb15
          %143 = llvm.intr.masked.load %96, %89, %18 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb17(%26 : i64)
        ^bb17(%144: i64):  // 2 preds: ^bb16, ^bb20
          %145 = llvm.icmp "slt" %144, %22 : i64
          llvm.cond_br %145, ^bb18, ^bb21
        ^bb18:  // pred: ^bb17
          %146 = llvm.extractelement %89[%144 : i64] : vector<8xi1>
          llvm.cond_br %146, ^bb19, ^bb20
        ^bb19:  // pred: ^bb18
          %147 = llvm.extractelement %143[%144 : i64] : vector<8xf32>
          %148 = llvm.add %91, %144 : i64
          %149 = llvm.mul %90, %2 overflow<nsw, nuw> : i64
          %150 = llvm.mul %148, %7 overflow<nsw, nuw> : i64
          %151 = llvm.add %149, %150 overflow<nsw, nuw> : i64
          %152 = llvm.add %151, %78 overflow<nsw, nuw> : i64
          %153 = llvm.getelementptr inbounds|nuw %53[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %153 : f32, !llvm.ptr
          llvm.br ^bb20
        ^bb20:  // 2 preds: ^bb18, ^bb19
          %154 = llvm.add %144, %23 : i64
          llvm.br ^bb17(%154 : i64)
        ^bb21:  // 2 preds: ^bb15, ^bb17
          %155 = llvm.add %81, %22 : i64
          llvm.br ^bb4(%155 : i64)
        ^bb22:  // pred: ^bb4
          %156 = llvm.add %79, %23 : i64
          llvm.br ^bb3(%156 : i64)
        ^bb23:  // pred: ^bb3
          %157 = llvm.add %76, %23 : i64
          llvm.br ^bb1(%157 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer = util.global.load immutable @main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_1::@embedded_elf_riscv_64::@main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_1) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_1::@embedded_elf_riscv_64::@main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_1_embedded_elf_riscv_64_main_graph$async_dispatch_1_conv_32x56x56x3x7x7_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
