#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_192 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_64xf32(dense<[-0.00491546048, -0.0197414961, 0.0210108161, 0.0263744872, 2.89515796E-4, 0.014580328, -0.0194835104, 6.73703442E-4, -0.0254508704, 0.00899838469, 0.00485731242, 0.0232008155, -0.00111214793, 6.3042593E-4, -4.964990e-03, -0.00226823706, -0.022451438, 0.0115858475, 0.0261271577, -0.0107124243, 0.0123172356, 0.0238301586, -2.874060e-02, 0.0183329731, 0.0270444825, -0.00819559675, 0.00129068806, 0.00350069627, -0.0186787546, 0.0293643661, -0.0160328764, -0.0131683657, -0.00482544582, -0.0261092763, -2.83787358E-5, 0.0210131202, 0.00526996283, 0.00835492462, -0.0223728474, 0.00347675686, 8.823750e-04, 0.0269280206, -0.00140553073, -0.0274115577, 0.0190912466, -0.0175783206, -0.0260730553, -0.0071956045, 0.00110482133, -0.0135951182, -1.96076697E-4, -0.00700851204, -0.0112590659, -0.0010510704, 0.0154339513, -0.0208718479, 0.0223415121, -0.00897623319, -0.0179760121, 0.0270077866, -0.0178795028, 0.0242766645, -0.0272899587, 0.0194702651]> : tensor<64xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<64 x f32>
        llvm.func @main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(1152 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(256 : index) : i64
          %7 = llvm.mlir.constant(16 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.addressof @__constant_64xf32 : !llvm.ptr
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(14 : index) : i64
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(128 : index) : i64
          %18 = llvm.mlir.constant(0 : index) : i64
          %19 = llvm.mlir.constant(2 : index) : i64
          %20 = llvm.mlir.poison : vector<8xf32>
          %21 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %22 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %23 = llvm.mlir.constant(1003520 : index) : i64
          %24 = llvm.mlir.constant(9470464 : index) : i64
          %25 = llvm.mlir.constant(401408 : index) : i64
          %26 = llvm.mlir.constant(64 : index) : i64
          %27 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x f32>
          %28 = llvm.alloca %14 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %25, %8 : i64
          %33 = llvm.udiv %32, %9 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%34, %26 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.getelementptr %36[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %24, %8 : i64
          %40 = llvm.udiv %39, %9 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%41, %26 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %23, %8 : i64
          %47 = llvm.udiv %46, %9 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%48, %26 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %50 = llvm.extractvalue %49[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.sdiv %51, %19 : i64
          %53 = llvm.mul %52, %19 : i64
          %54 = llvm.icmp "ne" %51, %53 : i64
          %55 = llvm.icmp "slt" %51, %18 : i64
          %56 = llvm.and %54, %55 : i1
          %57 = llvm.add %52, %11 : i64
          %58 = llvm.select %56, %57, %52 : i1, i64
          %59 = llvm.srem %51, %19 : i64
          %60 = llvm.icmp "slt" %59, %18 : i64
          %61 = llvm.add %59, %19 overflow<nsw> : i64
          %62 = llvm.select %60, %61, %59 : i1, i64
          %63 = llvm.mul %58, %14 overflow<nsw> : i64
          %64 = llvm.mul %62, %13 overflow<nsw> : i64
          llvm.br ^bb1(%18 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb19
          %66 = llvm.icmp "slt" %65, %14 : i64
          llvm.cond_br %66, ^bb2, ^bb20
        ^bb2:  // pred: ^bb1
          %67 = llvm.add %65, %63 : i64
          %68 = llvm.getelementptr %27[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%18 : i64)
        ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb18
          %71 = llvm.icmp "slt" %70, %13 : i64
          llvm.cond_br %71, ^bb4(%18 : i64), ^bb19
        ^bb4(%72: i64):  // 2 preds: ^bb3, ^bb17
          %73 = llvm.icmp "slt" %72, %12 : i64
          llvm.cond_br %73, ^bb5, ^bb18
        ^bb5:  // pred: ^bb4
          %74 = llvm.sub %12, %72 : i64
          %75 = llvm.icmp "slt" %74, %14 : i64
          %76 = llvm.select %75, %74, %14 : i1, i64
          %77 = llvm.trunc %76 : i64 to i32
          %78 = llvm.insertelement %77, %2[%1 : i32] : vector<8xi32>
          %79 = llvm.shufflevector %78, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %80 = llvm.icmp "sgt" %79, %21 : vector<8xi32>
          %81 = llvm.mul %18, %14 : i64
          %82 = llvm.add %81, %81 : i64
          %83 = llvm.add %82, %18 : i64
          %84 = llvm.getelementptr %28[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %22, %84, %80 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb6(%18 : i64)
        ^bb6(%85: i64):  // 2 preds: ^bb5, ^bb14
          %86 = llvm.icmp "slt" %85, %17 : i64
          llvm.cond_br %86, ^bb7(%18 : i64), ^bb15
        ^bb7(%87: i64):  // 2 preds: ^bb6, ^bb13
          %88 = llvm.icmp "slt" %87, %16 : i64
          llvm.cond_br %88, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %89 = llvm.add %87, %70 : i64
          %90 = llvm.add %89, %64 : i64
          llvm.br ^bb9(%18 : i64)
        ^bb9(%91: i64):  // 2 preds: ^bb8, ^bb12
          %92 = llvm.icmp "slt" %91, %76 : i64
          llvm.cond_br %92, ^bb10(%18 : i64), ^bb13
        ^bb10(%93: i64):  // 2 preds: ^bb9, ^bb11
          %94 = llvm.icmp "slt" %93, %16 : i64
          llvm.cond_br %94, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %95 = llvm.add %72, %91 : i64
          %96 = llvm.add %95, %93 : i64
          %97 = llvm.mul %85, %6 overflow<nsw, nuw> : i64
          %98 = llvm.mul %90, %7 overflow<nsw, nuw> : i64
          %99 = llvm.add %97, %98 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %96 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %34[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.mul %67, %3 overflow<nsw, nuw> : i64
          %104 = llvm.mul %85, %4 overflow<nsw, nuw> : i64
          %105 = llvm.add %103, %104 overflow<nsw, nuw> : i64
          %106 = llvm.mul %87, %16 overflow<nsw, nuw> : i64
          %107 = llvm.add %105, %106 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %93 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %41[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.mul %18, %14 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %111 overflow<nsw, nuw> : i64
          %113 = llvm.add %112, %91 overflow<nsw, nuw> : i64
          %114 = llvm.getelementptr inbounds|nuw %28[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 : !llvm.ptr -> f32
          %116 = llvm.fmul %102, %110 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %117 = llvm.fadd %115, %116 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %117, %114 : f32, !llvm.ptr
          %118 = llvm.add %93, %15 : i64
          llvm.br ^bb10(%118 : i64)
        ^bb12:  // pred: ^bb10
          %119 = llvm.add %91, %15 : i64
          llvm.br ^bb9(%119 : i64)
        ^bb13:  // pred: ^bb9
          %120 = llvm.add %87, %15 : i64
          llvm.br ^bb7(%120 : i64)
        ^bb14:  // pred: ^bb7
          %121 = llvm.add %85, %15 : i64
          llvm.br ^bb6(%121 : i64)
        ^bb15:  // pred: ^bb6
          %122 = llvm.icmp "sgt" %76, %18 : i64
          llvm.cond_br %122, ^bb16, ^bb17
        ^bb16:  // pred: ^bb15
          %123 = llvm.intr.masked.load %84, %80, %20 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %124 = llvm.extractelement %69[%0 : i64] : vector<1xf32>
          %125 = llvm.insertelement %124, %20[%1 : i32] : vector<8xf32>
          %126 = llvm.shufflevector %125, %20 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %127 = llvm.fadd %123, %126 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %128 = llvm.fcmp "ugt" %127, %22 : vector<8xf32>
          %129 = llvm.select %128, %127, %22 : vector<8xi1>, vector<8xf32>
          %130 = llvm.add %64, %70 : i64
          %131 = llvm.add %130, %15 : i64
          %132 = llvm.add %72, %15 : i64
          %133 = llvm.mul %67, %6 : i64
          %134 = llvm.mul %131, %7 : i64
          %135 = llvm.add %133, %134 : i64
          %136 = llvm.add %135, %132 : i64
          %137 = llvm.getelementptr %48[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %129, %137, %80 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb17
        ^bb17:  // 2 preds: ^bb15, ^bb16
          %138 = llvm.add %72, %14 : i64
          llvm.br ^bb4(%138 : i64)
        ^bb18:  // pred: ^bb4
          %139 = llvm.add %70, %15 : i64
          llvm.br ^bb3(%139 : i64)
        ^bb19:  // pred: ^bb3
          %140 = llvm.add %65, %15 : i64
          llvm.br ^bb1(%140 : i64)
        ^bb20:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_192::@embedded_elf_riscv_64::@main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_192) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_192::@embedded_elf_riscv_64::@main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_192_embedded_elf_riscv_64_main_graph$async_dispatch_192_conv_64x14x14x128x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
