; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@nl = internal constant [2 x i8] c"\0A\00"
@frmt_spec = internal constant [4 x i8] c"%d \00"

declare i32 @printf(ptr, ...)

declare void @free(ptr)

declare ptr @malloc(i64)

define i8 @main() {
  %1 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i8, ptr null, i32 27) to i64))
  %2 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %4, i64 3, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %5, i64 3, 3, 1
  %7 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %6, i64 3, 3, 2
  %8 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %7, i64 9, 4, 0
  %9 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %8, i64 3, 4, 1
  %10 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %9, i64 1, 4, 2
  %11 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i8, ptr null, i32 27) to i64))
  %12 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %12, ptr %11, 1
  %14 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %13, i64 0, 2
  %15 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %14, i64 3, 3, 0
  %16 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %15, i64 3, 3, 1
  %17 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %16, i64 3, 3, 2
  %18 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %17, i64 9, 4, 0
  %19 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %18, i64 3, 4, 1
  %20 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %19, i64 1, 4, 2
  %21 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i8, ptr null, i32 27) to i64))
  %22 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %21, 0
  %23 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %22, ptr %21, 1
  %24 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %23, i64 0, 2
  %25 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %24, i64 3, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %25, i64 3, 3, 1
  %27 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %26, i64 3, 3, 2
  %28 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %27, i64 9, 4, 0
  %29 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %28, i64 3, 4, 1
  %30 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %29, i64 1, 4, 2
  br label %31

31:                                               ; preds = %52, %0
  %32 = phi i64 [ %53, %52 ], [ 0, %0 ]
  %33 = icmp slt i64 %32, 3
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %50, %34
  %36 = phi i64 [ %51, %50 ], [ 0, %34 ]
  %37 = icmp slt i64 %36, 3
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i64 [ %49, %42 ], [ 0, %38 ]
  %41 = icmp slt i64 %40, 3
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %44 = mul i64 %32, 9
  %45 = mul i64 %36, 3
  %46 = add i64 %44, %45
  %47 = add i64 %46, %40
  %48 = getelementptr i8, ptr %43, i64 %47
  store i8 1, ptr %48, align 1
  %49 = add i64 %40, 1
  br label %39

50:                                               ; preds = %39
  %51 = add i64 %36, 1
  br label %35

52:                                               ; preds = %35
  %53 = add i64 %32, 1
  br label %31

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %76, %54
  %56 = phi i64 [ %77, %76 ], [ 0, %54 ]
  %57 = icmp slt i64 %56, 3
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %74, %58
  %60 = phi i64 [ %75, %74 ], [ 0, %58 ]
  %61 = icmp slt i64 %60, 3
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %73, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 3
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 1
  %68 = mul i64 %56, 9
  %69 = mul i64 %60, 3
  %70 = add i64 %68, %69
  %71 = add i64 %70, %64
  %72 = getelementptr i8, ptr %67, i64 %71
  store i8 2, ptr %72, align 1
  %73 = add i64 %64, 1
  br label %63

74:                                               ; preds = %63
  %75 = add i64 %60, 1
  br label %59

76:                                               ; preds = %59
  %77 = add i64 %56, 1
  br label %55

