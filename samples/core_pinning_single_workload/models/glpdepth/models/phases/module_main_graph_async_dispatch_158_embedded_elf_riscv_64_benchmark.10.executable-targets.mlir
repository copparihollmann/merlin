#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_158 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_158_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c14 = arith.constant 14 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c14, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_158_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<7xf32>
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(1792 : index) : i64
          %10 = llvm.mlir.constant(224 : index) : i64
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(256 : index) : i64
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.constant(-1 : index) : i64
          %17 = llvm.mlir.constant(6 : index) : i64
          %18 = llvm.mlir.constant(5 : index) : i64
          %19 = llvm.mlir.constant(3 : index) : i64
          %20 = llvm.mlir.constant(7 : index) : i64
          %21 = llvm.mlir.constant(2 : index) : i64
          %22 = llvm.mlir.constant(32 : index) : i64
          %23 = llvm.mlir.constant(4 : index) : i64
          %24 = llvm.mlir.constant(1 : index) : i64
          %25 = llvm.mlir.constant(0 : index) : i64
          %26 = llvm.mlir.constant(577024 : index) : i64
          %27 = llvm.mlir.constant(627200 : index) : i64
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %26, %14 : i64
          %32 = llvm.udiv %31, %15 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %27, %14 : i64
          %39 = llvm.udiv %38, %15 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %42 = llvm.extractvalue %41[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %43 = llvm.zext %42 : i32 to i64
          %44 = llvm.sdiv %43, %21 : i64
          %45 = llvm.mul %44, %21 : i64
          %46 = llvm.icmp "ne" %43, %45 : i64
          %47 = llvm.icmp "slt" %43, %25 : i64
          %48 = llvm.and %46, %47 : i1
          %49 = llvm.add %44, %16 : i64
          %50 = llvm.select %48, %49, %44 : i1, i64
          %51 = llvm.srem %43, %21 : i64
          %52 = llvm.icmp "slt" %51, %25 : i64
          %53 = llvm.add %51, %21 overflow<nsw> : i64
          %54 = llvm.select %52, %53, %51 : i1, i64
          %55 = llvm.mul %54, %23 overflow<nsw> : i64
          llvm.br ^bb1(%25 : i64)
        ^bb1(%56: i64):  // 2 preds: ^bb0, ^bb4
          %57 = llvm.icmp "slt" %56, %23 : i64
          llvm.cond_br %57, ^bb2(%25 : i64), ^bb5
        ^bb2(%58: i64):  // 2 preds: ^bb1, ^bb3
          %59 = llvm.icmp "slt" %58, %22 : i64
          llvm.cond_br %59, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %60 = llvm.add %56, %55 : i64
          %61 = llvm.mul %50, %20 overflow<nsw> : i64
          %62 = llvm.mul %61, %13 : i64
          %63 = llvm.mul %60, %22 : i64
          %64 = llvm.add %62, %63 : i64
          %65 = llvm.add %64, %58 : i64
          %66 = llvm.getelementptr %33[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %68 = llvm.add %61, %24 : i64
          %69 = llvm.mul %68, %13 : i64
          %70 = llvm.add %69, %63 : i64
          %71 = llvm.add %70, %58 : i64
          %72 = llvm.getelementptr %33[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %74 = llvm.add %61, %21 : i64
          %75 = llvm.mul %74, %13 : i64
          %76 = llvm.add %75, %63 : i64
          %77 = llvm.add %76, %58 : i64
          %78 = llvm.getelementptr %33[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %80 = llvm.add %61, %19 : i64
          %81 = llvm.mul %80, %13 : i64
          %82 = llvm.add %81, %63 : i64
          %83 = llvm.add %82, %58 : i64
          %84 = llvm.getelementptr %33[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %86 = llvm.add %61, %23 : i64
          %87 = llvm.mul %86, %13 : i64
          %88 = llvm.add %87, %63 : i64
          %89 = llvm.add %88, %58 : i64
          %90 = llvm.getelementptr %33[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %92 = llvm.add %61, %18 : i64
          %93 = llvm.mul %92, %13 : i64
          %94 = llvm.add %93, %63 : i64
          %95 = llvm.add %94, %58 : i64
          %96 = llvm.getelementptr %33[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %98 = llvm.add %61, %17 : i64
          %99 = llvm.mul %98, %13 : i64
          %100 = llvm.add %99, %63 : i64
          %101 = llvm.add %100, %58 : i64
          %102 = llvm.getelementptr %33[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %104 = llvm.extractelement %67[%8 : i64] : vector<1xf32>
          %105 = llvm.extractelement %73[%8 : i64] : vector<1xf32>
          %106 = llvm.extractelement %79[%8 : i64] : vector<1xf32>
          %107 = llvm.extractelement %85[%8 : i64] : vector<1xf32>
          %108 = llvm.extractelement %91[%8 : i64] : vector<1xf32>
          %109 = llvm.extractelement %97[%8 : i64] : vector<1xf32>
          %110 = llvm.extractelement %103[%8 : i64] : vector<1xf32>
          %111 = llvm.insertelement %104, %7[%8 : i64] : vector<7xf32>
          %112 = llvm.insertelement %105, %111[%6 : i64] : vector<7xf32>
          %113 = llvm.insertelement %106, %112[%5 : i64] : vector<7xf32>
          %114 = llvm.insertelement %107, %113[%4 : i64] : vector<7xf32>
          %115 = llvm.insertelement %108, %114[%3 : i64] : vector<7xf32>
          %116 = llvm.insertelement %109, %115[%2 : i64] : vector<7xf32>
          %117 = llvm.insertelement %110, %116[%1 : i64] : vector<7xf32>
          %118 = llvm.mul %50, %9 : i64
          %119 = llvm.mul %60, %10 : i64
          %120 = llvm.add %118, %119 : i64
          %121 = llvm.mul %58, %20 : i64
          %122 = llvm.add %120, %121 : i64
          %123 = llvm.add %122, %25 : i64
          %124 = llvm.add %123, %25 : i64
          %125 = llvm.getelementptr %40[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %117, %125 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %126 = llvm.add %58, %24 : i64
          llvm.br ^bb2(%126 : i64)
        ^bb4:  // pred: ^bb2
          %127 = llvm.add %56, %24 : i64
          llvm.br ^bb1(%127 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_158::@embedded_elf_riscv_64::@main_graph$async_dispatch_158_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_158) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_158::@embedded_elf_riscv_64::@main_graph$async_dispatch_158_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_158_embedded_elf_riscv_64_main_graph$async_dispatch_158_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
