; ModuleID = 'dronet_linked'
source_filename = "dronet_linked"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }

@__constant_32xf32 = internal unnamed_addr constant [32 x float] [float 0xBF95CB3CE0000000, float 0xBF901A4B40000000, float 0x3FC0F44600000000, float 0x3FC5BC9B40000000, float 0xBFC34A6560000000, float 0xBFA22EEF40000000, float 0x3FB9C33860000000, float 0xBFC52E3D40000000, float 0xBFB1C34EE0000000, float 0xBF8D79F000000000, float 0xBFC0059B60000000, float 0xBFC6C56F40000000, float 0xBFC33A2500000000, float 0x3FC9764C40000000, float 0xBFBB29CE00000000, float 0x3FB905EA60000000, float 0xBFC4F37840000000, float 0x3F9C3929A0000000, float 0xBFC022C440000000, float 0x3FC4385AA0000000, float 0x3F9B1124E0000000, float 0xBFABF364E0000000, float 0xBFC296EFE0000000, float 0x3FBD47D200000000, float 0xBFA092AF40000000, float 0xBFBC9A0660000000, float 0x3F935CF000000000, float 0x3FC2A7A9A0000000, float 0xBFA15F1F40000000, float 0xBF99521CE0000000, float 0x3FAA88B400000000, float 0xBFC518D160000000], align 64
@__constant_32xf32_0 = internal unnamed_addr constant [32 x float] [float 0xBF616F63E0000000, float 0xBF59C3ABA0000000, float 0x3F8B207000000000, float 0x3F9163AF60000000, float 0xBF8EDD6F00000000, float 0xBF6D17E540000000, float 0x3F849C2D20000000, float 0xBF90F1CAA0000000, float 0xBF7C6BB160000000, float 0xBF5794C000000000, float 0xBF89A29240000000, float 0xBF92378C40000000, float 0xBF8EC36E60000000, float 0x3F945EA360000000, float 0xBF85BB0B40000000, float 0x3F8404BB80000000, float 0xBF90C2C6A0000000, float 0x3F66942160000000, float 0xBF89D13A00000000, float 0x3F902D1560000000, float 0x3F65A750C0000000, float 0xBF765C50C0000000, float 0xBF8DBE4CA0000000, float 0x3F876CA800000000, float 0xBF6A844BA0000000, float 0xBF86E19EC0000000, float 0x3F5EFB19A0000000, float 0x3F8DD90F60000000, float 0xBF6BCB6540000000, float 0xBF6441B0C0000000, float 0x3F753A29A0000000, float 0xBF90E0A780000000], align 64
@__constant_32xf32_1 = internal unnamed_addr constant [32 x float] [float 0xBF824111E0000000, float 0xBF9B360180000000, float 0x3FA0B4A020000000, float 0xBF81CAB180000000, float 0xBFA50A08C0000000, float 0x3FAC9C0800000000, float 0x3F90061B80000000, float 0xBF952FCA40000000, float 0x3FA56D4E40000000, float 0xBF8646B340000000, float 0xBFA40E5E60000000, float 0xBF9D0DE0A0000000, float 0x3FA800BFA0000000, float 0xBF704895C0000000, float 0x3F953175E0000000, float 0x3F911EFB00000000, float 0xBFA618F620000000, float 0x3F9FEE3E60000000, float 0x3F98948320000000, float 0x3F81CE2B60000000, float 0x3FA02AD480000000, float 0x3FA0586300000000, float 0xBFA45E2460000000, float 0x3F830B4720000000, float 0x3FA0A5AEA0000000, float 0xBFA671E180000000, float 0xBFA13D69C0000000, float 0xBF8A3A3C80000000, float 0xBFA6986E80000000, float 0x3F9892FAC0000000, float 0x3F9CB0BFA0000000, float 0x3FA1EA9020000000], align 64
@__constant_32xf32_1_0 = internal unnamed_addr constant [32 x float] [float 0xBF8B457120000000, float 0x3FBD0D5300000000, float 0xBF872BDA40000000, float 0xBFA3424B20000000, float 0xBFB34FF100000000, float 0xBFAADECDC0000000, float 0x3FB38E2280000000, float 0x3FBDF9D880000000, float 0x3FC2B0D480000000, float 0xBFC3D3AEA0000000, float 0xBFBC2A7020000000, float 0xBF96286360000000, float 0xBFB0FBFD00000000, float 0x3FBE2E5DE0000000, float 0xBFB931A580000000, float 0xBFC6692D80000000, float 0xBFA07E6160000000, float 0x3FB82D6800000000, float 0x3FAA1EFAA0000000, float 0x3F56597740000000, float 0xBF10DF0220000000, float 0xBFAFCAF920000000, float 0xBF62473C20000000, float 0x3FC1CC4E80000000, float 0xBFC34C9DA0000000, float 0x3FAB7EE9E0000000, float 0x3FAB4DE5A0000000, float 0x3FBA5E0220000000, float 0xBFA5F56F60000000, float 0xBFB10F4A00000000, float 0xBFA4AAF920000000, float 0xBFC39FDB20000000], align 64
@__constant_32xf32_0_0 = internal unnamed_addr constant [32 x float] [float 0xBFA41E6840000000, float 0x3FAA68AAA0000000, float 0xBF95052340000000, float 0x3F97C0C440000000, float 0x3FA1ED6BE0000000, float 0xBF77821160000000, float 0x3FAC4CBC80000000, float 0x3FA9A5CEA0000000, float 0xBFA7C85CA0000000, float 0x3F9DE687C0000000, float 0xBFA323F0C0000000, float 0x3F9BCFCE00000000, float 0xBFA2228580000000, float 0xBF9EA37B20000000, float 0x3F62E12600000000, float 0xBF93BD23C0000000, float 0xBF9B76BB40000000, float 0x3F7824C6C0000000, float 0x3F716A54A0000000, float 0xBFA5378080000000, float 0x3F807EA760000000, float 0xBF909B01A0000000, float 0xBFA3F55260000000, float 0x3FA0022460000000, float 0xBFA4E4F640000000, float 0xBF9DA5C9A0000000, float 0x3FA2A2AB40000000, float 0xBFA5638CE0000000, float 0xBF84285440000000, float 0xBF96A47C60000000, float 0x3FA5BA4360000000, float 0x3F90F645E0000000], align 64
@__constant_32xf32_2 = internal unnamed_addr constant [32 x float] [float 0xBF953E8D60000000, float 0x3F9F438640000000, float 0xBF68F933C0000000, float 0x3F7E690CA0000000, float 0xBF8D2038E0000000, float 0xBF5F3B7AE0000000, float 0x3F7FECDEE0000000, float 0x3F943E3A60000000, float 0x3F935EA8A0000000, float 0xBF841C6A80000000, float 0xBF95B076A0000000, float 0x3F78A16120000000, float 0xBF75C808E0000000, float 0x3F830D95E0000000, float 0xBF7D598660000000, float 0xBF9BF24E00000000, float 0xBF90C2AE20000000, float 0x3F817D9AE0000000, float 0x3F7DA475A0000000, float 0xBF87CBA880000000, float 0x3F87162460000000, float 0xBF8174FBC0000000, float 0x3F5B16C9E0000000, float 0x3F90B69200000000, float 0xBF95AFCC60000000, float 0xBF707D97A0000000, float 0x3F76BBBD40000000, float 0x3F77CC8A60000000, float 0xBF71A46580000000, float 0xBF713490E0000000, float 0xBF74A22B00000000, float 0xBF8B7796E0000000], align 64
@__constant_64xf32 = internal unnamed_addr constant [64 x float] [float 0x3F97D2B040000000, float 0x3F741EECE0000000, float 0xBF83893940000000, float 0xBFA15D2F40000000, float 0x3F854B5FE0000000, float 0xBFA3C39800000000, float 0x3FA8E29940000000, float 0xBF978FAB40000000, float 0x3F986ACD80000000, float 0x3F9751B680000000, float 0x3F7BF9C4E0000000, float 0x3FA36E0AA0000000, float 0x3FAC477AC0000000, float 0xBF81B70A00000000, float 0xBFA19961E0000000, float 0x3FA4A924E0000000, float 0xBFA7E47C60000000, float 0xBFA42E8420000000, float 0xBF4CC68260000000, float 0xBF90F04880000000, float 0x3F7D708280000000, float 0x3F8DFC2360000000, float 0x3FAB624540000000, float 0xBFA69EEB00000000, float 0xBF98C26540000000, float 0xBF8680E200000000, float 0xBFA5D743A0000000, float 0x3F972C4500000000, float 0x3FAC2CB400000000, float 0xBF9D261C40000000, float 0x3F9C0C7140000000, float 0xBF9AB88B60000000, float 0x3FA7DE8840000000, float 0xBFAA3FAEE0000000, float 0x3FA51F7500000000, float 0xBFA74482E0000000, float 0x3FA443CC20000000, float 0x3FAC86CD00000000, float 0x3F936F4020000000, float 0xBF53D371A0000000, float 0xBFA8EA5440000000, float 0xBF8D09DCC0000000, float 0xBFAACB8D00000000, float 0x3F95359BE0000000, float 0xBF8E858120000000, float 0xBFA0414DA0000000, float 0xBFA9B14C00000000, float 0xBF8A489AA0000000, float 0x3FA6AA2F60000000, float 0xBFA7853E40000000, float 0x3F81DEAEC0000000, float 0x3F7D74C080000000, float 0x3FA1873FC0000000, float 0xBFA5EC7600000000, float 0xBF71B56260000000, float 0xBF320599C0000000, float 0x3FA52B6E20000000, float 0x3FA1A42220000000, float 0xBFA7F42B20000000, float 0x3FA8D33940000000, float 0x3F62399420000000, float 0x3FA797BC80000000, float 0xBF8BAFB680000000, float 0xBF8FA0EE00000000], align 64
@__constant_64xf32_2 = internal unnamed_addr constant [64 x float] [float 0x3FB490CA80000000, float 0xBFC19A0840000000, float 0xBF9D377B80000000, float 0xBF6E7B0E40000000, float 0x3FBED43AE0000000, float 0xBFACE8A760000000, float 0x3FB0C09D60000000, float 0xBFBAB1CA60000000, float 0x3F91BF91E0000000, float 0x3FC259D6E0000000, float 0xBFC261FE40000000, float 0x3FB99B27E0000000, float 0x3FA18CA000000000, float 0x3FC5C3BB00000000, float 0x3FB5D20820000000, float 0x3FA7143DE0000000, float 0xBF9A984E40000000, float 0xBFC4ADA080000000, float 0xBFBADA98E0000000, float 0xBFA34E9020000000, float 0x3FB910E720000000, float 0x3F65F70060000000, float 0xBFB3087F60000000, float 0xBFC3531960000000, float 0xBFC55785C0000000, float 0x3FBA4616E0000000, float 0xBFC3179100000000, float 0xBFC33EB220000000, float 0xBF973CA840000000, float 0xBFC4EC6EC0000000, float 0x3FC4531F40000000, float 0x3F999945A0000000, float 0x3F99F852A0000000, float 0xBFAEF02C60000000, float 0xBFA7BB0380000000, float 0xBF4B528600000000, float 0x3FC57F8DC0000000, float 0x3FBF9B9A80000000, float 0xBFC1A74F20000000, float 0xBFB0D0E200000000, float 0x3F90C89CE0000000, float 0xBF96DE5480000000, float 0x3FBCCDFC60000000, float 0x3F9AA05DA0000000, float 0xBF95BF5F40000000, float 0x3FC18BC240000000, float 0xBFA4519960000000, float 0xBF3FACBF40000000, float 0x3FC5AD46C0000000, float 0x3FC1DB75E0000000, float 0x3FC0780460000000, float 0xBFBAE010E0000000, float 0x3FC6542B40000000, float 0xBFA3DBBE80000000, float 0xBFC525DD40000000, float 0x3FBBBEF1C0000000, float 0xBFB94D90A0000000, float 0x3FC242B860000000, float 0xBFC1D6A6A0000000, float 0xBFA33E21A0000000, float 0x3FB05CD160000000, float 0xBFA10190C0000000, float 0x3F8C17F600000000, float 0x3FBBAE8820000000], align 64
@__constant_64xf32_1 = internal unnamed_addr constant [64 x float] [float 0x3F58812000000000, float 0x3FA05D32E0000000, float 0x3F998BD200000000, float 0xBF90FE5B60000000, float 0xBF952CF7C0000000, float 0xBF9DB49F00000000, float 0xBFA38B1F60000000, float 0x3F708252C0000000, float 0x3F96A6F160000000, float 0xBF4D48D560000000, float 0xBFA02AE6C0000000, float 0xBF9EBE98C0000000, float 0x3F8F15E400000000, float 0x3FA45DCCE0000000, float 0xBF8BCC40C0000000, float 0xBF8F5814C0000000, float 0xBFA26683E0000000, float 0xBF93711900000000, float 0xBF8EE79D60000000, float 0x3F85AC8C00000000, float 0x3F8626E4C0000000, float 0xBF89918EC0000000, float 0x3F93DA65C0000000, float 0xBEFF52AAC0000000, float 0x3F80B0A360000000, float 0x3F99584700000000, float 0xBF8FC258C0000000, float 0x3FA3956800000000, float 0xBF6DB35D60000000, float 0x3F97060800000000, float 0xBFA46C8460000000, float 0x3F71349AC0000000, float 0x3F900C5B60000000, float 0xBF91DABDC0000000, float 0xBF84C49960000000, float 0xBF585B6000000000, float 0x3F6D6E9000000000, float 0xBF9E4147C0000000, float 0xBFA084B5C0000000, float 0xBFA4E90A60000000, float 0x3F6098A000000000, float 0xBFA3698DE0000000, float 0xBFA4927AE0000000, float 0xBF8E701EC0000000, float 0x3FA1A7EFC0000000, float 0xBFA36C2360000000, float 0x3F96A70600000000, float 0x3FA18A9C00000000, float 0x3F7AE142C0000000, float 0xBF93656800000000, float 0x3F9898D200000000, float 0xBF9D1B5260000000, float 0x3F95D313C0000000, float 0x3F9D66A5C0000000, float 0x3F9A3816C0000000, float 0xBF918CEEC0000000, float 0x3F399C0000000000, float 0xBF931B8C60000000, float 0xBFA0D19580000000, float 0x3F6A9BE560000000, float 0x3F9D253DC0000000, float 0x3FA3B215E0000000, float 0xBF8A9376C0000000, float 0x3F914EF200000000], align 64
@__constant_64xf32_0 = internal unnamed_addr constant [64 x float] [float 0x3F936D1420000000, float 0xBF7DD9D1E0000000, float 0xBF5C9E2760000000, float 0xBF854E0920000000, float 0x3F8930B3A0000000, float 0x3F6B9E8AE0000000, float 0xBF5E0B8840000000, float 0xBF91D89EE0000000, float 0x3F7F9CD0E0000000, float 0x3F94E13DE0000000, float 0xBFA2E47FC0000000, float 0x3F90F259E0000000, float 0x3F5E3EB660000000, float 0x3F7F094B40000000, float 0xBF6E5CD1A0000000, float 0xBF69D2E160000000, float 0xBF7F119100000000, float 0xBF7A05CDE0000000, float 0xBF84235280000000, float 0x3F82066080000000, float 0x3F8AE9BE40000000, float 0xBF8B77D9A0000000, float 0x3F3124D000000000, float 0xBF6D6BFD40000000, float 0xBF947AD320000000, float 0xBF501D0F40000000, float 0xBF87526940000000, float 0xBF85BB09A0000000, float 0xBF88C86100000000, float 0xBF9B5886E0000000, float 0xBF798D1E40000000, float 0xBF87E58560000000, float 0xBF86D81680000000, float 0xBF2D54BA00000000, float 0xBF84D46AE0000000, float 0xBF870D2AE0000000, float 0x3F975219C0000000, float 0x3F92577460000000, float 0xBF901F9420000000, float 0xBF89A3A000000000, float 0x3F48BE9DC0000000, float 0xBF9123FAE0000000, float 0xBF8AEB6D00000000, float 0xBF8C44E460000000, float 0xBF94CD4920000000, float 0x3F760F4FE0000000, float 0x3F4465FF00000000, float 0x3F7F86DDA0000000, float 0x3F998405E0000000, float 0x3F9D07C7E0000000, float 0x3F89D5F340000000, float 0xBF8D519760000000, float 0x3FA4E200C0000000, float 0xBF40A93900000000, float 0xBF869C2120000000, float 0xBF6AA10700000000, float 0xBF922C6CA0000000, float 0x3F8F09A460000000, float 0xBF9126FC60000000, float 0xBF9D553560000000, float 0x3F89053160000000, float 0xBF683C7EC0000000, float 0x3F8FA16400000000, float 0x3F90E70260000000], align 64
@__constant_64xf32_3 = internal unnamed_addr constant [64 x float] [float 0x3FECCF33E0000000, float 0x3FECD58C80000000, float 0x3FECCF3520000000, float 0x3FECD50800000000, float 0x3FECD1DDA0000000, float 0x3FECD412E0000000, float 0x3FECD17340000000, float 0x3FECD95FE0000000, float 0x3FECD2D040000000, float 0x3FECCEEB20000000, float 0x3FECD14040000000, float 0x3FECD1AAE0000000, float 0x3FECD458A0000000, float 0x3FECD1CCA0000000, float 0x3FECD04060000000, float 0x3FECD73280000000, float 0x3FECD9EA20000000, float 0x3FECD348A0000000, float 0x3FECD26740000000, float 0x3FECDBDB00000000, float 0x3FECD2D880000000, float 0x3FECD442C0000000, float 0x3FECD4A500000000, float 0x3FECD3FDA0000000, float 0x3FECD48200000000, float 0x3FECD15C60000000, float 0x3FECCFCCA0000000, float 0x3FECD06800000000, float 0x3FECD801C0000000, float 0x3FECDA4F60000000, float 0x3FECCF8220000000, float 0x3FECD51880000000, float 0x3FECD1FE00000000, float 0x3FECD27C00000000, float 0x3FECD132E0000000, float 0x3FECD09240000000, float 0x3FECD0DFC0000000, float 0x3FECD43B00000000, float 0x3FECD060C0000000, float 0x3FECD069C0000000, float 0x3FECD85100000000, float 0x3FECD24CE0000000, float 0x3FECD30B00000000, float 0x3FECD367E0000000, float 0x3FECD1F460000000, float 0x3FECCFE6A0000000, float 0x3FECD34FE0000000, float 0x3FECD15780000000, float 0x3FECCF32E0000000, float 0x3FECD134E0000000, float 0x3FECD34300000000, float 0x3FECD0AF80000000, float 0x3FECD8E4C0000000, float 0x3FECDB80E0000000, float 0x3FECD26A20000000, float 0x3FECD116A0000000, float 0x3FECD177A0000000, float 0x3FECD4F3E0000000, float 0x3FECD13320000000, float 0x3FECCFF560000000, float 0x3FECCFF980000000, float 0x3FECD209E0000000, float 0x3FECD4FE40000000, float 0x3FECCEF040000000], align 64
@0 = internal constant [14 x i8] c"dronet_linked\00", align 1
@iree_hal_executable_library_query_v0_header = internal constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = internal constant [15 x ptr] [ptr @"main_graph$async_dispatch_0_slow_memcpy", ptr @"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", ptr @"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", ptr @"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", ptr @"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", ptr @"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", ptr @"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", ptr @"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", ptr @"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", ptr @"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", ptr @"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", ptr @"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", ptr @"main_graph$async_dispatch_12_matvec_like_6272_f32", ptr @"main_graph$async_dispatch_13_slow_memcpy", ptr @"main_graph$async_dispatch_14_matvec_like_6272_f32"]
@iree_hal_executable_library_query_v0_attrs = internal constant [15 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 1, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = internal constant [40 x i8] c"main_graph$async_dispatch_0_slow_memcpy\00", align 1
@2 = internal constant [52 x i8] c"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32\00", align 1
@3 = internal constant [50 x i8] c"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32\00", align 1
@4 = internal constant [53 x i8] c"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32\00", align 1
@5 = internal constant [56 x i8] c"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32\00", align 1
@6 = internal constant [53 x i8] c"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32\00", align 1
@7 = internal constant [53 x i8] c"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32\00", align 1
@8 = internal constant [56 x i8] c"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32\00", align 1
@9 = internal constant [53 x i8] c"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32\00", align 1
@10 = internal constant [52 x i8] c"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32\00", align 1
@11 = internal constant [56 x i8] c"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32\00", align 1
@12 = internal constant [54 x i8] c"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32\00", align 1
@13 = internal constant [50 x i8] c"main_graph$async_dispatch_12_matvec_like_6272_f32\00", align 1
@14 = internal constant [41 x i8] c"main_graph$async_dispatch_13_slow_memcpy\00", align 1
@15 = internal constant [50 x i8] c"main_graph$async_dispatch_14_matvec_like_6272_f32\00", align 1
@iree_hal_executable_library_query_v0_names = internal constant [15 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15]
@16 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@17 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@18 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@19 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_3.mlir\00", align 1
@20 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_4.mlir\00", align 1
@21 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_5.mlir\00", align 1
@22 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_6.mlir\00", align 1
@23 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_7.mlir\00", align 1
@24 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_8.mlir\00", align 1
@25 = internal constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_9.mlir\00", align 1
@26 = internal constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_10.mlir\00", align 1
@27 = internal constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_11.mlir\00", align 1
@28 = internal constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_12.mlir\00", align 1
@29 = internal constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_13.mlir\00", align 1
@30 = internal constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_14.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = internal constant [15 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @16 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @17 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @18 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @19 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @20 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @21 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @22 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @23 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @24 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @25 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @26 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @27 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @28 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @29 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @30 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = internal constant [15 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = internal constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 15, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !33 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !109
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !109
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !110
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !111
  %6 = load ptr, ptr %5, align 8, !dbg !111
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !112
  %7 = load i32, ptr %2, align 16, !dbg !113
  %8 = zext i32 %7 to i64, !dbg !113
  %9 = lshr i64 %8, 2, !dbg !113
  %10 = and i64 %8, 3, !dbg !113
  %11 = mul nuw nsw i64 %9, 112, !dbg !113
  %12 = mul nuw nsw i64 %10, 56, !dbg !113
  br label %.preheader, !dbg !113

.preheader:                                       ; preds = %3, %26
  %13 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %14 = add nuw nsw i64 %13, %11
  %.idx = mul nuw nsw i64 %14, 896
  %15 = getelementptr i8, ptr %4, i64 %.idx
  %.idx23 = mul nuw nsw i64 %14, 912
  %16 = getelementptr i8, ptr %6, i64 %.idx23
  %17 = getelementptr i8, ptr %16, i64 1832
  br label %18, !dbg !113

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !113
  %21 = getelementptr float, ptr %15, i64 %20, !dbg !113
  %22 = load <8 x float>, ptr %21, align 32, !dbg !113
  %23 = getelementptr float, ptr %17, i64 %20, !dbg !113
  store <8 x float> %22, ptr %23, align 8, !dbg !113
  %24 = add nuw nsw i64 %19, 8, !dbg !113
  %25 = icmp samesign ult i64 %19, 48, !dbg !113
  br i1 %25, label %18, label %26, !dbg !113

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %13, 1, !dbg !113
  %exitcond.not = icmp eq i64 %27, 112, !dbg !113
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !113

28:                                               ; preds = %26
  ret i32 0, !dbg !114
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !115 {
  %4 = alloca [8 x float], align 64, !dbg !116
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !117
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !117
  %5 = load ptr, ptr %.unpack23, align 8, !dbg !117
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !117
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !118
  %7 = load ptr, ptr %6, align 8, !dbg !118
  %8 = getelementptr i8, ptr %7, i64 95232, !dbg !118
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !118
  %9 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !119
  %10 = load ptr, ptr %9, align 8, !dbg !119
  %11 = getelementptr i8, ptr %10, i64 207936, !dbg !119
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !119
  %12 = load i32, ptr %2, align 16, !dbg !120
  %13 = zext i32 %12 to i64, !dbg !120
  %14 = lshr i64 %13, 2, !dbg !120
  %15 = and i64 %13, 3, !dbg !120
  %16 = mul nuw nsw i64 %14, 28, !dbg !120
  %17 = mul nuw nsw i64 %14, 56
  %.idx30 = mul nuw nsw i64 %15, 224
  %invariant.gep34 = getelementptr i8, ptr %5, i64 %.idx30
  %.idx27 = mul nuw nsw i64 %15, 112
  %invariant.gep37 = getelementptr i8, ptr %11, i64 %.idx27, !dbg !120
  br label %18, !dbg !120

18:                                               ; preds = %3, %64
  %19 = phi i64 [ 0, %3 ], [ %65, %64 ]
  %20 = getelementptr float, ptr @__constant_32xf32, i64 %19, !dbg !121
  %21 = load <1 x float>, ptr %20, align 4, !dbg !121
  %.idx31 = mul nuw nsw i64 %19, 100
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx31
  %23 = shufflevector <1 x float> %21, <1 x float> poison, <8 x i32> zeroinitializer
  %.idx = mul nuw nsw i64 %19, 50176
  %gep38 = getelementptr i8, ptr %invariant.gep37, i64 %.idx, !dbg !120
  br label %.preheader33, !dbg !120

.preheader33:                                     ; preds = %18, %62
  %24 = phi i64 [ 0, %18 ], [ %63, %62 ]
  %25 = shl nuw nsw i64 %24, 1
  %26 = add nuw nsw i64 %25, %17
  %27 = add nuw nsw i64 %24, %16
  %.idx26 = mul nuw nsw i64 %27, 448
  %gep36 = getelementptr i8, ptr %gep38, i64 %.idx26
  br label %28, !dbg !120

28:                                               ; preds = %.preheader33, %57
  %indvars.iv = phi i64 [ 28, %.preheader33 ], [ %indvars.iv.next, %57 ]
  %29 = phi i64 [ 0, %.preheader33 ], [ %60, %57 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !120
  %30 = sub nuw nsw i64 28, %29, !dbg !120
  %31 = tail call i64 @llvm.umin.i64(i64 %30, i64 8), !dbg !120
  %32 = trunc nuw nsw i64 %31 to i32, !dbg !122
  %33 = insertelement <8 x i32> poison, i32 %32, i64 0, !dbg !122
  %34 = shufflevector <8 x i32> %33, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !122
  %35 = icmp samesign ugt <8 x i32> %34, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !122
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %35), !dbg !122
  br label %36, !dbg !120

36:                                               ; preds = %28, %55
  %37 = phi i64 [ 0, %28 ], [ %56, %55 ]
  %38 = add nuw nsw i64 %26, %37, !dbg !120
  %.idx28 = mul nuw nsw i64 %38, 912
  %gep35 = getelementptr i8, ptr %invariant.gep34, i64 %.idx28, !dbg !120
  %.idx32 = mul nuw nsw i64 %37, 20
  %39 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx32
  br label %.preheader, !dbg !120

.preheader:                                       ; preds = %36, %53
  %40 = phi i64 [ 0, %36 ], [ %54, %53 ]
  %41 = add nuw nsw i64 %40, %29
  %.idx29 = shl i64 %41, 3
  %gep = getelementptr i8, ptr %gep35, i64 %.idx29
  %42 = getelementptr inbounds nuw float, ptr %4, i64 %40
  %.promoted = load float, ptr %42, align 4
  br label %43, !dbg !120

43:                                               ; preds = %.preheader, %43
  %44 = phi i64 [ 0, %.preheader ], [ %52, %43 ]
  %45 = phi float [ %.promoted, %.preheader ], [ %51, %43 ]
  %46 = getelementptr float, ptr %gep, i64 %44, !dbg !120
  %47 = load float, ptr %46, align 4, !dbg !120
  %48 = getelementptr inbounds nuw float, ptr %39, i64 %44, !dbg !120
  %49 = load float, ptr %48, align 4, !dbg !120
  %50 = fmul contract float %47, %49, !dbg !123
  %51 = fadd contract float %45, %50, !dbg !124
  %52 = add nuw nsw i64 %44, 1, !dbg !120
  %exitcond.not = icmp eq i64 %52, 5, !dbg !120
  br i1 %exitcond.not, label %53, label %43, !dbg !120

53:                                               ; preds = %43
  store float %51, ptr %42, align 4, !dbg !120
  %54 = add nuw nsw i64 %40, 1, !dbg !120
  %exitcond39.not = icmp eq i64 %54, %umin, !dbg !120
  br i1 %exitcond39.not, label %55, label %.preheader, !dbg !120

55:                                               ; preds = %53
  %56 = add nuw nsw i64 %37, 1, !dbg !120
  %exitcond40.not = icmp eq i64 %56, 5, !dbg !120
  br i1 %exitcond40.not, label %57, label %36, !dbg !120

57:                                               ; preds = %55
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !121
  %58 = fadd contract <8 x float> %23, %unmaskedload, !dbg !125
  %59 = getelementptr float, ptr %gep36, i64 %29, !dbg !125
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %58, ptr %59, i32 16, <8 x i1> %35), !dbg !125
  %60 = add nuw nsw i64 %29, 8, !dbg !120
  %61 = icmp samesign ult i64 %29, 20, !dbg !120
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !120
  br i1 %61, label %28, label %62, !dbg !120

62:                                               ; preds = %57
  %63 = add nuw nsw i64 %24, 1, !dbg !120
  %exitcond41.not = icmp eq i64 %63, 28, !dbg !120
  br i1 %exitcond41.not, label %64, label %.preheader33, !dbg !120

64:                                               ; preds = %62
  %65 = add nuw nsw i64 %19, 1, !dbg !120
  %exitcond42.not = icmp eq i64 %65, 32, !dbg !120
  br i1 %exitcond42.not, label %66, label %18, !dbg !120

66:                                               ; preds = %64
  ret i32 0, !dbg !126
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !127 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !128
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !128
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !128
  %5 = getelementptr i8, ptr %4, i64 207936, !dbg !128
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !128
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !129
  %7 = load ptr, ptr %6, align 8, !dbg !129
  %8 = getelementptr i8, ptr %7, i64 1813568, !dbg !129
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !129
  %9 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !130
  %10 = load ptr, ptr %9, align 8, !dbg !130
  %11 = getelementptr i8, ptr %10, i64 2229440, !dbg !130
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !130
  %12 = load i32, ptr %2, align 16, !dbg !131
  %13 = udiv i32 %12, 25, !dbg !131
  %14 = urem i32 %12, 25, !dbg !131
  %.lhs.trunc34 = trunc nuw nsw i32 %14 to i8, !dbg !131
  %15 = udiv i8 %.lhs.trunc34, 5, !dbg !131
  %.zext35 = zext nneg i8 %15 to i64, !dbg !131
  %16 = urem i32 %12, 5, !dbg !131
  %.zext37 = zext nneg i32 %16 to i64, !dbg !131
  %17 = shl nuw nsw i32 %13, 3, !dbg !131
  %18 = zext nneg i32 %17 to i64, !dbg !131
  %19 = mul nuw nsw i64 %.zext35, 11, !dbg !131
  %20 = mul nuw nsw i64 %.zext37, 11, !dbg !131
  %21 = mul nuw nsw i64 %.zext35, 22
  %.idx30 = mul nuw nsw i64 %.zext37, 88
  %invariant.gep = getelementptr i8, ptr %5, i64 %.idx30, !dbg !131
  br label %22, !dbg !131

22:                                               ; preds = %3, %76
  %23 = phi i64 [ 0, %3 ], [ %77, %76 ]
  %24 = or disjoint i64 %23, %18, !dbg !131
  %25 = getelementptr float, ptr @__constant_32xf32_0, i64 %24, !dbg !132
  %26 = load <1 x float>, ptr %25, align 4, !dbg !132
  %.idx38 = mul nuw nsw i64 %24, 12100
  %27 = getelementptr i8, ptr %11, i64 %.idx38
  %.idx27 = mul nuw nsw i64 %24, 50176
  %gep43 = getelementptr i8, ptr %invariant.gep, i64 %.idx27
  %28 = shufflevector <1 x float> %26, <1 x float> poison, <8 x i32> zeroinitializer
  %.idx = mul nuw nsw i64 %24, 12996
  %29 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader40, !dbg !131

.preheader40:                                     ; preds = %22, %74
  %30 = phi i64 [ 0, %22 ], [ %75, %74 ]
  %31 = add nuw nsw i64 %30, %19
  %.idx39 = mul nuw nsw i64 %31, 220
  %32 = getelementptr i8, ptr %27, i64 %.idx39
  %33 = shl nuw nsw i64 %30, 1
  %34 = add nuw nsw i64 %33, %21
  %.idx26 = mul nuw nsw i64 %31, 228
  %35 = getelementptr i8, ptr %29, i64 %.idx26
  %36 = getelementptr i8, ptr %35, i64 232
  br label %37, !dbg !131

37:                                               ; preds = %.preheader40, %67
  %indvars.iv = phi i64 [ 11, %.preheader40 ], [ %indvars.iv.next, %67 ]
  %38 = phi i1 [ true, %.preheader40 ], [ false, %67 ]
  %39 = phi i64 [ 0, %.preheader40 ], [ 8, %67 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !131
  %40 = sub nuw nsw i64 11, %39, !dbg !131
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 8), !dbg !131
  %42 = trunc nuw nsw i64 %41 to i32, !dbg !133
  %43 = insertelement <8 x i32> poison, i32 %42, i64 0, !dbg !133
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !133
  %45 = icmp samesign ugt <8 x i32> %44, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !133
  %46 = add nuw nsw i64 %39, %20, !dbg !133
  %47 = getelementptr float, ptr %32, i64 %46, !dbg !133
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 0xFFF0000000000000), ptr %47, i32 4, <8 x i1> %45), !dbg !133
  br label %48, !dbg !131

48:                                               ; preds = %37, %65
  %49 = phi i64 [ 0, %37 ], [ %66, %65 ]
  %50 = add nuw nsw i64 %34, %49, !dbg !131
  %.idx28 = mul nuw nsw i64 %50, 448
  %gep42 = getelementptr i8, ptr %gep43, i64 %.idx28, !dbg !131
  br label %.preheader, !dbg !131

.preheader:                                       ; preds = %48, %63
  %51 = phi i64 [ 0, %48 ], [ %64, %63 ]
  %52 = add nuw nsw i64 %51, %39
  %.idx29 = shl i64 %52, 3
  %gep = getelementptr i8, ptr %gep42, i64 %.idx29
  %53 = getelementptr float, ptr %47, i64 %51
  %.promoted = load float, ptr %53, align 4
  br label %54, !dbg !131

54:                                               ; preds = %.preheader, %54
  %55 = phi i64 [ 0, %.preheader ], [ %62, %54 ]
  %56 = phi float [ %.promoted, %.preheader ], [ %61, %54 ]
  %57 = getelementptr float, ptr %gep, i64 %55, !dbg !131
  %58 = load float, ptr %57, align 4, !dbg !131
  %.inv31 = fcmp ole float %56, %58, !dbg !134
  %59 = fcmp uno float %58, 0.000000e+00, !dbg !134
  %60 = select i1 %59, i1 true, i1 %.inv31, !dbg !134
  %61 = select i1 %60, float %58, float %56, !dbg !134
  store float %61, ptr %53, align 4, !dbg !131
  %62 = add nuw nsw i64 %55, 1, !dbg !131
  %exitcond.not = icmp eq i64 %62, 3, !dbg !131
  br i1 %exitcond.not, label %63, label %54, !dbg !131

63:                                               ; preds = %54
  %64 = add nuw nsw i64 %51, 1, !dbg !131
  %exitcond44.not = icmp eq i64 %64, %umin, !dbg !131
  br i1 %exitcond44.not, label %65, label %.preheader, !dbg !131

65:                                               ; preds = %63
  %66 = add nuw nsw i64 %49, 1, !dbg !131
  %exitcond45.not = icmp eq i64 %66, 3, !dbg !131
  br i1 %exitcond45.not, label %67, label %48, !dbg !131

67:                                               ; preds = %65
  %68 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr %47, i32 4, <8 x i1> %45, <8 x float> poison), !dbg !132
  %69 = fsub contract <8 x float> %68, %28, !dbg !135
  %70 = fmul contract <8 x float> %69, splat (float 0x3FF0DD8A00000000), !dbg !136
  %71 = fadd contract <8 x float> %70, zeroinitializer, !dbg !137
  %.inv = fcmp ole <8 x float> %70, zeroinitializer, !dbg !138
  %72 = select <8 x i1> %.inv, <8 x float> zeroinitializer, <8 x float> %71, !dbg !138
  %73 = getelementptr float, ptr %36, i64 %46, !dbg !138
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %72, ptr %73, i32 4, <8 x i1> %45), !dbg !138
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !131
  br i1 %38, label %37, label %74, !dbg !131

