#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_198 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_198_slow_memcpy ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_198_slow_memcpy(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(900 : index) : i64
          %2 = llvm.mlir.constant(30 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(784 : index) : i64
          %6 = llvm.mlir.constant(28 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(25 : index) : i64
          %11 = llvm.mlir.constant(2 : index) : i64
          %12 = llvm.mlir.constant(24 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(14 : index) : i64
          %16 = llvm.mlir.constant(16 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(1204224 : index) : i64
          %19 = llvm.mlir.constant(1605632 : index) : i64
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          %23 = llvm.mul %18, %7 : i64
          %24 = llvm.udiv %23, %8 : i64
          %25 = llvm.getelementptr %22[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %19, %7 : i64
          %31 = llvm.udiv %30, %8 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %34 = llvm.extractvalue %33[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %35 = llvm.zext %34 : i32 to i64
          %36 = llvm.sdiv %35, %11 : i64
          %37 = llvm.mul %36, %11 : i64
          %38 = llvm.icmp "ne" %35, %37 : i64
          %39 = llvm.icmp "slt" %35, %17 : i64
          %40 = llvm.and %38, %39 : i1
          %41 = llvm.add %36, %9 : i64
          %42 = llvm.select %40, %41, %36 : i1, i64
          %43 = llvm.srem %35, %11 : i64
          %44 = llvm.icmp "slt" %43, %17 : i64
          %45 = llvm.add %43, %11 overflow<nsw> : i64
          %46 = llvm.select %44, %45, %43 : i1, i64
          %47 = llvm.mul %42, %16 overflow<nsw> : i64
          %48 = llvm.mul %46, %15 overflow<nsw> : i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb6
          %50 = llvm.icmp "slt" %49, %16 : i64
          llvm.cond_br %50, ^bb2(%17 : i64), ^bb7
        ^bb2(%51: i64):  // 2 preds: ^bb1, ^bb5
          %52 = llvm.icmp "slt" %51, %15 : i64
          llvm.cond_br %52, ^bb3(%17 : i64), ^bb6
        ^bb3(%53: i64):  // 2 preds: ^bb2, ^bb4
          %54 = llvm.icmp "slt" %53, %12 : i64
          llvm.cond_br %54, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %55 = llvm.add %47, %49 : i64
          %56 = llvm.add %48, %51 : i64
          %57 = llvm.mul %55, %5 : i64
          %58 = llvm.mul %56, %6 : i64
          %59 = llvm.add %57, %58 : i64
          %60 = llvm.add %59, %53 : i64
          %61 = llvm.getelementptr %25[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %63 = llvm.add %56, %14 : i64
          %64 = llvm.add %53, %14 : i64
          %65 = llvm.mul %55, %1 : i64
          %66 = llvm.mul %63, %2 : i64
          %67 = llvm.add %65, %66 : i64
          %68 = llvm.add %67, %64 : i64
          %69 = llvm.getelementptr %32[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %62, %69 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %70 = llvm.add %53, %13 : i64
          llvm.br ^bb3(%70 : i64)
        ^bb5:  // pred: ^bb3
          %71 = llvm.add %47, %49 : i64
          %72 = llvm.add %48, %51 : i64
          %73 = llvm.mul %71, %5 : i64
          %74 = llvm.mul %72, %6 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.add %75, %12 : i64
          %77 = llvm.getelementptr %25[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %79 = llvm.add %72, %14 : i64
          %80 = llvm.mul %71, %1 : i64
          %81 = llvm.mul %79, %2 : i64
          %82 = llvm.add %80, %81 : i64
          %83 = llvm.add %82, %10 : i64
          %84 = llvm.getelementptr %32[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %78, %84 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %85 = llvm.add %51, %14 : i64
          llvm.br ^bb2(%85 : i64)
        ^bb6:  // pred: ^bb2
          %86 = llvm.add %49, %14 : i64
          llvm.br ^bb1(%86 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer = util.global.load immutable @main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_198::@embedded_elf_riscv_64::@main_graph$async_dispatch_198_slow_memcpy) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_198) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_198::@embedded_elf_riscv_64::@main_graph$async_dispatch_198_slow_memcpy) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_198_embedded_elf_riscv_64_main_graph$async_dispatch_198_slow_memcpy_buffer : !hal.buffer)[%c32172032, %c32172032]
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
