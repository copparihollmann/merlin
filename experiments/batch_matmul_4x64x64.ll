; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @malloc(i64)

define void @batch_matmul_4x64x64(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, ptr %9, ptr %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26) {
  %28 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %18, 0
  %29 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %28, ptr %19, 1
  %30 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %29, i64 %20, 2
  %31 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %30, i64 %21, 3, 0
  %32 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %31, i64 %24, 4, 0
  %33 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %32, i64 %22, 3, 1
  %34 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %33, i64 %25, 4, 1
  %35 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %34, i64 %23, 3, 2
  %36 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %35, i64 %26, 4, 2
  %37 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %9, 0
  %38 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %37, ptr %10, 1
  %39 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %38, i64 %11, 2
  %40 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %39, i64 %12, 3, 0
  %41 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %40, i64 %15, 4, 0
  %42 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %41, i64 %13, 3, 1
  %43 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %42, i64 %16, 4, 1
  %44 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %43, i64 %14, 3, 2
  %45 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %44, i64 %17, 4, 2
  %46 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %0, 0
  %47 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, ptr %1, 1
  %48 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %47, i64 %2, 2
  %49 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %48, i64 %3, 3, 0
  %50 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %49, i64 %6, 4, 0
  %51 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %50, i64 %4, 3, 1
  %52 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %51, i64 %7, 4, 1
  %53 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %52, i64 %5, 3, 2
  %54 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %53, i64 %8, 4, 2
  br label %55

55:                                               ; preds = %76, %27
  %56 = phi i64 [ %77, %76 ], [ 0, %27 ]
  %57 = icmp slt i64 %56, 4
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %74, %58
  %60 = phi i64 [ %75, %74 ], [ 0, %58 ]
  %61 = icmp slt i64 %60, 64
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %73, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 64
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 1
  %68 = mul i64 %56, 4096
  %69 = mul i64 %60, 64
  %70 = add i64 %68, %69
  %71 = add i64 %70, %64
  %72 = getelementptr i8, ptr %67, i64 %71
  store i8 0, ptr %72, align 1
  %73 = add i64 %64, 1
  br label %63

74:                                               ; preds = %63
  %75 = add i64 %60, 1
  br label %59

76:                                               ; preds = %59
  %77 = add i64 %56, 1
  br label %55

78:                                               ; preds = %55
  %79 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 0
  %80 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 1
  %81 = insertvalue { ptr, ptr, i64 } undef, ptr %79, 0
  %82 = insertvalue { ptr, ptr, i64 } %81, ptr %80, 1
  %83 = insertvalue { ptr, ptr, i64 } %82, i64 0, 2
  %84 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 2
  %85 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 0
  %86 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 1
  %87 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 2
  %88 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 0
  %89 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 1
  %90 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 2
  %91 = extractvalue { ptr, ptr, i64 } %83, 0
  %92 = extractvalue { ptr, ptr, i64 } %83, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %91, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, ptr %92, 1
  %95 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, i64 0, 2
  %96 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %95, i64 64, 3, 0
  %97 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %96, i64 64, 4, 0
  %98 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %97, i64 64, 3, 1
  %99 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %98, i64 1, 4, 1
  %100 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 0
  %101 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 1
  %102 = insertvalue { ptr, ptr, i64 } undef, ptr %100, 0
  %103 = insertvalue { ptr, ptr, i64 } %102, ptr %101, 1
  %104 = insertvalue { ptr, ptr, i64 } %103, i64 0, 2
  %105 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 2
  %106 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 0
  %107 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 1
  %108 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 2
  %109 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 0
  %110 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 1
  %111 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 2
  %112 = extractvalue { ptr, ptr, i64 } %104, 0
  %113 = extractvalue { ptr, ptr, i64 } %104, 1
  %114 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %112, 0
  %115 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %114, ptr %113, 1
  %116 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %115, i64 0, 2
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %116, i64 64, 3, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, i64 64, 4, 0
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 64, 3, 1
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 1, 4, 1
  %121 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 0
  %122 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 1
  %123 = insertvalue { ptr, ptr, i64 } undef, ptr %121, 0
  %124 = insertvalue { ptr, ptr, i64 } %123, ptr %122, 1
  %125 = insertvalue { ptr, ptr, i64 } %124, i64 0, 2
  %126 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 2
  %127 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 0
  %128 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 1
  %129 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 2
  %130 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 0
  %131 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 1
  %132 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 2
  %133 = extractvalue { ptr, ptr, i64 } %125, 0
  %134 = extractvalue { ptr, ptr, i64 } %125, 1
  %135 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %133, 0
  %136 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %135, ptr %134, 1
  %137 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %136, i64 0, 2
  %138 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %137, i64 64, 3, 0
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %138, i64 64, 4, 0
  %140 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %139, i64 64, 3, 1
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %140, i64 1, 4, 1
  %142 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64))
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %142, 0
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, ptr %142, 1
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 0, 2
  %146 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %145, i64 64, 3, 0
  %147 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %146, i64 64, 3, 1
  %148 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, i64 64, 4, 0
  %149 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %148, i64 1, 4, 1
  br label %150

