// TODO: Try $async blocks for the func calls

#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>

#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<() -> ()>
#map5 = affine_map<(d0, d1) -> (d0)>
#map6 = affine_map<(d0, d1) -> ()>
#map7 = affine_map<(d0) -> ()>

#map8 = affine_map<(d0, d1) -> (d0, 0)>

module @integrated_robot_application {
  // ============================================================================
  // KERNEL DEFINITIONS
  // ============================================================================

  // --- Op A: Perception Kernel ---
  func.func private @op_a_kernel(%a_arg0: tensor<1x3x64x64xf32>) -> tensor<2xf32> {
    %a_cst = arith.constant dense<"0xC33C46BD233AA03D8760E43DF310A3BD92EA023DDFFFFA3C3FB59CBDD67822BD657B11BE2E4CEEBD428D22BD46CC993D3076D8BD25E617BD5F6A8EBB21A71F3C9F7F80BD92A3FE3C723613BE77408B3D9251B13DCF91BFBDF9DA743DD64527BD639EB5BD68CB173D33409E3C1DDFA7BD3723DD3DF05AB9BCF96FE7BD4299C63D030B3A3D238ABBBCFBF0BC3D746E953DA3624D3C3065213D6DF8993CBF1588BD5115883C8A42E53AF62D0EBEE6A0DFBB684E123D953A313DE3220C3C419B17BDECF9CBBD0A518DBD93F5E6BDD33064BD1122F63D7F91023E7F8CE83D0153A63C624B9C3D96D3FABDCCB00DBE49488CBD147795BD5FDA12BE5B0F4BBD569FE0BD372A103E5ACA8A3CA12B9A3CC949703DE500CEBD67CBA9BDD8E8703B36DE92BDBCD80DBD0133053E6302033D8483A13B5FC4D5BDE3670CBECF09723DB12606BEC171D23DC993023C82E1B9BD8AA9AA3C39B0ABBDABC471BD29BC033EB5F06E3D80E30E3E8DA7D73DC70D5B3DD7F9F23BC14F93BD3EA8E33DF6F293BD558AE63C0F46CCBDBE2712BED055373D7EF5A73DF061B93DA792ACBD4CF702BECD2E18BC8B5EF4BDC4FABB3DC56C0A3EBC5FDA3DF4B408BDCBD6E43C765E0C3E42B85CBDC5C6FBBCBA5EF5BDE549E6BD347B0DBC83BF0EBD746DA4BC84A2E2BD36A4BEBDFC0CDDBDB05E7EBDCBB8383DD8B091BD4EDBB23C5A70F3BDE7B5D83D37E6AD3C68940EBD3AF579BDDB8E083EC064CC3CD7CAA43C15972B3DC6F16FBD35E99B3D4526683DD97395BA82FFF43C85E6C3BC93B88D3DFC2BA3BD30A6CE3D36411FBD80D71BBD33695B3DA7BAAC3DFC17E03D9B5C13BDFCF6D1BC3B988A3C185DE0BDC3ED03BC0B99993D9E1E613DA0DB2D3D3889FE3D9BB8AF3CF375AE3D68C98FBDDF570FBE3CB1063ED6D8693D89BDD93D5C95C73DFD9CAA3D3CA5033C1DCC9BBCD18D9C3CD8AC16BCF22914BD162811BDD87B67BD87DFBFBDD74EDBBCB6346FBD6B688BBD566703BE03ECE53D18578FBD7EA4D9BDF9FF05BE8B083CBD2786BCBD64FEF6BC8114093DB4D0F23BBD513DBC3D56E13C81CF82BC2F18FB3DD6AC58BD"> : tensor<4x3x4x4xf32>
    %a_cst_0 = arith.constant dense<[0.0602946617, 0.0679099783, 0.0262253601, 2.52176687E-4]> : tensor<4xf32>
    %a_cst_1 = arith.constant dense<"0x9866223D3045FDBB108D2DBD886F0ABD189132BC5008E9BCA81968BC0849B4BC82C26E3D64A8863CD0AF2C3C905C813CB8A20BBCF866223CF082313DECEEC2BCE8E157BC087710BCDA705CBD66B7253DE60D6CBD705697BB70668CBBA8D94A3D905652BC2CF8B6BCD6AC0BBDEC70243DE0E0693B9041B43C9CB2D9BC285563BC8872613C20B75DBCF0CFB5BC768341BD8033C9BBCA57763DBCDA22BD6859183C80CEC5BC8A0831BDB86D513D74EFD33C10CB61BC00EBF4395A0B3CBD96A4583D7877DC3C5C51973C0AB37C3D665B63BDE0E881BCA0EC47BB70ED083C882B5EBD08E9903C62CB38BD781B033C92AC63BD12257FBD961F5B3DF0B71A3DF0B80C3CAC59B13CD867C7BC98B007BD80A7863A20CA6DBC30EC8D3C90B0CCBB960012BDD4E6913C6811183DB8865EBD64007A3D7AF5423D00B264BA5A2B3BBD82762F3D6ECB673DE04D19BD2C42AEBC58AF88BC186B6A3CB2E856BD0CA3FE3C9080B93CA457EBBCF03737BD0AFB32BDE266473DA26D1BBD2C8D56BD98D1FABCF0DF0A3C40DA5DBB0E7E003D7423FB3C08DDEA3C307B95BC80C2ED3C80F913BDF65A62BD7C7EB63C088F65BDAC59263D005AEA3BC022AA3A701C273C78B4113DF8B84BBC483D0ABD9480FBBCBADE50BD0054603B40655C3D94C39DBC083E7FBD90D20DBC54422ABD046C0D3DAE945A3DCACE59BD804F183D404B0EBB00B3DCBB80AF1E3B7E08143DEC18CCBCDA4735BDB62506BD8874F4BC5EC93CBDE890723DC89A073D3AE1513D5E1760BD60AF6D3DC8033C3DD0F40F3DD0E4F8BCBE3731BDC2873BBD94E8163D240AD6BC0CD84DBD1E00393D523378BD68BF6C3DE22F393D5CA4B2BC127F07BD4007BCBBF077B63CB4AEA3BC26CA7BBD08B2323C445267BD9CE672BDD08AFFBC8E8A1EBD586515BD00317D3B8818D3BC7850E93C2833B83C6C9615BD3C491BBDE0A812BD08BCBE3CAC09BE3CA8113F3DACA0FD3CD46773BDBAE20EBD806960BC527A7F3DE2AD583D0CAC803C50BEC2BC908101BDA49C5D3DC093793BE27F0D3D609AA0BC94012CBD7CADCABC50B01FBDE0BBA7BB86571ABD0C84D73CF8B452BC8C25F1BCCCA7663DEE4F733D801D17BA00F4E8BB7E201ABD9ED961BD4CE180BCFE5776BD9420EDBC4ABA55BD1002093DE06D4A3CA6E64E3D426E49BD04F224BDE861D4BCF637783D78610E3D92B6663D3C8B8E3CAA0D7B3D4061BEBC4007613DC0172A3B5E164ABDA0CA13BC6AF70A3DB0EB40BCB452CE3C4E47733D42435ABD7096883C045CE9BCD81EC23CA0D79F3C0CBF243D2053EFBC4C2FAEBC24B4E9BCCC30673D20505BBB40B191BB5E25723D84F3803CFA87053DA0A1043BFC9F89BCAC72EE3C2831F53C120857BDC06F903A101184BCC8540F3DF4D19A3CCAA0673DC4A9C0BCFC750ABD40FA71BB64229ABCC4E2E43C36661DBD581F3F3D00DADBBABCDD46BDCEA10FBD9030AA3C7A62153DA070F1BCF09CD03CC8CB4FBDC00B45BBC21948BD489D333C3848A93C60DF933B142BFF3C608241BB8E5A083D001279BBC24A3E3D00164CBAC03A453CD0695B3C9E06073D1086D7BC80E4DA3B605B18BCE617783D88A9C03C5C34FE3CFCE232BD4A0B5FBDA024083B5ABD24BDAEED71BDC02EEA3A38A60BBCE089653D80B3CFBBE8E7113C201BC43BE84964BD8C616BBDEE1A74BD30615E3DF8F322BDF000113DACCE8F3C064004BDE0B8FA3C6CAEF6BC541A4BBDC086703D7878123C00E5203A941F513DDEDD35BD9A02713DBEDD493D10DDE53B1C289D3CC8D004BDDE7E683D48533F3D60996F3B6C00313D64AA91BCF005D63BB830BC3C30FCF53B800F073B26F53BBDB467763D927A083D1A0F0DBD92763F3D888B23BC64E127BD70E313BDC0D6FBBBBC39CBBC50D5F23B182B6C3C0852183C88C4F53C6E564CBD48690F3CF053133CAC638ABC10EE3CBC341C28BDE86A26BD94B984BC0A9C5F3DD0BF193DAC0932BDE85BBBBC9C3CC9BC846E67BD441A453D90D794BBD457553DE8D9173D547CC2BCD2496CBDA82079BC54FD80BCC6F2163DBC0FE33CEE4C0F3DF8808C3C38F4B93CA82133BCDCE994BC4C52E6BC80DF923C8EE113BDA27526BD4CAC5BBD32B81E3D60FCE93C402471BB3CF4B03C1E4E2EBDB00400BD26A40D3D90B823BDF63444BD4849693DDE6827BDACAF593D3A7C513DE8FA5BBC007D57BA00B08ABBFEAF35BDE0C7F1BB1856B13C86C6523D1CB8D63C0803783CE6CB7DBD90B9BDBB9E2C373DEE97733D9AE42BBDCE1A65BD665950BDDA49153D4645733DC0BEF23C46E94B3D5898B2BCD6DB29BD8CBE48BDF67739BDE045C0BB7A060BBDF0073E3C06172B3DF0840CBD6CF0FD3C901AC4BBE0DD37BC76987EBDE0AB653D205A6DBDF0108ABB9E776D3D82AF663D00F33ABAECF8ABBCD6FD00BD889153BDF8C9203DE0744ABB70FA88BB60C8CF3B1628423D20223CBDB4CFE13C1E24043D001824B80056B7BCFA6B473D406C28BCD0D9A43BFA6E45BDC0B8163B90DD60BCB4678FBCE06CC13C562B2B3D709D3E3CC45AC9BCC8342FBD0C880FBDD67B6C3D225F39BDF053A1BB803063BC1048A93B4A5378BDB0E0383C14AA33BDCC45E3BC865A2FBDBE48293DDCE5153DE055BF3C283C4BBD809156BDFE375DBD04B5E3BC828577BDC4F9C43CA45E143D62705C3DC0C8273CA8EEB13CD8B75DBD1CB8E63CA65475BDC0B9373D349F593D00B26EBCAA30733D9A1F103DEE4C73BD20CFFD3C6E6D4BBDF04DA6BBE489773D40438CBAB863FF3C8869603D706FC83C94A6663D740E413DB09AFA3BA8ED323D546400BD7CC703BD58CD2F3CA879B53C3C6B6A3D00F9DFBBCA8530BD306B313D367A033DB03678BDE8A616BDC03E9C3B7C4A8ABC14AF7EBD10EA953CF6C62B3D5853BD3C"> : tensor<2x256xf32>
    %a_cst_2 = arith.constant dense<[0.036251314, -0.0380887836]> : tensor<2xf32>
    %a_cst_3 = arith.constant 0.000000e+00 : f32
    %a_cst_4 = arith.constant 0xFF800000 : f32
    %padded_empty = tensor.empty() : tensor<1x3x66x66xf32>
    // 2. Fill the new tensor with the padding value (%a_cst_3 which is 0.0).
    %padded_filled = linalg.fill ins(%a_cst_3 : f32) outs(%padded_empty : tensor<1x3x66x66xf32>) -> tensor<1x3x66x66xf32>
    // 3. Insert the original tensor (%a_arg0) into a slice of the filled tensor.
    // The offsets [0, 0, 1, 1] correspond to the 'low' padding values.
    %a_padded = tensor.insert_slice %a_arg0 into %padded_filled[0, 0, 1, 1] [1, 3, 64, 64] [1, 1, 1, 1] : tensor<1x3x64x64xf32> into tensor<1x3x66x66xf32>
    %a_1 = tensor.empty() : tensor<1x4x16x16xf32>
    %a_broadcasted = linalg.broadcast ins(%a_cst_0 : tensor<4xf32>) outs(%a_1 : tensor<1x4x16x16xf32>) dimensions = [0, 2, 3] 
    %a_2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%a_padded, %a_cst : tensor<1x3x66x66xf32>, tensor<4x3x4x4xf32>) outs(%a_broadcasted : tensor<1x4x16x16xf32>) -> tensor<1x4x16x16xf32>
    %a_3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%a_2 : tensor<1x4x16x16xf32>) outs(%a_1 : tensor<1x4x16x16xf32>) {
    ^bb0(%a_in: f32, %a_out: f32):
      %a_15 = arith.cmpf ugt, %a_in, %a_cst_3 : f32
      %a_16 = arith.select %a_15, %a_in, %a_cst_3 : f32
      linalg.yield %a_16 : f32
    } -> tensor<1x4x16x16xf32>
    %a_4 = tensor.empty() : tensor<1x4x8x8xf32>
    %a_5 = linalg.fill ins(%a_cst_4 : f32) outs(%a_4 : tensor<1x4x8x8xf32>) -> tensor<1x4x8x8xf32>
    %a_6 = tensor.empty() : tensor<2x2xf32>
    %a_7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%a_3, %a_6 : tensor<1x4x16x16xf32>, tensor<2x2xf32>) outs(%a_5 : tensor<1x4x8x8xf32>) -> tensor<1x4x8x8xf32>
    %a_collapsed = tensor.collapse_shape %a_7 [[0], [1, 2, 3]] : tensor<1x4x8x8xf32> into tensor<1x256xf32>
    %a_8 = tensor.empty() : tensor<256x2xf32>
    %a_transposed = linalg.transpose ins(%a_cst_1 : tensor<2x256xf32>) outs(%a_8 : tensor<256x2xf32>) permutation = [1, 0] 
    %a_9 = tensor.empty() : tensor<1x2xf32>
    %a_10 = linalg.fill ins(%a_cst_3 : f32) outs(%a_9 : tensor<1x2xf32>) -> tensor<1x2xf32>
    %a_11 = linalg.matmul ins(%a_collapsed, %a_transposed : tensor<1x256xf32>, tensor<256x2xf32>) outs(%a_10 : tensor<1x2xf32>) -> tensor<1x2xf32>
    %a_12 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%a_11, %a_cst_2 : tensor<1x2xf32>, tensor<2xf32>) outs(%a_9 : tensor<1x2xf32>) {
    ^bb0(%a_in: f32, %a_in_6: f32, %a_out: f32):
      %a_15 = arith.addf %a_in, %a_in_6 : f32
      linalg.yield %a_15 : f32
    } -> tensor<1x2xf32>
    %a_collapsed_5 = tensor.collapse_shape %a_12 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    func.return %a_collapsed_5 : tensor<2xf32>
  }

  // --- Op B: IK Solver Step Kernel ---
  func.func private @op_b_kernel(%b_arg0: tensor<2xf32>, %b_arg1: tensor<2xf32>) -> tensor<2xf32> {
    // Body from op_b MLIR file...
    %b_cst = arith.constant dense<1> : tensor<1xi64>
    %b_cst_0 = arith.constant dense<1.000000e-01> : tensor<f32>
    %b_cst_1 = arith.constant dense<9.99999997E-7> : tensor<f32>
    %b_cst_2 = arith.constant dense<-1.000000e+00> : tensor<f32>
    %b_cst_3 = arith.constant dense<1.000000e+00> : tensor<f32>
    %b_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %b_cst_5 = arith.constant 0.000000e+00 : f32
    %b_cst_6 = arith.constant 1.000000e+00 : f32
    %b_2 = tensor.empty() : tensor<1xf32>
    %b_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_arg0[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed = tensor.collapse_shape %b_3 [] : tensor<1xf32> into tensor<f32>
    %b_4 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_arg0[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_7 = tensor.collapse_shape %b_4 [] : tensor<1xf32> into tensor<f32>
    %b_5 = tensor.empty() : tensor<f32>
    %b_6 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.cos %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_6, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_8 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed, %b_collapsed_7 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_9 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_8 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.cos %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_9, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_11 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_7, %b_10 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_12 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.sin %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_13 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_12, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_14 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_8 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = math.sin %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_14, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_16 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_13, %b_15 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded = tensor.expand_shape %b_11 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_expanded_8 = tensor.expand_shape %b_16 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat = tensor.concat dim(0) %b_expanded, %b_expanded_8 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_17 = tensor.empty() : tensor<2xf32>
    %b_18 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%b_arg1, %b_concat : tensor<2xf32>, tensor<2xf32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    %b_19 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_12, %b_cst_2 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_20 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_19, %b_15 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_21 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_14, %b_cst_2 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_9 = tensor.expand_shape %b_20 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_expanded_10 = tensor.expand_shape %b_21 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_11 = tensor.concat dim(0) %b_expanded_9, %b_expanded_10 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_12 = tensor.expand_shape %b_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_13 = tensor.concat dim(0) %b_expanded, %b_expanded_12 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_14 = tensor.expand_shape %b_concat_11 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_expanded_15 = tensor.expand_shape %b_concat_13 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_concat_16 = tensor.concat dim(0) %b_expanded_14, %b_expanded_15 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %b_22 = tensor.empty() : tensor<1x2xf32>
    %b_23 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_22 : tensor<1x2xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_46 = linalg.index 1 : index
      %b_extracted = tensor.extract %b_concat_16[%b_45, %b_46] : tensor<2x2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1x2xf32>
    %b_collapsed_17 = tensor.collapse_shape %b_23 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %b_24 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_17[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_18 = tensor.collapse_shape %b_24 [] : tensor<1xf32> into tensor<f32>
    %b_25 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_22 : tensor<1x2xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_46 = linalg.index 1 : index
      %b_extracted = tensor.extract %b_concat_16[%b_45, %b_46] : tensor<2x2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1x2xf32>
    %b_collapsed_19 = tensor.collapse_shape %b_25 [[0, 1]] : tensor<1x2xf32> into tensor<2xf32>
    %b_26 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_19[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_20 = tensor.collapse_shape %b_26 [] : tensor<1xf32> into tensor<f32>
    %b_27 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed_18, %b_collapsed_20 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_28 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_17[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_21 = tensor.collapse_shape %b_28 [] : tensor<1xf32> into tensor<f32>
    %b_29 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%b_cst_4 : tensor<1xi64>) outs(%b_2 : tensor<1xf32>) {
    ^bb0(%b_in: i64, %b_out: f32):
      %b_45 = arith.index_cast %b_in : i64 to index
      %b_extracted = tensor.extract %b_collapsed_19[%b_45] : tensor<2xf32>
      linalg.yield %b_extracted : f32
    } -> tensor<1xf32>
    %b_collapsed_22 = tensor.collapse_shape %b_29 [] : tensor<1xf32> into tensor<f32>
    %b_30 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_collapsed_21, %b_collapsed_22 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_31 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_27, %b_30 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.subf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_32 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_31, %b_cst_1 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_33 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_32 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.cmpf one, %b_in, %b_cst_5 : f32
      cf.assert %b_45, "unimplemented: tensor with zero element"
      %b_46 = arith.divf %b_cst_6, %b_in : f32
      linalg.yield %b_46 : f32
    } -> tensor<f32>
    %b_34 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%b_33, %b_cst_3 : tensor<f32>, tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_35 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed_21 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.negf %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_23 = tensor.expand_shape %b_35 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_24 = tensor.concat dim(0) %b_26, %b_expanded_23 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_36 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%b_collapsed_22 : tensor<f32>) outs(%b_5 : tensor<f32>) {
    ^bb0(%b_in: f32, %b_out: f32):
      %b_45 = arith.negf %b_in : f32
      linalg.yield %b_45 : f32
    } -> tensor<f32>
    %b_expanded_25 = tensor.expand_shape %b_36 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %b_concat_26 = tensor.concat dim(0) %b_expanded_25, %b_24 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %b_expanded_27 = tensor.expand_shape %b_concat_24 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_expanded_28 = tensor.expand_shape %b_concat_26 [[0, 1]] output_shape [1, 2] : tensor<2xf32> into tensor<1x2xf32>
    %b_concat_29 = tensor.concat dim(0) %b_expanded_27, %b_expanded_28 : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<2x2xf32>
    %b_37 = tensor.empty() : tensor<2x2xf32>
    %b_38 = linalg.generic {indexing_maps = [#map1, #map6, #map1], iterator_types = ["parallel", "parallel"]} ins(%b_concat_29, %b_34 : tensor<2x2xf32>, tensor<f32>) outs(%b_37 : tensor<2x2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2x2xf32>
    %b_39 = linalg.fill ins(%b_cst_5 : f32) outs(%b_17 : tensor<2xf32>) -> tensor<2xf32>
    %b_40 = linalg.matvec ins(%b_38, %b_18 : tensor<2x2xf32>, tensor<2xf32>) outs(%b_39 : tensor<2xf32>) -> tensor<2xf32>
    %b_41 = linalg.generic {indexing_maps = [#map3, #map7, #map3], iterator_types = ["parallel"]} ins(%b_40, %b_cst_0 : tensor<2xf32>, tensor<f32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.mulf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    %b_42 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%b_arg0, %b_41 : tensor<2xf32>, tensor<2xf32>) outs(%b_17 : tensor<2xf32>) {
    ^bb0(%b_in: f32, %b_in_30: f32, %b_out: f32):
      %b_45 = arith.addf %b_in, %b_in_30 : f32
      linalg.yield %b_45 : f32
    } -> tensor<2xf32>
    func.return %b_42 : tensor<2xf32>
  }

  // --- Op C: Simple Motion Kernel ---
  func.func private @op_c_kernel(%c_arg0: tensor<2xf32>) -> tensor<10x2xf32> {
    // Body from op_c MLIR file...
    %c_cst = arith.constant dense<1> : tensor<1xi64>
    %c_cst_0 = arith.constant dense<[[0.000000e+00], [0.111111112], [0.222222224], [0.333333343], [0.444444448], [0.555555582], [0.666666686], [0.777777791], [0.888888895], [1.000000e+00]]> : tensor<10x1xf32>
    %c_cst_1 = arith.constant dense<[[1.000000e+00], [0.888888895], [0.777777791], [0.666666627], [0.555555582], [0.444444418], [0.333333313], [0.222222209], [0.111111104], [0.000000e+00]]> : tensor<10x1xf32>
    %c_cst_2 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
    %c_cst_3 = arith.constant dense<1.000000e+00> : tensor<f32>
    %c_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %c_1 = tensor.empty() : tensor<1xf32>
    %c_2 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%c_cst_4 : tensor<1xi64>) outs(%c_1 : tensor<1xf32>) {
    ^bb0(%c_in: i64, %c_out: f32):
      %c_24 = arith.index_cast %c_in : i64 to index
      %c_extracted = tensor.extract %c_arg0[%c_24] : tensor<2xf32>
      linalg.yield %c_extracted : f32
    } -> tensor<1xf32>
    %c_collapsed = tensor.collapse_shape %c_2 [] : tensor<1xf32> into tensor<f32>
    %c_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%c_cst : tensor<1xi64>) outs(%c_1 : tensor<1xf32>) {
    ^bb0(%c_in: i64, %c_out: f32):
      %c_24 = arith.index_cast %c_in : i64 to index
      %c_extracted = tensor.extract %c_arg0[%c_24] : tensor<2xf32>
      linalg.yield %c_extracted : f32
    } -> tensor<1xf32>
    %c_collapsed_5 = tensor.collapse_shape %c_3 [] : tensor<1xf32> into tensor<f32>
    %c_4 = tensor.empty() : tensor<f32>
    %c_5 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_collapsed : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.cos %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_6 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_5, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_collapsed, %c_collapsed_5 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_8 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_7 : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.cos %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_8, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_6, %c_9 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_11 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_collapsed : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.sin %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_12 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_11, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_13 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%c_7 : tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_out: f32):
      %c_24 = math.sin %c_in : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_13, %c_cst_3 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%c_12, %c_14 : tensor<f32>, tensor<f32>) outs(%c_4 : tensor<f32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<f32>
    %c_expanded = tensor.expand_shape %c_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %c_expanded_6 = tensor.expand_shape %c_15 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %c_concat = tensor.concat dim(0) %c_expanded, %c_expanded_6 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %c_16 = tensor.empty() : tensor<2xf32>
    %c_17 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%c_concat, %c_cst_2 : tensor<2xf32>, tensor<2xf32>) outs(%c_16 : tensor<2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<2xf32>
    %c_18 = tensor.empty() : tensor<10x2xf32>
    %c_19 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_concat, %c_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    %c_20 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_17, %c_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.mulf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    %c_21 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%c_19, %c_20 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%c_18 : tensor<10x2xf32>) {
    ^bb0(%c_in: f32, %c_in_7: f32, %c_out: f32):
      %c_24 = arith.addf %c_in, %c_in_7 : f32
      linalg.yield %c_24 : f32
    } -> tensor<10x2xf32>
    func.return %c_21 : tensor<10x2xf32>
  }

  // --- Op D: Complex Motion Kernel ---
  func.func private @op_d_kernel(%d_arg0: tensor<2xf32>) -> tensor<19x2xf32>  {
    // Body from op_d MLIR file...
    %d_cst = arith.constant dense<1> : tensor<1xi64>
    %d_cst_0 = arith.constant dense<[[0.000000e+00], [0.111111112], [0.222222224], [0.333333343], [0.444444448], [0.555555582], [0.666666686], [0.777777791], [0.888888895], [1.000000e+00]]> : tensor<10x1xf32>
    %d_cst_1 = arith.constant dense<[[1.000000e+00], [0.888888895], [0.777777791], [0.666666627], [0.555555582], [0.444444418], [0.333333313], [0.222222209], [0.111111104], [0.000000e+00]]> : tensor<10x1xf32>
    %d_cst_2 = arith.constant dense<[0.000000e+00, -1.000000e-01]> : tensor<2xf32>
    %d_cst_3 = arith.constant dense<[-2.000000e-01, 0.000000e+00]> : tensor<2xf32>
    %d_cst_4 = arith.constant dense<1.000000e+00> : tensor<f32>
    %d_cst_5 = arith.constant dense<0> : tensor<1xi64>
    %d_1 = tensor.empty() : tensor<1xf32>
    %d_2 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%d_cst_5 : tensor<1xi64>) outs(%d_1 : tensor<1xf32>) {
    ^bb0(%d_in: i64, %d_out: f32):
      %d_28 = arith.index_cast %d_in : i64 to index
      %d_extracted = tensor.extract %d_arg0[%d_28] : tensor<2xf32>
      linalg.yield %d_extracted : f32
    } -> tensor<1xf32>
    %d_collapsed = tensor.collapse_shape %d_2 [] : tensor<1xf32> into tensor<f32>
    %d_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%d_cst : tensor<1xi64>) outs(%d_1 : tensor<1xf32>) {
    ^bb0(%d_in: i64, %d_out: f32):
      %d_28 = arith.index_cast %d_in : i64 to index
      %d_extracted = tensor.extract %d_arg0[%d_28] : tensor<2xf32>
      linalg.yield %d_extracted : f32
    } -> tensor<1xf32>
    %d_collapsed_6 = tensor.collapse_shape %d_3 [] : tensor<1xf32> into tensor<f32>
    %d_4 = tensor.empty() : tensor<f32>
    %d_5 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_collapsed : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.cos %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_6 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_5, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_collapsed, %d_collapsed_6 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_8 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_7 : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.cos %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_8, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_6, %d_9 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_11 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_collapsed : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.sin %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_12 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_11, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_13 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%d_7 : tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_out: f32):
      %d_28 = math.sin %d_in : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_13, %d_cst_4 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_15 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%d_12, %d_14 : tensor<f32>, tensor<f32>) outs(%d_4 : tensor<f32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<f32>
    %d_expanded = tensor.expand_shape %d_10 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %d_expanded_7 = tensor.expand_shape %d_15 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %d_concat = tensor.concat dim(0) %d_expanded, %d_expanded_7 : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    %d_16 = tensor.empty() : tensor<2xf32>
    %d_17 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%d_concat, %d_cst_3 : tensor<2xf32>, tensor<2xf32>) outs(%d_16 : tensor<2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<2xf32>
    %d_18 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%d_17, %d_cst_2 : tensor<2xf32>, tensor<2xf32>) outs(%d_16 : tensor<2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<2xf32>
    %d_19 = tensor.empty() : tensor<10x2xf32>
    %d_20 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_concat, %d_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_21 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_17, %d_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_22 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_20, %d_21 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_23 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_17, %d_cst_1 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_24 = linalg.generic {indexing_maps = [#map2, #map8, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_18, %d_cst_0 : tensor<2xf32>, tensor<10x1xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.mulf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %d_25 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%d_23, %d_24 : tensor<10x2xf32>, tensor<10x2xf32>) outs(%d_19 : tensor<10x2xf32>) {
    ^bb0(%d_in: f32, %d_in_9: f32, %d_out: f32):
      %d_28 = arith.addf %d_in, %d_in_9 : f32
      linalg.yield %d_28 : f32
    } -> tensor<10x2xf32>
    %extracted_slice = tensor.extract_slice %d_25[1, 0] [9, 2] [1, 1] : tensor<10x2xf32> to tensor<9x2xf32>
    %concat_8 = tensor.concat dim(0) %d_22, %extracted_slice : (tensor<10x2xf32>, tensor<9x2xf32>) -> tensor<19x2xf32>
    func.return %concat_8 : tensor<19x2xf32>
  }

  // --- Op E: Odometry Kernel ---
  func.func private @op_e_kernel(%e_arg0: tensor<3xf32>, %e_arg1: tensor<2xf32>) -> tensor<3xf32> {
    // Body from op_e MLIR file...
    %e_cst = arith.constant dense<2> : tensor<1xi64>
    %e_cst_0 = arith.constant dense<1> : tensor<1xi64>
    %e_cst_1 = arith.constant dense<5.000000e-01> : tensor<f32>
    %e_cst_2 = arith.constant dense<2.000000e+00> : tensor<f32>
    %e_cst_3 = arith.constant dense<9.99999974E-5> : tensor<f32>
    %e_cst_4 = arith.constant dense<0> : tensor<1xi64>
    %e_2 = tensor.empty() : tensor<1xf32>
    %e_3 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_4 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_arg1[%e_26] : tensor<2xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed = tensor.collapse_shape %e_3 [] : tensor<1xf32> into tensor<f32>
    %e_4 = tensor.empty() : tensor<f32>
    %e_5 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed, %e_cst_3 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_6 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_0 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_arg1[%e_26] : tensor<2xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_5 = tensor.collapse_shape %e_6 [] : tensor<1xf32> into tensor<f32>
    %e_7 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_5, %e_cst_3 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_8 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_5, %e_7 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_9 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_8, %e_cst_2 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_10 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_7, %e_5 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.subf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_11 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_10, %e_cst_1 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_12 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_arg0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_6 = tensor.collapse_shape %e_12 [] : tensor<1xf32> into tensor<f32>
    %e_13 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_11, %e_cst_2 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.divf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_14 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_6, %e_13 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_15 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_4 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_arg0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_7 = tensor.collapse_shape %e_15 [] : tensor<1xf32> into tensor<f32>
    %e_16 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%e_14 : tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_out: f32):
      %e_26 = math.cos %e_in : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_17 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_9, %e_16 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_18 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_7, %e_17 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_19 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = ["parallel"]} ins(%e_cst_0 : tensor<1xi64>) outs(%e_2 : tensor<1xf32>) {
    ^bb0(%e_in: i64, %e_out: f32):
      %e_26 = arith.index_cast %e_in : i64 to index
      %e_extracted = tensor.extract %e_arg0[%e_26] : tensor<3xf32>
      linalg.yield %e_extracted : f32
    } -> tensor<1xf32>
    %e_collapsed_8 = tensor.collapse_shape %e_19 [] : tensor<1xf32> into tensor<f32>
    %e_20 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = []} ins(%e_14 : tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_out: f32):
      %e_26 = math.sin %e_in : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_21 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_9, %e_20 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.mulf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_22 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_8, %e_21 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_23 = linalg.generic {indexing_maps = [#map4, #map4, #map4], iterator_types = []} ins(%e_collapsed_6, %e_11 : tensor<f32>, tensor<f32>) outs(%e_4 : tensor<f32>) {
    ^bb0(%e_in: f32, %e_in_11: f32, %e_out: f32):
      %e_26 = arith.addf %e_in, %e_in_11 : f32
      linalg.yield %e_26 : f32
    } -> tensor<f32>
    %e_expanded = tensor.expand_shape %e_18 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_expanded_9 = tensor.expand_shape %e_22 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_expanded_10 = tensor.expand_shape %e_23 [] output_shape [1] : tensor<f32> into tensor<1xf32>
    %e_concat = tensor.concat dim(0) %e_expanded, %e_expanded_9, %e_expanded_10 : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<3xf32>
    func.return %e_concat : tensor<3xf32>
  }


  // ============================================================================
  // MAIN ORCHESTRATION LOGIC
  // ============================================================================
  util.func public @main$async(
      %sensor_input_bv: !hal.buffer_view,
      %initial_pose_bv: !hal.buffer_view,
      %initial_angles_bv: !hal.buffer_view,
      %wheel_ticks_bv: !hal.buffer_view,
      %wait_fence: !hal.fence,
      %signal_fence: !hal.fence
  ) -> (!hal.buffer_view, !hal.buffer_view) attributes {
      inlining_policy = #util.inline.never,
      iree.abi.model = "coarse-fences"
    }
  {
    // --- Import initial tensors from HAL buffer views ---
    %sensor_input = hal.tensor.import wait(%wait_fence) => %sensor_input_bv : !hal.buffer_view -> tensor<1x3x64x64xf32>
    %initial_pose = hal.tensor.import wait(%wait_fence) => %initial_pose_bv : !hal.buffer_view -> tensor<3xf32>
    %initial_angles = hal.tensor.import wait(%wait_fence) => %initial_angles_bv : !hal.buffer_view -> tensor<2xf32>
    %wheel_ticks = hal.tensor.import wait(%wait_fence) => %wheel_ticks_bv : !hal.buffer_view -> tensor<2xf32>

    // --- Op E: Parallel Task ---
    // A->D chain, Ideally IREE compiler will schedule it to run concurrently
    %new_pose = func.call @op_e_kernel(%initial_pose, %wheel_ticks) : (tensor<3xf32>, tensor<2xf32>) -> tensor<3xf32>

    // --- Op A: Perception Stage ---
    %target_pos = func.call @op_a_kernel(%sensor_input) : (tensor<1x3x64x64xf32>) -> tensor<2xf32>

    // --- Op B: Iterative IK Solver (while loop) ---
    %tolerance_sq = arith.constant 1.0e-8 : f32 
    %final_angles = scf.while (%iter_angles = %initial_angles) : (tensor<2xf32>) -> (tensor<2xf32>) {
      %next_angles = func.call @op_b_kernel(%iter_angles, %target_pos) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
      
      %empty_sub = tensor.empty() : tensor<2xf32>
      %diff = linalg.sub ins(%next_angles, %iter_angles : tensor<2xf32>, tensor<2xf32>) outs(%empty_sub : tensor<2xf32>) -> tensor<2xf32>
      %empty_mul = tensor.empty() : tensor<2xf32>
      %sq_diff = linalg.mul ins(%diff, %diff : tensor<2xf32>, tensor<2xf32>) outs(%empty_mul : tensor<2xf32>) -> tensor<2xf32>
      
      %c0f_tensor = arith.constant dense<0.0> : tensor<f32>
      
      %norm_sq_tensor = linalg.reduce ins(%sq_diff : tensor<2xf32>) outs(%c0f_tensor : tensor<f32>) dimensions = [0] (%in: f32, %out: f32) {
        %sum = arith.addf %in, %out : f32
        linalg.yield %sum : f32
      }
      
      %norm_sq = tensor.extract %norm_sq_tensor[] : tensor<f32>

      %should_continue = arith.cmpf "ogt", %norm_sq, %tolerance_sq : f32
      scf.condition(%should_continue) %next_angles : tensor<2xf32>
    } do {
    ^bb0(%cond_angles: tensor<2xf32>):
      // 'after' region: yield result to next iteration
      scf.yield %cond_angles : tensor<2xf32>
    }

    // --- Op C/D: Conditional Motion Planning (if statement) ---
    // Condition: Choose path based on the final joint angles.
    // Here, we check if the second joint angle is positive.
    %c1_idx = arith.constant 1 : index
    %angle_2 = tensor.extract %final_angles[%c1_idx] : tensor<2xf32>
    %c0f_if = arith.constant 0.0 : f32
    %is_positive = arith.cmpf "ogt", %angle_2, %c0f_if : f32
    %trajectory = scf.if %is_positive -> (tensor<19x2xf32>) {
      // 'then' block: Call Op C and pad the result.
      %traj_c = func.call @op_c_kernel(%final_angles) : (tensor<2xf32>) -> tensor<10x2xf32>
      %c0f_pad = arith.constant 0.0 : f32
      %padded_traj_c = tensor.pad %traj_c low[0, 0] high[9, 0] {
      ^bb0(%arg0: index, %arg1: index):
        tensor.yield %c0f_pad : f32
      } : tensor<10x2xf32> to tensor<19x2xf32>
      scf.yield %padded_traj_c : tensor<19x2xf32>
    } else {
      // 'else' block: Call Op D.
      %traj_d = func.call @op_d_kernel(%final_angles) : (tensor<2xf32>) -> tensor<19x2xf32>
      scf.yield %traj_d : tensor<19x2xf32>
    }

    // --- Export final results ---
    %trajectory_bv = hal.tensor.export %trajectory : tensor<19x2xf32> -> !hal.buffer_view
    %new_pose_bv = hal.tensor.export %new_pose : tensor<3xf32> -> !hal.buffer_view
    hal.fence.signal<%signal_fence : !hal.fence>
    util.return %trajectory_bv, %new_pose_bv : !hal.buffer_view, !hal.buffer_view
  }

  // --- Synchronous Wrapper for easy calling ---
  util.func public @main(
      %sensor_input_bv: !hal.buffer_view,
      %initial_pose_bv: !hal.buffer_view,
      %initial_angles_bv: !hal.buffer_view,
      %wheel_ticks_bv: !hal.buffer_view
  ) -> (!hal.buffer_view, !hal.buffer_view) attributes {iree.abi.stub}
  {
    %c0 = arith.constant 0 : index
    %device = hal.devices.get %c0 : !hal.device
    %wait_fence = util.null : !hal.fence
    %signal_fence = hal.fence.create device(%device : !hal.device)  flags("None") : !hal.fence
    %results:2 = util.call @main$async(
      %sensor_input_bv, %initial_pose_bv, %initial_angles_bv, %wheel_ticks_bv, %wait_fence, %signal_fence
    ) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> (!hal.buffer_view, !hal.buffer_view)
    %timeout_millis = arith.constant -1 : i32
    hal.fence.await until([%signal_fence]) timeout_millis(%timeout_millis) flags("None") : i32
    util.return %results#0, %results#1 : !hal.buffer_view, !hal.buffer_view
  }
}
