#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_154 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_154_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_154_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xi32>
          %2 = llvm.mlir.constant(3136 : index) : i64
          %3 = llvm.mlir.constant(1568 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(2401 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(-32 : index) : i64
          %11 = llvm.mlir.constant(2 : index) : i64
          %12 = llvm.mlir.constant(dense<0.000000e+00> : vector<32xf32>) : vector<32xf32>
          %13 = llvm.mlir.constant(32 : index) : i64
          %14 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %15 = llvm.mlir.constant(49 : index) : i64
          %16 = llvm.mlir.constant(1 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(1003520 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> i32
          %22 = llvm.zext %21 : i32 to i64
          %23 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          %25 = llvm.mul %18, %7 : i64
          %26 = llvm.udiv %25, %8 : i64
          %27 = llvm.getelementptr %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.getelementptr %29[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %22, %7 : i64
          %33 = llvm.udiv %32, %8 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %36 = llvm.extractvalue %35[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %37 = llvm.zext %36 : i32 to i64
          %38 = llvm.sdiv %37, %11 : i64
          %39 = llvm.mul %38, %11 : i64
          %40 = llvm.icmp "ne" %37, %39 : i64
          %41 = llvm.icmp "slt" %37, %17 : i64
          %42 = llvm.and %40, %41 : i1
          %43 = llvm.add %38, %9 : i64
          %44 = llvm.select %42, %43, %38 : i1, i64
          %45 = llvm.srem %37, %11 : i64
          %46 = llvm.icmp "slt" %45, %17 : i64
          %47 = llvm.add %45, %11 overflow<nsw> : i64
          %48 = llvm.select %46, %47, %45 : i1, i64
          %49 = llvm.mul %48, %13 overflow<nsw> : i64
          %50 = llvm.mul %48, %10 overflow<nsw> : i64
          %51 = llvm.add %50, %15 : i64
          %52 = llvm.icmp "slt" %51, %13 : i64
          %53 = llvm.select %52, %51, %13 : i1, i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb7
          %55 = llvm.icmp "slt" %54, %15 : i64
          llvm.cond_br %55, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %56 = llvm.trunc %53 : i64 to i32
          %57 = llvm.insertelement %56, %1[%0 : i32] : vector<32xi32>
          %58 = llvm.shufflevector %57, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %59 = llvm.icmp "sgt" %58, %14 : vector<32xi32>
          llvm.br ^bb3(%17, %12 : i64, vector<32xf32>)
        ^bb3(%60: i64, %61: vector<32xf32>):  // 2 preds: ^bb2, ^bb6
          %62 = llvm.icmp "slt" %60, %13 : i64
          llvm.cond_br %62, ^bb4, ^bb7
        ^bb4:  // pred: ^bb3
          %63 = llvm.extractelement %59[%60 : i64] : vector<32xi1>
          llvm.cond_br %63, ^bb5, ^bb6(%61 : vector<32xf32>)
        ^bb5:  // pred: ^bb4
          %64 = llvm.add %49, %60 : i64
          %65 = llvm.mul %44, %6 overflow<nsw, nuw> : i64
          %66 = llvm.mul %64, %15 overflow<nsw, nuw> : i64
          %67 = llvm.add %65, %66 overflow<nsw, nuw> : i64
          %68 = llvm.add %67, %54 overflow<nsw, nuw> : i64
          %69 = llvm.getelementptr inbounds|nuw %27[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %70 = llvm.load %69 : !llvm.ptr -> f32
          %71 = llvm.insertelement %70, %61[%60 : i64] : vector<32xf32>
          llvm.br ^bb6(%71 : vector<32xf32>)
        ^bb6(%72: vector<32xf32>):  // 2 preds: ^bb4, ^bb5
          %73 = llvm.add %60, %16 : i64
          llvm.br ^bb3(%73, %72 : i64, vector<32xf32>)
        ^bb7:  // pred: ^bb3
          %74 = llvm.mul %44, %2 : i64
          %75 = llvm.mul %48, %3 : i64
          %76 = llvm.add %74, %75 : i64
          %77 = llvm.mul %54, %13 : i64
          %78 = llvm.add %76, %77 : i64
          %79 = llvm.add %78, %17 : i64
          %80 = llvm.add %79, %17 : i64
          %81 = llvm.getelementptr %34[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %61, %81 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %82 = llvm.add %54, %16 : i64
          llvm.br ^bb1(%82 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_154::@embedded_elf_riscv_64::@main_graph$async_dispatch_154_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_154) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_154::@embedded_elf_riscv_64::@main_graph$async_dispatch_154_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32]) bindings([
      (%main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_154_embedded_elf_riscv_64_main_graph$async_dispatch_154_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