74:                                               ; preds = %67
  %75 = add nuw nsw i64 %30, 1, !dbg !131
  %exitcond46.not = icmp eq i64 %75, 11, !dbg !131
  br i1 %exitcond46.not, label %76, label %.preheader40, !dbg !131

76:                                               ; preds = %74
  %77 = add nuw nsw i64 %23, 1, !dbg !131
  %exitcond47.not = icmp eq i64 %77, 8, !dbg !131
  br i1 %exitcond47.not, label %78, label %22, !dbg !131

78:                                               ; preds = %76
  ret i32 0, !dbg !139
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !140 {
  %4 = alloca [8 x float], align 64, !dbg !141
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !142
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !142
  %5 = load ptr, ptr %.unpack23, align 8, !dbg !142
  %6 = getelementptr i8, ptr %5, i64 1813568, !dbg !142
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !142
  %7 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !143
  %8 = load ptr, ptr %7, align 8, !dbg !143
  %9 = getelementptr i8, ptr %8, i64 873600, !dbg !143
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !143
  %10 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !144
  %11 = load ptr, ptr %10, align 8, !dbg !144
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !144
  %12 = load i32, ptr %2, align 16, !dbg !145
  %13 = zext i32 %12 to i64, !dbg !145
  %14 = and i64 %13, 1, !dbg !145
  %15 = shl nuw nsw i64 %13, 1, !dbg !145
  %16 = and i64 %15, 8589934588, !dbg !145
  %17 = mul nuw nsw i64 %14, 14, !dbg !145
  %18 = mul nuw nsw i64 %14, 28
  br label %19, !dbg !145

19:                                               ; preds = %3, %77
  %20 = phi i64 [ 0, %3 ], [ %78, %77 ]
  %21 = or disjoint i64 %20, %16, !dbg !145
  %22 = getelementptr float, ptr @__constant_32xf32_1, i64 %21, !dbg !146
  %23 = load <1 x float>, ptr %22, align 4, !dbg !146
  %.idx30 = mul nuw nsw i64 %21, 1152
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx30
  %25 = shufflevector <1 x float> %23, <1 x float> poison, <8 x i32> zeroinitializer
  %.idx = mul nuw nsw i64 %21, 3600
  %26 = getelementptr i8, ptr %11, i64 %.idx
  br label %.preheader34, !dbg !145

.preheader34:                                     ; preds = %19, %75
  %27 = phi i64 [ 0, %19 ], [ %76, %75 ]
  %28 = shl nuw nsw i64 %27, 1
  %29 = add nuw nsw i64 %28, %18
  %30 = add nuw nsw i64 %27, %17
  %.idx26 = mul nuw nsw i64 %30, 120
  %31 = getelementptr i8, ptr %26, i64 %.idx26
  %32 = getelementptr i8, ptr %31, i64 124
  br label %33, !dbg !145

33:                                               ; preds = %.preheader34, %69
  %indvars.iv = phi i64 [ 28, %.preheader34 ], [ %indvars.iv.next, %69 ]
  %34 = phi i64 [ 0, %.preheader34 ], [ %73, %69 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !145
  %35 = sub nuw nsw i64 28, %34, !dbg !145
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 8), !dbg !145
  %37 = trunc nuw nsw i64 %36 to i32, !dbg !147
  %38 = insertelement <8 x i32> poison, i32 %37, i64 0, !dbg !147
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !147
  %40 = icmp samesign ugt <8 x i32> %39, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !147
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %40), !dbg !147
  br label %.preheader33, !dbg !145