150:                                              ; preds = %163, %78
  %151 = phi i64 [ %164, %163 ], [ 0, %78 ]
  %152 = icmp slt i64 %151, 64
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %157, %153
  %155 = phi i64 [ %162, %157 ], [ 0, %153 ]
  %156 = icmp slt i64 %155, 64
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %149, 1
  %159 = mul i64 %151, 64
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
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17180131332)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %167, i64 %169)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %172, i64 %171)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %142)
  %173 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 0
  %174 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 1
  %175 = insertvalue { ptr, ptr, i64 } undef, ptr %173, 0
  %176 = insertvalue { ptr, ptr, i64 } %175, ptr %174, 1
  %177 = insertvalue { ptr, ptr, i64 } %176, i64 0, 2
  %178 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 2
  %179 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 0
  %180 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 1
  %181 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 2
  %182 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 0
  %183 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 1
  %184 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 2
  %185 = extractvalue { ptr, ptr, i64 } %177, 0
  %186 = extractvalue { ptr, ptr, i64 } %177, 1
  %187 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %185, 0
  %188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %187, ptr %186, 1
  %189 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, i64 4096, 2
  %190 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %189, i64 64, 3, 0
  %191 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %190, i64 64, 4, 0
  %192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %191, i64 64, 3, 1
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %192, i64 1, 4, 1
  %194 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 0
  %195 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 1
  %196 = insertvalue { ptr, ptr, i64 } undef, ptr %194, 0
  %197 = insertvalue { ptr, ptr, i64 } %196, ptr %195, 1
  %198 = insertvalue { ptr, ptr, i64 } %197, i64 0, 2
  %199 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 2
  %200 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 0
  %201 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 1
  %202 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 2
  %203 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 0
  %204 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 1
  %205 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 2
  %206 = extractvalue { ptr, ptr, i64 } %198, 0
  %207 = extractvalue { ptr, ptr, i64 } %198, 1
  %208 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %206, 0
  %209 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %208, ptr %207, 1
  %210 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %209, i64 4096, 2
  %211 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, i64 64, 3, 0
  %212 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %211, i64 64, 4, 0
  %213 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %212, i64 64, 3, 1
  %214 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %213, i64 1, 4, 1
  %215 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 0
  %216 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 1
  %217 = insertvalue { ptr, ptr, i64 } undef, ptr %215, 0
  %218 = insertvalue { ptr, ptr, i64 } %217, ptr %216, 1
  %219 = insertvalue { ptr, ptr, i64 } %218, i64 0, 2
  %220 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 2
  %221 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 0
  %222 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 1
  %223 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 2
  %224 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 0
  %225 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 1
  %226 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 2
  %227 = extractvalue { ptr, ptr, i64 } %219, 0
  %228 = extractvalue { ptr, ptr, i64 } %219, 1
  %229 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %227, 0
  %230 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %229, ptr %228, 1
  %231 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %230, i64 4096, 2
  %232 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %231, i64 64, 3, 0
  %233 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %232, i64 64, 4, 0
  %234 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %233, i64 64, 3, 1
  %235 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %234, i64 1, 4, 1
  %236 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64))
  %237 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %236, 0
  %238 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %237, ptr %236, 1
  %239 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %238, i64 0, 2
  %240 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %239, i64 64, 3, 0
  %241 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %240, i64 64, 3, 1
  %242 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %241, i64 64, 4, 0
  %243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %242, i64 1, 4, 1
  br label %244