78:                                               ; preds = %55
  %79 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 0
  %80 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %81 = insertvalue { ptr, ptr, i64 } undef, ptr %79, 0
  %82 = insertvalue { ptr, ptr, i64 } %81, ptr %80, 1
  %83 = insertvalue { ptr, ptr, i64 } %82, i64 0, 2
  %84 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 2
  %85 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 0
  %86 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 1
  %87 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 2
  %88 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 0
  %89 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 1
  %90 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 2
  %91 = extractvalue { ptr, ptr, i64 } %83, 0
  %92 = extractvalue { ptr, ptr, i64 } %83, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %91, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, ptr %92, 1
  %95 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, i64 0, 2
  %96 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %95, i64 3, 3, 0
  %97 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %96, i64 3, 4, 0
  %98 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %97, i64 3, 3, 1
  %99 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %98, i64 1, 4, 1
  %100 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 0
  %101 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 1
  %102 = insertvalue { ptr, ptr, i64 } undef, ptr %100, 0
  %103 = insertvalue { ptr, ptr, i64 } %102, ptr %101, 1
  %104 = insertvalue { ptr, ptr, i64 } %103, i64 0, 2
  %105 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 2
  %106 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 0
  %107 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 1
  %108 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 2
  %109 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 0
  %110 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 1
  %111 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 2
  %112 = extractvalue { ptr, ptr, i64 } %104, 0
  %113 = extractvalue { ptr, ptr, i64 } %104, 1
  %114 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %112, 0
  %115 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %114, ptr %113, 1
  %116 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %115, i64 0, 2
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %116, i64 3, 3, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, i64 3, 4, 0
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 3, 3, 1
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 1, 4, 1
  %121 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 0
  %122 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 1
  %123 = insertvalue { ptr, ptr, i64 } undef, ptr %121, 0
  %124 = insertvalue { ptr, ptr, i64 } %123, ptr %122, 1
  %125 = insertvalue { ptr, ptr, i64 } %124, i64 0, 2
  %126 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 2
  %127 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 0
  %128 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 1
  %129 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 2
  %130 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 0
  %131 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 1
  %132 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 2
  %133 = extractvalue { ptr, ptr, i64 } %125, 0
  %134 = extractvalue { ptr, ptr, i64 } %125, 1
  %135 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %133, 0
  %136 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %135, ptr %134, 1
  %137 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %136, i64 0, 2
  %138 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %137, i64 3, 3, 0
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %138, i64 3, 4, 0
  %140 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %139, i64 3, 3, 1
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %140, i64 1, 4, 1
  %142 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 9) to i64))
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %142, 0
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, ptr %142, 1
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 0, 2
  %146 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %145, i64 3, 3, 0
  %147 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %146, i64 3, 3, 1
  %148 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, i64 3, 4, 0
  %149 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, i64 1, 4, 1
  br label %150

150:                                              ; preds = %163, %78
  %151 = phi i64 [ %164, %163 ], [ 0, %78 ]
  %152 = icmp slt i64 %151, 3
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %157, %153
  %155 = phi i64 [ %162, %157 ], [ 0, %153 ]
  %156 = icmp slt i64 %155, 3
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %149, 1
  %159 = mul i64 %151, 3
  %160 = add i64 %159, %155
  %161 = getelementptr i32, ptr %158, i64 %160
  store i32 0, ptr %161, align 4
  %162 = add i64 %155, 1
  br label %154

163:                                              ; preds = %154
  %164 = add i64 %151, 1
  br label %150

165:                                              ; preds = %150
  %166 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, 1
  %167 = ptrtoint ptr %166 to i64
  %168 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %120, 1
  %169 = ptrtoint ptr %168 to i64
  %170 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %141, 1
  %171 = ptrtoint ptr %170 to i64
  %172 = ptrtoint ptr %142 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408423939)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 12)
  call void @llvm.riscv.loop.ws.config.bounds(i64 55835426829, i64 4295032833)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %167, i64 %169)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %172, i64 %171)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 3, i64 3)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 3, i64 3)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %142)
  %173 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 0
  %174 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %175 = insertvalue { ptr, ptr, i64 } undef, ptr %173, 0
  %176 = insertvalue { ptr, ptr, i64 } %175, ptr %174, 1
  %177 = insertvalue { ptr, ptr, i64 } %176, i64 0, 2
  %178 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 2
  %179 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 0
  %180 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 1
  %181 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 2
  %182 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 0
  %183 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 1
  %184 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 2
  %185 = extractvalue { ptr, ptr, i64 } %177, 0
  %186 = extractvalue { ptr, ptr, i64 } %177, 1
  %187 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %185, 0
  %188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %187, ptr %186, 1
  %189 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, i64 9, 2
  %190 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %189, i64 3, 3, 0
  %191 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %190, i64 3, 4, 0
  %192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %191, i64 3, 3, 1
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %192, i64 1, 4, 1
  %194 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 0
  %195 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 1
  %196 = insertvalue { ptr, ptr, i64 } undef, ptr %194, 0
  %197 = insertvalue { ptr, ptr, i64 } %196, ptr %195, 1
  %198 = insertvalue { ptr, ptr, i64 } %197, i64 0, 2
  %199 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 2
  %200 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 0
  %201 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 1
  %202 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 2
  %203 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 0
  %204 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 1
  %205 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 2
  %206 = extractvalue { ptr, ptr, i64 } %198, 0
  %207 = extractvalue { ptr, ptr, i64 } %198, 1
  %208 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %206, 0
  %209 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %208, ptr %207, 1
  %210 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %209, i64 9, 2
  %211 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, i64 3, 3, 0
  %212 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %211, i64 3, 4, 0
  %213 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %212, i64 3, 3, 1
  %214 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %213, i64 1, 4, 1
  %215 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 0
  %216 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 1
  %217 = insertvalue { ptr, ptr, i64 } undef, ptr %215, 0
  %218 = insertvalue { ptr, ptr, i64 } %217, ptr %216, 1
  %219 = insertvalue { ptr, ptr, i64 } %218, i64 0, 2
  %220 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 2
  %221 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 0
  %222 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 1
  %223 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 2
  %224 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 0
  %225 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 1
  %226 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 2
  %227 = extractvalue { ptr, ptr, i64 } %219, 0
  %228 = extractvalue { ptr, ptr, i64 } %219, 1
  %229 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %227, 0
  %230 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %229, ptr %228, 1
  %231 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %230, i64 9, 2
  %232 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %231, i64 3, 3, 0
  %233 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %232, i64 3, 4, 0
  %234 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %233, i64 3, 3, 1
  %235 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %234, i64 1, 4, 1
  %236 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 9) to i64))
  %237 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %236, 0
  %238 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %237, ptr %236, 1
  %239 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %238, i64 0, 2
  %240 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %239, i64 3, 3, 0
  %241 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %240, i64 3, 3, 1
  %242 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %241, i64 3, 4, 0
  %243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %242, i64 1, 4, 1
  br label %244