.preheader33:                                     ; preds = %33, %67
  %41 = phi i64 [ 0, %33 ], [ %68, %67 ]
  %.idx27 = mul nuw nsw i64 %41, 12996
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx27
  %.idx31 = mul nuw nsw i64 %41, 36
  %43 = getelementptr inbounds nuw i8, ptr %24, i64 %.idx31
  br label %44, !dbg !145

44:                                               ; preds = %.preheader33, %65
  %45 = phi i64 [ 0, %.preheader33 ], [ %66, %65 ]
  %46 = add nuw nsw i64 %29, %45, !dbg !145
  %.idx28 = mul nuw nsw i64 %46, 228
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 %.idx28
  %.idx32 = mul nuw nsw i64 %45, 12
  %48 = getelementptr inbounds nuw i8, ptr %43, i64 %.idx32
  br label %.preheader, !dbg !145

.preheader:                                       ; preds = %44, %63
  %49 = phi i64 [ 0, %44 ], [ %64, %63 ]
  %50 = add nuw nsw i64 %49, %34
  %.idx29 = shl i64 %50, 3
  %51 = getelementptr i8, ptr %47, i64 %.idx29
  %52 = getelementptr inbounds nuw float, ptr %4, i64 %49
  %.promoted = load float, ptr %52, align 4
  br label %53, !dbg !145

53:                                               ; preds = %.preheader, %53
  %54 = phi i64 [ 0, %.preheader ], [ %62, %53 ]
  %55 = phi float [ %.promoted, %.preheader ], [ %61, %53 ]
  %56 = getelementptr float, ptr %51, i64 %54, !dbg !145
  %57 = load float, ptr %56, align 4, !dbg !145
  %58 = getelementptr inbounds nuw float, ptr %48, i64 %54, !dbg !145
  %59 = load float, ptr %58, align 4, !dbg !145
  %60 = fmul contract float %57, %59, !dbg !148
  %61 = fadd contract float %55, %60, !dbg !149
  %62 = add nuw nsw i64 %54, 1, !dbg !145
  %exitcond.not = icmp eq i64 %62, 3, !dbg !145
  br i1 %exitcond.not, label %63, label %53, !dbg !145

63:                                               ; preds = %53
  store float %61, ptr %52, align 4, !dbg !145
  %64 = add nuw nsw i64 %49, 1, !dbg !145
  %exitcond35.not = icmp eq i64 %64, %umin, !dbg !145
  br i1 %exitcond35.not, label %65, label %.preheader, !dbg !145

65:                                               ; preds = %63
  %66 = add nuw nsw i64 %45, 1, !dbg !145
  %exitcond36.not = icmp eq i64 %66, 3, !dbg !145
  br i1 %exitcond36.not, label %67, label %44, !dbg !145

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %41, 1, !dbg !145
  %exitcond37.not = icmp eq i64 %68, 32, !dbg !145
  br i1 %exitcond37.not, label %69, label %.preheader33, !dbg !145

69:                                               ; preds = %67
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !146
  %70 = fadd contract <8 x float> %25, %unmaskedload, !dbg !150
  %.inv = fcmp ole <8 x float> %70, zeroinitializer, !dbg !151
  %71 = select <8 x i1> %.inv, <8 x float> zeroinitializer, <8 x float> %70, !dbg !151
  %72 = getelementptr float, ptr %32, i64 %34, !dbg !151
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %71, ptr %72, i32 4, <8 x i1> %40), !dbg !151
  %73 = add nuw nsw i64 %34, 8, !dbg !145
  %74 = icmp samesign ult i64 %34, 20, !dbg !145
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !145
  br i1 %74, label %33, label %75, !dbg !145

75:                                               ; preds = %69
  %76 = add nuw nsw i64 %27, 1, !dbg !145
  %exitcond38.not = icmp eq i64 %76, 14, !dbg !145
  br i1 %exitcond38.not, label %77, label %.preheader34, !dbg !145

77:                                               ; preds = %75
  %78 = add nuw nsw i64 %20, 1, !dbg !145
  %exitcond39.not = icmp eq i64 %78, 4, !dbg !145
  br i1 %exitcond39.not, label %79, label %19, !dbg !145

79:                                               ; preds = %77
  ret i32 0, !dbg !152
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !153 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !154
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !154
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !154
  %5 = getelementptr i8, ptr %4, i64 2229440, !dbg !154
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !154
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !155
  %7 = load ptr, ptr %6, align 8, !dbg !155
  %8 = getelementptr i8, ptr %7, i64 91136, !dbg !155
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !155
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !156
  %10 = load ptr, ptr %9, align 8, !dbg !156
  %11 = getelementptr i8, ptr %10, i64 115200, !dbg !156
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !156
  %12 = load i32, ptr %2, align 16, !dbg !157
  %13 = zext i32 %12 to i64, !dbg !157
  %14 = shl nuw nsw i64 %13, 1, !dbg !157
  %15 = and i64 %14, 8589934588, !dbg !157
  %16 = trunc i32 %12 to i1, !dbg !157
  %17 = select i1 %16, i64 14, i64 0, !dbg !157
  br label %18, !dbg !157

18:                                               ; preds = %3, %93
  %19 = phi i64 [ 0, %3 ], [ %94, %93 ]
  %20 = or disjoint i64 %19, %15, !dbg !157
  %.idx33 = shl nuw nsw i64 %20, 7
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx33
  %.idx = mul nuw nsw i64 %20, 3136
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %.preheader34, !dbg !157

.preheader34:                                     ; preds = %18, %91
  %23 = phi i64 [ 0, %18 ], [ %92, %91 ]
  %24 = add nuw nsw i64 %23, %17
  %invariant.gep.idx = mul i64 %24, 440
  %invariant.gep = getelementptr i8, ptr %5, i64 %invariant.gep.idx
  %.idx24 = mul nuw nsw i64 %24, 112
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx24
  br label %.preheader, !dbg !157

.preheader:                                       ; preds = %.preheader34, %87
  %26 = phi i64 [ 0, %.preheader34 ], [ %90, %87 ]
  %invariant.gep35.idx = shl i64 %26, 3, !dbg !157
  %invariant.gep35 = getelementptr i8, ptr %invariant.gep, i64 %invariant.gep35.idx, !dbg !157
  br label %27, !dbg !157