244:                                              ; preds = %257, %165
  %245 = phi i64 [ %258, %257 ], [ 0, %165 ]
  %246 = icmp slt i64 %245, 64
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %251, %247
  %249 = phi i64 [ %256, %251 ], [ 0, %247 ]
  %250 = icmp slt i64 %249, 64
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %243, 1
  %253 = mul i64 %245, 64
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
  %262 = add i64 %261, 4096
  %263 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %214, 1
  %264 = ptrtoint ptr %263 to i64
  %265 = add i64 %264, 4096
  %266 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %235, 1
  %267 = ptrtoint ptr %266 to i64
  %268 = add i64 %267, 4096
  %269 = ptrtoint ptr %236 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17180131332)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %262, i64 %265)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %269, i64 %268)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %236)
  %270 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 0
  %271 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 1
  %272 = insertvalue { ptr, ptr, i64 } undef, ptr %270, 0
  %273 = insertvalue { ptr, ptr, i64 } %272, ptr %271, 1
  %274 = insertvalue { ptr, ptr, i64 } %273, i64 0, 2
  %275 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 2
  %276 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 0
  %277 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 1
  %278 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 2
  %279 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 0
  %280 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 1
  %281 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 2
  %282 = extractvalue { ptr, ptr, i64 } %274, 0
  %283 = extractvalue { ptr, ptr, i64 } %274, 1
  %284 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %282, 0
  %285 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %284, ptr %283, 1
  %286 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %285, i64 8192, 2
  %287 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %286, i64 64, 3, 0
  %288 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %287, i64 64, 4, 0
  %289 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %288, i64 64, 3, 1
  %290 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %289, i64 1, 4, 1
  %291 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 0
  %292 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 1
  %293 = insertvalue { ptr, ptr, i64 } undef, ptr %291, 0
  %294 = insertvalue { ptr, ptr, i64 } %293, ptr %292, 1
  %295 = insertvalue { ptr, ptr, i64 } %294, i64 0, 2
  %296 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 2
  %297 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 0
  %298 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 1
  %299 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 2
  %300 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 0
  %301 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 1
  %302 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 2
  %303 = extractvalue { ptr, ptr, i64 } %295, 0
  %304 = extractvalue { ptr, ptr, i64 } %295, 1
  %305 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %303, 0
  %306 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %305, ptr %304, 1
  %307 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %306, i64 8192, 2
  %308 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %307, i64 64, 3, 0
  %309 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %308, i64 64, 4, 0
  %310 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %309, i64 64, 3, 1
  %311 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %310, i64 1, 4, 1
  %312 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 0
  %313 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 1
  %314 = insertvalue { ptr, ptr, i64 } undef, ptr %312, 0
  %315 = insertvalue { ptr, ptr, i64 } %314, ptr %313, 1
  %316 = insertvalue { ptr, ptr, i64 } %315, i64 0, 2
  %317 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 2
  %318 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 0
  %319 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 1
  %320 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 2
  %321 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 0
  %322 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 1
  %323 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 2
  %324 = extractvalue { ptr, ptr, i64 } %316, 0
  %325 = extractvalue { ptr, ptr, i64 } %316, 1
  %326 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %324, 0
  %327 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %326, ptr %325, 1
  %328 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %327, i64 8192, 2
  %329 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %328, i64 64, 3, 0
  %330 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %329, i64 64, 4, 0
  %331 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, i64 64, 3, 1
  %332 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %331, i64 1, 4, 1
  %333 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64))
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %333, 0
  %335 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %334, ptr %333, 1
  %336 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %335, i64 0, 2
  %337 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %336, i64 64, 3, 0
  %338 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %337, i64 64, 3, 1
  %339 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, i64 64, 4, 0
  %340 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %339, i64 1, 4, 1
  br label %341