244:                                              ; preds = %257, %165
  %245 = phi i64 [ %258, %257 ], [ 0, %165 ]
  %246 = icmp slt i64 %245, 3
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %251, %247
  %249 = phi i64 [ %256, %251 ], [ 0, %247 ]
  %250 = icmp slt i64 %249, 3
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %243, 1
  %253 = mul i64 %245, 3
  %254 = add i64 %253, %249
  %255 = getelementptr i32, ptr %252, i64 %254
  store i32 0, ptr %255, align 4
  %256 = add i64 %249, 1
  br label %248

257:                                              ; preds = %248
  %258 = add i64 %245, 1
  br label %244

259:                                              ; preds = %244
  %260 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, 1
  %261 = ptrtoint ptr %260 to i64
  %262 = add i64 %261, 9
  %263 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %214, 1
  %264 = ptrtoint ptr %263 to i64
  %265 = add i64 %264, 9
  %266 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %235, 1
  %267 = ptrtoint ptr %266 to i64
  %268 = add i64 %267, 9
  %269 = ptrtoint ptr %236 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408423939)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 12)
  call void @llvm.riscv.loop.ws.config.bounds(i64 55835426829, i64 4295032833)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %262, i64 %265)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %269, i64 %268)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 3, i64 3)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 3, i64 3)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %236)
  %270 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 0
  %271 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %272 = insertvalue { ptr, ptr, i64 } undef, ptr %270, 0
  %273 = insertvalue { ptr, ptr, i64 } %272, ptr %271, 1
  %274 = insertvalue { ptr, ptr, i64 } %273, i64 0, 2
  %275 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 2
  %276 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 0
  %277 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 1
  %278 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 2
  %279 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 0
  %280 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 1
  %281 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 2
  %282 = extractvalue { ptr, ptr, i64 } %274, 0
  %283 = extractvalue { ptr, ptr, i64 } %274, 1
  %284 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %282, 0
  %285 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %284, ptr %283, 1
  %286 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %285, i64 18, 2
  %287 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %286, i64 3, 3, 0
  %288 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %287, i64 3, 4, 0
  %289 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %288, i64 3, 3, 1
  %290 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %289, i64 1, 4, 1
  %291 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 0
  %292 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 1
  %293 = insertvalue { ptr, ptr, i64 } undef, ptr %291, 0
  %294 = insertvalue { ptr, ptr, i64 } %293, ptr %292, 1
  %295 = insertvalue { ptr, ptr, i64 } %294, i64 0, 2
  %296 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 2
  %297 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 0
  %298 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 1
  %299 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 3, 2
  %300 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 0
  %301 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 1
  %302 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %20, 4, 2
  %303 = extractvalue { ptr, ptr, i64 } %295, 0
  %304 = extractvalue { ptr, ptr, i64 } %295, 1
  %305 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %303, 0
  %306 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %305, ptr %304, 1
  %307 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %306, i64 18, 2
  %308 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %307, i64 3, 3, 0
  %309 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %308, i64 3, 4, 0
  %310 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %309, i64 3, 3, 1
  %311 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %310, i64 1, 4, 1
  %312 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 0
  %313 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 1
  %314 = insertvalue { ptr, ptr, i64 } undef, ptr %312, 0
  %315 = insertvalue { ptr, ptr, i64 } %314, ptr %313, 1
  %316 = insertvalue { ptr, ptr, i64 } %315, i64 0, 2
  %317 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 2
  %318 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 0
  %319 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 1
  %320 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 3, 2
  %321 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 0
  %322 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 1
  %323 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, 4, 2
  %324 = extractvalue { ptr, ptr, i64 } %316, 0
  %325 = extractvalue { ptr, ptr, i64 } %316, 1
  %326 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %324, 0
  %327 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %326, ptr %325, 1
  %328 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %327, i64 18, 2
  %329 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %328, i64 3, 3, 0
  %330 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %329, i64 3, 4, 0
  %331 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, i64 3, 3, 1
  %332 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %331, i64 1, 4, 1
  %333 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 9) to i64))
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %333, 0
  %335 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %334, ptr %333, 1
  %336 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %335, i64 0, 2
  %337 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %336, i64 3, 3, 0
  %338 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %337, i64 3, 3, 1
  %339 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, i64 3, 4, 0
  %340 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %339, i64 1, 4, 1
  br label %341