27:                                               ; preds = %.preheader, %27
  %28 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %84, %27 ]
  %29 = phi i64 [ 0, %.preheader ], [ %85, %27 ]
  %.idx25 = mul nuw nsw i64 %29, 12100, !dbg !157
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %.idx25, !dbg !157
  %30 = load float, ptr %gep36, align 8, !dbg !157
  %31 = insertelement <1 x float> poison, float %30, i64 0, !dbg !157
  %32 = or disjoint i64 %29, 1, !dbg !157
  %.idx26 = mul nuw nsw i64 %32, 12100, !dbg !157
  %gep39 = getelementptr i8, ptr %invariant.gep35, i64 %.idx26, !dbg !157
  %33 = load float, ptr %gep39, align 4, !dbg !157
  %34 = insertelement <1 x float> poison, float %33, i64 0, !dbg !157
  %35 = or disjoint i64 %29, 2, !dbg !157
  %.idx27 = mul nuw nsw i64 %35, 12100, !dbg !157
  %gep42 = getelementptr i8, ptr %invariant.gep35, i64 %.idx27, !dbg !157
  %36 = load float, ptr %gep42, align 8, !dbg !157
  %37 = insertelement <1 x float> poison, float %36, i64 0, !dbg !157
  %38 = or disjoint i64 %29, 3, !dbg !157
  %.idx28 = mul nuw nsw i64 %38, 12100, !dbg !157
  %gep45 = getelementptr i8, ptr %invariant.gep35, i64 %.idx28, !dbg !157
  %39 = load float, ptr %gep45, align 4, !dbg !157
  %40 = insertelement <1 x float> poison, float %39, i64 0, !dbg !157
  %41 = or disjoint i64 %29, 4, !dbg !157
  %.idx29 = mul nuw nsw i64 %41, 12100, !dbg !157
  %gep48 = getelementptr i8, ptr %invariant.gep35, i64 %.idx29, !dbg !157
  %42 = load float, ptr %gep48, align 8, !dbg !157
  %43 = insertelement <1 x float> poison, float %42, i64 0, !dbg !157
  %44 = or disjoint i64 %29, 5, !dbg !157
  %.idx30 = mul nuw nsw i64 %44, 12100, !dbg !157
  %gep51 = getelementptr i8, ptr %invariant.gep35, i64 %.idx30, !dbg !157
  %45 = load float, ptr %gep51, align 4, !dbg !157
  %46 = insertelement <1 x float> poison, float %45, i64 0, !dbg !157
  %47 = or disjoint i64 %29, 6, !dbg !157
  %.idx31 = mul nuw nsw i64 %47, 12100, !dbg !157
  %gep54 = getelementptr i8, ptr %invariant.gep35, i64 %.idx31, !dbg !157
  %48 = load float, ptr %gep54, align 8, !dbg !157
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !157
  %50 = or disjoint i64 %29, 7, !dbg !157
  %.idx32 = mul nuw nsw i64 %50, 12100, !dbg !157
  %gep57 = getelementptr i8, ptr %invariant.gep35, i64 %.idx32, !dbg !157
  %51 = load float, ptr %gep57, align 4, !dbg !157
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !157
  %53 = getelementptr inbounds nuw float, ptr %21, i64 %29, !dbg !158
  %54 = load float, ptr %53, align 32, !dbg !158
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !158
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %55, <1 x float> %28), !dbg !158
  %57 = getelementptr inbounds nuw float, ptr %21, i64 %32, !dbg !158
  %58 = load float, ptr %57, align 4, !dbg !158
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !158
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %59, <1 x float> %56), !dbg !158
  %61 = getelementptr inbounds nuw float, ptr %21, i64 %35, !dbg !158
  %62 = load float, ptr %61, align 8, !dbg !158
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !158
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %63, <1 x float> %60), !dbg !158
  %65 = getelementptr inbounds nuw float, ptr %21, i64 %38, !dbg !158
  %66 = load float, ptr %65, align 4, !dbg !158
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !158
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %67, <1 x float> %64), !dbg !158
  %69 = getelementptr inbounds nuw float, ptr %21, i64 %41, !dbg !158
  %70 = load float, ptr %69, align 16, !dbg !158
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !158
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %71, <1 x float> %68), !dbg !158
  %73 = getelementptr inbounds nuw float, ptr %21, i64 %44, !dbg !158
  %74 = load float, ptr %73, align 4, !dbg !158
  %75 = insertelement <1 x float> poison, float %74, i64 0, !dbg !158
  %76 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %75, <1 x float> %72), !dbg !158
  %77 = getelementptr inbounds nuw float, ptr %21, i64 %47, !dbg !158
  %78 = load float, ptr %77, align 8, !dbg !158
  %79 = insertelement <1 x float> poison, float %78, i64 0, !dbg !158
  %80 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %79, <1 x float> %76), !dbg !158
  %81 = getelementptr inbounds nuw float, ptr %21, i64 %50, !dbg !158
  %82 = load float, ptr %81, align 4, !dbg !158
  %83 = insertelement <1 x float> poison, float %82, i64 0, !dbg !158
  %84 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %83, <1 x float> %80), !dbg !158
  %85 = add nuw nsw i64 %29, 8, !dbg !157
  %86 = icmp samesign ult i64 %29, 24, !dbg !157
  br i1 %86, label %27, label %87, !dbg !157

87:                                               ; preds = %27
  %88 = extractelement <1 x float> %84, i64 0, !dbg !157
  %89 = getelementptr inbounds nuw float, ptr %25, i64 %26, !dbg !157
  store float %88, ptr %89, align 4, !dbg !157
  %90 = add nuw nsw i64 %26, 1, !dbg !157
  %exitcond.not = icmp eq i64 %90, 28, !dbg !157
  br i1 %exitcond.not, label %91, label %.preheader, !dbg !157

91:                                               ; preds = %87
  %92 = add nuw nsw i64 %23, 1, !dbg !157
  %exitcond58.not = icmp eq i64 %92, 14, !dbg !157
  br i1 %exitcond58.not, label %93, label %.preheader34, !dbg !157

93:                                               ; preds = %91
  %94 = add nuw nsw i64 %19, 1, !dbg !157
  %exitcond59.not = icmp eq i64 %94, 4, !dbg !157
  br i1 %exitcond59.not, label %95, label %18, !dbg !157

95:                                               ; preds = %93
  ret i32 0, !dbg !159
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !160 {
  %4 = alloca [8 x float], align 64, !dbg !161
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !162
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !162
  %5 = load ptr, ptr %.unpack23, align 8, !dbg !162
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !162
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !163
  %7 = load ptr, ptr %6, align 8, !dbg !163
  %8 = getelementptr i8, ptr %7, i64 98432, !dbg !163
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !163
  %9 = getelementptr i8, ptr %5, i64 115200, !dbg !164
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !164
  %10 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !165
  %11 = load ptr, ptr %10, align 8, !dbg !165
  %12 = getelementptr i8, ptr %11, i64 215552, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !165
  %13 = getelementptr i8, ptr %.unpack23, i64 24, !dbg !166
  %14 = load ptr, ptr %13, align 8, !dbg !166
  %15 = getelementptr i8, ptr %14, i64 330752, !dbg !166
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !166
  %16 = load i32, ptr %2, align 16, !dbg !167
  %17 = zext i32 %16 to i64, !dbg !167
  %18 = shl nuw nsw i64 %17, 1, !dbg !167
  %19 = and i64 %18, 8589934588, !dbg !167
  %20 = trunc i32 %16 to i1, !dbg !167
  %21 = select i1 %20, i64 14, i64 0, !dbg !167
  br label %22, !dbg !167

22:                                               ; preds = %3, %93
  %23 = phi i64 [ 0, %3 ], [ %94, %93 ]
  %24 = or disjoint i64 %23, %19, !dbg !167
  %25 = getelementptr float, ptr @__constant_32xf32_1_0, i64 %24, !dbg !168
  %26 = load <1 x float>, ptr %25, align 4, !dbg !168
  %27 = getelementptr float, ptr @__constant_32xf32_0_0, i64 %24, !dbg !168
  %28 = load <1 x float>, ptr %27, align 4, !dbg !168
  %29 = getelementptr float, ptr @__constant_32xf32_2, i64 %24, !dbg !168
  %30 = load <1 x float>, ptr %29, align 4, !dbg !168
  %.idx29 = mul nuw nsw i64 %24, 1152
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx29
  %32 = mul nuw nsw i64 %24, 784
  %33 = shufflevector <1 x float> %28, <1 x float> poison, <8 x i32> zeroinitializer
  %34 = shufflevector <1 x float> %26, <1 x float> poison, <8 x i32> zeroinitializer
  %35 = shufflevector <1 x float> %30, <1 x float> poison, <8 x i32> zeroinitializer
  %.idx = mul nuw nsw i64 %24, 3600
  %36 = getelementptr i8, ptr %12, i64 %.idx
  br label %.preheader33, !dbg !167

.preheader33:                                     ; preds = %22, %91
  %37 = phi i64 [ 0, %22 ], [ %92, %91 ]
  %38 = add nuw nsw i64 %37, %21
  %39 = mul nuw nsw i64 %38, 28
  %40 = add nuw i64 %39, %32
  %.idx26 = mul nuw nsw i64 %38, 120
  %41 = getelementptr i8, ptr %36, i64 %.idx26
  %42 = getelementptr i8, ptr %41, i64 124
  br label %43, !dbg !167

43:                                               ; preds = %.preheader33, %76
  %indvars.iv = phi i64 [ 28, %.preheader33 ], [ %indvars.iv.next, %76 ]
  %44 = phi i64 [ 0, %.preheader33 ], [ %89, %76 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !167
  %45 = sub nuw nsw i64 28, %44, !dbg !167
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 8), !dbg !167
  %47 = trunc nuw nsw i64 %46 to i32, !dbg !169
  %48 = insertelement <8 x i32> poison, i32 %47, i64 0, !dbg !169
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !169
  %50 = icmp samesign ugt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !169
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %50), !dbg !169
  %invariant.gep34 = getelementptr float, ptr %5, i64 %44, !dbg !167
  br label %.preheader32, !dbg !167

.preheader32:                                     ; preds = %43, %74
  %51 = phi i64 [ 0, %43 ], [ %75, %74 ]
  %.idx27 = mul nuw nsw i64 %51, 3600
  %gep35 = getelementptr i8, ptr %invariant.gep34, i64 %.idx27, !dbg !167
  %.idx30 = mul nuw nsw i64 %51, 36
  %52 = getelementptr inbounds nuw i8, ptr %31, i64 %.idx30
  br label %53, !dbg !167

53:                                               ; preds = %.preheader32, %72
  %54 = phi i64 [ 0, %.preheader32 ], [ %73, %72 ]
  %55 = add nuw nsw i64 %38, %54, !dbg !167
  %.idx28 = mul nuw nsw i64 %55, 120
  %gep = getelementptr i8, ptr %gep35, i64 %.idx28
  %.idx31 = mul nuw nsw i64 %54, 12
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 %.idx31
  br label %.preheader, !dbg !167

.preheader:                                       ; preds = %53, %70
  %57 = phi i64 [ 0, %53 ], [ %71, %70 ]
  %58 = getelementptr float, ptr %gep, i64 %57
  %59 = getelementptr inbounds nuw float, ptr %4, i64 %57
  %.promoted = load float, ptr %59, align 4
  br label %60, !dbg !167

60:                                               ; preds = %.preheader, %60
  %61 = phi i64 [ 0, %.preheader ], [ %69, %60 ]
  %62 = phi float [ %.promoted, %.preheader ], [ %68, %60 ]
  %63 = getelementptr float, ptr %58, i64 %61, !dbg !167
  %64 = load float, ptr %63, align 4, !dbg !167
  %65 = getelementptr inbounds nuw float, ptr %56, i64 %61, !dbg !167
  %66 = load float, ptr %65, align 4, !dbg !167
  %67 = fmul contract float %64, %66, !dbg !170
  %68 = fadd contract float %62, %67, !dbg !171
  %69 = add nuw nsw i64 %61, 1, !dbg !167
  %exitcond.not = icmp eq i64 %69, 3, !dbg !167
  br i1 %exitcond.not, label %70, label %60, !dbg !167

70:                                               ; preds = %60
  store float %68, ptr %59, align 4, !dbg !167
  %71 = add nuw nsw i64 %57, 1, !dbg !167
  %exitcond36.not = icmp eq i64 %71, %umin, !dbg !167
  br i1 %exitcond36.not, label %72, label %.preheader, !dbg !167

72:                                               ; preds = %70
  %73 = add nuw nsw i64 %54, 1, !dbg !167
  %exitcond37.not = icmp eq i64 %73, 3, !dbg !167
  br i1 %exitcond37.not, label %74, label %53, !dbg !167

74:                                               ; preds = %72
  %75 = add nuw nsw i64 %51, 1, !dbg !167
  %exitcond38.not = icmp eq i64 %75, 32, !dbg !167
  br i1 %exitcond38.not, label %76, label %.preheader32, !dbg !167

76:                                               ; preds = %74
  %77 = add nuw nsw i64 %40, %44, !dbg !168
  %78 = getelementptr float, ptr %9, i64 %77, !dbg !168
  %79 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr %78, i32 16, <8 x i1> %50, <8 x float> poison), !dbg !168
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !168
  %80 = fadd contract <8 x float> %33, %unmaskedload, !dbg !172
  %81 = fadd contract <8 x float> %34, %79, !dbg !173
  %82 = fadd contract <8 x float> %81, %80, !dbg !174
  %83 = fsub contract <8 x float> %82, %35, !dbg !175
  %84 = fmul contract <8 x float> %83, splat (float 0x3FF0DD8A00000000), !dbg !176
  %85 = fadd contract <8 x float> %84, zeroinitializer, !dbg !177
  %.inv = fcmp ole <8 x float> %84, zeroinitializer, !dbg !178
  %86 = select <8 x i1> %.inv, <8 x float> zeroinitializer, <8 x float> %85, !dbg !178
  %87 = getelementptr float, ptr %15, i64 %77, !dbg !174
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %82, ptr %87, i32 16, <8 x i1> %50), !dbg !174
  %88 = getelementptr float, ptr %42, i64 %44, !dbg !178
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %86, ptr %88, i32 4, <8 x i1> %50), !dbg !178
  %89 = add nuw nsw i64 %44, 8, !dbg !167
  %90 = icmp samesign ult i64 %44, 20, !dbg !167
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !167
  br i1 %90, label %43, label %91, !dbg !167

91:                                               ; preds = %76
  %92 = add nuw nsw i64 %37, 1, !dbg !167
  %exitcond39.not = icmp eq i64 %92, 14, !dbg !167
  br i1 %exitcond39.not, label %93, label %.preheader33, !dbg !167

93:                                               ; preds = %91
  %94 = add nuw nsw i64 %23, 1, !dbg !167
  %exitcond40.not = icmp eq i64 %94, 4, !dbg !167
  br i1 %exitcond40.not, label %95, label %22, !dbg !167

95:                                               ; preds = %93
  ret i32 0, !dbg !179
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !180 {
  %4 = alloca [8 x float], align 64, !dbg !181
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !182
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !182
  %5 = load ptr, ptr %.unpack23, align 8, !dbg !182
  %6 = getelementptr i8, ptr %5, i64 215552, !dbg !182
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !182
  %7 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !183
  %8 = load ptr, ptr %7, align 8, !dbg !183
  %9 = getelementptr i8, ptr %8, i64 910464, !dbg !183
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !183
  %10 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !184
  %11 = load ptr, ptr %10, align 8, !dbg !184
  %12 = getelementptr i8, ptr %11, i64 431104, !dbg !184
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !184
  %13 = load i32, ptr %2, align 16, !dbg !185
  %14 = zext i32 %13 to i64, !dbg !185
  %15 = and i64 %14, 1, !dbg !185
  %16 = shl nuw nsw i64 %14, 2, !dbg !185
  %17 = and i64 %16, 17179869176, !dbg !185
  %18 = mul nuw nsw i64 %15, 7, !dbg !185
  %19 = mul nuw nsw i64 %15, 14
  br label %20, !dbg !185

20:                                               ; preds = %3, %77
  %21 = phi i64 [ 0, %3 ], [ %78, %77 ]
  %22 = or disjoint i64 %21, %17, !dbg !185
  %23 = getelementptr float, ptr @__constant_64xf32, i64 %22, !dbg !186
  %24 = load <1 x float>, ptr %23, align 4, !dbg !186
  %.idx30 = mul nuw nsw i64 %22, 1152
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx30
  %26 = shufflevector <1 x float> %24, <1 x float> poison, <8 x i32> zeroinitializer
  %.idx = shl nuw nsw i64 %22, 10
  %27 = getelementptr i8, ptr %12, i64 %.idx
  br label %.preheader34, !dbg !185

.preheader34:                                     ; preds = %20, %75
  %28 = phi i64 [ 0, %20 ], [ %76, %75 ]
  %29 = shl nuw nsw i64 %28, 1
  %30 = add nuw nsw i64 %29, %19
  %31 = add nuw nsw i64 %28, %18
  %.idx26 = shl i64 %31, 6
  %32 = getelementptr i8, ptr %27, i64 %.idx26
  %33 = getelementptr i8, ptr %32, i64 68
  br label %34, !dbg !185

34:                                               ; preds = %.preheader34, %71
  %indvars.iv = phi i64 [ 14, %.preheader34 ], [ %indvars.iv.next, %71 ]
  %35 = phi i1 [ true, %.preheader34 ], [ false, %71 ]
  %36 = phi i64 [ 0, %.preheader34 ], [ 8, %71 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !185
  %37 = sub nuw nsw i64 14, %36, !dbg !185
  %38 = tail call i64 @llvm.umin.i64(i64 %37, i64 8), !dbg !185
  %39 = trunc nuw nsw i64 %38 to i32, !dbg !187
  %40 = insertelement <8 x i32> poison, i32 %39, i64 0, !dbg !187
  %41 = shufflevector <8 x i32> %40, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !187
  %42 = icmp samesign ugt <8 x i32> %41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !187
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %42), !dbg !187
  br label %.preheader33, !dbg !185

.preheader33:                                     ; preds = %34, %69
  %43 = phi i64 [ 0, %34 ], [ %70, %69 ]
  %.idx27 = mul nuw nsw i64 %43, 3600
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx27
  %.idx31 = mul nuw nsw i64 %43, 36
  %45 = getelementptr inbounds nuw i8, ptr %25, i64 %.idx31
  br label %46, !dbg !185

46:                                               ; preds = %.preheader33, %67
  %47 = phi i64 [ 0, %.preheader33 ], [ %68, %67 ]
  %48 = add nuw nsw i64 %30, %47, !dbg !185
  %.idx28 = mul nuw nsw i64 %48, 120
  %49 = getelementptr inbounds nuw i8, ptr %44, i64 %.idx28
  %.idx32 = mul nuw nsw i64 %47, 12
  %50 = getelementptr inbounds nuw i8, ptr %45, i64 %.idx32
  br label %.preheader, !dbg !185

.preheader:                                       ; preds = %46, %65
  %51 = phi i64 [ 0, %46 ], [ %66, %65 ]
  %52 = add nuw nsw i64 %51, %36
  %.idx29 = shl i64 %52, 3
  %53 = getelementptr i8, ptr %49, i64 %.idx29
  %54 = getelementptr inbounds nuw float, ptr %4, i64 %51
  %.promoted = load float, ptr %54, align 4
  br label %55, !dbg !185

55:                                               ; preds = %.preheader, %55
  %56 = phi i64 [ 0, %.preheader ], [ %64, %55 ]
  %57 = phi float [ %.promoted, %.preheader ], [ %63, %55 ]
  %58 = getelementptr float, ptr %53, i64 %56, !dbg !185
  %59 = load float, ptr %58, align 4, !dbg !185
  %60 = getelementptr inbounds nuw float, ptr %50, i64 %56, !dbg !185
  %61 = load float, ptr %60, align 4, !dbg !185
  %62 = fmul contract float %59, %61, !dbg !188
  %63 = fadd contract float %57, %62, !dbg !189
  %64 = add nuw nsw i64 %56, 1, !dbg !185
  %exitcond.not = icmp eq i64 %64, 3, !dbg !185
  br i1 %exitcond.not, label %65, label %55, !dbg !185

65:                                               ; preds = %55
  store float %63, ptr %54, align 4, !dbg !185
  %66 = add nuw nsw i64 %51, 1, !dbg !185
  %exitcond35.not = icmp eq i64 %66, %umin, !dbg !185
  br i1 %exitcond35.not, label %67, label %.preheader, !dbg !185

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %47, 1, !dbg !185
  %exitcond36.not = icmp eq i64 %68, 3, !dbg !185
  br i1 %exitcond36.not, label %69, label %46, !dbg !185

69:                                               ; preds = %67
  %70 = add nuw nsw i64 %43, 1, !dbg !185
  %exitcond37.not = icmp eq i64 %70, 32, !dbg !185
  br i1 %exitcond37.not, label %71, label %.preheader33, !dbg !185

71:                                               ; preds = %69
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !186
  %72 = fadd contract <8 x float> %26, %unmaskedload, !dbg !190
  %.inv = fcmp ole <8 x float> %72, zeroinitializer, !dbg !191
  %73 = select <8 x i1> %.inv, <8 x float> zeroinitializer, <8 x float> %72, !dbg !191
  %74 = getelementptr float, ptr %33, i64 %36, !dbg !191
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %73, ptr %74, i32 4, <8 x i1> %42), !dbg !191
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !185
  br i1 %35, label %34, label %75, !dbg !185

