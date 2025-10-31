#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "znver3", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,+pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,+wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,+rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> ()>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
#map5 = affine_map<(d0, d1) -> (d0)>
#map6 = affine_map<(d0, d1) -> ()>
#map7 = affine_map<(d0) -> ()>
#map8 = affine_map<(d0, d1) -> (d0, 0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module @integrated_robot_application attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  util.func public @main$async(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view, %arg3: !hal.buffer_view, %arg4: !hal.fence, %arg5: !hal.fence, %arg6: !hal.fence, %arg7: !hal.fence) -> (!hal.buffer_view, !hal.buffer_view) attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "async func @main$async(%input0: !hal.buffer_view, %input1: !hal.buffer_view, %input2: !hal.buffer_view, %input3: !hal.buffer_view, %input4: !hal.fence, %input5: !hal.fence) -> (%output0: !hal.buffer_view, %output1: !hal.buffer_view)", iree.abi.model = "coarse-fences"}} {
    %0:2 = util.call @_main$async(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> (!hal.buffer_view, !hal.buffer_view)
    hal.fence.signal<%arg7 : !hal.fence>
    util.return %0#0, %0#1 : !hal.buffer_view, !hal.buffer_view
  }
  util.func private @_main$async(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view, %arg3: !hal.buffer_view, %arg4: !hal.fence, %arg5: !hal.fence) -> (!hal.buffer_view, !hal.buffer_view) attributes {inlining_policy = #util.inline.never} {
    %cst = arith.constant dense<[-2.000000e-01, 0.000000e+00]> : tensor<2xf32>
    %cst_0 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
    %cst_1 = arith.constant dense<[[1.000000e+00], [0.888888895], [0.777777791], [0.666666627], [0.555555582], [0.444444418], [0.333333313], [0.222222209], [0.111111104], [0.000000e+00]]> : tensor<10x1xf32>
    %cst_2 = arith.constant dense<[[0.000000e+00], [0.111111112], [0.222222224], [0.333333343], [0.444444448], [0.555555582], [0.666666686], [0.777777791], [0.888888895], [1.000000e+00]]> : tensor<10x1xf32>
    %cst_3 = arith.constant 1.000000e+00 : f32
    %cst_4 = arith.constant dense<1.000000e+00> : tensor<f32>
    %cst_5 = arith.constant dense<-1.000000e+00> : tensor<f32>
    %cst_6 = arith.constant dense<9.99999997E-7> : tensor<f32>
    %cst_7 = arith.constant dense<1.000000e-01> : tensor<f32>
    %cst_8 = arith.constant 0xFF800000 : f32
    %cst_9 = arith.constant dense<[0.036251314, -0.0380887836]> : tensor<2xf32>
    %cst_10 = arith.constant dense<"0x9866223D3045FDBB108D2DBD886F0ABD189132BC5008E9BCA81968BC0849B4BC82C26E3D64A8863CD0AF2C3C905C813CB8A20BBCF866223CF082313DECEEC2BCE8E157BC087710BCDA705CBD66B7253DE60D6CBD705697BB70668CBBA8D94A3D905652BC2CF8B6BCD6AC0BBDEC70243DE0E0693B9041B43C9CB2D9BC285563BC8872613C20B75DBCF0CFB5BC768341BD8033C9BBCA57763DBCDA22BD6859183C80CEC5BC8A0831BDB86D513D74EFD33C10CB61BC00EBF4395A0B3CBD96A4583D7877DC3C5C51973C0AB37C3D665B63BDE0E881BCA0EC47BB70ED083C882B5EBD08E9903C62CB38BD781B033C92AC63BD12257FBD961F5B3DF0B71A3DF0B80C3CAC59B13CD867C7BC98B007BD80A7863A20CA6DBC30EC8D3C90B0CCBB960012BDD4E6913C6811183DB8865EBD64007A3D7AF5423D00B264BA5A2B3BBD82762F3D6ECB673DE04D19BD2C42AEBC58AF88BC186B6A3CB2E856BD0CA3FE3C9080B93CA457EBBCF03737BD0AFB32BDE266473DA26D1BBD2C8D56BD98D1FABCF0DF0A3C40DA5DBB0E7E003D7423FB3C08DDEA3C307B95BC80C2ED3C80F913BDF65A62BD7C7EB63C088F65BDAC59263D005AEA3BC022AA3A701C273C78B4113DF8B84BBC483D0ABD9480FBBCBADE50BD0054603B40655C3D94C39DBC083E7FBD90D20DBC54422ABD046C0D3DAE945A3DCACE59BD804F183D404B0EBB00B3DCBB80AF1E3B7E08143DEC18CCBCDA4735BDB62506BD8874F4BC5EC93CBDE890723DC89A073D3AE1513D5E1760BD60AF6D3DC8033C3DD0F40F3DD0E4F8BCBE3731BDC2873BBD94E8163D240AD6BC0CD84DBD1E00393D523378BD68BF6C3DE22F393D5CA4B2BC127F07BD4007BCBBF077B63CB4AEA3BC26CA7BBD08B2323C445267BD9CE672BDD08AFFBC8E8A1EBD586515BD00317D3B8818D3BC7850E93C2833B83C6C9615BD3C491BBDE0A812BD08BCBE3CAC09BE3CA8113F3DACA0FD3CD46773BDBAE20EBD806960BC527A7F3DE2AD583D0CAC803C50BEC2BC908101BDA49C5D3DC093793BE27F0D3D609AA0BC94012CBD7CADCABC50B01FBDE0BBA7BB86571ABD0C84D73CF8B452BC8C25F1BCCCA7663DEE4F733D801D17BA00F4E8BB7E201ABD9ED961BD4CE180BCFE5776BD9420EDBC4ABA55BD1002093DE06D4A3CA6E64E3D426E49BD04F224BDE861D4BCF637783D78610E3D92B6663D3C8B8E3CAA0D7B3D4061BEBC4007613DC0172A3B5E164ABDA0CA13BC6AF70A3DB0EB40BCB452CE3C4E47733D42435ABD7096883C045CE9BCD81EC23CA0D79F3C0CBF243D2053EFBC4C2FAEBC24B4E9BCCC30673D20505BBB40B191BB5E25723D84F3803CFA87053DA0A1043BFC9F89BCAC72EE3C2831F53C120857BDC06F903A101184BCC8540F3DF4D19A3CCAA0673DC4A9C0BCFC750ABD40FA71BB64229ABCC4E2E43C36661DBD581F3F3D00DADBBABCDD46BDCEA10FBD9030AA3C7A62153DA070F1BCF09CD03CC8CB4FBDC00B45BBC21948BD489D333C3848A93C60DF933B142BFF3C608241BB8E5A083D001279BBC24A3E3D00164CBAC03A453CD0695B3C9E06073D1086D7BC80E4DA3B605B18BCE617783D88A9C03C5C34FE3CFCE232BD4A0B5FBDA024083B5ABD24BDAEED71BDC02EEA3A38A60BBCE089653D80B3CFBBE8E7113C201BC43BE84964BD8C616BBDEE1A74BD30615E3DF8F322BDF000113DACCE8F3C064004BDE0B8FA3C6CAEF6BC541A4BBDC086703D7878123C00E5203A941F513DDEDD35BD9A02713DBEDD493D10DDE53B1C289D3CC8D004BDDE7E683D48533F3D60996F3B6C00313D64AA91BCF005D63BB830BC3C30FCF53B800F073B26F53BBDB467763D927A083D1A0F0DBD92763F3D888B23BC64E127BD70E313BDC0D6FBBBBC39CBBC50D5F23B182B6C3C0852183C88C4F53C6E564CBD48690F3CF053133CAC638ABC10EE3CBC341C28BDE86A26BD94B984BC0A9C5F3DD0BF193DAC0932BDE85BBBBC9C3CC9BC846E67BD441A453D90D794BBD457553DE8D9173D547CC2BCD2496CBDA82079BC54FD80BCC6F2163DBC0FE33CEE4C0F3DF8808C3C38F4B93CA82133BCDCE994BC4C52E6BC80DF923C8EE113BDA27526BD4CAC5BBD32B81E3D60FCE93C402471BB3CF4B03C1E4E2EBDB00400BD26A40D3D90B823BDF63444BD4849693DDE6827BDACAF593D3A7C513DE8FA5BBC007D57BA00B08ABBFEAF35BDE0C7F1BB1856B13C86C6523D1CB8D63C0803783CE6CB7DBD90B9BDBB9E2C373DEE97733D9AE42BBDCE1A65BD665950BDDA49153D4645733DC0BEF23C46E94B3D5898B2BCD6DB29BD8CBE48BDF67739BDE045C0BB7A060BBDF0073E3C06172B3DF0840CBD6CF0FD3C901AC4BBE0DD37BC76987EBDE0AB653D205A6DBDF0108ABB9E776D3D82AF663D00F33ABAECF8ABBCD6FD00BD889153BDF8C9203DE0744ABB70FA88BB60C8CF3B1628423D20223CBDB4CFE13C1E24043D001824B80056B7BCFA6B473D406C28BCD0D9A43BFA6E45BDC0B8163B90DD60BCB4678FBCE06CC13C562B2B3D709D3E3CC45AC9BCC8342FBD0C880FBDD67B6C3D225F39BDF053A1BB803063BC1048A93B4A5378BDB0E0383C14AA33BDCC45E3BC865A2FBDBE48293DDCE5153DE055BF3C283C4BBD809156BDFE375DBD04B5E3BC828577BDC4F9C43CA45E143D62705C3DC0C8273CA8EEB13CD8B75DBD1CB8E63CA65475BDC0B9373D349F593D00B26EBCAA30733D9A1F103DEE4C73BD20CFFD3C6E6D4BBDF04DA6BBE489773D40438CBAB863FF3C8869603D706FC83C94A6663D740E413DB09AFA3BA8ED323D546400BD7CC703BD58CD2F3CA879B53C3C6B6A3D00F9DFBBCA8530BD306B313D367A033DB03678BDE8A616BDC03E9C3B7C4A8ABC14AF7EBD10EA953CF6C62B3D5853BD3C"> : tensor<2x256xf32>
    %cst_11 = arith.constant dense<[0.0602946617, 0.0679099783, 0.0262253601, 2.52176687E-4]> : tensor<4xf32>
    %cst_12 = arith.constant dense<"0xC33C46BD233AA03D8760E43DF310A3BD92EA023DDFFFFA3C3FB59CBDD67822BD657B11BE2E4CEEBD428D22BD46CC993D3076D8BD25E617BD5F6A8EBB21A71F3C9F7F80BD92A3FE3C723613BE77408B3D9251B13DCF91BFBDF9DA743DD64527BD639EB5BD68CB173D33409E3C1DDFA7BD3723DD3DF05AB9BCF96FE7BD4299C63D030B3A3D238ABBBCFBF0BC3D746E953DA3624D3C3065213D6DF8993CBF1588BD5115883C8A42E53AF62D0EBEE6A0DFBB684E123D953A313DE3220C3C419B17BDECF9CBBD0A518DBD93F5E6BDD33064BD1122F63D7F91023E7F8CE83D0153A63C624B9C3D96D3FABDCCB00DBE49488CBD147795BD5FDA12BE5B0F4BBD569FE0BD372A103E5ACA8A3CA12B9A3CC949703DE500CEBD67CBA9BDD8E8703B36DE92BDBCD80DBD0133053E6302033D8483A13B5FC4D5BDE3670CBECF09723DB12606BEC171D23DC993023C82E1B9BD8AA9AA3C39B0ABBDABC471BD29BC033EB5F06E3D80E30E3E8DA7D73DC70D5B3DD7F9F23BC14F93BD3EA8E33DF6F293BD558AE63C0F46CCBDBE2712BED055373D7EF5A73DF061B93DA792ACBD4CF702BECD2E18BC8B5EF4BDC4FABB3DC56C0A3EBC5FDA3DF4B408BDCBD6E43C765E0C3E42B85CBDC5C6FBBCBA5EF5BDE549E6BD347B0DBC83BF0EBD746DA4BC84A2E2BD36A4BEBDFC0CDDBDB05E7EBDCBB8383DD8B091BD4EDBB23C5A70F3BDE7B5D83D37E6AD3C68940EBD3AF579BDDB8E083EC064CC3CD7CAA43C15972B3DC6F16FBD35E99B3D4526683DD97395BA82FFF43C85E6C3BC93B88D3DFC2BA3BD30A6CE3D36411FBD80D71BBD33695B3DA7BAAC3DFC17E03D9B5C13BDFCF6D1BC3B988A3C185DE0BDC3ED03BC0B99993D9E1E613DA0DB2D3D3889FE3D9BB8AF3CF375AE3D68C98FBDDF570FBE3CB1063ED6D8693D89BDD93D5C95C73DFD9CAA3D3CA5033C1DCC9BBCD18D9C3CD8AC16BCF22914BD162811BDD87B67BD87DFBFBDD74EDBBCB6346FBD6B688BBD566703BE03ECE53D18578FBD7EA4D9BDF9FF05BE8B083CBD2786BCBD64FEF6BC8114093DB4D0F23BBD513DBC3D56E13C81CF82BC2F18FB3DD6AC58BD"> : tensor<4x3x4x4xf32>
    %cst_13 = arith.constant dense<0> : tensor<1xi64>
    %cst_14 = arith.constant dense<9.99999974E-5> : tensor<f32>
    %cst_15 = arith.constant dense<2.000000e+00> : tensor<f32>
    %cst_16 = arith.constant dense<5.000000e-01> : tensor<f32>
    %cst_17 = arith.constant dense<1> : tensor<1xi64>
    %cst_18 = arith.constant dense<2> : tensor<1xi64>
    %cst_19 = arith.constant 0.000000e+00 : f32
    %c1 = arith.constant 1 : index
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_21 = arith.constant 9.99999993E-9 : f32
    %0 = hal.tensor.import wait(%arg4) => %arg0 : !hal.buffer_view -> tensor<1x3x64x64xf32>
    %1 = hal.tensor.import wait(%arg4) => %arg1 : !hal.buffer_view -> tensor<3xf32>
    %2 = hal.tensor.import wait(%arg4) => %arg2 : !hal.buffer_view -> tensor<2xf32>
    %3 = hal.tensor.import wait(%arg4) => %arg3 : !hal.buffer_view -> tensor<2xf32>
    %4 = tensor.empty() : tensor<1xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %45 = arith.index_cast %in : i64 to index
      %extracted_30 = tensor.extract %3[%45] : tensor<2xf32>
      linalg.yield %extracted_30 : f32
    } -> tensor<1xf32>
    %collapsed = tensor.collapse_shape %5 [] : tensor<1xf32> into tensor<f32>
    %6 = tensor.empty() : tensor<f32>
    %7 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed, %cst_14 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.mulf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %45 = arith.index_cast %in : i64 to index
      %extracted_30 = tensor.extract %3[%45] : tensor<2xf32>
      linalg.yield %extracted_30 : f32
    } -> tensor<1xf32>
    %collapsed_22 = tensor.collapse_shape %8 [] : tensor<1xf32> into tensor<f32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_22, %cst_14 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.mulf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%7, %9 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%10, %cst_15 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.divf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %12 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%9, %7 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.subf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %13 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%12, %cst_16 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.divf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %14 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_18 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %45 = arith.index_cast %in : i64 to index
      %extracted_30 = tensor.extract %1[%45] : tensor<3xf32>
      linalg.yield %extracted_30 : f32
    } -> tensor<1xf32>
    %collapsed_23 = tensor.collapse_shape %14 [] : tensor<1xf32> into tensor<f32>
    %15 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%13, %cst_15 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.divf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %16 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_23, %15 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %17 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %45 = arith.index_cast %in : i64 to index
      %extracted_30 = tensor.extract %1[%45] : tensor<3xf32>
      linalg.yield %extracted_30 : f32
    } -> tensor<1xf32>
    %collapsed_24 = tensor.collapse_shape %17 [] : tensor<1xf32> into tensor<f32>
    %18 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%16 : tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %45 = math.cos %in : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %19 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%11, %18 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.mulf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_24, %19 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %21 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
    ^bb0(%in: i64, %out: f32):
      %45 = arith.index_cast %in : i64 to index
      %extracted_30 = tensor.extract %1[%45] : tensor<3xf32>
      linalg.yield %extracted_30 : f32
    } -> tensor<1xf32>
    %collapsed_25 = tensor.collapse_shape %21 [] : tensor<1xf32> into tensor<f32>
    %22 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%16 : tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %45 = math.sin %in : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%11, %22 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.mulf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %24 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_25, %23 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_23, %13 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<f32>
    %expanded = tensor.expand_shape %20 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %expanded_26 = tensor.expand_shape %24 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %expanded_27 = tensor.expand_shape %25 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %concat = tensor.concat dim(0) %expanded, %expanded_26, %expanded_27 : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<3xf32>
    %26 = tensor.empty() : tensor<1x3x66x66xf32>
    %27 = linalg.fill ins(%cst_19 : f32) outs(%26 : tensor<1x3x66x66xf32>) -> tensor<1x3x66x66xf32>
    %inserted_slice = tensor.insert_slice %0 into %27[0, 0, 1, 1] [1, 3, 64, 64] [1, 1, 1, 1] : tensor<1x3x64x64xf32> into tensor<1x3x66x66xf32>
    %28 = tensor.empty() : tensor<1x4x16x16xf32>
    %broadcasted = linalg.broadcast ins(%cst_11 : tensor<4xf32>) outs(%28 : tensor<1x4x16x16xf32>) dimensions = [0, 2, 3] 
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%inserted_slice, %cst_12 : tensor<1x3x66x66xf32>, tensor<4x3x4x4xf32>) outs(%broadcasted : tensor<1x4x16x16xf32>) -> tensor<1x4x16x16xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x4x16x16xf32>) outs(%28 : tensor<1x4x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %45 = arith.cmpf ugt, %in, %cst_19 : f32
      %46 = arith.select %45, %in, %cst_19 : f32
      linalg.yield %46 : f32
    } -> tensor<1x4x16x16xf32>
    %31 = tensor.empty() : tensor<1x4x8x8xf32>
    %32 = linalg.fill ins(%cst_8 : f32) outs(%31 : tensor<1x4x8x8xf32>) -> tensor<1x4x8x8xf32>
    %33 = tensor.empty() : tensor<2x2xf32>
    %34 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%30, %33 : tensor<1x4x16x16xf32>, tensor<2x2xf32>) outs(%32 : tensor<1x4x8x8xf32>) -> tensor<1x4x8x8xf32>
    %collapsed_28 = tensor.collapse_shape %34 [[0], [1, 2, 3]] : tensor<1x4x8x8xf32> into tensor<1x256xf32>
    %35 = tensor.empty() : tensor<256x2xf32>
    %transposed = linalg.transpose ins(%cst_10 : tensor<2x256xf32>) outs(%35 : tensor<256x2xf32>) permutation = [1, 0] 
    %36 = tensor.empty() : tensor<1x2xf32>
    %37 = linalg.fill ins(%cst_19 : f32) outs(%36 : tensor<1x2xf32>) -> tensor<1x2xf32>
    %38 = linalg.matmul ins(%collapsed_28, %transposed : tensor<1x256xf32>, tensor<256x2xf32>) outs(%37 : tensor<1x2xf32>) -> tensor<1x2xf32>
    %39 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%38, %cst_9 : tensor<1x2xf32>, tensor<2xf32>) outs(%36 : tensor<1x2xf32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %45 = arith.addf %in, %in_30 : f32
      linalg.yield %45 : f32
    } -> tensor<1x2xf32>
    %collapsed_29 = tensor.collapse_shape %39 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %40 = scf.while (%arg6 = %2) : (tensor<2xf32>) -> tensor<2xf32> {
      %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %arg6[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_30 = tensor.collapse_shape %45 [] : tensor<1xf32> into tensor<f32>
      %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %arg6[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_31 = tensor.collapse_shape %46 [] : tensor<1xf32> into tensor<f32>
      %47 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = math.cos %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %48 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%47, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %49 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_30, %collapsed_31 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.addf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %50 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = math.cos %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %51 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%50, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %52 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%48, %51 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.addf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = math.sin %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %54 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%53, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %55 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = math.sin %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %56 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%55, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %57 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%54, %56 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.addf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %expanded_32 = tensor.expand_shape %52 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %expanded_33 = tensor.expand_shape %57 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_34 = tensor.concat dim(0) %expanded_32, %expanded_33 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %58 = tensor.empty() : tensor<2xf32>
      %59 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%collapsed_29, %concat_34 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.subf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<2xf32>
      %60 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%53, %cst_5 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %61 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%60, %56 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.subf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %62 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%55, %cst_5 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %expanded_35 = tensor.expand_shape %61 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %expanded_36 = tensor.expand_shape %62 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_37 = tensor.concat dim(0) %expanded_35, %expanded_36 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %expanded_38 = tensor.expand_shape %51 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_39 = tensor.concat dim(0) %expanded_32, %expanded_38 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %expanded_40 = tensor.expand_shape %concat_37 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
      %expanded_41 = tensor.expand_shape %concat_39 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
      %concat_42 = tensor.concat dim(0) %expanded_40, %expanded_41 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
      %63 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%36 : tensor<1x2xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %86 = linalg.index 1 : index
        %extracted_57 = tensor.extract %concat_42[%85, %86] : tensor<2x2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1x2xf32>
      %collapsed_43 = tensor.collapse_shape %63 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
      %64 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %collapsed_43[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_44 = tensor.collapse_shape %64 [] : tensor<1xf32> into tensor<f32>
      %65 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%36 : tensor<1x2xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %86 = linalg.index 1 : index
        %extracted_57 = tensor.extract %concat_42[%85, %86] : tensor<2x2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1x2xf32>
      %collapsed_45 = tensor.collapse_shape %65 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
      %66 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %collapsed_45[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_46 = tensor.collapse_shape %66 [] : tensor<1xf32> into tensor<f32>
      %67 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_44, %collapsed_46 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %68 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %collapsed_43[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_47 = tensor.collapse_shape %68 [] : tensor<1xf32> into tensor<f32>
      %69 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %85 = arith.index_cast %in : i64 to index
        %extracted_57 = tensor.extract %collapsed_45[%85] : tensor<2xf32>
        linalg.yield %extracted_57 : f32
      } -> tensor<1xf32>
      %collapsed_48 = tensor.collapse_shape %69 [] : tensor<1xf32> into tensor<f32>
      %70 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_47, %collapsed_48 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %71 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%67, %70 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.subf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %72 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%71, %cst_6 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.addf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %73 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%72 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = arith.cmpf one, %in, %cst_19 : f32
        cf.assert %85, "unimplemented: tensor with zero element"
        %86 = arith.divf %cst_3, %in : f32
        linalg.yield %86 : f32
      } -> tensor<f32>
      %74 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%73, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %75 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_47 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = arith.negf %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %expanded_49 = tensor.expand_shape %75 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_50 = tensor.concat dim(0) %66, %expanded_49 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %76 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_48 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %85 = arith.negf %in : f32
        linalg.yield %85 : f32
      } -> tensor<f32>
      %expanded_51 = tensor.expand_shape %76 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_52 = tensor.concat dim(0) %expanded_51, %64 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %expanded_53 = tensor.expand_shape %concat_50 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
      %expanded_54 = tensor.expand_shape %concat_52 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
      %concat_55 = tensor.concat dim(0) %expanded_53, %expanded_54 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
      %77 = linalg.generic {indexing_maps = [#map3, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%concat_55, %74 : tensor<2x2xf32>, tensor<f32>) outs(%33 : tensor<2x2xf32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<2x2xf32>
      %78 = linalg.fill ins(%cst_19 : f32) outs(%58 : tensor<2xf32>) -> tensor<2xf32>
      %79 = linalg.matvec ins(%77, %59 : tensor<2x2xf32>, tensor<2xf32>) outs(%78 : tensor<2xf32>) -> tensor<2xf32>
      %80 = linalg.generic {indexing_maps = [#map, #map7, #map], iterator_types = ["parallel"]} ins(%79, %cst_7 : tensor<2xf32>, tensor<f32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.mulf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<2xf32>
      %81 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg6, %80 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_57: f32, %out: f32):
        %85 = arith.addf %in, %in_57 : f32
        linalg.yield %85 : f32
      } -> tensor<2xf32>
      %82 = linalg.sub ins(%81, %arg6 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) -> tensor<2xf32>
      %83 = linalg.mul ins(%82, %82 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) -> tensor<2xf32>
      %reduced = linalg.reduce ins(%83 : tensor<2xf32>) outs(%cst_20 : tensor<f32>) dimensions = [0] 
        (%in: f32, %init: f32) {
          %85 = arith.addf %in, %init : f32
          linalg.yield %85 : f32
        }
      %extracted_56 = tensor.extract %reduced[] : tensor<f32>
      %84 = arith.cmpf ogt, %extracted_56, %cst_21 : f32
      scf.condition(%84) %81 : tensor<2xf32>
    } do {
    ^bb0(%arg6: tensor<2xf32>):
      scf.yield %arg6 : tensor<2xf32>
    }
    %extracted = tensor.extract %40[%c1] : tensor<2xf32>
    %41 = arith.cmpf ogt, %extracted, %cst_19 : f32
    %42 = scf.if %41 -> (tensor<19x2xf32>) {
      %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %64 = arith.index_cast %in : i64 to index
        %extracted_35 = tensor.extract %40[%64] : tensor<2xf32>
        linalg.yield %extracted_35 : f32
      } -> tensor<1xf32>
      %collapsed_30 = tensor.collapse_shape %45 [] : tensor<1xf32> into tensor<f32>
      %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %64 = arith.index_cast %in : i64 to index
        %extracted_35 = tensor.extract %40[%64] : tensor<2xf32>
        linalg.yield %extracted_35 : f32
      } -> tensor<1xf32>
      %collapsed_31 = tensor.collapse_shape %46 [] : tensor<1xf32> into tensor<f32>
      %47 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %64 = math.cos %in : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %48 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%47, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %49 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_30, %collapsed_31 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.addf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %50 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %64 = math.cos %in : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %51 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%50, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %52 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%48, %51 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.addf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %64 = math.sin %in : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %54 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%53, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %55 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %64 = math.sin %in : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %56 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%55, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %57 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%54, %56 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.addf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<f32>
      %expanded_32 = tensor.expand_shape %52 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %expanded_33 = tensor.expand_shape %57 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_34 = tensor.concat dim(0) %expanded_32, %expanded_33 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %58 = tensor.empty() : tensor<2xf32>
      %59 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%concat_34, %cst_0 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.addf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<2xf32>
      %60 = tensor.empty() : tensor<10x2xf32>
      %61 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%concat_34, %cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%60 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<10x2xf32>
      %62 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%59, %cst_2 : tensor<2xf32>, tensor<10x1xf32>) outs(%60 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.mulf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<10x2xf32>
      %63 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%61, %62 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%60 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_35: f32, %out: f32):
        %64 = arith.addf %in, %in_35 : f32
        linalg.yield %64 : f32
      } -> tensor<10x2xf32>
      %padded = tensor.pad %63 low[0, 0] high[9, 0] {
      ^bb0(%arg6: index, %arg7: index):
        tensor.yield %cst_19 : f32
      } : tensor<10x2xf32> to tensor<19x2xf32>
      scf.yield %padded : tensor<19x2xf32>
    } else {
      %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_13 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %68 = arith.index_cast %in : i64 to index
        %extracted_36 = tensor.extract %40[%68] : tensor<2xf32>
        linalg.yield %extracted_36 : f32
      } -> tensor<1xf32>
      %collapsed_30 = tensor.collapse_shape %45 [] : tensor<1xf32> into tensor<f32>
      %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%cst_17 : tensor<1xi64>) outs(%4 : tensor<1xf32>) {
      ^bb0(%in: i64, %out: f32):
        %68 = arith.index_cast %in : i64 to index
        %extracted_36 = tensor.extract %40[%68] : tensor<2xf32>
        linalg.yield %extracted_36 : f32
      } -> tensor<1xf32>
      %collapsed_31 = tensor.collapse_shape %46 [] : tensor<1xf32> into tensor<f32>
      %47 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %68 = math.cos %in : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %48 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%47, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %49 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%collapsed_30, %collapsed_31 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %50 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %68 = math.cos %in : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %51 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%50, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %52 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%48, %51 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%collapsed_30 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %68 = math.sin %in : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %54 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%53, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %55 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = []} ins(%49 : tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %out: f32):
        %68 = math.sin %in : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %56 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%55, %cst_4 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %57 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = []} ins(%54, %56 : tensor<f32>, tensor<f32>) outs(%6 : tensor<f32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<f32>
      %expanded_32 = tensor.expand_shape %52 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %expanded_33 = tensor.expand_shape %57 [] output_shape [1] : tensor<f32> into tensor<1xf32>
      %concat_34 = tensor.concat dim(0) %expanded_32, %expanded_33 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
      %58 = tensor.empty() : tensor<2xf32>
      %59 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%concat_34, %cst : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<2xf32>
      %60 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%59, %cst_0 : tensor<2xf32>, tensor<2xf32>) outs(%58 : tensor<2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<2xf32>
      %61 = tensor.empty() : tensor<10x2xf32>
      %62 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%concat_34, %cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %63 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%59, %cst_2 : tensor<2xf32>, tensor<10x1xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %64 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%62, %63 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %65 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%59, %cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %66 = linalg.generic {indexing_maps = [#map4, #map8, #map3], iterator_types = ["parallel", "parallel"]} ins(%60, %cst_2 : tensor<2xf32>, tensor<10x1xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.mulf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %67 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel", "parallel"]} ins(%65, %66 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%61 : tensor<10x2xf32>) {
      ^bb0(%in: f32, %in_36: f32, %out: f32):
        %68 = arith.addf %in, %in_36 : f32
        linalg.yield %68 : f32
      } -> tensor<10x2xf32>
      %extracted_slice = tensor.extract_slice %67[1, 0] [9, 2] [1, 1] : tensor<10x2xf32> to tensor<9x2xf32>
      %concat_35 = tensor.concat dim(0) %64, %extracted_slice : (tensor<10x2xf32>, tensor<9x2xf32>) -> tensor<19x2xf32>
      scf.yield %concat_35 : tensor<19x2xf32>
    }
    %43 = hal.tensor.export %42 : tensor<19x2xf32> -> !hal.buffer_view
    %44 = hal.tensor.export %concat : tensor<3xf32> -> !hal.buffer_view
    hal.fence.signal<%arg5 : !hal.fence>
    util.return %43, %44 : !hal.buffer_view, !hal.buffer_view
  }
  util.func public @main(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view, %arg3: !hal.buffer_view) -> (!hal.buffer_view, !hal.buffer_view) attributes {iree.abi.stub} {
    %c-1_i32 = arith.constant -1 : i32
    %0 = util.null : !hal.fence
    %c0 = arith.constant 0 : index
    %device_0 = hal.devices.get %c0 : !hal.device
    %fence = hal.fence.create device(%device_0 : !hal.device) flags("None") : !hal.fence
    %1:2 = util.call @_main$async(%arg0, %arg1, %arg2, %arg3, %0, %fence) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> (!hal.buffer_view, !hal.buffer_view)
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.return %1#0, %1#1 : !hal.buffer_view, !hal.buffer_view
  }
}
