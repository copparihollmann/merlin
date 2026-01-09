#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_212 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c98 = arith.constant 98 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c98, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_64xf32(dense<[-0.0304702427, -0.0127132637, 0.0272679292, 0.0330124199, 0.0257603824, 0.0256423354, 0.0287690368, -0.0106871873, -0.00137732923, 0.0152659072, 0.0191579312, -0.00934970378, -0.0264383368, 0.0287385788, 0.0271051191, -2.963100e-02, -0.00789042375, -0.015522073, -0.0046541593, 0.0203541126, -0.0362021737, 0.0261264257, 0.0202726722, -0.0389487967, -0.00879431795, 0.0150221046, 0.0142212864, -0.0186255723, 0.0116875125, -0.0366056934, -0.0257554352, 0.0125805493, -0.033371225, 0.0125715043, -0.00558280479, -0.0120511055, 0.0322652981, 0.0335849337, 0.026668271, -0.0263067298, -0.0115555972, -0.0176378749, 0.0147840828, 0.0152932759, 1.864390e-02, 8.185680e-03, 7.95394182E-4, 0.00211045146, -0.0239556581, -0.00401718449, 0.0391721576, -0.0151657667, 0.0199349523, -0.0246556811, 0.0278879311, -0.0197500847, -0.0286979191, 0.00295018661, -0.0374938622, -0.0153798908, 0.0226596445, 0.02373676, 0.0167544335, -0.0314750373]> : tensor<64xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<64 x f32>
        llvm.func @main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xf32>
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(576 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(51076 : index) : i64
          %7 = llvm.mlir.constant(226 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.addressof @__constant_64xf32 : !llvm.ptr
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(8 : index) : i64
          %13 = llvm.mlir.constant(32 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(64 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(49 : index) : i64
          %19 = llvm.mlir.constant(7 : index) : i64
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %21 = llvm.mlir.constant(19096576 : index) : i64
          %22 = llvm.mlir.constant(8505088 : index) : i64
          %23 = llvm.mlir.constant(6021120 : index) : i64
          %24 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x f32>
          %25 = llvm.alloca %12 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %26 = llvm.alloca %12 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %23, %8 : i64
          %31 = llvm.udiv %30, %9 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%32, %16 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          %37 = llvm.mul %22, %8 : i64
          %38 = llvm.udiv %37, %9 : i64
          %39 = llvm.getelementptr %36[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%39, %16 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %21, %8 : i64
          %45 = llvm.udiv %44, %9 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%46, %16 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %48 = llvm.extractvalue %47[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %49 = llvm.zext %48 : i32 to i64
          %50 = llvm.sdiv %49, %18 : i64
          %51 = llvm.mul %50, %18 : i64
          %52 = llvm.icmp "ne" %49, %51 : i64
          %53 = llvm.icmp "slt" %49, %17 : i64
          %54 = llvm.and %52, %53 : i1
          %55 = llvm.add %50, %11 : i64
          %56 = llvm.select %54, %55, %50 : i1, i64
          %57 = llvm.srem %49, %18 : i64
          %58 = llvm.icmp "slt" %57, %17 : i64
          %59 = llvm.add %57, %18 overflow<nsw> : i64
          %60 = llvm.select %58, %59, %57 : i1, i64
          %61 = llvm.sdiv %60, %19 : i64
          %62 = llvm.srem %49, %19 : i64
          %63 = llvm.icmp "slt" %62, %17 : i64
          %64 = llvm.add %62, %19 overflow<nsw> : i64
          %65 = llvm.select %63, %64, %62 : i1, i64
          %66 = llvm.mul %56, %13 overflow<nsw> : i64
          %67 = llvm.mul %61, %13 overflow<nsw> : i64
          %68 = llvm.mul %65, %13 overflow<nsw> : i64
          %69 = llvm.mul %17, %12 : i64
          %70 = llvm.add %69, %69 : i64
          %71 = llvm.add %70, %17 : i64
          %72 = llvm.getelementptr %26[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %20, %72 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          llvm.br ^bb1(%17 : i64)
        ^bb1(%73: i64):  // 2 preds: ^bb0, ^bb19
          %74 = llvm.icmp "slt" %73, %13 : i64
          llvm.cond_br %74, ^bb2, ^bb20
        ^bb2:  // pred: ^bb1
          %75 = llvm.add %73, %66 : i64
          %76 = llvm.getelementptr %24[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%17 : i64)
        ^bb3(%78: i64):  // 2 preds: ^bb2, ^bb18
          %79 = llvm.icmp "slt" %78, %13 : i64
          llvm.cond_br %79, ^bb4(%17 : i64), ^bb19
        ^bb4(%80: i64):  // 2 preds: ^bb3, ^bb17
          %81 = llvm.icmp "slt" %80, %13 : i64
          llvm.cond_br %81, ^bb5, ^bb18
        ^bb5:  // pred: ^bb4
          %82 = llvm.add %80, %68 : i64
          llvm.br ^bb6(%17 : i64)
        ^bb6(%83: i64):  // 2 preds: ^bb5, ^bb7
          %84 = llvm.icmp "slt" %83, %12 : i64
          llvm.cond_br %84, ^bb7, ^bb8(%17 : i64)
        ^bb7:  // pred: ^bb6
          %85 = llvm.mul %17, %12 overflow<nsw, nuw> : i64
          %86 = llvm.add %85, %85 overflow<nsw, nuw> : i64
          %87 = llvm.add %86, %83 overflow<nsw, nuw> : i64
          %88 = llvm.getelementptr inbounds|nuw %26[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 : !llvm.ptr -> f32
          %90 = llvm.getelementptr inbounds|nuw %25[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %89, %90 : f32, !llvm.ptr
          %91 = llvm.add %83, %14 : i64
          llvm.br ^bb6(%91 : i64)
        ^bb8(%92: i64):  // 2 preds: ^bb6, ^bb16
          %93 = llvm.icmp "slt" %92, %16 : i64
          llvm.cond_br %93, ^bb9(%17 : i64), ^bb17
        ^bb9(%94: i64):  // 2 preds: ^bb8, ^bb15
          %95 = llvm.icmp "slt" %94, %15 : i64
          llvm.cond_br %95, ^bb10, ^bb16
        ^bb10:  // pred: ^bb9
          %96 = llvm.add %94, %78 : i64
          %97 = llvm.add %96, %67 : i64
          llvm.br ^bb11(%17 : i64)
        ^bb11(%98: i64):  // 2 preds: ^bb10, ^bb14
          %99 = llvm.icmp "slt" %98, %12 : i64
          llvm.cond_br %99, ^bb12(%17 : i64), ^bb15
        ^bb12(%100: i64):  // 2 preds: ^bb11, ^bb13
          %101 = llvm.icmp "slt" %100, %15 : i64
          llvm.cond_br %101, ^bb13, ^bb14
        ^bb13:  // pred: ^bb12
          %102 = llvm.add %82, %98 : i64
          %103 = llvm.add %102, %100 : i64
          %104 = llvm.mul %92, %6 overflow<nsw, nuw> : i64
          %105 = llvm.mul %97, %7 overflow<nsw, nuw> : i64
          %106 = llvm.add %104, %105 overflow<nsw, nuw> : i64
          %107 = llvm.add %106, %103 overflow<nsw, nuw> : i64
          %108 = llvm.getelementptr inbounds|nuw %32[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 : !llvm.ptr -> f32
          %110 = llvm.mul %75, %3 overflow<nsw, nuw> : i64
          %111 = llvm.mul %92, %4 overflow<nsw, nuw> : i64
          %112 = llvm.add %110, %111 overflow<nsw, nuw> : i64
          %113 = llvm.mul %94, %15 overflow<nsw, nuw> : i64
          %114 = llvm.add %112, %113 overflow<nsw, nuw> : i64
          %115 = llvm.add %114, %100 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %39[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.mul %17, %12 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %118 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %98 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %25[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.fmul %109, %117 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %124 = llvm.fadd %122, %123 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %124, %121 : f32, !llvm.ptr
          %125 = llvm.add %100, %14 : i64
          llvm.br ^bb12(%125 : i64)
        ^bb14:  // pred: ^bb12
          %126 = llvm.add %98, %14 : i64
          llvm.br ^bb11(%126 : i64)
        ^bb15:  // pred: ^bb11
          %127 = llvm.add %94, %14 : i64
          llvm.br ^bb9(%127 : i64)
        ^bb16:  // pred: ^bb9
          %128 = llvm.add %92, %14 : i64
          llvm.br ^bb8(%128 : i64)
        ^bb17:  // pred: ^bb8
          %129 = llvm.getelementptr %25[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %131 = llvm.extractelement %77[%2 : i64] : vector<1xf32>
          %132 = llvm.insertelement %131, %1[%0 : i32] : vector<8xf32>
          %133 = llvm.shufflevector %132, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %134 = llvm.fadd %130, %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %135 = llvm.fcmp "ugt" %134, %20 : vector<8xf32>
          %136 = llvm.select %135, %134, %20 : vector<8xi1>, vector<8xf32>
          %137 = llvm.add %67, %78 : i64
          %138 = llvm.add %137, %14 : i64
          %139 = llvm.add %82, %14 : i64
          %140 = llvm.mul %75, %6 : i64
          %141 = llvm.mul %138, %7 : i64
          %142 = llvm.add %140, %141 : i64
          %143 = llvm.add %142, %139 : i64
          %144 = llvm.getelementptr %46[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %136, %144 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %145 = llvm.add %80, %12 : i64
          llvm.br ^bb4(%145 : i64)
        ^bb18:  // pred: ^bb4
          %146 = llvm.add %78, %14 : i64
          llvm.br ^bb3(%146 : i64)
        ^bb19:  // pred: ^bb3
          %147 = llvm.add %73, %14 : i64
          llvm.br ^bb1(%147 : i64)
        ^bb20:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_212::@embedded_elf_riscv_64::@main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_212) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_212::@embedded_elf_riscv_64::@main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_212_embedded_elf_riscv_64_main_graph$async_dispatch_212_conv_64x224x224x64x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