341:                                              ; preds = %354, %259
  %342 = phi i64 [ %355, %354 ], [ 0, %259 ]
  %343 = icmp slt i64 %342, 3
  br i1 %343, label %344, label %356

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %348, %344
  %346 = phi i64 [ %353, %348 ], [ 0, %344 ]
  %347 = icmp slt i64 %346, 3
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %340, 1
  %350 = mul i64 %342, 3
  %351 = add i64 %350, %346
  %352 = getelementptr i32, ptr %349, i64 %351
  store i32 0, ptr %352, align 4
  %353 = add i64 %346, 1
  br label %345

354:                                              ; preds = %345
  %355 = add i64 %342, 1
  br label %341

356:                                              ; preds = %341
  %357 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %290, 1
  %358 = ptrtoint ptr %357 to i64
  %359 = add i64 %358, 18
  %360 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %311, 1
  %361 = ptrtoint ptr %360 to i64
  %362 = add i64 %361, 18
  %363 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %332, 1
  %364 = ptrtoint ptr %363 to i64
  %365 = add i64 %364, 18
  %366 = ptrtoint ptr %333 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408423939)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 3)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 12)
  call void @llvm.riscv.loop.ws.config.bounds(i64 55835426829, i64 4295032833)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %359, i64 %362)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %366, i64 %365)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 3, i64 3)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 3, i64 3)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %333)
  br label %367

367:                                              ; preds = %391, %356
  %368 = phi i64 [ %393, %391 ], [ 0, %356 ]
  %369 = icmp slt i64 %368, 3
  br i1 %369, label %370, label %394

370:                                              ; preds = %367
  br label %371

371:                                              ; preds = %388, %370
  %372 = phi i64 [ %390, %388 ], [ 0, %370 ]
  %373 = icmp slt i64 %372, 3
  br i1 %373, label %374, label %391

374:                                              ; preds = %371
  br label %375

375:                                              ; preds = %378, %374
  %376 = phi i64 [ %387, %378 ], [ 0, %374 ]
  %377 = icmp slt i64 %376, 3
  br i1 %377, label %378, label %388

378:                                              ; preds = %375
  %379 = mul i64 %368, 9
  %380 = mul i64 %372, 3
  %381 = add i64 %379, %380
  %382 = add i64 %381, %376
  %383 = getelementptr i8, ptr %21, i64 %382
  %384 = load i8, ptr %383, align 1
  %385 = sext i8 %384 to i32
  %386 = call i32 (ptr, ...) @printf(ptr @frmt_spec, i32 %385)
  %387 = add i64 %376, 1
  br label %375

388:                                              ; preds = %375
  %389 = call i32 (ptr, ...) @printf(ptr @nl)
  %390 = add i64 %372, 1
  br label %371

391:                                              ; preds = %371
  %392 = call i32 (ptr, ...) @printf(ptr @nl)
  %393 = add i64 %368, 1
  br label %367

394:                                              ; preds = %367
  call void @free(ptr %21)
  ret i8 0
}

; Function Attrs: nounwind
declare void @llvm.riscv.config.ex(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.st(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.ld(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.bounds(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.addrs.ab(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.addrs.dc(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.strides.ab(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.strides.dc(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.flush(i64, i64) #0

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