75:                                               ; preds = %71
  %76 = add nuw nsw i64 %28, 1, !dbg !185
  %exitcond38.not = icmp eq i64 %76, 7, !dbg !185
  br i1 %exitcond38.not, label %77, label %.preheader34, !dbg !185

77:                                               ; preds = %75
  %78 = add nuw nsw i64 %21, 1, !dbg !185
  %exitcond39.not = icmp eq i64 %78, 8, !dbg !185
  br i1 %exitcond39.not, label %79, label %20, !dbg !185

79:                                               ; preds = %77
  ret i32 0, !dbg !192
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !193 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !194
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !194
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !194
  %5 = getelementptr i8, ptr %4, i64 330752, !dbg !194
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !194
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !195
  %7 = load ptr, ptr %6, align 8, !dbg !195
  %8 = getelementptr i8, ptr %7, i64 82944, !dbg !195
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !195
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !196
  %10 = load ptr, ptr %9, align 8, !dbg !196
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !196
  %11 = load i32, ptr %2, align 16, !dbg !197
  %12 = zext i32 %11 to i64, !dbg !197
  %13 = shl nuw nsw i64 %12, 2, !dbg !197
  %14 = and i64 %13, 17179869176, !dbg !197
  %15 = trunc i32 %11 to i1, !dbg !197
  %16 = select i1 %15, i64 7, i64 0, !dbg !197
  br label %17, !dbg !197

17:                                               ; preds = %3, %93
  %18 = phi i64 [ 0, %3 ], [ %94, %93 ]
  %19 = or disjoint i64 %18, %14, !dbg !197
  %.idx33 = shl nuw nsw i64 %19, 7
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx33
  %.idx = mul nuw nsw i64 %19, 784
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  br label %.preheader34, !dbg !197

.preheader34:                                     ; preds = %17, %91
  %22 = phi i64 [ 0, %17 ], [ %92, %91 ]
  %23 = add nuw nsw i64 %22, %16
  %24 = mul nuw nsw i64 %23, 56
  %invariant.gep = getelementptr float, ptr %5, i64 %24
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  br label %.preheader, !dbg !197

.preheader:                                       ; preds = %.preheader34, %87
  %26 = phi i64 [ 0, %.preheader34 ], [ %90, %87 ]
  %invariant.gep35.idx = shl i64 %26, 3, !dbg !197
  %invariant.gep35 = getelementptr i8, ptr %invariant.gep, i64 %invariant.gep35.idx, !dbg !197
  br label %27, !dbg !197

27:                                               ; preds = %.preheader, %27
  %28 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %84, %27 ]
  %29 = phi i64 [ 0, %.preheader ], [ %85, %27 ]
  %.idx25 = mul nuw nsw i64 %29, 3136, !dbg !197
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %.idx25, !dbg !197
  %30 = load float, ptr %gep36, align 8, !dbg !197
  %31 = insertelement <1 x float> poison, float %30, i64 0, !dbg !197
  %32 = or disjoint i64 %29, 1, !dbg !197
  %.idx26 = mul nuw nsw i64 %32, 3136, !dbg !197
  %gep39 = getelementptr i8, ptr %invariant.gep35, i64 %.idx26, !dbg !197
  %33 = load float, ptr %gep39, align 8, !dbg !197
  %34 = insertelement <1 x float> poison, float %33, i64 0, !dbg !197
  %35 = or disjoint i64 %29, 2, !dbg !197
  %.idx27 = mul nuw nsw i64 %35, 3136, !dbg !197
  %gep42 = getelementptr i8, ptr %invariant.gep35, i64 %.idx27, !dbg !197
  %36 = load float, ptr %gep42, align 8, !dbg !197
  %37 = insertelement <1 x float> poison, float %36, i64 0, !dbg !197
  %38 = or disjoint i64 %29, 3, !dbg !197
  %.idx28 = mul nuw nsw i64 %38, 3136, !dbg !197
  %gep45 = getelementptr i8, ptr %invariant.gep35, i64 %.idx28, !dbg !197
  %39 = load float, ptr %gep45, align 8, !dbg !197
  %40 = insertelement <1 x float> poison, float %39, i64 0, !dbg !197
  %41 = or disjoint i64 %29, 4, !dbg !197
  %.idx29 = mul nuw nsw i64 %41, 3136, !dbg !197
  %gep48 = getelementptr i8, ptr %invariant.gep35, i64 %.idx29, !dbg !197
  %42 = load float, ptr %gep48, align 8, !dbg !197
  %43 = insertelement <1 x float> poison, float %42, i64 0, !dbg !197
  %44 = or disjoint i64 %29, 5, !dbg !197
  %.idx30 = mul nuw nsw i64 %44, 3136, !dbg !197
  %gep51 = getelementptr i8, ptr %invariant.gep35, i64 %.idx30, !dbg !197
  %45 = load float, ptr %gep51, align 8, !dbg !197
  %46 = insertelement <1 x float> poison, float %45, i64 0, !dbg !197
  %47 = or disjoint i64 %29, 6, !dbg !197
  %.idx31 = mul nuw nsw i64 %47, 3136, !dbg !197
  %gep54 = getelementptr i8, ptr %invariant.gep35, i64 %.idx31, !dbg !197
  %48 = load float, ptr %gep54, align 8, !dbg !197
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !197
  %50 = or disjoint i64 %29, 7, !dbg !197
  %.idx32 = mul nuw nsw i64 %50, 3136, !dbg !197
  %gep57 = getelementptr i8, ptr %invariant.gep35, i64 %.idx32, !dbg !197
  %51 = load float, ptr %gep57, align 8, !dbg !197
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !197
  %53 = getelementptr inbounds nuw float, ptr %20, i64 %29, !dbg !198
  %54 = load float, ptr %53, align 32, !dbg !198
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !198
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %55, <1 x float> %28), !dbg !198
  %57 = getelementptr inbounds nuw float, ptr %20, i64 %32, !dbg !198
  %58 = load float, ptr %57, align 4, !dbg !198
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !198
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %59, <1 x float> %56), !dbg !198
  %61 = getelementptr inbounds nuw float, ptr %20, i64 %35, !dbg !198
  %62 = load float, ptr %61, align 8, !dbg !198
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !198
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %63, <1 x float> %60), !dbg !198
  %65 = getelementptr inbounds nuw float, ptr %20, i64 %38, !dbg !198
  %66 = load float, ptr %65, align 4, !dbg !198
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !198
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %67, <1 x float> %64), !dbg !198
  %69 = getelementptr inbounds nuw float, ptr %20, i64 %41, !dbg !198
  %70 = load float, ptr %69, align 16, !dbg !198
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !198
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %71, <1 x float> %68), !dbg !198
  %73 = getelementptr inbounds nuw float, ptr %20, i64 %44, !dbg !198
  %74 = load float, ptr %73, align 4, !dbg !198
  %75 = insertelement <1 x float> poison, float %74, i64 0, !dbg !198
  %76 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %75, <1 x float> %72), !dbg !198
  %77 = getelementptr inbounds nuw float, ptr %20, i64 %47, !dbg !198
  %78 = load float, ptr %77, align 8, !dbg !198
  %79 = insertelement <1 x float> poison, float %78, i64 0, !dbg !198
  %80 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %79, <1 x float> %76), !dbg !198
  %81 = getelementptr inbounds nuw float, ptr %20, i64 %50, !dbg !198
  %82 = load float, ptr %81, align 4, !dbg !198
  %83 = insertelement <1 x float> poison, float %82, i64 0, !dbg !198
  %84 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %83, <1 x float> %80), !dbg !198
  %85 = add nuw nsw i64 %29, 8, !dbg !197
  %86 = icmp samesign ult i64 %29, 24, !dbg !197
  br i1 %86, label %27, label %87, !dbg !197

87:                                               ; preds = %27
  %88 = extractelement <1 x float> %84, i64 0, !dbg !197
  %89 = getelementptr inbounds nuw float, ptr %25, i64 %26, !dbg !197
  store float %88, ptr %89, align 4, !dbg !197
  %90 = add nuw nsw i64 %26, 1, !dbg !197
  %exitcond.not = icmp eq i64 %90, 14, !dbg !197
  br i1 %exitcond.not, label %91, label %.preheader, !dbg !197

91:                                               ; preds = %87
  %92 = add nuw nsw i64 %22, 1, !dbg !197
  %exitcond58.not = icmp eq i64 %92, 7, !dbg !197
  br i1 %exitcond58.not, label %93, label %.preheader34, !dbg !197

93:                                               ; preds = %91
  %94 = add nuw nsw i64 %18, 1, !dbg !197
  %exitcond59.not = icmp eq i64 %94, 8, !dbg !197
  br i1 %exitcond59.not, label %95, label %17, !dbg !197

95:                                               ; preds = %93
  ret i32 0, !dbg !199
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !200 {
  %4 = alloca [8 x float], align 64, !dbg !201
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !202
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !202
  %5 = load ptr, ptr %.unpack23, align 8, !dbg !202
  %6 = getelementptr i8, ptr %5, i64 431104, !dbg !202
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !202
  %7 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !203
  %8 = load ptr, ptr %7, align 8, !dbg !203
  %9 = getelementptr i8, ptr %8, i64 135296, !dbg !203
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !203
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !204
  %10 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !205
  %11 = load ptr, ptr %10, align 8, !dbg !205
  %12 = getelementptr i8, ptr %11, i64 50176, !dbg !205
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !205
  %13 = getelementptr i8, ptr %.unpack23, i64 24, !dbg !206
  %14 = load ptr, ptr %13, align 8, !dbg !206
  %15 = getelementptr i8, ptr %14, i64 115712, !dbg !206
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !206
  %16 = load i32, ptr %2, align 16, !dbg !207
  %17 = zext i32 %16 to i64, !dbg !207
  %18 = shl nuw nsw i64 %17, 2, !dbg !207
  %19 = and i64 %18, 17179869176, !dbg !207
  %20 = trunc i32 %16 to i1, !dbg !207
  %21 = select i1 %20, i64 7, i64 0, !dbg !207
  br label %22, !dbg !207

22:                                               ; preds = %3, %100
  %23 = phi i64 [ 0, %3 ], [ %101, %100 ]
  %24 = or disjoint i64 %23, %19, !dbg !207
  %25 = getelementptr float, ptr @__constant_64xf32_2, i64 %24, !dbg !208
  %26 = load <1 x float>, ptr %25, align 4, !dbg !208
  %27 = getelementptr float, ptr @__constant_64xf32_1, i64 %24, !dbg !208
  %28 = load <1 x float>, ptr %27, align 4, !dbg !208
  %29 = getelementptr float, ptr @__constant_64xf32_0, i64 %24, !dbg !208
  %30 = load <1 x float>, ptr %29, align 4, !dbg !208
  %31 = getelementptr float, ptr @__constant_64xf32_3, i64 %24, !dbg !208
  %32 = load <1 x float>, ptr %31, align 4, !dbg !208
  %33 = fadd contract <1 x float> %32, splat (float 0x3EE4F8B580000000), !dbg !209
  %34 = tail call <1 x float> @llvm.sqrt.v1f32(<1 x float> %33), !dbg !210
  %.idx29 = mul nuw nsw i64 %24, 2304
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx29
  %36 = mul nuw nsw i64 %24, 196
  %37 = shufflevector <1 x float> %28, <1 x float> poison, <8 x i32> zeroinitializer
  %38 = shufflevector <1 x float> %26, <1 x float> poison, <8 x i32> zeroinitializer
  %39 = shufflevector <1 x float> %30, <1 x float> poison, <8 x i32> zeroinitializer
  %40 = extractelement <1 x float> %34, i64 0
  %41 = fdiv float 1.000000e+00, %40
  %42 = insertelement <8 x float> poison, float %41, i64 0
  %43 = shufflevector <8 x float> %42, <8 x float> poison, <8 x i32> zeroinitializer
  %.idx = shl nuw nsw i64 %24, 10
  %44 = getelementptr i8, ptr %12, i64 %.idx
  br label %.preheader33, !dbg !207

.preheader33:                                     ; preds = %22, %98
  %45 = phi i64 [ 0, %22 ], [ %99, %98 ]
  %46 = add nuw nsw i64 %45, %21
  %47 = mul nuw nsw i64 %46, 14
  %48 = add nuw i64 %47, %36
  %.idx26 = shl i64 %46, 6
  %49 = getelementptr i8, ptr %44, i64 %.idx26
  %50 = getelementptr i8, ptr %49, i64 68
  br label %51, !dbg !207

51:                                               ; preds = %.preheader33, %85
  %indvars.iv = phi i64 [ 14, %.preheader33 ], [ %indvars.iv.next, %85 ]
  %52 = phi i1 [ true, %.preheader33 ], [ false, %85 ]
  %53 = phi i64 [ 0, %.preheader33 ], [ 8, %85 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !207
  %54 = sub nuw nsw i64 14, %53, !dbg !207
  %55 = tail call i64 @llvm.umin.i64(i64 %54, i64 8), !dbg !207
  %56 = trunc nuw nsw i64 %55 to i32, !dbg !211
  %57 = insertelement <8 x i32> poison, i32 %56, i64 0, !dbg !211
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !211
  %59 = icmp samesign ugt <8 x i32> %58, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !211
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %59), !dbg !211
  %invariant.gep34 = getelementptr float, ptr %6, i64 %53, !dbg !207
  br label %.preheader32, !dbg !207

.preheader32:                                     ; preds = %51, %83
  %60 = phi i64 [ 0, %51 ], [ %84, %83 ]
  %.idx27 = shl nuw nsw i64 %60, 10
  %gep35 = getelementptr i8, ptr %invariant.gep34, i64 %.idx27, !dbg !207
  %.idx30 = mul nuw nsw i64 %60, 36
  %61 = getelementptr inbounds nuw i8, ptr %35, i64 %.idx30
  br label %62, !dbg !207

62:                                               ; preds = %.preheader32, %81
  %63 = phi i64 [ 0, %.preheader32 ], [ %82, %81 ]
  %64 = add nuw nsw i64 %46, %63, !dbg !207
  %.idx28 = shl nuw nsw i64 %64, 6
  %gep = getelementptr i8, ptr %gep35, i64 %.idx28
  %.idx31 = mul nuw nsw i64 %63, 12
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %.idx31
  br label %.preheader, !dbg !207

.preheader:                                       ; preds = %62, %79
  %66 = phi i64 [ 0, %62 ], [ %80, %79 ]
  %67 = getelementptr float, ptr %gep, i64 %66
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %66
  %.promoted = load float, ptr %68, align 4
  br label %69, !dbg !207

69:                                               ; preds = %.preheader, %69
  %70 = phi i64 [ 0, %.preheader ], [ %78, %69 ]
  %71 = phi float [ %.promoted, %.preheader ], [ %77, %69 ]
  %72 = getelementptr float, ptr %67, i64 %70, !dbg !207
  %73 = load float, ptr %72, align 4, !dbg !207
  %74 = getelementptr inbounds nuw float, ptr %65, i64 %70, !dbg !207
  %75 = load float, ptr %74, align 4, !dbg !207
  %76 = fmul contract float %73, %75, !dbg !212
  %77 = fadd contract float %71, %76, !dbg !213
  %78 = add nuw nsw i64 %70, 1, !dbg !207
  %exitcond.not = icmp eq i64 %78, 3, !dbg !207
  br i1 %exitcond.not, label %79, label %69, !dbg !207

79:                                               ; preds = %69
  store float %77, ptr %68, align 4, !dbg !207
  %80 = add nuw nsw i64 %66, 1, !dbg !207
  %exitcond36.not = icmp eq i64 %80, %umin, !dbg !207
  br i1 %exitcond36.not, label %81, label %.preheader, !dbg !207

81:                                               ; preds = %79
  %82 = add nuw nsw i64 %63, 1, !dbg !207
  %exitcond37.not = icmp eq i64 %82, 3, !dbg !207
  br i1 %exitcond37.not, label %83, label %62, !dbg !207

83:                                               ; preds = %81
  %84 = add nuw nsw i64 %60, 1, !dbg !207
  %exitcond38.not = icmp eq i64 %84, 64, !dbg !207
  br i1 %exitcond38.not, label %85, label %.preheader32, !dbg !207

85:                                               ; preds = %83
  %86 = add nuw nsw i64 %48, %53, !dbg !208
  %87 = getelementptr float, ptr %5, i64 %86, !dbg !208
  %88 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr %87, i32 8, <8 x i1> %59, <8 x float> poison), !dbg !208
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !208
  %89 = fadd contract <8 x float> %37, %unmaskedload, !dbg !214
  %90 = fadd contract <8 x float> %38, %88, !dbg !215
  %91 = fadd contract <8 x float> %90, %89, !dbg !216
  %92 = fsub contract <8 x float> %91, %39, !dbg !217
  %93 = fmul contract <8 x float> %43, %92, !dbg !218
  %94 = fadd contract <8 x float> %93, zeroinitializer, !dbg !219
  %.inv = fcmp ole <8 x float> %93, zeroinitializer, !dbg !220
  %95 = select <8 x i1> %.inv, <8 x float> zeroinitializer, <8 x float> %94, !dbg !220
  %96 = getelementptr float, ptr %15, i64 %86, !dbg !216
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %91, ptr %96, i32 8, <8 x i1> %59), !dbg !216
  %97 = getelementptr float, ptr %50, i64 %53, !dbg !220
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %95, ptr %97, i32 4, <8 x i1> %59), !dbg !220
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !207
  br i1 %52, label %51, label %98, !dbg !207

