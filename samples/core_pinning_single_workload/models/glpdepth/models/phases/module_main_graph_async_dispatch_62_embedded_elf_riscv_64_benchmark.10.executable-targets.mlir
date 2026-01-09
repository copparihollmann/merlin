#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_62 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_62_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c50 = arith.constant 50 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c50, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_62_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xi32>
          %2 = llvm.mlir.constant(39200 : index) : i64
          %3 = llvm.mlir.constant(1568 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(38416 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(784 : index) : i64
          %11 = llvm.mlir.constant(-32 : index) : i64
          %12 = llvm.mlir.constant(25 : index) : i64
          %13 = llvm.mlir.constant(dense<0.000000e+00> : vector<32xf32>) : vector<32xf32>
          %14 = llvm.mlir.constant(32 : index) : i64
          %15 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %16 = llvm.mlir.constant(49 : index) : i64
          %17 = llvm.mlir.constant(1 : index) : i64
          %18 = llvm.mlir.constant(0 : index) : i64
          %19 = llvm.mlir.constant(1003520 : index) : i64
          %20 = llvm.mlir.constant(1310848 : index) : i64
          %21 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %22 = llvm.extractvalue %21[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          %24 = llvm.mul %19, %7 : i64
          %25 = llvm.udiv %24, %8 : i64
          %26 = llvm.getelementptr %23[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%26, %4 : !llvm.ptr, i64)] : i1
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.getelementptr %28[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %20, %7 : i64
          %32 = llvm.udiv %31, %8 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%33, %4 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %35 = llvm.extractvalue %34[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %36 = llvm.zext %35 : i32 to i64
          %37 = llvm.sdiv %36, %12 : i64
          %38 = llvm.mul %37, %12 : i64
          %39 = llvm.icmp "ne" %36, %38 : i64
          %40 = llvm.icmp "slt" %36, %18 : i64
          %41 = llvm.and %39, %40 : i1
          %42 = llvm.add %37, %9 : i64
          %43 = llvm.select %41, %42, %37 : i1, i64
          %44 = llvm.srem %36, %12 : i64
          %45 = llvm.icmp "slt" %44, %18 : i64
          %46 = llvm.add %44, %12 overflow<nsw> : i64
          %47 = llvm.select %45, %46, %44 : i1, i64
          %48 = llvm.mul %47, %14 overflow<nsw> : i64
          %49 = llvm.mul %47, %11 overflow<nsw> : i64
          %50 = llvm.add %49, %10 : i64
          %51 = llvm.icmp "slt" %50, %14 : i64
          %52 = llvm.select %51, %50, %14 : i1, i64
          llvm.br ^bb1(%18 : i64)
        ^bb1(%53: i64):  // 2 preds: ^bb0, ^bb7
          %54 = llvm.icmp "slt" %53, %16 : i64
          llvm.cond_br %54, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %55 = llvm.trunc %52 : i64 to i32
          %56 = llvm.insertelement %55, %1[%0 : i32] : vector<32xi32>
          %57 = llvm.shufflevector %56, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %58 = llvm.icmp "sgt" %57, %15 : vector<32xi32>
          llvm.br ^bb3(%18, %13 : i64, vector<32xf32>)
        ^bb3(%59: i64, %60: vector<32xf32>):  // 2 preds: ^bb2, ^bb6
          %61 = llvm.icmp "slt" %59, %14 : i64
          llvm.cond_br %61, ^bb4, ^bb7
        ^bb4:  // pred: ^bb3
          %62 = llvm.extractelement %58[%59 : i64] : vector<32xi1>
          llvm.cond_br %62, ^bb5, ^bb6(%60 : vector<32xf32>)
        ^bb5:  // pred: ^bb4
          %63 = llvm.add %48, %59 : i64
          %64 = llvm.mul %43, %6 overflow<nsw, nuw> : i64
          %65 = llvm.mul %63, %16 overflow<nsw, nuw> : i64
          %66 = llvm.add %64, %65 overflow<nsw, nuw> : i64
          %67 = llvm.add %66, %53 overflow<nsw, nuw> : i64
          %68 = llvm.getelementptr inbounds|nuw %26[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 : !llvm.ptr -> f32
          %70 = llvm.insertelement %69, %60[%59 : i64] : vector<32xf32>
          llvm.br ^bb6(%70 : vector<32xf32>)
        ^bb6(%71: vector<32xf32>):  // 2 preds: ^bb4, ^bb5
          %72 = llvm.add %59, %17 : i64
          llvm.br ^bb3(%72, %71 : i64, vector<32xf32>)
        ^bb7:  // pred: ^bb3
          %73 = llvm.mul %43, %2 : i64
          %74 = llvm.mul %47, %3 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.mul %53, %14 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.add %77, %18 : i64
          %79 = llvm.add %78, %18 : i64
          %80 = llvm.getelementptr %33[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %60, %80 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %81 = llvm.add %53, %17 : i64
          llvm.br ^bb1(%81 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_62::@embedded_elf_riscv_64::@main_graph$async_dispatch_62_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_62) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_62::@embedded_elf_riscv_64::@main_graph$async_dispatch_62_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_62_embedded_elf_riscv_64_main_graph$async_dispatch_62_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
