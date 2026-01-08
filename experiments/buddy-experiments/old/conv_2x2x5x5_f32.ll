; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @malloc(i64)

define void @conv_2x2x5x5_f32(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32) {
  %34 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 100) to i64))
  %35 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 36) to i64))
  %36 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 2) to i64))
  %37 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 36) to i64))
  br label %38

38:                                               ; preds = %74, %33
  %39 = phi i64 [ %75, %74 ], [ 0, %33 ]
  %40 = icmp slt i64 %39, 2
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %72, %41
  %43 = phi i64 [ %73, %72 ], [ 0, %41 ]
  %44 = icmp slt i64 %43, 2
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %70, %45
  %47 = phi i64 [ %71, %70 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 5
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %53, %49
  %51 = phi i64 [ %69, %53 ], [ 0, %49 ]
  %52 = icmp slt i64 %51, 5
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = mul i64 %39, 50
  %55 = mul i64 %43, 25
  %56 = add i64 %54, %55
  %57 = mul i64 %47, 5
  %58 = add i64 %56, %57
  %59 = add i64 %58, %51
  %60 = getelementptr float, ptr %1, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = mul i64 %39, 50
  %63 = mul i64 %47, 10
  %64 = add i64 %62, %63
  %65 = mul i64 %51, 2
  %66 = add i64 %64, %65
  %67 = add i64 %66, %43
  %68 = getelementptr float, ptr %34, i64 %67
  store float %61, ptr %68, align 4
  %69 = add i64 %51, 1
  br label %50

70:                                               ; preds = %50
  %71 = add i64 %47, 1
  br label %46

72:                                               ; preds = %46
  %73 = add i64 %43, 1
  br label %42

74:                                               ; preds = %42
  %75 = add i64 %39, 1
  br label %38

76:                                               ; preds = %38
  br label %77

77:                                               ; preds = %114, %76
  %78 = phi i64 [ %115, %114 ], [ 0, %76 ]
  %79 = icmp slt i64 %78, 2
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %112, %80
  %82 = phi i64 [ %113, %112 ], [ 0, %80 ]
  %83 = icmp slt i64 %82, 2
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %110, %84
  %86 = phi i64 [ %111, %110 ], [ 0, %84 ]
  %87 = icmp slt i64 %86, 3
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %92, %88
  %90 = phi i64 [ %109, %92 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, 3
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = mul i64 %86, 3
  %94 = mul i64 %93, 2
  %95 = mul i64 %90, 2
  %96 = add i64 %94, %95
  %97 = add i64 %96, %82
  %98 = mul i64 %78, 18
  %99 = mul i64 %82, 9
  %100 = add i64 %98, %99
  %101 = mul i64 %86, 3
  %102 = add i64 %100, %101
  %103 = add i64 %102, %90
  %104 = getelementptr float, ptr %12, i64 %103
  %105 = load float, ptr %104, align 4
  %106 = mul i64 %97, 2
  %107 = add i64 %106, %78
  %108 = getelementptr float, ptr %35, i64 %107
  store float %105, ptr %108, align 4
  %109 = add i64 %90, 1
  br label %89

110:                                              ; preds = %89
  %111 = add i64 %86, 1
  br label %85

112:                                              ; preds = %85
  %113 = add i64 %82, 1
  br label %81

114:                                              ; preds = %81
  %115 = add i64 %78, 1
  br label %77

116:                                              ; preds = %77
  %117 = ptrtoint ptr %34 to i64
  %118 = ptrtoint ptr %37 to i64
  %119 = ptrtoint ptr %36 to i64
  %120 = ptrtoint ptr %35 to i64
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408423938)
  call void @llvm.riscv.config.ex(i64 65540, i64 281474976710656)
  call void @llvm.riscv.loop.conv.ws.config1(i64 562958543683586, i64 4295163907)
  call void @llvm.riscv.loop.conv.ws.config2(i64 844429225164800, i64 562962838519810)
  call void @llvm.riscv.loop.conv.ws.config3(i64 844437815164928, i64 0)
  call void @llvm.riscv.loop.conv.ws.config4(i64 844424930131968, i64 65539)
  call void @llvm.riscv.loop.conv.ws.config5(i64 %120, i64 %118)
  call void @llvm.riscv.loop.conv.ws.config6(i64 %119, i64 %117)
  call void @llvm.riscv.loop.conv.ws(i64 768, i64 1)
  call void @llvm.riscv.flush(i64 0, i64 0)
  br label %121

121:                                              ; preds = %158, %116
  %122 = phi i64 [ %159, %158 ], [ 0, %116 ]
  %123 = icmp slt i64 %122, 2
  br i1 %123, label %124, label %160

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %156, %124
  %126 = phi i64 [ %157, %156 ], [ 0, %124 ]
  %127 = icmp slt i64 %126, 2
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %154, %128
  %130 = phi i64 [ %155, %154 ], [ 0, %128 ]
  %131 = icmp slt i64 %130, 3
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %136, %132
  %134 = phi i64 [ %153, %136 ], [ 0, %132 ]
  %135 = icmp slt i64 %134, 3
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = mul i64 %122, 3
  %138 = mul i64 %137, 3
  %139 = mul i64 %130, 3
  %140 = add i64 %138, %139
  %141 = add i64 %140, %134
  %142 = mul i64 %141, 2
  %143 = add i64 %142, %126
  %144 = getelementptr float, ptr %37, i64 %143
  %145 = load float, ptr %144, align 4
  %146 = mul i64 %122, 18
  %147 = mul i64 %126, 9
  %148 = add i64 %146, %147
  %149 = mul i64 %130, 3
  %150 = add i64 %148, %149
  %151 = add i64 %150, %134
  %152 = getelementptr float, ptr %23, i64 %151
  store float %145, ptr %152, align 4
  %153 = add i64 %134, 1
  br label %133

154:                                              ; preds = %133
  %155 = add i64 %130, 1
  br label %129

156:                                              ; preds = %129
  %157 = add i64 %126, 1
  br label %125

158:                                              ; preds = %125
  %159 = add i64 %122, 1
  br label %121

160:                                              ; preds = %121
  call void @free(ptr %34)
  call void @free(ptr %35)
  call void @free(ptr %37)
  call void @free(ptr %36)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.riscv.config.st(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.ex(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config1(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config2(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config3(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config4(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config5(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config6(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.flush(i64, i64) #0

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
