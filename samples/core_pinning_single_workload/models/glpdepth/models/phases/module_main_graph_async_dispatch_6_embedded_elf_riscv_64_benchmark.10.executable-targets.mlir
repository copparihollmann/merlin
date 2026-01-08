#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_6 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(224 : index) : i64
          %2 = llvm.mlir.constant(49 : index) : i64
          %3 = llvm.mlir.constant(2048 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(1792 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(4 : index) : i64
          %13 = llvm.mlir.constant(1 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(32 : index) : i64
          %16 = llvm.mlir.constant(0 : index) : i64
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.load %18 : !llvm.ptr -> i32
          %20 = llvm.getelementptr %18[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %21 = llvm.load %20 : !llvm.ptr -> i32
          %22 = llvm.getelementptr %18[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %23 = llvm.load %22 : !llvm.ptr -> i32
          %24 = llvm.getelementptr %18[3] : (!llvm.ptr) -> !llvm.ptr, i32
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.zext %19 : i32 to i64
          %27 = llvm.zext %21 : i32 to i64
          %28 = llvm.zext %23 : i32 to i64
          %29 = llvm.zext %25 : i32 to i64
          %30 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %26, %7 : i64
          %33 = llvm.udiv %32, %8 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.getelementptr %36[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %27, %7 : i64
          %40 = llvm.udiv %39, %8 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%41, %4 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %28, %7 : i64
          %47 = llvm.udiv %46, %8 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%48, %4 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %50 = llvm.extractvalue %49[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %51 = llvm.getelementptr %50[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %52 = llvm.load %51 : !llvm.ptr -> !llvm.ptr
          %53 = llvm.mul %29, %7 : i64
          %54 = llvm.udiv %53, %8 : i64
          %55 = llvm.getelementptr %52[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%55, %4 : !llvm.ptr, i64)] : i1
          %56 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %57 = llvm.extractvalue %56[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %58 = llvm.zext %57 : i32 to i64
          %59 = llvm.sdiv %58, %11 : i64
          %60 = llvm.mul %59, %11 : i64
          %61 = llvm.icmp "ne" %58, %60 : i64
          %62 = llvm.icmp "slt" %58, %16 : i64
          %63 = llvm.and %61, %62 : i1
          %64 = llvm.add %59, %9 : i64
          %65 = llvm.select %63, %64, %59 : i1, i64
          %66 = llvm.srem %58, %11 : i64
          %67 = llvm.icmp "slt" %66, %16 : i64
          %68 = llvm.add %66, %11 overflow<nsw> : i64
          %69 = llvm.select %67, %68, %66 : i1, i64
          %70 = llvm.mul %65, %12 overflow<nsw> : i64
          llvm.br ^bb1(%16 : i64)
        ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb15
          %72 = llvm.icmp "slt" %71, %12 : i64
          llvm.cond_br %72, ^bb2, ^bb16
        ^bb2:  // pred: ^bb1
          %73 = llvm.add %71, %70 : i64
          llvm.br ^bb3(%16 : i64)
        ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb14
          %75 = llvm.icmp "slt" %74, %11 : i64
          llvm.cond_br %75, ^bb4, ^bb15
        ^bb4:  // pred: ^bb3
          %76 = llvm.mul %73, %2 overflow<nsw, nuw> : i64
          %77 = llvm.mul %69, %11 overflow<nsw, nuw> : i64
          %78 = llvm.add %76, %77 overflow<nsw, nuw> : i64
          %79 = llvm.add %78, %74 overflow<nsw, nuw> : i64
          %80 = llvm.getelementptr inbounds|nuw %48[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %10, %80 : f32, !llvm.ptr
          %81 = llvm.mul %74, %14 overflow<nsw> : i64
          llvm.br ^bb5(%16 : i64)
        ^bb5(%82: i64):  // 2 preds: ^bb4, ^bb13
          %83 = llvm.icmp "slt" %82, %15 : i64
          llvm.cond_br %83, ^bb6(%16 : i64), ^bb14
        ^bb6(%84: i64):  // 2 preds: ^bb5, ^bb12
          %85 = llvm.icmp "slt" %84, %14 : i64
          llvm.cond_br %85, ^bb7, ^bb13
        ^bb7:  // pred: ^bb6
          %86 = llvm.mul %69, %14 overflow<nsw> : i64
          %87 = llvm.add %86, %84 : i64
          llvm.br ^bb8(%16 : i64)
        ^bb8(%88: i64):  // 2 preds: ^bb7, ^bb11
          %89 = llvm.icmp "slt" %88, %14 : i64
          llvm.cond_br %89, ^bb9(%16 : i64), ^bb12
        ^bb9(%90: i64):  // 2 preds: ^bb8, ^bb10
          %91 = llvm.icmp "slt" %90, %14 : i64
          llvm.cond_br %91, ^bb10, ^bb11
        ^bb10:  // pred: ^bb9
          %92 = llvm.add %81, %90 : i64
          %93 = llvm.add %82, %88 : i64
          %94 = llvm.mul %87, %6 overflow<nsw, nuw> : i64
          %95 = llvm.mul %92, %15 overflow<nsw, nuw> : i64
          %96 = llvm.add %94, %95 overflow<nsw, nuw> : i64
          %97 = llvm.add %96, %93 overflow<nsw, nuw> : i64
          %98 = llvm.getelementptr inbounds|nuw %34[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.load %98 : !llvm.ptr -> f32
          %100 = llvm.mul %73, %3 overflow<nsw, nuw> : i64
          %101 = llvm.mul %93, %4 overflow<nsw, nuw> : i64
          %102 = llvm.add %100, %101 overflow<nsw, nuw> : i64
          %103 = llvm.mul %84, %14 overflow<nsw, nuw> : i64
          %104 = llvm.add %102, %103 overflow<nsw, nuw> : i64
          %105 = llvm.add %104, %90 overflow<nsw, nuw> : i64
          %106 = llvm.getelementptr inbounds|nuw %41[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 : !llvm.ptr -> f32
          %108 = llvm.load %80 : !llvm.ptr -> f32
          %109 = llvm.fmul %99, %107 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %110 = llvm.fadd %108, %109 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %110, %80 : f32, !llvm.ptr
          %111 = llvm.add %90, %13 : i64
          llvm.br ^bb9(%111 : i64)
        ^bb11:  // pred: ^bb9
          %112 = llvm.add %88, %13 : i64
          llvm.br ^bb8(%112 : i64)
        ^bb12:  // pred: ^bb8
          %113 = llvm.add %84, %13 : i64
          llvm.br ^bb6(%113 : i64)
        ^bb13:  // pred: ^bb6
          %114 = llvm.add %82, %14 : i64
          llvm.br ^bb5(%114 : i64)
        ^bb14:  // pred: ^bb5
          %115 = llvm.load %80 : !llvm.ptr -> f32
          %116 = llvm.mul %69, %1 overflow<nsw, nuw> : i64
          %117 = llvm.mul %74, %15 overflow<nsw, nuw> : i64
          %118 = llvm.add %116, %117 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %73 overflow<nsw, nuw> : i64
          %120 = llvm.getelementptr inbounds|nuw %55[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %115, %120 : f32, !llvm.ptr
          %121 = llvm.add %74, %13 : i64
          llvm.br ^bb3(%121 : i64)
        ^bb15:  // pred: ^bb3
          %122 = llvm.add %71, %13 : i64
          llvm.br ^bb1(%122 : i64)
        ^bb16:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c11108864_i32 = arith.constant 11108864 : i32
    %c1643264_i32 = arith.constant 1643264 : i32
    %c1649536_i32 = arith.constant 1649536 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer = util.global.load immutable @main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_6::@embedded_elf_riscv_64::@main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_6) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_6::@embedded_elf_riscv_64::@main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c11108864_i32, %c1643264_i32, %c1649536_i32]) bindings([
      (%main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_6_embedded_elf_riscv_64_main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