341:                                              ; preds = %354, %259
  %342 = phi i64 [ %355, %354 ], [ 0, %259 ]
  %343 = icmp slt i64 %342, 64
  br i1 %343, label %344, label %356

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %348, %344
  %346 = phi i64 [ %353, %348 ], [ 0, %344 ]
  %347 = icmp slt i64 %346, 64
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %340, 1
  %350 = mul i64 %342, 64
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
  %359 = add i64 %358, 8192
  %360 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %311, 1
  %361 = ptrtoint ptr %360 to i64
  %362 = add i64 %361, 8192
  %363 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %332, 1
  %364 = ptrtoint ptr %363 to i64
  %365 = add i64 %364, 8192
  %366 = ptrtoint ptr %333 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17180131332)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %359, i64 %362)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %366, i64 %365)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %333)
  %367 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 0
  %368 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 1
  %369 = insertvalue { ptr, ptr, i64 } undef, ptr %367, 0
  %370 = insertvalue { ptr, ptr, i64 } %369, ptr %368, 1
  %371 = insertvalue { ptr, ptr, i64 } %370, i64 0, 2
  %372 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 2
  %373 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 0
  %374 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 1
  %375 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 3, 2
  %376 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 0
  %377 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 1
  %378 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %54, 4, 2
  %379 = extractvalue { ptr, ptr, i64 } %371, 0
  %380 = extractvalue { ptr, ptr, i64 } %371, 1
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %379, 0
  %382 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %381, ptr %380, 1
  %383 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %382, i64 12288, 2
  %384 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %383, i64 64, 3, 0
  %385 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %384, i64 64, 4, 0
  %386 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, i64 64, 3, 1
  %387 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %386, i64 1, 4, 1
  %388 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 0
  %389 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 1
  %390 = insertvalue { ptr, ptr, i64 } undef, ptr %388, 0
  %391 = insertvalue { ptr, ptr, i64 } %390, ptr %389, 1
  %392 = insertvalue { ptr, ptr, i64 } %391, i64 0, 2
  %393 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 2
  %394 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 0
  %395 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 1
  %396 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 3, 2
  %397 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 0
  %398 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 1
  %399 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, 4, 2
  %400 = extractvalue { ptr, ptr, i64 } %392, 0
  %401 = extractvalue { ptr, ptr, i64 } %392, 1
  %402 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %400, 0
  %403 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %402, ptr %401, 1
  %404 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %403, i64 12288, 2
  %405 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %404, i64 64, 3, 0
  %406 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %405, i64 64, 4, 0
  %407 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %406, i64 64, 3, 1
  %408 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %407, i64 1, 4, 1
  %409 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 0
  %410 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 1
  %411 = insertvalue { ptr, ptr, i64 } undef, ptr %409, 0
  %412 = insertvalue { ptr, ptr, i64 } %411, ptr %410, 1
  %413 = insertvalue { ptr, ptr, i64 } %412, i64 0, 2
  %414 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 2
  %415 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 0
  %416 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 1
  %417 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 3, 2
  %418 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 0
  %419 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 1
  %420 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %36, 4, 2
  %421 = extractvalue { ptr, ptr, i64 } %413, 0
  %422 = extractvalue { ptr, ptr, i64 } %413, 1
  %423 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %421, 0
  %424 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %423, ptr %422, 1
  %425 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %424, i64 12288, 2
  %426 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %425, i64 64, 3, 0
  %427 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %426, i64 64, 4, 0
  %428 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %427, i64 64, 3, 1
  %429 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %428, i64 1, 4, 1
  %430 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64))
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %430, 0
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, ptr %430, 1
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, i64 0, 2
  %434 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, i64 64, 3, 0
  %435 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %434, i64 64, 3, 1
  %436 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %435, i64 64, 4, 0
  %437 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, i64 1, 4, 1
  br label %438

438:                                              ; preds = %451, %356
  %439 = phi i64 [ %452, %451 ], [ 0, %356 ]
  %440 = icmp slt i64 %439, 64
  br i1 %440, label %441, label %453

441:                                              ; preds = %438
  br label %442

442:                                              ; preds = %445, %441
  %443 = phi i64 [ %450, %445 ], [ 0, %441 ]
  %444 = icmp slt i64 %443, 64
  br i1 %444, label %445, label %451

445:                                              ; preds = %442
  %446 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %437, 1
  %447 = mul i64 %439, 64
  %448 = add i64 %447, %443
  %449 = getelementptr i32, ptr %446, i64 %448
  store i32 0, ptr %449, align 4
  %450 = add i64 %443, 1
  br label %442

451:                                              ; preds = %442
  %452 = add i64 %439, 1
  br label %438

453:                                              ; preds = %438
  %454 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %387, 1
  %455 = ptrtoint ptr %454 to i64
  %456 = add i64 %455, 12288
  %457 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %408, 1
  %458 = ptrtoint ptr %457 to i64
  %459 = add i64 %458, 12288
  %460 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %429, 1
  %461 = ptrtoint ptr %460 to i64
  %462 = add i64 %461, 12288
  %463 = ptrtoint ptr %430 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17180131332)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %456, i64 %459)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %463, i64 %462)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %430)
  ret void
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