98:                                               ; preds = %85
  %99 = add nuw nsw i64 %45, 1, !dbg !207
  %exitcond39.not = icmp eq i64 %99, 7, !dbg !207
  br i1 %exitcond39.not, label %100, label %.preheader33, !dbg !207

100:                                              ; preds = %98
  %101 = add nuw nsw i64 %23, 1, !dbg !207
  %exitcond40.not = icmp eq i64 %101, 8, !dbg !207
  br i1 %exitcond40.not, label %102, label %22, !dbg !207

102:                                              ; preds = %100
  ret i32 0, !dbg !221
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !222 {
  %4 = alloca [7 x float], align 64, !dbg !223
  %5 = alloca [7 x float], align 64, !dbg !224
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !225
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !225
  %6 = load ptr, ptr %.unpack23, align 8, !dbg !225
  %7 = getelementptr i8, ptr %6, i64 50176, !dbg !225
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !225
  %8 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !226
  %9 = load ptr, ptr %8, align 8, !dbg !226
  %10 = getelementptr i8, ptr %9, i64 984192, !dbg !226
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !226
  %11 = getelementptr i8, ptr %9, i64 1279104, !dbg !227
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !227
  %12 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !228
  %13 = load ptr, ptr %12, align 8, !dbg !228
  %14 = getelementptr i8, ptr %13, i64 165888, !dbg !228
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !228
  %15 = load i32, ptr %2, align 16, !dbg !223
  %16 = udiv i32 %15, 7, !dbg !223
  %.zext = zext nneg i32 %16 to i64, !dbg !223
  %17 = urem i32 %15, 7, !dbg !223
  %.zext35 = zext nneg i32 %17 to i64, !dbg !223
  %18 = shl nuw nsw i64 %.zext, 4, !dbg !223
  store <7 x float> zeroinitializer, ptr %5, align 64, !dbg !229
  %.idx28 = shl nuw nsw i64 %.zext35, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %7, i64 %.idx28
  %.idx26 = mul nuw nsw i64 %.zext35, 36
  %invariant.gep39 = getelementptr i8, ptr %14, i64 %.idx26, !dbg !223
  br label %19, !dbg !223

19:                                               ; preds = %3, %53
  %20 = phi i64 [ 0, %3 ], [ %61, %53 ]
  br label %23, !dbg !223

.preheader38:                                     ; preds = %23
  %21 = add nuw nsw i64 %20, %18, !dbg !223
  %.idx31 = mul nuw nsw i64 %21, 2304
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx31
  br label %.preheader37, !dbg !223

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %28, %23 ]
  %25 = getelementptr inbounds nuw float, ptr %5, i64 %24, !dbg !223
  %26 = load float, ptr %25, align 4, !dbg !223
  %27 = getelementptr inbounds nuw float, ptr %4, i64 %24, !dbg !223
  store float %26, ptr %27, align 4, !dbg !223
  %28 = add nuw nsw i64 %24, 1, !dbg !223
  %exitcond.not = icmp eq i64 %28, 7, !dbg !223
  br i1 %exitcond.not, label %.preheader38, label %23, !dbg !223

.preheader37:                                     ; preds = %.preheader38, %51
  %29 = phi i64 [ 0, %.preheader38 ], [ %52, %51 ]
  %.idx27 = shl nuw nsw i64 %29, 10
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx27
  %.idx32 = mul nuw nsw i64 %29, 36
  %30 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx32
  br label %.preheader36, !dbg !223

.preheader36:                                     ; preds = %.preheader37, %49
  %31 = phi i64 [ 0, %.preheader37 ], [ %50, %49 ]
  %.idx29 = shl nuw nsw i64 %31, 6
  %32 = getelementptr inbounds nuw i8, ptr %gep, i64 %.idx29
  %.idx33 = mul nuw nsw i64 %31, 12
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 %.idx33
  br label %.preheader, !dbg !223

.preheader:                                       ; preds = %.preheader36, %47
  %34 = phi i64 [ 0, %.preheader36 ], [ %48, %47 ]
  %.idx30 = shl i64 %34, 3
  %35 = getelementptr i8, ptr %32, i64 %.idx30
  %36 = getelementptr inbounds nuw float, ptr %4, i64 %34
  %.promoted = load float, ptr %36, align 4
  br label %37, !dbg !223

37:                                               ; preds = %.preheader, %37
  %38 = phi i64 [ 0, %.preheader ], [ %46, %37 ]
  %39 = phi float [ %.promoted, %.preheader ], [ %45, %37 ]
  %40 = getelementptr float, ptr %35, i64 %38, !dbg !223
  %41 = load float, ptr %40, align 4, !dbg !223
  %42 = getelementptr inbounds nuw float, ptr %33, i64 %38, !dbg !223
  %43 = load float, ptr %42, align 4, !dbg !223
  %44 = fmul contract float %41, %43, !dbg !230
  %45 = fadd contract float %39, %44, !dbg !231
  %46 = add nuw nsw i64 %38, 1, !dbg !223
  %exitcond41.not = icmp eq i64 %46, 3, !dbg !223
  br i1 %exitcond41.not, label %47, label %37, !dbg !223

47:                                               ; preds = %37
  store float %45, ptr %36, align 4, !dbg !223
  %48 = add nuw nsw i64 %34, 1, !dbg !223
  %exitcond42.not = icmp eq i64 %48, 7, !dbg !223
  br i1 %exitcond42.not, label %49, label %.preheader, !dbg !223

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %31, 1, !dbg !223
  %exitcond43.not = icmp eq i64 %50, 3, !dbg !223
  br i1 %exitcond43.not, label %51, label %.preheader36, !dbg !223

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %29, 1, !dbg !223
  %exitcond44.not = icmp eq i64 %52, 64, !dbg !223
  br i1 %exitcond44.not, label %53, label %.preheader37, !dbg !223

53:                                               ; preds = %51
  %54 = load <7 x float>, ptr %4, align 64, !dbg !232
  %55 = getelementptr float, ptr %11, i64 %21, !dbg !232
  %56 = load <1 x float>, ptr %55, align 4, !dbg !232
  %57 = shufflevector <1 x float> %56, <1 x float> poison, <7 x i32> zeroinitializer, !dbg !233
  %58 = fadd contract <7 x float> %54, %57, !dbg !233
  %.inv = fcmp ole <7 x float> %58, zeroinitializer, !dbg !234
  %59 = select <7 x i1> %.inv, <7 x float> zeroinitializer, <7 x float> %58, !dbg !234
  %.idx = mul nuw nsw i64 %21, 324, !dbg !223
  %gep40 = getelementptr i8, ptr %invariant.gep39, i64 %.idx, !dbg !223
  %60 = getelementptr i8, ptr %gep40, i64 40, !dbg !223
  store <7 x float> %59, ptr %60, align 4, !dbg !223
  %61 = add nuw nsw i64 %20, 1, !dbg !223
  %exitcond45.not = icmp eq i64 %61, 16, !dbg !223
  br i1 %exitcond45.not, label %62, label %19, !dbg !223

62:                                               ; preds = %53
  ret i32 0, !dbg !235
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !236 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !237
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !237
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !237
  %5 = getelementptr i8, ptr %4, i64 115712, !dbg !237
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !237
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !238
  %7 = load ptr, ptr %6, align 8, !dbg !238
  %8 = getelementptr i8, ptr %7, i64 50176, !dbg !238
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !238
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !239
  %10 = load ptr, ptr %9, align 8, !dbg !239
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !239
  %11 = load i32, ptr %2, align 16, !dbg !240
  %12 = zext i32 %11 to i64, !dbg !240
  %13 = shl nuw nsw i64 %12, 4, !dbg !240
  br label %14, !dbg !240

14:                                               ; preds = %3, %89
  %15 = phi i64 [ 0, %3 ], [ %90, %89 ]
  %16 = add nuw nsw i64 %15, %13, !dbg !240
  %.idx33 = shl nuw nsw i64 %16, 8
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx33
  %.idx = mul nuw nsw i64 %16, 196
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  br label %.preheader34, !dbg !240

.preheader34:                                     ; preds = %14, %87
  %19 = phi i64 [ 0, %14 ], [ %88, %87 ]
  %20 = mul nuw nsw i64 %19, 28
  %invariant.gep = getelementptr float, ptr %5, i64 %20
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %.preheader, !dbg !240

.preheader:                                       ; preds = %.preheader34, %83
  %22 = phi i64 [ 0, %.preheader34 ], [ %86, %83 ]
  %invariant.gep35.idx = shl i64 %22, 3, !dbg !240
  %invariant.gep35 = getelementptr i8, ptr %invariant.gep, i64 %invariant.gep35.idx, !dbg !240
  br label %23, !dbg !240

23:                                               ; preds = %.preheader, %23
  %24 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %80, %23 ]
  %25 = phi i64 [ 0, %.preheader ], [ %81, %23 ]
  %.idx25 = mul nuw nsw i64 %25, 784, !dbg !240
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %.idx25, !dbg !240
  %26 = load float, ptr %gep36, align 8, !dbg !240
  %27 = insertelement <1 x float> poison, float %26, i64 0, !dbg !240
  %28 = or disjoint i64 %25, 1, !dbg !240
  %.idx26 = mul nuw nsw i64 %28, 784, !dbg !240
  %gep39 = getelementptr i8, ptr %invariant.gep35, i64 %.idx26, !dbg !240
  %29 = load float, ptr %gep39, align 8, !dbg !240
  %30 = insertelement <1 x float> poison, float %29, i64 0, !dbg !240
  %31 = or disjoint i64 %25, 2, !dbg !240
  %.idx27 = mul nuw nsw i64 %31, 784, !dbg !240
  %gep42 = getelementptr i8, ptr %invariant.gep35, i64 %.idx27, !dbg !240
  %32 = load float, ptr %gep42, align 8, !dbg !240
  %33 = insertelement <1 x float> poison, float %32, i64 0, !dbg !240
  %34 = or disjoint i64 %25, 3, !dbg !240
  %.idx28 = mul nuw nsw i64 %34, 784, !dbg !240
  %gep45 = getelementptr i8, ptr %invariant.gep35, i64 %.idx28, !dbg !240
  %35 = load float, ptr %gep45, align 8, !dbg !240
  %36 = insertelement <1 x float> poison, float %35, i64 0, !dbg !240
  %37 = or disjoint i64 %25, 4, !dbg !240
  %.idx29 = mul nuw nsw i64 %37, 784, !dbg !240
  %gep48 = getelementptr i8, ptr %invariant.gep35, i64 %.idx29, !dbg !240
  %38 = load float, ptr %gep48, align 8, !dbg !240
  %39 = insertelement <1 x float> poison, float %38, i64 0, !dbg !240
  %40 = or disjoint i64 %25, 5, !dbg !240
  %.idx30 = mul nuw nsw i64 %40, 784, !dbg !240
  %gep51 = getelementptr i8, ptr %invariant.gep35, i64 %.idx30, !dbg !240
  %41 = load float, ptr %gep51, align 8, !dbg !240
  %42 = insertelement <1 x float> poison, float %41, i64 0, !dbg !240
  %43 = or disjoint i64 %25, 6, !dbg !240
  %.idx31 = mul nuw nsw i64 %43, 784, !dbg !240
  %gep54 = getelementptr i8, ptr %invariant.gep35, i64 %.idx31, !dbg !240
  %44 = load float, ptr %gep54, align 8, !dbg !240
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !240
  %46 = or disjoint i64 %25, 7, !dbg !240
  %.idx32 = mul nuw nsw i64 %46, 784, !dbg !240
  %gep57 = getelementptr i8, ptr %invariant.gep35, i64 %.idx32, !dbg !240
  %47 = load float, ptr %gep57, align 8, !dbg !240
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !240
  %49 = getelementptr inbounds nuw float, ptr %17, i64 %25, !dbg !241
  %50 = load float, ptr %49, align 32, !dbg !241
  %51 = insertelement <1 x float> poison, float %50, i64 0, !dbg !241
  %52 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %27, <1 x float> %51, <1 x float> %24), !dbg !241
  %53 = getelementptr inbounds nuw float, ptr %17, i64 %28, !dbg !241
  %54 = load float, ptr %53, align 4, !dbg !241
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !241
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %55, <1 x float> %52), !dbg !241
  %57 = getelementptr inbounds nuw float, ptr %17, i64 %31, !dbg !241
  %58 = load float, ptr %57, align 8, !dbg !241
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !241
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %59, <1 x float> %56), !dbg !241
  %61 = getelementptr inbounds nuw float, ptr %17, i64 %34, !dbg !241
  %62 = load float, ptr %61, align 4, !dbg !241
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !241
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %63, <1 x float> %60), !dbg !241
  %65 = getelementptr inbounds nuw float, ptr %17, i64 %37, !dbg !241
  %66 = load float, ptr %65, align 16, !dbg !241
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !241
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %67, <1 x float> %64), !dbg !241
  %69 = getelementptr inbounds nuw float, ptr %17, i64 %40, !dbg !241
  %70 = load float, ptr %69, align 4, !dbg !241
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !241
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %71, <1 x float> %68), !dbg !241
  %73 = getelementptr inbounds nuw float, ptr %17, i64 %43, !dbg !241
  %74 = load float, ptr %73, align 8, !dbg !241
  %75 = insertelement <1 x float> poison, float %74, i64 0, !dbg !241
  %76 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %45, <1 x float> %75, <1 x float> %72), !dbg !241
  %77 = getelementptr inbounds nuw float, ptr %17, i64 %46, !dbg !241
  %78 = load float, ptr %77, align 4, !dbg !241
  %79 = insertelement <1 x float> poison, float %78, i64 0, !dbg !241
  %80 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %79, <1 x float> %76), !dbg !241
  %81 = add nuw nsw i64 %25, 8, !dbg !240
  %82 = icmp samesign ult i64 %25, 56, !dbg !240
  br i1 %82, label %23, label %83, !dbg !240

