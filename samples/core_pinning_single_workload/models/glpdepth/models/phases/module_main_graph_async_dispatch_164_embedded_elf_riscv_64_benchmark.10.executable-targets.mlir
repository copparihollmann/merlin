#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_164 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_164_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_164_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<7xf32>
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(true) : i1
          %10 = llvm.mlir.constant(7168 : index) : i64
          %11 = llvm.mlir.constant(1024 : index) : i64
          %12 = llvm.mlir.constant(8 : i64) : i64
          %13 = llvm.mlir.constant(32 : i64) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(64 : index) : i64
          %20 = llvm.mlir.constant(1 : index) : i64
          %21 = llvm.mlir.constant(7 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.mlir.constant(1335296 : index) : i64
          %24 = llvm.mlir.constant(1003520 : index) : i64
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
          %28 = llvm.mul %23, %12 : i64
          %29 = llvm.udiv %28, %13 : i64
          %30 = llvm.getelementptr %27[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%30, %19 : !llvm.ptr, i64)] : i1
          %31 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %32 = llvm.extractvalue %31[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.getelementptr %32[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
          %35 = llvm.mul %24, %12 : i64
          %36 = llvm.udiv %35, %13 : i64
          %37 = llvm.getelementptr %34[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%37, %19 : !llvm.ptr, i64)] : i1
          %38 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %39 = llvm.extractvalue %38[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %40 = llvm.zext %39 : i32 to i64
          %41 = llvm.mul %40, %19 overflow<nsw> : i64
          llvm.br ^bb1(%22 : i64)
        ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb4
          %43 = llvm.icmp "slt" %42, %21 : i64
          llvm.cond_br %43, ^bb2(%22 : i64), ^bb5
        ^bb2(%44: i64):  // 2 preds: ^bb1, ^bb3
          %45 = llvm.icmp "slt" %44, %19 : i64
          llvm.cond_br %45, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %46 = llvm.add %44, %41 : i64
          %47 = llvm.mul %42, %10 : i64
          %48 = llvm.mul %22, %11 : i64
          %49 = llvm.add %47, %48 : i64
          %50 = llvm.add %49, %46 : i64
          %51 = llvm.getelementptr %30[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %53 = llvm.mul %20, %11 : i64
          %54 = llvm.add %47, %53 : i64
          %55 = llvm.add %54, %46 : i64
          %56 = llvm.getelementptr %30[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %58 = llvm.mul %18, %11 : i64
          %59 = llvm.add %47, %58 : i64
          %60 = llvm.add %59, %46 : i64
          %61 = llvm.getelementptr %30[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %63 = llvm.mul %17, %11 : i64
          %64 = llvm.add %47, %63 : i64
          %65 = llvm.add %64, %46 : i64
          %66 = llvm.getelementptr %30[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %68 = llvm.mul %16, %11 : i64
          %69 = llvm.add %47, %68 : i64
          %70 = llvm.add %69, %46 : i64
          %71 = llvm.getelementptr %30[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %73 = llvm.mul %15, %11 : i64
          %74 = llvm.add %47, %73 : i64
          %75 = llvm.add %74, %46 : i64
          %76 = llvm.getelementptr %30[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %78 = llvm.mul %14, %11 : i64
          %79 = llvm.add %47, %78 : i64
          %80 = llvm.add %79, %46 : i64
          %81 = llvm.getelementptr %30[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %83 = llvm.extractelement %52[%8 : i64] : vector<1xf32>
          %84 = llvm.extractelement %57[%8 : i64] : vector<1xf32>
          %85 = llvm.extractelement %62[%8 : i64] : vector<1xf32>
          %86 = llvm.extractelement %67[%8 : i64] : vector<1xf32>
          %87 = llvm.extractelement %72[%8 : i64] : vector<1xf32>
          %88 = llvm.extractelement %77[%8 : i64] : vector<1xf32>
          %89 = llvm.extractelement %82[%8 : i64] : vector<1xf32>
          %90 = llvm.insertelement %83, %7[%8 : i64] : vector<7xf32>
          %91 = llvm.insertelement %84, %90[%6 : i64] : vector<7xf32>
          %92 = llvm.insertelement %85, %91[%5 : i64] : vector<7xf32>
          %93 = llvm.insertelement %86, %92[%4 : i64] : vector<7xf32>
          %94 = llvm.insertelement %87, %93[%3 : i64] : vector<7xf32>
          %95 = llvm.insertelement %88, %94[%2 : i64] : vector<7xf32>
          %96 = llvm.insertelement %89, %95[%1 : i64] : vector<7xf32>
          %97 = llvm.mul %22, %10 : i64
          %98 = llvm.add %47, %97 : i64
          %99 = llvm.mul %46, %21 : i64
          %100 = llvm.add %98, %99 : i64
          %101 = llvm.add %100, %22 : i64
          %102 = llvm.add %101, %22 : i64
          %103 = llvm.getelementptr %37[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %96, %103 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %104 = llvm.add %44, %20 : i64
          llvm.br ^bb2(%104 : i64)
        ^bb4:  // pred: ^bb2
          %105 = llvm.add %42, %20 : i64
          llvm.br ^bb1(%105 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_164::@embedded_elf_riscv_64::@main_graph$async_dispatch_164_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_164) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_164::@embedded_elf_riscv_64::@main_graph$async_dispatch_164_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_164_embedded_elf_riscv_64_main_graph$async_dispatch_164_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
