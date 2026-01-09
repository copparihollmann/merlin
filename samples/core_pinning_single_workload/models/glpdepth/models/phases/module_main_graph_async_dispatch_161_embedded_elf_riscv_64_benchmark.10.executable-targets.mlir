#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_161 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_161_reduction_49x256_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_161_reduction_49x256_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %1 = llvm.mlir.poison : vector<1xf32>
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(0 : i32) : i32
          %4 = llvm.mlir.poison : vector<8xf32>
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(2.560000e+02 : f32) : f32
          %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %12 = llvm.mlir.constant(677376 : index) : i64
          %13 = llvm.mlir.constant(627200 : index) : i64
          %14 = llvm.mlir.constant(0 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(32 : index) : i64
          %17 = llvm.mlir.constant(256 : index) : i64
          %18 = llvm.mlir.constant(8 : index) : i64
          %19 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %20 = llvm.mlir.constant(dense<2.560000e+02> : vector<1xf32>) : vector<1xf32>
          %21 = llvm.mlir.constant(dense<9.99999997E-7> : vector<1xf32>) : vector<1xf32>
          %22 = llvm.alloca %17 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.getelementptr %24[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %27 = llvm.load %26 : !llvm.ptr -> i32
          %28 = llvm.zext %25 : i32 to i64
          %29 = llvm.zext %27 : i32 to i64
          %30 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %28, %7 : i64
          %33 = llvm.udiv %32, %8 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %13, %7 : i64
          %39 = llvm.udiv %38, %8 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %29, %7 : i64
          %46 = llvm.udiv %45, %8 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.getelementptr %49[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = llvm.mul %12, %7 : i64
          %53 = llvm.udiv %52, %8 : i64
          %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
          %55 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %56 = llvm.extractvalue %55[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %57 = llvm.zext %56 : i32 to i64
          llvm.br ^bb1(%14 : i64)
        ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb2
          %59 = llvm.icmp "slt" %58, %17 : i64
          llvm.cond_br %59, ^bb2, ^bb3(%14 : i64)
        ^bb2:  // pred: ^bb1
          %60 = llvm.mul %57, %17 overflow<nsw, nuw> : i64
          %61 = llvm.add %60, %58 overflow<nsw, nuw> : i64
          %62 = llvm.getelementptr inbounds|nuw %47[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 : !llvm.ptr -> f32
          %64 = llvm.mul %14, %17 overflow<nsw, nuw> : i64
          %65 = llvm.add %64, %58 overflow<nsw, nuw> : i64
          %66 = llvm.getelementptr inbounds|nuw %22[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %63, %66 : f32, !llvm.ptr
          %67 = llvm.add %58, %15 : i64
          llvm.br ^bb1(%67 : i64)
        ^bb3(%68: i64):  // 2 preds: ^bb1, ^bb4
          %69 = llvm.icmp "slt" %68, %17 : i64
          llvm.cond_br %69, ^bb4, ^bb5(%14, %11 : i64, vector<8xf32>)
        ^bb4:  // pred: ^bb3
          %70 = llvm.mul %57, %17 : i64
          %71 = llvm.add %70, %68 : i64
          %72 = llvm.getelementptr %34[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %74 = llvm.getelementptr %40[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %76 = llvm.fadd %75, %11 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %77 = llvm.fadd %73, %76 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %78 = llvm.mul %14, %17 : i64
          %79 = llvm.add %78, %68 : i64
          %80 = llvm.getelementptr %22[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %77, %80 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %81 = llvm.add %68, %18 : i64
          llvm.br ^bb3(%81 : i64)
        ^bb5(%82: i64, %83: vector<8xf32>):  // 2 preds: ^bb3, ^bb6
          %84 = llvm.icmp "slt" %82, %16 : i64
          llvm.cond_br %84, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %85 = llvm.mul %82, %18 overflow<nsw> : i64
          %86 = llvm.mul %14, %17 : i64
          %87 = llvm.add %86, %85 : i64
          %88 = llvm.getelementptr %22[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %90 = llvm.fadd %83, %89 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %91 = llvm.add %82, %15 : i64
          llvm.br ^bb5(%91, %90 : i64, vector<8xf32>)
        ^bb7:  // pred: ^bb5
          %92 = "llvm.intr.vector.reduce.fadd"(%10, %83) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %93 = llvm.fdiv %92, %9 : f32
          llvm.br ^bb8(%14, %19 : i64, vector<1xf32>)
        ^bb8(%94: i64, %95: vector<1xf32>):  // 2 preds: ^bb7, ^bb9
          %96 = llvm.icmp "slt" %94, %17 : i64
          llvm.cond_br %96, ^bb9, ^bb10
        ^bb9:  // pred: ^bb8
          %97 = llvm.mul %57, %17 : i64
          %98 = llvm.add %97, %94 : i64
          %99 = llvm.getelementptr %34[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %101 = llvm.getelementptr %40[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %103 = llvm.fadd %102, %11 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %104 = llvm.fadd %100, %103 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %105 = llvm.insertelement %93, %4[%3 : i32] : vector<8xf32>
          %106 = llvm.shufflevector %105, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %107 = llvm.fsub %104, %106 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %108 = llvm.extractelement %95[%2 : i64] : vector<1xf32>
          %109 = llvm.fmul %107, %107 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %110 = "llvm.intr.vector.reduce.fadd"(%108, %109) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %111 = llvm.insertelement %110, %1[%3 : i32] : vector<1xf32>
          %112 = llvm.add %94, %18 : i64
          llvm.br ^bb8(%112, %111 : i64, vector<1xf32>)
        ^bb10:  // pred: ^bb8
          %113 = llvm.fdiv %95, %20 : vector<1xf32>
          %114 = llvm.fadd %113, %21 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %115 = llvm.intr.sqrt(%114) : (vector<1xf32>) -> vector<1xf32>
          %116 = llvm.fdiv %0, %115 : vector<1xf32>
          llvm.br ^bb11(%14 : i64)
        ^bb11(%117: i64):  // 2 preds: ^bb10, ^bb12
          %118 = llvm.icmp "slt" %117, %17 : i64
          llvm.cond_br %118, ^bb12, ^bb13
        ^bb12:  // pred: ^bb11
          %119 = llvm.mul %57, %17 : i64
          %120 = llvm.add %119, %117 : i64
          %121 = llvm.getelementptr %34[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %123 = llvm.getelementptr %40[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %125 = llvm.fadd %124, %11 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %126 = llvm.fadd %122, %125 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %127 = llvm.insertelement %93, %4[%3 : i32] : vector<8xf32>
          %128 = llvm.shufflevector %127, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %129 = llvm.fsub %126, %128 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %130 = llvm.extractelement %116[%2 : i64] : vector<1xf32>
          %131 = llvm.insertelement %130, %4[%3 : i32] : vector<8xf32>
          %132 = llvm.shufflevector %131, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %133 = llvm.fmul %129, %132 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %134 = llvm.fadd %133, %11 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %135 = llvm.getelementptr %54[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %134, %135 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %136 = llvm.getelementptr %47[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %126, %136 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %137 = llvm.add %117, %18 : i64
          llvm.br ^bb11(%137 : i64)
        ^bb13:  // pred: ^bb11
          llvm.return %3 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer
  util.initializer {
    %c96516096 = arith.constant 96516096 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c96516096}
    util.global.store %buffer, @main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c526848_i32 = arith.constant 526848 : i32
    %c577024_i32 = arith.constant 577024 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c64344064 = arith.constant 64344064 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer = util.global.load immutable @main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_161::@embedded_elf_riscv_64::@main_graph$async_dispatch_161_reduction_49x256_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_161) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_161::@embedded_elf_riscv_64::@main_graph$async_dispatch_161_reduction_49x256_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c526848_i32, %c577024_i32]) bindings([
      (%main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer)[%c32172032, %c32172032], 
      (%main_graph$async_dispatch_161_embedded_elf_riscv_64_main_graph$async_dispatch_161_reduction_49x256_f32_buffer : !hal.buffer)[%c64344064, %c32172032]
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