83:                                               ; preds = %23
  %84 = extractelement <1 x float> %80, i64 0, !dbg !240
  %85 = getelementptr inbounds nuw float, ptr %21, i64 %22, !dbg !240
  store float %84, ptr %85, align 4, !dbg !240
  %86 = add nuw nsw i64 %22, 1, !dbg !240
  %exitcond.not = icmp eq i64 %86, 7, !dbg !240
  br i1 %exitcond.not, label %87, label %.preheader, !dbg !240

87:                                               ; preds = %83
  %88 = add nuw nsw i64 %19, 1, !dbg !240
  %exitcond58.not = icmp eq i64 %88, 7, !dbg !240
  br i1 %exitcond58.not, label %89, label %.preheader34, !dbg !240

89:                                               ; preds = %87
  %90 = add nuw nsw i64 %15, 1, !dbg !240
  %exitcond59.not = icmp eq i64 %90, 16, !dbg !240
  br i1 %exitcond59.not, label %91, label %14, !dbg !240

91:                                               ; preds = %89
  ret i32 0, !dbg !242
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !243 {
  %4 = alloca [7 x float], align 64, !dbg !244
  %5 = alloca [7 x float], align 64, !dbg !245
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !246
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !246
  %6 = load ptr, ptr %.unpack23, align 8, !dbg !246
  %7 = getelementptr i8, ptr %6, i64 165888, !dbg !246
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !246
  %8 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !247
  %9 = load ptr, ptr %8, align 8, !dbg !247
  %10 = getelementptr i8, ptr %9, i64 282752, !dbg !247
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !247
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !248
  %11 = getelementptr i8, ptr %9, i64 873088, !dbg !249
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !249
  %12 = getelementptr i8, ptr %9, i64 872576, !dbg !250
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !250
  %13 = getelementptr i8, ptr %.unpack23, i64 16, !dbg !251
  %14 = load ptr, ptr %13, align 8, !dbg !251
  %15 = getelementptr i8, ptr %14, i64 25088, !dbg !251
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !251
  %16 = load i32, ptr %2, align 16, !dbg !244
  %17 = udiv i32 %16, 7, !dbg !244
  %.zext = zext nneg i32 %17 to i64, !dbg !244
  %18 = urem i32 %16, 7, !dbg !244
  %.zext31 = zext nneg i32 %18 to i64, !dbg !244
  %19 = shl nuw nsw i64 %.zext, 4, !dbg !244
  store <7 x float> zeroinitializer, ptr %5, align 64, !dbg !252
  %20 = mul nuw nsw i64 %.zext31, 7
  br label %21, !dbg !244

21:                                               ; preds = %3, %58
  %22 = phi i64 [ 0, %3 ], [ %75, %58 ]
  br label %25, !dbg !244

.preheader33:                                     ; preds = %25
  %23 = add nuw nsw i64 %22, %19, !dbg !244
  %.idx27 = mul nuw nsw i64 %23, 4608
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx27
  br label %.preheader32, !dbg !244

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %30, %25 ]
  %27 = getelementptr inbounds nuw float, ptr %5, i64 %26, !dbg !244
  %28 = load float, ptr %27, align 4, !dbg !244
  %29 = getelementptr inbounds nuw float, ptr %4, i64 %26, !dbg !244
  store float %28, ptr %29, align 4, !dbg !244
  %30 = add nuw nsw i64 %26, 1, !dbg !244
  %exitcond.not = icmp eq i64 %30, 7, !dbg !244
  br i1 %exitcond.not, label %.preheader33, label %25, !dbg !244

.preheader32:                                     ; preds = %.preheader33, %56
  %31 = phi i64 [ 0, %.preheader33 ], [ %57, %56 ]
  %.idx = mul nuw nsw i64 %31, 324
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %.idx28 = mul nuw nsw i64 %31, 36
  %33 = getelementptr inbounds nuw i8, ptr %24, i64 %.idx28
  br label %34, !dbg !244

34:                                               ; preds = %.preheader32, %54
  %35 = phi i64 [ 0, %.preheader32 ], [ %55, %54 ]
  %36 = add nuw nsw i64 %35, %.zext31, !dbg !244
  %.idx26 = mul nuw nsw i64 %36, 36
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 %.idx26
  %.idx29 = mul nuw nsw i64 %35, 12
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 %.idx29
  br label %.preheader, !dbg !244

.preheader:                                       ; preds = %34, %52
  %39 = phi i64 [ 0, %34 ], [ %53, %52 ]
  %40 = getelementptr float, ptr %37, i64 %39
  %41 = getelementptr inbounds nuw float, ptr %4, i64 %39
  %.promoted = load float, ptr %41, align 4
  br label %42, !dbg !244

42:                                               ; preds = %.preheader, %42
  %43 = phi i64 [ 0, %.preheader ], [ %51, %42 ]
  %44 = phi float [ %.promoted, %.preheader ], [ %50, %42 ]
  %45 = getelementptr float, ptr %40, i64 %43, !dbg !244
  %46 = load float, ptr %45, align 4, !dbg !244
  %47 = getelementptr inbounds nuw float, ptr %38, i64 %43, !dbg !244
  %48 = load float, ptr %47, align 4, !dbg !244
  %49 = fmul contract float %46, %48, !dbg !253
  %50 = fadd contract float %44, %49, !dbg !254
  %51 = add nuw nsw i64 %43, 1, !dbg !244
  %exitcond34.not = icmp eq i64 %51, 3, !dbg !244
  br i1 %exitcond34.not, label %52, label %42, !dbg !244

52:                                               ; preds = %42
  store float %50, ptr %41, align 4, !dbg !244
  %53 = add nuw nsw i64 %39, 1, !dbg !244
  %exitcond35.not = icmp eq i64 %53, 7, !dbg !244
  br i1 %exitcond35.not, label %54, label %.preheader, !dbg !244

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %35, 1, !dbg !244
  %exitcond36.not = icmp eq i64 %55, 3, !dbg !244
  br i1 %exitcond36.not, label %56, label %34, !dbg !244

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %31, 1, !dbg !244
  %exitcond37.not = icmp eq i64 %57, 128, !dbg !244
  br i1 %exitcond37.not, label %58, label %.preheader32, !dbg !244

58:                                               ; preds = %56
  %59 = mul nuw nsw i64 %23, 49, !dbg !255
  %60 = add nuw nsw i64 %59, %20, !dbg !255
  %61 = getelementptr float, ptr %6, i64 %60, !dbg !255
  %62 = load <7 x float>, ptr %61, align 4, !dbg !255
  %63 = getelementptr float, ptr %11, i64 %23, !dbg !255
  %64 = load <1 x float>, ptr %63, align 4, !dbg !255
  %65 = load <7 x float>, ptr %4, align 64, !dbg !255
  %66 = getelementptr float, ptr %12, i64 %23, !dbg !255
  %67 = load <1 x float>, ptr %66, align 4, !dbg !255
  %68 = shufflevector <1 x float> %67, <1 x float> poison, <7 x i32> zeroinitializer, !dbg !256
  %69 = fadd contract <7 x float> %65, %68, !dbg !256
  %70 = shufflevector <1 x float> %64, <1 x float> poison, <7 x i32> zeroinitializer, !dbg !257
  %71 = fadd contract <7 x float> %62, %70, !dbg !257
  %72 = fadd contract <7 x float> %71, %69, !dbg !258
  %.inv = fcmp ole <7 x float> %72, zeroinitializer, !dbg !259
  %73 = select <7 x i1> %.inv, <7 x float> zeroinitializer, <7 x float> %72, !dbg !259
  %74 = getelementptr float, ptr %15, i64 %60, !dbg !244
  store <7 x float> %73, ptr %74, align 4, !dbg !244
  %75 = add nuw nsw i64 %22, 1, !dbg !244
  %exitcond38.not = icmp eq i64 %75, 16, !dbg !244
  br i1 %exitcond38.not, label %76, label %21, !dbg !244

76:                                               ; preds = %58
  ret i32 0, !dbg !260
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_12_matvec_like_6272_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #0 !dbg !261 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !262
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !262
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !262
  %5 = getelementptr i8, ptr %4, i64 25088, !dbg !262
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !262
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !263
  %7 = load ptr, ptr %6, align 8, !dbg !263
  %8 = getelementptr i8, ptr %7, i64 25088, !dbg !263
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !263
  %9 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !264
  %10 = load ptr, ptr %9, align 8, !dbg !264
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !264
  br label %11, !dbg !265

11:                                               ; preds = %3, %11
  %12 = phi <1 x float> [ zeroinitializer, %3 ], [ %21, %11 ]
  %13 = phi i64 [ 0, %3 ], [ %22, %11 ]
  %14 = getelementptr float, ptr %5, i64 %13, !dbg !265
  %15 = load <8 x float>, ptr %14, align 32, !dbg !265
  %16 = getelementptr float, ptr %8, i64 %13, !dbg !265
  %17 = load <8 x float>, ptr %16, align 32, !dbg !265
  %18 = extractelement <1 x float> %12, i64 0, !dbg !265
  %19 = fmul contract <8 x float> %15, %17, !dbg !266
  %20 = tail call reassoc float @llvm.vector.reduce.fadd.v8f32(float %18, <8 x float> %19), !dbg !266
  %21 = insertelement <1 x float> poison, float %20, i64 0, !dbg !265
  %22 = add nuw nsw i64 %13, 8, !dbg !265
  %23 = icmp samesign ult i64 %13, 6264, !dbg !265
  br i1 %23, label %11, label %24, !dbg !265

24:                                               ; preds = %11
  %25 = fadd contract float %20, 0x3F7F9B8C40000000, !dbg !267
  store float %25, ptr %10, align 64, !dbg !267
  ret i32 0, !dbg !268
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @"main_graph$async_dispatch_13_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias nonnull readnone align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !269 {
  ret i32 0, !dbg !270
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_14_matvec_like_6272_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #0 !dbg !271 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !272
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !272
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !272
  %5 = getelementptr i8, ptr %4, i64 25088, !dbg !272
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !272
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !273
  %7 = load ptr, ptr %6, align 8, !dbg !273
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !273
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !274
  %9 = load ptr, ptr %8, align 8, !dbg !274
  br label %10, !dbg !275

10:                                               ; preds = %3, %10
  %11 = phi <1 x float> [ zeroinitializer, %3 ], [ %20, %10 ]
  %12 = phi i64 [ 0, %3 ], [ %21, %10 ]
  %13 = getelementptr float, ptr %5, i64 %12, !dbg !275
  %14 = load <8 x float>, ptr %13, align 32, !dbg !275
  %15 = getelementptr float, ptr %7, i64 %12, !dbg !275
  %16 = load <8 x float>, ptr %15, align 32, !dbg !275
  %17 = extractelement <1 x float> %11, i64 0, !dbg !275
  %18 = fmul contract <8 x float> %14, %16, !dbg !276
  %19 = tail call reassoc float @llvm.vector.reduce.fadd.v8f32(float %17, <8 x float> %18), !dbg !276
  %20 = insertelement <1 x float> poison, float %19, i64 0, !dbg !275
  %21 = add nuw nsw i64 %12, 8, !dbg !275
  %22 = icmp samesign ult i64 %12, 6264, !dbg !275
  br i1 %22, label %10, label %23, !dbg !275

23:                                               ; preds = %10
  %24 = getelementptr i8, ptr %9, i64 64, !dbg !274
  %25 = fadd contract float %19, 0x3F57804AC0000000, !dbg !277
  %26 = fneg contract float %25, !dbg !278
  %.inv = fcmp olt float %26, 0xC055F33340000000, !dbg !279
  %27 = select i1 %.inv, float 0xC055F33340000000, float %26, !dbg !279
  %.inv23 = fcmp ogt float %27, 0x4056333340000000, !dbg !279
  %28 = select i1 %.inv23, float 0x4056333340000000, float %27, !dbg !279
  %29 = tail call float @llvm.fma.f32(float %28, float 0x3FF7154760000000, float 5.000000e-01), !dbg !279
  %30 = tail call float @llvm.floor.f32(float %29), !dbg !279
  %.inv24 = fcmp olt float %30, -1.270000e+02, !dbg !279
  %31 = select i1 %.inv24, float -1.270000e+02, float %30, !dbg !279
  %.inv25 = fcmp ogt float %31, 1.270000e+02, !dbg !279
  %32 = select i1 %.inv25, float 1.270000e+02, float %31, !dbg !279
  %33 = tail call float @llvm.fma.f32(float %32, float 0xBFE6300000000000, float %28), !dbg !279
  %34 = tail call float @llvm.fma.f32(float %32, float 0x3F2BD01060000000, float %33), !dbg !279
  %35 = tail call float @llvm.fma.f32(float %34, float 0x3F2A0D2CE0000000, float 0x3F56E879C0000000), !dbg !279
  %36 = tail call float @llvm.fma.f32(float %35, float %34, float 0x3F81112100000000), !dbg !279
  %37 = tail call float @llvm.fma.f32(float %36, float %34, float 0x3FA5553820000000), !dbg !279
  %38 = tail call float @llvm.fma.f32(float %37, float %34, float 0x3FC5555540000000), !dbg !279
  %39 = tail call float @llvm.fma.f32(float %38, float %34, float 5.000000e-01), !dbg !279
  %40 = fmul contract float %34, %34, !dbg !279
  %41 = tail call float @llvm.fma.f32(float %39, float %40, float %34), !dbg !279
  %42 = fadd contract float %41, 1.000000e+00, !dbg !279
  %43 = fptosi float %32 to i32, !dbg !279
  %44 = shl i32 %43, 23, !dbg !279
  %45 = add i32 %44, 1065353216, !dbg !279
  %46 = bitcast i32 %45 to float, !dbg !279
  %47 = fmul contract float %42, %46, !dbg !279
  %48 = fadd contract float %47, 1.000000e+00, !dbg !280
  %49 = fdiv float 1.000000e+00, %48, !dbg !281
  store float %49, ptr %24, align 4, !dbg !281
  ret i32 0, !dbg !282
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), i32 immarg, <8 x i1>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), i32 immarg, <8 x i1>, <8 x float>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.sqrt.v1f32(<1 x float>) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr readnone captures(none) %1) local_unnamed_addr #6 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #7 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %23, %15, %12, %9
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #7 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %29
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %35

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  br label %29

