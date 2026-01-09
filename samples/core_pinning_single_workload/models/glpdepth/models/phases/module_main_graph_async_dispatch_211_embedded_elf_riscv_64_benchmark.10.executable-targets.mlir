#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_211 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<8xf32>
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi64>
          %3 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %4 = llvm.mlir.constant(51076 : index) : i64
          %5 = llvm.mlir.constant(226 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(802816 : index) : i64
          %8 = llvm.mlir.constant(12544 : index) : i64
          %9 = llvm.mlir.constant(8 : i64) : i64
          %10 = llvm.mlir.constant(32 : i64) : i64
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(4 : index) : i64
          %13 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %14 = llvm.mlir.constant(112 : index) : i64
          %15 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(dense<1.110000e+02> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %18 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %20 = llvm.mlir.constant(8 : index) : i64
          %21 = llvm.mlir.constant(1 : index) : i64
          %22 = llvm.mlir.constant(56 : index) : i64
          %23 = llvm.mlir.constant(64 : index) : i64
          %24 = llvm.mlir.constant(0 : index) : i64
          %25 = llvm.mlir.constant(5.000000e-01 : f32) : f32
          %26 = llvm.mlir.constant(2.000000e+00 : f32) : f32
          %27 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %28 = llvm.mlir.constant(1.110000e+02 : f32) : f32
          %29 = llvm.mlir.constant(1.000000e+00 : f32) : f32
          %30 = llvm.mlir.constant(2809856 : index) : i64
          %31 = llvm.mlir.constant(6021120 : index) : i64
          %32 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %33 = llvm.extractvalue %32[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
          %35 = llvm.mul %30, %9 : i64
          %36 = llvm.udiv %35, %10 : i64
          %37 = llvm.getelementptr %34[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%37, %23 : !llvm.ptr, i64)] : i1
          %38 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %39 = llvm.extractvalue %38[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.getelementptr %39[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %41 = llvm.load %40 : !llvm.ptr -> !llvm.ptr
          %42 = llvm.mul %31, %9 : i64
          %43 = llvm.udiv %42, %10 : i64
          %44 = llvm.getelementptr %41[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%44, %23 : !llvm.ptr, i64)] : i1
          %45 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %46 = llvm.extractvalue %45[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %47 = llvm.zext %46 : i32 to i64
          %48 = llvm.sdiv %47, %12 : i64
          %49 = llvm.mul %48, %12 : i64
          %50 = llvm.icmp "ne" %47, %49 : i64
          %51 = llvm.icmp "slt" %47, %24 : i64
          %52 = llvm.and %50, %51 : i1
          %53 = llvm.add %48, %11 : i64
          %54 = llvm.select %52, %53, %48 : i1, i64
          %55 = llvm.srem %47, %12 : i64
          %56 = llvm.icmp "slt" %55, %24 : i64
          %57 = llvm.add %55, %12 overflow<nsw> : i64
          %58 = llvm.select %56, %57, %55 : i1, i64
          %59 = llvm.mul %54, %22 overflow<nsw> : i64
          %60 = llvm.mul %58, %22 overflow<nsw> : i64
          llvm.br ^bb1(%24 : i64)
        ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb8
          %62 = llvm.icmp "slt" %61, %23 : i64
          llvm.cond_br %62, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          %63 = llvm.mul %61, %14 : i64
          llvm.br ^bb3(%24 : i64)
        ^bb3(%64: i64):  // 2 preds: ^bb2, ^bb7
          %65 = llvm.icmp "slt" %64, %22 : i64
          llvm.cond_br %65, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          %66 = llvm.add %59, %64 : i64
          %67 = llvm.sitofp %66 : i64 to f32
          %68 = llvm.fadd %67, %25 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %69 = llvm.fdiv %68, %26 : f32
          %70 = llvm.fsub %69, %25 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %71 = llvm.fcmp "ugt" %70, %27 : f32
          %72 = llvm.select %71, %70, %27 : i1, f32
          %73 = llvm.fcmp "ult" %72, %28 : f32
          %74 = llvm.select %73, %72, %28 : i1, f32
          %75 = llvm.intr.floor(%74) : (f32) -> f32
          %76 = llvm.fadd %74, %29 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %77 = llvm.intr.floor(%76) : (f32) -> f32
          %78 = llvm.fptosi %75 : f32 to i64
          %79 = llvm.fcmp "ult" %76, %28 : f32
          %80 = llvm.select %79, %76, %28 : i1, f32
          %81 = llvm.fptosi %80 : f32 to i64
          %82 = llvm.add %78, %63 : i64
          %83 = llvm.mul %82, %14 : i64
          %84 = llvm.add %81, %63 : i64
          %85 = llvm.mul %84, %14 : i64
          %86 = llvm.fsub %77, %74 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %87 = llvm.fsub %74, %75 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.br ^bb5(%24 : i64)
        ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb6
          %89 = llvm.icmp "slt" %88, %22 : i64
          llvm.cond_br %89, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %90 = llvm.add %60, %88 : i64
          %91 = llvm.insertelement %90, %2[%1 : i32] : vector<8xi64>
          %92 = llvm.shufflevector %91, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %93 = llvm.add %92, %3 : vector<8xi64>
          %94 = llvm.sitofp %93 : vector<8xi64> to vector<8xf32>
          %95 = llvm.fadd %94, %19 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %96 = llvm.fdiv %95, %18 : vector<8xf32>
          %97 = llvm.fsub %96, %19 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %98 = llvm.fcmp "ugt" %97, %17 : vector<8xf32>
          %99 = llvm.select %98, %97, %17 : vector<8xi1>, vector<8xf32>
          %100 = llvm.fcmp "uno" %17, %17 : vector<8xf32>
          %101 = llvm.select %100, %17, %99 : vector<8xi1>, vector<8xf32>
          %102 = llvm.fcmp "ult" %101, %16 : vector<8xf32>
          %103 = llvm.select %102, %101, %16 : vector<8xi1>, vector<8xf32>
          %104 = llvm.fcmp "uno" %16, %16 : vector<8xf32>
          %105 = llvm.select %104, %16, %103 : vector<8xi1>, vector<8xf32>
          %106 = llvm.intr.floor(%105) : (vector<8xf32>) -> vector<8xf32>
          %107 = llvm.fadd %105, %15 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %108 = llvm.intr.floor(%107) : (vector<8xf32>) -> vector<8xf32>
          %109 = llvm.fptosi %106 : vector<8xf32> to vector<8xi64>
          %110 = llvm.fcmp "ult" %107, %16 : vector<8xf32>
          %111 = llvm.select %110, %107, %16 : vector<8xi1>, vector<8xf32>
          %112 = llvm.select %104, %16, %111 : vector<8xi1>, vector<8xf32>
          %113 = llvm.fptosi %112 : vector<8xf32> to vector<8xi64>
          %114 = llvm.insertelement %83, %2[%1 : i32] : vector<8xi64>
          %115 = llvm.shufflevector %114, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %116 = llvm.add %109, %115 : vector<8xi64>
          %117 = llvm.mul %24, %7 : i64
          %118 = llvm.mul %24, %8 : i64
          %119 = llvm.add %117, %118 : i64
          %120 = llvm.mul %24, %14 : i64
          %121 = llvm.add %119, %120 : i64
          %122 = llvm.add %121, %24 : i64
          %123 = llvm.getelementptr %37[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.getelementptr %123[%116] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %125 = llvm.intr.masked.gather %124, %13, %17 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %126 = llvm.add %113, %115 : vector<8xi64>
          %127 = llvm.getelementptr %123[%126] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %128 = llvm.intr.masked.gather %127, %13, %17 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %129 = llvm.insertelement %85, %2[%1 : i32] : vector<8xi64>
          %130 = llvm.shufflevector %129, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %131 = llvm.add %109, %130 : vector<8xi64>
          %132 = llvm.getelementptr %123[%131] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %133 = llvm.intr.masked.gather %132, %13, %17 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %134 = llvm.add %113, %130 : vector<8xi64>
          %135 = llvm.getelementptr %123[%134] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %136 = llvm.intr.masked.gather %135, %13, %17 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %137 = llvm.fsub %108, %105 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %138 = llvm.fsub %105, %106 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %139 = llvm.fmul %137, %125 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %140 = llvm.fmul %138, %128 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %141 = llvm.fadd %139, %140 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %142 = llvm.insertelement %86, %0[%1 : i32] : vector<8xf32>
          %143 = llvm.shufflevector %142, %0 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %144 = llvm.fmul %143, %141 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %145 = llvm.fmul %137, %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %146 = llvm.fmul %138, %136 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %147 = llvm.fadd %145, %146 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %148 = llvm.insertelement %87, %0[%1 : i32] : vector<8xf32>
          %149 = llvm.shufflevector %148, %0 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %150 = llvm.fmul %149, %147 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %151 = llvm.fadd %144, %150 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %152 = llvm.add %66, %21 : i64
          %153 = llvm.add %90, %21 : i64
          %154 = llvm.mul %61, %4 : i64
          %155 = llvm.mul %152, %5 : i64
          %156 = llvm.add %154, %155 : i64
          %157 = llvm.add %156, %153 : i64
          %158 = llvm.getelementptr %44[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %158 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %159 = llvm.add %88, %20 : i64
          llvm.br ^bb5(%159 : i64)
        ^bb7:  // pred: ^bb5
          %160 = llvm.add %64, %21 : i64
          llvm.br ^bb3(%160 : i64)
        ^bb8:  // pred: ^bb3
          %161 = llvm.add %61, %21 : i64
          llvm.br ^bb1(%161 : i64)
        ^bb9:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer = util.global.load immutable @main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_211::@embedded_elf_riscv_64::@main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_211) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_211::@embedded_elf_riscv_64::@main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_211_embedded_elf_riscv_64_main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
