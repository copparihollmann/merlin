#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_7 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_7_reduction_49x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_7_reduction_49x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<8xf32>
          %8 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %9 = llvm.mlir.constant(0 : i32) : i32
          %10 = llvm.mlir.poison : vector<1xf32>
          %11 = llvm.mlir.constant(0 : i64) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(49 : index) : i64
          %15 = llvm.mlir.constant(8 : i64) : i64
          %16 = llvm.mlir.constant(32 : i64) : i64
          %17 = llvm.mlir.constant(3.200000e+01 : f32) : f32
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %24 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %25 = llvm.mlir.constant(dense<9.99999974E-6> : vector<1xf32>) : vector<1xf32>
          %26 = llvm.mlir.constant(dense<3.200000e+01> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(8 : index) : i64
          %29 = llvm.mlir.constant(32 : index) : i64
          %30 = llvm.mlir.constant(4 : index) : i64
          %31 = llvm.mlir.constant(1 : index) : i64
          %32 = llvm.mlir.constant(0 : index) : i64
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.load %34 : !llvm.ptr -> i32
          %36 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %37 = llvm.load %36 : !llvm.ptr -> i32
          %38 = llvm.getelementptr %34[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %39 = llvm.load %38 : !llvm.ptr -> i32
          %40 = llvm.zext %35 : i32 to i64
          %41 = llvm.zext %37 : i32 to i64
          %42 = llvm.zext %39 : i32 to i64
          %43 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %40, %15 : i64
          %46 = llvm.udiv %45, %16 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%47, %12 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          %51 = llvm.mul %41, %15 : i64
          %52 = llvm.udiv %51, %16 : i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%53, %12 : !llvm.ptr, i64)] : i1
          %54 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %55 = llvm.extractvalue %54[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %56 = llvm.getelementptr %55[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %57 = llvm.load %56 : !llvm.ptr -> !llvm.ptr
          %58 = llvm.mul %42, %15 : i64
          %59 = llvm.udiv %58, %16 : i64
          %60 = llvm.getelementptr %57[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%60, %12 : !llvm.ptr, i64)] : i1
          %61 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %62 = llvm.extractvalue %61[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %63 = llvm.zext %62 : i32 to i64
          llvm.br ^bb1(%32, %24 : i64, vector<8xf32>)
        ^bb1(%64: i64, %65: vector<8xf32>):  // 2 preds: ^bb0, ^bb2
          %66 = llvm.icmp "slt" %64, %30 : i64
          llvm.cond_br %66, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %67 = llvm.mul %64, %28 overflow<nsw> : i64
          %68 = llvm.mul %63, %29 : i64
          %69 = llvm.add %68, %67 : i64
          %70 = llvm.getelementptr %47[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %72 = llvm.fadd %65, %71 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %73 = llvm.add %64, %31 : i64
          llvm.br ^bb1(%73, %72 : i64, vector<8xf32>)
        ^bb3:  // pred: ^bb1
          %74 = "llvm.intr.vector.reduce.fadd"(%23, %65) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %75 = llvm.fdiv %74, %17 : f32
          llvm.br ^bb4(%32, %27 : i64, vector<1xf32>)
        ^bb4(%76: i64, %77: vector<1xf32>):  // 2 preds: ^bb3, ^bb5
          %78 = llvm.icmp "slt" %76, %29 : i64
          llvm.cond_br %78, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %79 = llvm.mul %76, %14 : i64
          %80 = llvm.add %79, %63 : i64
          %81 = llvm.getelementptr %53[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %83 = llvm.extractelement %82[%11 : i64] : vector<1xf32>
          %84 = llvm.fsub %83, %75 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %85 = llvm.extractelement %77[%11 : i64] : vector<1xf32>
          %86 = llvm.fmul %84, %84 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %87 = llvm.fadd %86, %85 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %88 = llvm.insertelement %87, %10[%9 : i32] : vector<1xf32>
          %89 = llvm.add %76, %31 : i64
          llvm.br ^bb4(%89, %88 : i64, vector<1xf32>)
        ^bb6:  // pred: ^bb4
          %90 = llvm.fdiv %77, %26 : vector<1xf32>
          %91 = llvm.fadd %90, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %92 = llvm.intr.sqrt(%91) : (vector<1xf32>) -> vector<1xf32>
          %93 = llvm.fdiv %8, %92 : vector<1xf32>
          llvm.br ^bb7(%32 : i64)
        ^bb7(%94: i64):  // 2 preds: ^bb6, ^bb8
          %95 = llvm.icmp "slt" %94, %29 : i64
          llvm.cond_br %95, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %96 = llvm.mul %94, %14 : i64
          %97 = llvm.add %96, %63 : i64
          %98 = llvm.getelementptr %53[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.load %98 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %100 = llvm.add %94, %31 : i64
          %101 = llvm.mul %100, %14 : i64
          %102 = llvm.add %101, %63 : i64
          %103 = llvm.getelementptr %53[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %105 = llvm.add %94, %22 : i64
          %106 = llvm.mul %105, %14 : i64
          %107 = llvm.add %106, %63 : i64
          %108 = llvm.getelementptr %53[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %110 = llvm.add %94, %21 : i64
          %111 = llvm.mul %110, %14 : i64
          %112 = llvm.add %111, %63 : i64
          %113 = llvm.getelementptr %53[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %115 = llvm.add %94, %30 : i64
          %116 = llvm.mul %115, %14 : i64
          %117 = llvm.add %116, %63 : i64
          %118 = llvm.getelementptr %53[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %120 = llvm.add %94, %20 : i64
          %121 = llvm.mul %120, %14 : i64
          %122 = llvm.add %121, %63 : i64
          %123 = llvm.getelementptr %53[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %125 = llvm.add %94, %19 : i64
          %126 = llvm.mul %125, %14 : i64
          %127 = llvm.add %126, %63 : i64
          %128 = llvm.getelementptr %53[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %130 = llvm.add %94, %18 : i64
          %131 = llvm.mul %130, %14 : i64
          %132 = llvm.add %131, %63 : i64
          %133 = llvm.getelementptr %53[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %135 = llvm.extractelement %99[%11 : i64] : vector<1xf32>
          %136 = llvm.extractelement %104[%11 : i64] : vector<1xf32>
          %137 = llvm.extractelement %109[%11 : i64] : vector<1xf32>
          %138 = llvm.extractelement %114[%11 : i64] : vector<1xf32>
          %139 = llvm.extractelement %119[%11 : i64] : vector<1xf32>
          %140 = llvm.extractelement %124[%11 : i64] : vector<1xf32>
          %141 = llvm.extractelement %129[%11 : i64] : vector<1xf32>
          %142 = llvm.extractelement %134[%11 : i64] : vector<1xf32>
          %143 = llvm.insertelement %135, %7[%11 : i64] : vector<8xf32>
          %144 = llvm.insertelement %136, %143[%6 : i64] : vector<8xf32>
          %145 = llvm.insertelement %137, %144[%5 : i64] : vector<8xf32>
          %146 = llvm.insertelement %138, %145[%4 : i64] : vector<8xf32>
          %147 = llvm.insertelement %139, %146[%3 : i64] : vector<8xf32>
          %148 = llvm.insertelement %140, %147[%2 : i64] : vector<8xf32>
          %149 = llvm.insertelement %141, %148[%1 : i64] : vector<8xf32>
          %150 = llvm.insertelement %142, %149[%0 : i64] : vector<8xf32>
          %151 = llvm.insertelement %75, %7[%9 : i32] : vector<8xf32>
          %152 = llvm.shufflevector %151, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %153 = llvm.fsub %150, %152 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %154 = llvm.extractelement %93[%11 : i64] : vector<1xf32>
          %155 = llvm.insertelement %154, %7[%9 : i32] : vector<8xf32>
          %156 = llvm.shufflevector %155, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %157 = llvm.fmul %153, %156 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %158 = llvm.fadd %157, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %159 = llvm.mul %63, %29 : i64
          %160 = llvm.add %159, %94 : i64
          %161 = llvm.getelementptr %60[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %158, %161 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %162 = llvm.add %94, %28 : i64
          llvm.br ^bb7(%162 : i64)
        ^bb9:  // pred: ^bb7
          llvm.return %9 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c1649536_i32 = arith.constant 1649536 : i32
    %c1643264_i32 = arith.constant 1643264 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer = util.global.load immutable @main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_7::@embedded_elf_riscv_64::@main_graph$async_dispatch_7_reduction_49x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_7) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_7::@embedded_elf_riscv_64::@main_graph$async_dispatch_7_reduction_49x32_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1649536_i32, %c1643264_i32, %c401408_i32]) bindings([
      (%main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_7_embedded_elf_riscv_64_main_graph$async_dispatch_7_reduction_49x32_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