29:                                               ; preds = %17, %12, %15, %1, %7
  %30 = phi i32 [ 0, %7 ], [ %3, %1 ], [ %28, %17 ], [ 0, %12 ], [ 0, %15 ]
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %26, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %30, %6
  %33 = or i32 %32, %31
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %29, %9
  %36 = phi i16 [ %11, %9 ], [ %34, %29 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #7 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %9, %12, %15, %23
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__extendhfsf2(float noundef %0) local_unnamed_addr #7 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  ret float %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #7 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %29
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %35

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  br label %29

29:                                               ; preds = %17, %15, %12, %7, %1
  %30 = phi i32 [ 0, %7 ], [ %3, %1 ], [ %28, %17 ], [ 0, %12 ], [ 0, %15 ]
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %26, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %30, %6
  %33 = or i32 %32, %31
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %9, %29
  %36 = phi i16 [ %11, %9 ], [ %34, %29 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__truncsfhf2(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca i16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 2139095040
  %5 = and i32 %3, 8388607
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 32768
  switch i32 %4, label %13 [
    i32 2139095040, label %8
    i32 0, label %30
  ]

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = trunc nuw i32 %6 to i16
  %12 = or i16 %11, 32767
  br label %36

13:                                               ; preds = %1
  %14 = lshr exact i32 %4, 23
  %15 = icmp samesign ugt i32 %4, 1191182336
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = icmp samesign ult i32 %4, 947912704
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = and i32 %3, 8192
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4095, i32 4096
  %22 = add nuw nsw i32 %21, %5
  %23 = icmp samesign ugt i32 %22, 8388607
  %24 = select i1 %23, i32 -126, i32 -127
  %25 = add nsw i32 %24, %14
  %26 = shl nsw i32 %25, 10
  %27 = add nsw i32 %26, 15360
  %28 = lshr i32 %22, 13
  %29 = select i1 %23, i32 0, i32 %28
  br label %30

30:                                               ; preds = %18, %16, %13, %8, %1
  %31 = phi i32 [ 0, %8 ], [ %4, %1 ], [ %29, %18 ], [ 0, %13 ], [ 0, %16 ]
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %27, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %31, %7
  %34 = or i32 %33, %32
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %10, %30
  %37 = phi i16 [ %12, %10 ], [ %35, %30 ]
  store i16 %37, ptr %2, align 4, !tbaa !283
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_main_graph$async_dispatch_3.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_main_graph$async_dispatch_4.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_main_graph$async_dispatch_5.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!12 = distinct !DICompileUnit(language: DW_LANG_C17, file: !13, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!13 = !DIFile(filename: "configured_module_main_graph$async_dispatch_6.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!14 = distinct !DICompileUnit(language: DW_LANG_C17, file: !15, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!15 = !DIFile(filename: "configured_module_main_graph$async_dispatch_7.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!16 = distinct !DICompileUnit(language: DW_LANG_C17, file: !17, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!17 = !DIFile(filename: "configured_module_main_graph$async_dispatch_8.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!18 = distinct !DICompileUnit(language: DW_LANG_C17, file: !19, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!19 = !DIFile(filename: "configured_module_main_graph$async_dispatch_9.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!20 = distinct !DICompileUnit(language: DW_LANG_C17, file: !21, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = !DIFile(filename: "configured_module_main_graph$async_dispatch_10.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!22 = distinct !DICompileUnit(language: DW_LANG_C17, file: !23, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!23 = !DIFile(filename: "configured_module_main_graph$async_dispatch_11.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!24 = distinct !DICompileUnit(language: DW_LANG_C17, file: !25, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!25 = !DIFile(filename: "configured_module_main_graph$async_dispatch_12.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!26 = distinct !DICompileUnit(language: DW_LANG_C17, file: !27, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!27 = !DIFile(filename: "configured_module_main_graph$async_dispatch_13.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!28 = distinct !DICompileUnit(language: DW_LANG_C17, file: !29, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!29 = !DIFile(filename: "configured_module_main_graph$async_dispatch_14.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs")
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_slow_memcpy", linkageName: "main_graph$async_dispatch_0_slow_memcpy", scope: !1, file: !1, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!34 = !DISubroutineType(cc: DW_CC_normal, types: !35)
!35 = !{!36, !37, !68, !97}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !41, file: !41, line: 246, size: 768, elements: !42)
!41 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!42 = !{!43, !51, !54, !57, !59}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, scope: !41, file: !41, line: 227, baseType: !47, size: 2048, elements: !49)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !{!50}
!50 = !DISubrange(count: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !60, offset: 256)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !41, file: !41, line: 227, size: 512, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, scope: !41, file: !41, line: 227, baseType: !64, size: 512, elements: !66)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !65)
!65 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67}
!67 = !DISubrange(count: 8)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !41, file: !41, line: 275, size: 384, elements: !72)
!72 = !{!73, !74, !75, !78, !79, !80, !81, !82, !85, !86, !87, !92}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !47, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !47, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !76, size: 16, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !77)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !76, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !47, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !47, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !76, size: 16, offset: 160)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !83, size: 8, offset: 176)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !84)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !83, size: 8, offset: 184)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !44, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, scope: !41, file: !41, line: 227, baseType: !91, size: 4096, elements: !49)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, scope: !41, file: !41, line: 227, baseType: !96, size: 4096, elements: !49)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !41, file: !41, line: 321, size: 256, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !47, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !47, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !76, size: 16, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !76, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !47, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !52, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !47, size: 32, offset: 192)
!109 = !DILocation(line: 10, column: 8, scope: !33)
!110 = !DILocation(line: 11, column: 8, scope: !33)
!111 = !DILocation(line: 12, column: 8, scope: !33)
!112 = !DILocation(line: 13, column: 8, scope: !33)
!113 = !DILocation(line: 15, column: 8, scope: !33)
!114 = !DILocation(line: 19, column: 8, scope: !33)
!115 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", linkageName: "main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", scope: !3, file: !3, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!116 = !DILocation(line: 20, column: 8, scope: !115)
!117 = !DILocation(line: 14, column: 8, scope: !115)
!118 = !DILocation(line: 15, column: 8, scope: !115)
!119 = !DILocation(line: 16, column: 8, scope: !115)
!120 = !DILocation(line: 21, column: 8, scope: !115)
!121 = !DILocation(line: 27, column: 8, scope: !115)
!122 = !DILocation(line: 9, column: 8, scope: !115)
!123 = !DILocation(line: 23, column: 10, scope: !115)
!124 = !DILocation(line: 24, column: 10, scope: !115)
!125 = !DILocation(line: 29, column: 10, scope: !115)
!126 = !DILocation(line: 33, column: 8, scope: !115)
!127 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", linkageName: "main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", scope: !5, file: !5, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!128 = !DILocation(line: 16, column: 8, scope: !127)
!129 = !DILocation(line: 17, column: 8, scope: !127)
!130 = !DILocation(line: 18, column: 8, scope: !127)
!131 = !DILocation(line: 23, column: 8, scope: !127)
!132 = !DILocation(line: 28, column: 8, scope: !127)
!133 = !DILocation(line: 9, column: 8, scope: !127)
!134 = !DILocation(line: 25, column: 10, scope: !127)
!135 = !DILocation(line: 31, column: 10, scope: !127)
!136 = !DILocation(line: 32, column: 10, scope: !127)
!137 = !DILocation(line: 33, column: 10, scope: !127)
!138 = !DILocation(line: 35, column: 10, scope: !127)
!139 = !DILocation(line: 40, column: 8, scope: !127)
!140 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", scope: !7, file: !7, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!141 = !DILocation(line: 20, column: 8, scope: !140)
!142 = !DILocation(line: 14, column: 8, scope: !140)
!143 = !DILocation(line: 15, column: 8, scope: !140)
!144 = !DILocation(line: 16, column: 8, scope: !140)
!145 = !DILocation(line: 21, column: 8, scope: !140)
!146 = !DILocation(line: 27, column: 8, scope: !140)
!147 = !DILocation(line: 9, column: 8, scope: !140)
!148 = !DILocation(line: 23, column: 10, scope: !140)
!149 = !DILocation(line: 24, column: 10, scope: !140)
!150 = !DILocation(line: 29, column: 10, scope: !140)
!151 = !DILocation(line: 31, column: 10, scope: !140)
!152 = !DILocation(line: 35, column: 8, scope: !140)
!153 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", linkageName: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", scope: !9, file: !9, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!154 = !DILocation(line: 13, column: 8, scope: !153)
!155 = !DILocation(line: 14, column: 8, scope: !153)
!156 = !DILocation(line: 15, column: 8, scope: !153)
!157 = !DILocation(line: 20, column: 8, scope: !153)
!158 = !DILocation(line: 23, column: 10, scope: !153)
!159 = !DILocation(line: 27, column: 8, scope: !153)
!160 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", scope: !11, file: !11, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!161 = !DILocation(line: 28, column: 8, scope: !160)
!162 = !DILocation(line: 19, column: 8, scope: !160)
!163 = !DILocation(line: 20, column: 8, scope: !160)
!164 = !DILocation(line: 21, column: 8, scope: !160)
!165 = !DILocation(line: 22, column: 8, scope: !160)
!166 = !DILocation(line: 23, column: 8, scope: !160)
!167 = !DILocation(line: 29, column: 8, scope: !160)
!168 = !DILocation(line: 35, column: 8, scope: !160)
!169 = !DILocation(line: 10, column: 8, scope: !160)
!170 = !DILocation(line: 31, column: 10, scope: !160)
!171 = !DILocation(line: 32, column: 10, scope: !160)
!172 = !DILocation(line: 37, column: 10, scope: !160)
!173 = !DILocation(line: 38, column: 10, scope: !160)
!174 = !DILocation(line: 39, column: 10, scope: !160)
!175 = !DILocation(line: 41, column: 10, scope: !160)
!176 = !DILocation(line: 42, column: 10, scope: !160)
!177 = !DILocation(line: 43, column: 10, scope: !160)
!178 = !DILocation(line: 45, column: 10, scope: !160)
!179 = !DILocation(line: 50, column: 8, scope: !160)
!180 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", linkageName: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", scope: !13, file: !13, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!181 = !DILocation(line: 20, column: 8, scope: !180)
!182 = !DILocation(line: 14, column: 8, scope: !180)
!183 = !DILocation(line: 15, column: 8, scope: !180)
!184 = !DILocation(line: 16, column: 8, scope: !180)
!185 = !DILocation(line: 21, column: 8, scope: !180)
!186 = !DILocation(line: 27, column: 8, scope: !180)
!187 = !DILocation(line: 9, column: 8, scope: !180)
!188 = !DILocation(line: 23, column: 10, scope: !180)
!189 = !DILocation(line: 24, column: 10, scope: !180)
!190 = !DILocation(line: 29, column: 10, scope: !180)
!191 = !DILocation(line: 31, column: 10, scope: !180)
!192 = !DILocation(line: 35, column: 8, scope: !180)
!193 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", linkageName: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", scope: !15, file: !15, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!194 = !DILocation(line: 13, column: 8, scope: !193)
!195 = !DILocation(line: 14, column: 8, scope: !193)
!196 = !DILocation(line: 15, column: 8, scope: !193)
!197 = !DILocation(line: 20, column: 8, scope: !193)
!198 = !DILocation(line: 23, column: 10, scope: !193)
!199 = !DILocation(line: 27, column: 8, scope: !193)
!200 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", linkageName: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", scope: !17, file: !17, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!201 = !DILocation(line: 29, column: 8, scope: !200)
!202 = !DILocation(line: 20, column: 8, scope: !200)
!203 = !DILocation(line: 21, column: 8, scope: !200)
!204 = !DILocation(line: 22, column: 8, scope: !200)
!205 = !DILocation(line: 23, column: 8, scope: !200)
!206 = !DILocation(line: 24, column: 8, scope: !200)
!207 = !DILocation(line: 30, column: 8, scope: !200)
!208 = !DILocation(line: 36, column: 8, scope: !200)
!209 = !DILocation(line: 41, column: 10, scope: !200)
!210 = !DILocation(line: 42, column: 10, scope: !200)
!211 = !DILocation(line: 10, column: 8, scope: !200)
!212 = !DILocation(line: 32, column: 10, scope: !200)
!213 = !DILocation(line: 33, column: 10, scope: !200)
!214 = !DILocation(line: 38, column: 10, scope: !200)
!215 = !DILocation(line: 39, column: 10, scope: !200)
!216 = !DILocation(line: 40, column: 10, scope: !200)
!217 = !DILocation(line: 43, column: 10, scope: !200)
!218 = !DILocation(line: 44, column: 10, scope: !200)
!219 = !DILocation(line: 45, column: 10, scope: !200)
!220 = !DILocation(line: 47, column: 10, scope: !200)
!221 = !DILocation(line: 52, column: 8, scope: !200)
!222 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", linkageName: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", scope: !19, file: !19, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!223 = !DILocation(line: 23, column: 8, scope: !222)
!224 = !DILocation(line: 22, column: 8, scope: !222)
!225 = !DILocation(line: 14, column: 8, scope: !222)
!226 = !DILocation(line: 15, column: 8, scope: !222)
!227 = !DILocation(line: 16, column: 8, scope: !222)
!228 = !DILocation(line: 17, column: 8, scope: !222)
!229 = !DILocation(line: 9, column: 8, scope: !222)
!230 = !DILocation(line: 25, column: 10, scope: !222)
!231 = !DILocation(line: 26, column: 10, scope: !222)
!232 = !DILocation(line: 29, column: 8, scope: !222)
!233 = !DILocation(line: 31, column: 10, scope: !222)
!234 = !DILocation(line: 33, column: 10, scope: !222)
!235 = !DILocation(line: 37, column: 8, scope: !222)
!236 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", linkageName: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", scope: !21, file: !21, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!237 = !DILocation(line: 13, column: 8, scope: !236)
!238 = !DILocation(line: 14, column: 8, scope: !236)
!239 = !DILocation(line: 15, column: 8, scope: !236)
!240 = !DILocation(line: 20, column: 8, scope: !236)
!241 = !DILocation(line: 23, column: 10, scope: !236)
!242 = !DILocation(line: 27, column: 8, scope: !236)
!243 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", linkageName: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", scope: !23, file: !23, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!244 = !DILocation(line: 29, column: 8, scope: !243)
!245 = !DILocation(line: 28, column: 8, scope: !243)
!246 = !DILocation(line: 16, column: 8, scope: !243)
!247 = !DILocation(line: 17, column: 8, scope: !243)
!248 = !DILocation(line: 18, column: 8, scope: !243)
!249 = !DILocation(line: 19, column: 8, scope: !243)
!250 = !DILocation(line: 20, column: 8, scope: !243)
!251 = !DILocation(line: 21, column: 8, scope: !243)
!252 = !DILocation(line: 9, column: 8, scope: !243)
!253 = !DILocation(line: 31, column: 10, scope: !243)
!254 = !DILocation(line: 32, column: 10, scope: !243)
!255 = !DILocation(line: 35, column: 8, scope: !243)
!256 = !DILocation(line: 37, column: 10, scope: !243)
!257 = !DILocation(line: 38, column: 10, scope: !243)
!258 = !DILocation(line: 39, column: 10, scope: !243)
!259 = !DILocation(line: 41, column: 10, scope: !243)
!260 = !DILocation(line: 45, column: 8, scope: !243)
!261 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_12_matvec_like_6272_f32", scope: !25, file: !25, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!262 = !DILocation(line: 13, column: 8, scope: !261)
!263 = !DILocation(line: 14, column: 8, scope: !261)
!264 = !DILocation(line: 15, column: 8, scope: !261)
!265 = !DILocation(line: 20, column: 8, scope: !261)
!266 = !DILocation(line: 23, column: 10, scope: !261)
!267 = !DILocation(line: 28, column: 10, scope: !261)
!268 = !DILocation(line: 32, column: 8, scope: !261)
!269 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_slow_memcpy", linkageName: "main_graph$async_dispatch_13_slow_memcpy", scope: !27, file: !27, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!270 = !DILocation(line: 15, column: 8, scope: !269)
!271 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_14_matvec_like_6272_f32", scope: !29, file: !29, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!272 = !DILocation(line: 15, column: 8, scope: !271)
!273 = !DILocation(line: 16, column: 8, scope: !271)
!274 = !DILocation(line: 17, column: 8, scope: !271)
!275 = !DILocation(line: 22, column: 8, scope: !271)
!276 = !DILocation(line: 25, column: 10, scope: !271)
!277 = !DILocation(line: 30, column: 10, scope: !271)
!278 = !DILocation(line: 31, column: 10, scope: !271)
!279 = !DILocation(line: 32, column: 10, scope: !271)
!280 = !DILocation(line: 33, column: 10, scope: !271)
!281 = !DILocation(line: 34, column: 10, scope: !271)
!282 = !DILocation(line: 38, column: 8, scope: !271)
!283 = !{!284, !284, i64 0}
!284 = !{!"short", !285, i64 0}
!285 = !{!"omnipotent char", !286, i64 0}
!286 = !{!"Simple C/C++ TBAA"}
!287 = !{!288, !288, i64 0}
!288 = !{!"float", !285, i64 0}
