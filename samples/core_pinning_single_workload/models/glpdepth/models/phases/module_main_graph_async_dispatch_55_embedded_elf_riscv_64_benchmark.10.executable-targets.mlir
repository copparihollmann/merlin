#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_55 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(448 : index) : i64
          %2 = llvm.mlir.constant(49 : index) : i64
          %3 = llvm.mlir.constant(1024 : index) : i64
          %4 = llvm.mlir.constant(16 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(1792 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(1 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(64 : index) : i64
          %16 = llvm.mlir.constant(0 : index) : i64
          %17 = llvm.mlir.constant(1003520 : index) : i64
          %18 = llvm.mlir.constant(606208 : index) : i64
          %19 = llvm.mlir.constant(618752 : index) : i64
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> i32
          %23 = llvm.zext %22 : i32 to i64
          %24 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          %26 = llvm.mul %17, %7 : i64
          %27 = llvm.udiv %26, %8 : i64
          %28 = llvm.getelementptr %25[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%28, %15 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.getelementptr %30[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %23, %7 : i64
          %34 = llvm.udiv %33, %8 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%35, %15 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %37 = llvm.extractvalue %36[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %38 = llvm.getelementptr %37[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %18, %7 : i64
          %41 = llvm.udiv %40, %8 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%42, %15 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %19, %7 : i64
          %48 = llvm.udiv %47, %8 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%49, %15 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.sdiv %52, %11 : i64
          %54 = llvm.mul %53, %11 : i64
          %55 = llvm.icmp "ne" %52, %54 : i64
          %56 = llvm.icmp "slt" %52, %16 : i64
          %57 = llvm.and %55, %56 : i1
          %58 = llvm.add %53, %9 : i64
          %59 = llvm.select %57, %58, %53 : i1, i64
          %60 = llvm.srem %52, %11 : i64
          %61 = llvm.icmp "slt" %60, %16 : i64
          %62 = llvm.add %60, %11 overflow<nsw> : i64
          %63 = llvm.select %61, %62, %60 : i1, i64
          %64 = llvm.mul %59, %13 overflow<nsw> : i64
          llvm.br ^bb1(%16 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb15
          %66 = llvm.icmp "slt" %65, %13 : i64
          llvm.cond_br %66, ^bb2, ^bb16
        ^bb2:  // pred: ^bb1
          %67 = llvm.add %65, %64 : i64
          llvm.br ^bb3(%16 : i64)
        ^bb3(%68: i64):  // 2 preds: ^bb2, ^bb14
          %69 = llvm.icmp "slt" %68, %11 : i64
          llvm.cond_br %69, ^bb4, ^bb15
        ^bb4:  // pred: ^bb3
          %70 = llvm.mul %67, %2 overflow<nsw, nuw> : i64
          %71 = llvm.mul %63, %11 overflow<nsw, nuw> : i64
          %72 = llvm.add %70, %71 overflow<nsw, nuw> : i64
          %73 = llvm.add %72, %68 overflow<nsw, nuw> : i64
          %74 = llvm.getelementptr inbounds|nuw %42[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %10, %74 : f32, !llvm.ptr
          %75 = llvm.mul %68, %14 overflow<nsw> : i64
          llvm.br ^bb5(%16 : i64)
        ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb13
          %77 = llvm.icmp "slt" %76, %15 : i64
          llvm.cond_br %77, ^bb6(%16 : i64), ^bb14
        ^bb6(%78: i64):  // 2 preds: ^bb5, ^bb12
          %79 = llvm.icmp "slt" %78, %14 : i64
          llvm.cond_br %79, ^bb7, ^bb13
        ^bb7:  // pred: ^bb6
          %80 = llvm.mul %63, %14 overflow<nsw> : i64
          %81 = llvm.add %80, %78 : i64
          llvm.br ^bb8(%16 : i64)
        ^bb8(%82: i64):  // 2 preds: ^bb7, ^bb11
          %83 = llvm.icmp "slt" %82, %13 : i64
          llvm.cond_br %83, ^bb9(%16 : i64), ^bb12
        ^bb9(%84: i64):  // 2 preds: ^bb8, ^bb10
          %85 = llvm.icmp "slt" %84, %14 : i64
          llvm.cond_br %85, ^bb10, ^bb11
        ^bb10:  // pred: ^bb9
          %86 = llvm.add %75, %84 : i64
          %87 = llvm.add %76, %82 : i64
          %88 = llvm.mul %81, %6 overflow<nsw, nuw> : i64
          %89 = llvm.mul %86, %15 overflow<nsw, nuw> : i64
          %90 = llvm.add %88, %89 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %87 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %28[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.mul %67, %3 overflow<nsw, nuw> : i64
          %95 = llvm.mul %87, %4 overflow<nsw, nuw> : i64
          %96 = llvm.add %94, %95 overflow<nsw, nuw> : i64
          %97 = llvm.mul %78, %14 overflow<nsw, nuw> : i64
          %98 = llvm.add %96, %97 overflow<nsw, nuw> : i64
          %99 = llvm.add %98, %84 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %35[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.load %74 : !llvm.ptr -> f32
          %103 = llvm.fmul %93, %101 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %104 = llvm.fadd %102, %103 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %104, %74 : f32, !llvm.ptr
          %105 = llvm.add %84, %12 : i64
          llvm.br ^bb9(%105 : i64)
        ^bb11:  // pred: ^bb9
          %106 = llvm.add %82, %12 : i64
          llvm.br ^bb8(%106 : i64)
        ^bb12:  // pred: ^bb8
          %107 = llvm.add %78, %12 : i64
          llvm.br ^bb6(%107 : i64)
        ^bb13:  // pred: ^bb6
          %108 = llvm.add %76, %13 : i64
          llvm.br ^bb5(%108 : i64)
        ^bb14:  // pred: ^bb5
          %109 = llvm.load %74 : !llvm.ptr -> f32
          %110 = llvm.mul %63, %1 overflow<nsw, nuw> : i64
          %111 = llvm.mul %68, %15 overflow<nsw, nuw> : i64
          %112 = llvm.add %110, %111 overflow<nsw, nuw> : i64
          %113 = llvm.add %112, %67 overflow<nsw, nuw> : i64
          %114 = llvm.getelementptr inbounds|nuw %49[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %109, %114 : f32, !llvm.ptr
          %115 = llvm.add %68, %12 : i64
          llvm.br ^bb3(%115 : i64)
        ^bb15:  // pred: ^bb3
          %116 = llvm.add %65, %12 : i64
          llvm.br ^bb1(%116 : i64)
        ^bb16:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c10584576_i32 = arith.constant 10584576 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer = util.global.load immutable @main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_55::@embedded_elf_riscv_64::@main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_55) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_55::@embedded_elf_riscv_64::@main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c10584576_i32]) bindings([
      (%main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_55_embedded_elf_riscv_64_main_graph$async_dispatch_55_conv_64x7x7x64x4x4_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
