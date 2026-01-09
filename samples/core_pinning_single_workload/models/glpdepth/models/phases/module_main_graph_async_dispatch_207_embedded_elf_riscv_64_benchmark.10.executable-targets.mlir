#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_207 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_32xf32(dense<[-0.0354592465, 0.0280269887, -0.0276874769, -0.030784145, -0.0239701383, 0.0252213161, -0.0199524462, -0.0016018817, 0.0384363234, -0.00667192694, -0.00679400656, -0.010051379, 0.0189476162, -0.0127097135, 0.0142928688, -0.0399930365, 0.0393991396, 0.0370362103, 0.0403746255, 0.0179546028, -3.99766344E-4, 0.0355365649, -0.00775233516, 0.0406736694, -0.00351313478, 2.58012326E-4, -3.382610e-02, -0.0187525116, -0.0338579342, 0.0401017107, -0.0197450723, 0.0255481768]> : tensor<32xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<32 x f32>
        llvm.func @main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(576 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(3364 : index) : i64
          %7 = llvm.mlir.constant(58 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.addressof @__constant_32xf32 : !llvm.ptr
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(28 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(64 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(4 : index) : i64
          %19 = llvm.mlir.constant(2 : index) : i64
          %20 = llvm.mlir.poison : vector<8xf32>
          %21 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %22 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %23 = llvm.mlir.constant(602112 : index) : i64
          %24 = llvm.mlir.constant(8654848 : index) : i64
          %25 = llvm.mlir.constant(5335040 : index) : i64
          %26 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x f32>
          %27 = llvm.alloca %13 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %25, %8 : i64
          %32 = llvm.udiv %31, %9 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%33, %16 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %24, %8 : i64
          %39 = llvm.udiv %38, %9 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%40, %16 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %23, %8 : i64
          %46 = llvm.udiv %45, %9 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%47, %16 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %49 = llvm.extractvalue %48[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %50 = llvm.zext %49 : i32 to i64
          %51 = llvm.sdiv %50, %18 : i64
          %52 = llvm.mul %51, %18 : i64
          %53 = llvm.icmp "ne" %50, %52 : i64
          %54 = llvm.icmp "slt" %50, %17 : i64
          %55 = llvm.and %53, %54 : i1
          %56 = llvm.add %51, %11 : i64
          %57 = llvm.select %55, %56, %51 : i1, i64
          %58 = llvm.srem %50, %18 : i64
          %59 = llvm.icmp "slt" %58, %17 : i64
          %60 = llvm.add %58, %18 overflow<nsw> : i64
          %61 = llvm.select %59, %60, %58 : i1, i64
          %62 = llvm.sdiv %61, %19 : i64
          %63 = llvm.srem %50, %19 : i64
          %64 = llvm.icmp "slt" %63, %17 : i64
          %65 = llvm.add %63, %19 overflow<nsw> : i64
          %66 = llvm.select %64, %65, %63 : i1, i64
          %67 = llvm.mul %57, %13 overflow<nsw> : i64
          %68 = llvm.mul %62, %12 overflow<nsw> : i64
          %69 = llvm.mul %66, %12 overflow<nsw> : i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb19
          %71 = llvm.icmp "slt" %70, %13 : i64
          llvm.cond_br %71, ^bb2, ^bb20
        ^bb2:  // pred: ^bb1
          %72 = llvm.add %70, %67 : i64
          %73 = llvm.getelementptr %26[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%17 : i64)
        ^bb3(%75: i64):  // 2 preds: ^bb2, ^bb18
          %76 = llvm.icmp "slt" %75, %12 : i64
          llvm.cond_br %76, ^bb4(%17 : i64), ^bb19
        ^bb4(%77: i64):  // 2 preds: ^bb3, ^bb17
          %78 = llvm.icmp "slt" %77, %12 : i64
          llvm.cond_br %78, ^bb5, ^bb18
        ^bb5:  // pred: ^bb4
          %79 = llvm.sub %12, %77 : i64
          %80 = llvm.icmp "slt" %79, %13 : i64
          %81 = llvm.select %80, %79, %13 : i1, i64
          %82 = llvm.trunc %81 : i64 to i32
          %83 = llvm.insertelement %82, %2[%1 : i32] : vector<8xi32>
          %84 = llvm.shufflevector %83, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %85 = llvm.icmp "sgt" %84, %21 : vector<8xi32>
          %86 = llvm.mul %17, %13 : i64
          %87 = llvm.add %86, %86 : i64
          %88 = llvm.add %87, %17 : i64
          %89 = llvm.getelementptr %27[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %22, %89, %85 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %90 = llvm.add %77, %69 : i64
          llvm.br ^bb6(%17 : i64)
        ^bb6(%91: i64):  // 2 preds: ^bb5, ^bb14
          %92 = llvm.icmp "slt" %91, %16 : i64
          llvm.cond_br %92, ^bb7(%17 : i64), ^bb15
        ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb13
          %94 = llvm.icmp "slt" %93, %15 : i64
          llvm.cond_br %94, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %95 = llvm.add %93, %75 : i64
          %96 = llvm.add %95, %68 : i64
          llvm.br ^bb9(%17 : i64)
        ^bb9(%97: i64):  // 2 preds: ^bb8, ^bb12
          %98 = llvm.icmp "slt" %97, %81 : i64
          llvm.cond_br %98, ^bb10(%17 : i64), ^bb13
        ^bb10(%99: i64):  // 2 preds: ^bb9, ^bb11
          %100 = llvm.icmp "slt" %99, %15 : i64
          llvm.cond_br %100, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %101 = llvm.add %90, %97 : i64
          %102 = llvm.add %101, %99 : i64
          %103 = llvm.mul %91, %6 overflow<nsw, nuw> : i64
          %104 = llvm.mul %96, %7 overflow<nsw, nuw> : i64
          %105 = llvm.add %103, %104 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %102 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %33[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.mul %72, %3 overflow<nsw, nuw> : i64
          %110 = llvm.mul %91, %4 overflow<nsw, nuw> : i64
          %111 = llvm.add %109, %110 overflow<nsw, nuw> : i64
          %112 = llvm.mul %93, %15 overflow<nsw, nuw> : i64
          %113 = llvm.add %111, %112 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %99 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %40[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.mul %17, %13 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %117 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %97 overflow<nsw, nuw> : i64
          %120 = llvm.getelementptr inbounds|nuw %27[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 : !llvm.ptr -> f32
          %122 = llvm.fmul %108, %116 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %123 = llvm.fadd %121, %122 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %123, %120 : f32, !llvm.ptr
          %124 = llvm.add %99, %14 : i64
          llvm.br ^bb10(%124 : i64)
        ^bb12:  // pred: ^bb10
          %125 = llvm.add %97, %14 : i64
          llvm.br ^bb9(%125 : i64)
        ^bb13:  // pred: ^bb9
          %126 = llvm.add %93, %14 : i64
          llvm.br ^bb7(%126 : i64)
        ^bb14:  // pred: ^bb7
          %127 = llvm.add %91, %14 : i64
          llvm.br ^bb6(%127 : i64)
        ^bb15:  // pred: ^bb6
          %128 = llvm.icmp "sgt" %81, %17 : i64
          llvm.cond_br %128, ^bb16, ^bb17
        ^bb16:  // pred: ^bb15
          %129 = llvm.intr.masked.load %89, %85, %20 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %130 = llvm.extractelement %74[%0 : i64] : vector<1xf32>
          %131 = llvm.insertelement %130, %20[%1 : i32] : vector<8xf32>
          %132 = llvm.shufflevector %131, %20 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %133 = llvm.fadd %129, %132 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %134 = llvm.fcmp "ugt" %133, %22 : vector<8xf32>
          %135 = llvm.select %134, %133, %22 : vector<8xi1>, vector<8xf32>
          %136 = llvm.add %68, %75 : i64
          %137 = llvm.add %136, %14 : i64
          %138 = llvm.add %90, %14 : i64
          %139 = llvm.mul %72, %6 : i64
          %140 = llvm.mul %137, %7 : i64
          %141 = llvm.add %139, %140 : i64
          %142 = llvm.add %141, %138 : i64
          %143 = llvm.getelementptr %47[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %135, %143, %85 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb17
        ^bb17:  // 2 preds: ^bb15, ^bb16
          %144 = llvm.add %77, %13 : i64
          llvm.br ^bb4(%144 : i64)
        ^bb18:  // pred: ^bb4
          %145 = llvm.add %75, %14 : i64
          llvm.br ^bb3(%145 : i64)
        ^bb19:  // pred: ^bb3
          %146 = llvm.add %70, %14 : i64
          llvm.br ^bb1(%146 : i64)
        ^bb20:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_207::@embedded_elf_riscv_64::@main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_207) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_207::@embedded_elf_riscv_64::@main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_207_embedded_elf_riscv_64_main_graph$async_dispatch_207_conv_32x56x56x64x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
