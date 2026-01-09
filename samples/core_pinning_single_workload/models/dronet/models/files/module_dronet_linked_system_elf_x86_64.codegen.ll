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
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }

@__constant_32xf32 = private constant [32 x float] [float 0xBF95CB3CE0000000, float 0xBF901A4B40000000, float 0x3FC0F44600000000, float 0x3FC5BC9B40000000, float 0xBFC34A6560000000, float 0xBFA22EEF40000000, float 0x3FB9C33860000000, float 0xBFC52E3D40000000, float 0xBFB1C34EE0000000, float 0xBF8D79F000000000, float 0xBFC0059B60000000, float 0xBFC6C56F40000000, float 0xBFC33A2500000000, float 0x3FC9764C40000000, float 0xBFBB29CE00000000, float 0x3FB905EA60000000, float 0xBFC4F37840000000, float 0x3F9C3929A0000000, float 0xBFC022C440000000, float 0x3FC4385AA0000000, float 0x3F9B1124E0000000, float 0xBFABF364E0000000, float 0xBFC296EFE0000000, float 0x3FBD47D200000000, float 0xBFA092AF40000000, float 0xBFBC9A0660000000, float 0x3F935CF000000000, float 0x3FC2A7A9A0000000, float 0xBFA15F1F40000000, float 0xBF99521CE0000000, float 0x3FAA88B400000000, float 0xBFC518D160000000], align 64
@__constant_32xf32_0 = private constant [32 x float] [float 0xBF616F63E0000000, float 0xBF59C3ABA0000000, float 0x3F8B207000000000, float 0x3F9163AF60000000, float 0xBF8EDD6F00000000, float 0xBF6D17E540000000, float 0x3F849C2D20000000, float 0xBF90F1CAA0000000, float 0xBF7C6BB160000000, float 0xBF5794C000000000, float 0xBF89A29240000000, float 0xBF92378C40000000, float 0xBF8EC36E60000000, float 0x3F945EA360000000, float 0xBF85BB0B40000000, float 0x3F8404BB80000000, float 0xBF90C2C6A0000000, float 0x3F66942160000000, float 0xBF89D13A00000000, float 0x3F902D1560000000, float 0x3F65A750C0000000, float 0xBF765C50C0000000, float 0xBF8DBE4CA0000000, float 0x3F876CA800000000, float 0xBF6A844BA0000000, float 0xBF86E19EC0000000, float 0x3F5EFB19A0000000, float 0x3F8DD90F60000000, float 0xBF6BCB6540000000, float 0xBF6441B0C0000000, float 0x3F753A29A0000000, float 0xBF90E0A780000000], align 64
@__constant_32xf32_1 = private constant [32 x float] [float 0xBF824111E0000000, float 0xBF9B360180000000, float 0x3FA0B4A020000000, float 0xBF81CAB180000000, float 0xBFA50A08C0000000, float 0x3FAC9C0800000000, float 0x3F90061B80000000, float 0xBF952FCA40000000, float 0x3FA56D4E40000000, float 0xBF8646B340000000, float 0xBFA40E5E60000000, float 0xBF9D0DE0A0000000, float 0x3FA800BFA0000000, float 0xBF704895C0000000, float 0x3F953175E0000000, float 0x3F911EFB00000000, float 0xBFA618F620000000, float 0x3F9FEE3E60000000, float 0x3F98948320000000, float 0x3F81CE2B60000000, float 0x3FA02AD480000000, float 0x3FA0586300000000, float 0xBFA45E2460000000, float 0x3F830B4720000000, float 0x3FA0A5AEA0000000, float 0xBFA671E180000000, float 0xBFA13D69C0000000, float 0xBF8A3A3C80000000, float 0xBFA6986E80000000, float 0x3F9892FAC0000000, float 0x3F9CB0BFA0000000, float 0x3FA1EA9020000000], align 64
@__constant_32xf32_1_0 = private constant [32 x float] [float 0xBF8B457120000000, float 0x3FBD0D5300000000, float 0xBF872BDA40000000, float 0xBFA3424B20000000, float 0xBFB34FF100000000, float 0xBFAADECDC0000000, float 0x3FB38E2280000000, float 0x3FBDF9D880000000, float 0x3FC2B0D480000000, float 0xBFC3D3AEA0000000, float 0xBFBC2A7020000000, float 0xBF96286360000000, float 0xBFB0FBFD00000000, float 0x3FBE2E5DE0000000, float 0xBFB931A580000000, float 0xBFC6692D80000000, float 0xBFA07E6160000000, float 0x3FB82D6800000000, float 0x3FAA1EFAA0000000, float 0x3F56597740000000, float 0xBF10DF0220000000, float 0xBFAFCAF920000000, float 0xBF62473C20000000, float 0x3FC1CC4E80000000, float 0xBFC34C9DA0000000, float 0x3FAB7EE9E0000000, float 0x3FAB4DE5A0000000, float 0x3FBA5E0220000000, float 0xBFA5F56F60000000, float 0xBFB10F4A00000000, float 0xBFA4AAF920000000, float 0xBFC39FDB20000000], align 64
@__constant_32xf32_0_0 = private constant [32 x float] [float 0xBFA41E6840000000, float 0x3FAA68AAA0000000, float 0xBF95052340000000, float 0x3F97C0C440000000, float 0x3FA1ED6BE0000000, float 0xBF77821160000000, float 0x3FAC4CBC80000000, float 0x3FA9A5CEA0000000, float 0xBFA7C85CA0000000, float 0x3F9DE687C0000000, float 0xBFA323F0C0000000, float 0x3F9BCFCE00000000, float 0xBFA2228580000000, float 0xBF9EA37B20000000, float 0x3F62E12600000000, float 0xBF93BD23C0000000, float 0xBF9B76BB40000000, float 0x3F7824C6C0000000, float 0x3F716A54A0000000, float 0xBFA5378080000000, float 0x3F807EA760000000, float 0xBF909B01A0000000, float 0xBFA3F55260000000, float 0x3FA0022460000000, float 0xBFA4E4F640000000, float 0xBF9DA5C9A0000000, float 0x3FA2A2AB40000000, float 0xBFA5638CE0000000, float 0xBF84285440000000, float 0xBF96A47C60000000, float 0x3FA5BA4360000000, float 0x3F90F645E0000000], align 64
@__constant_32xf32_2 = private constant [32 x float] [float 0xBF953E8D60000000, float 0x3F9F438640000000, float 0xBF68F933C0000000, float 0x3F7E690CA0000000, float 0xBF8D2038E0000000, float 0xBF5F3B7AE0000000, float 0x3F7FECDEE0000000, float 0x3F943E3A60000000, float 0x3F935EA8A0000000, float 0xBF841C6A80000000, float 0xBF95B076A0000000, float 0x3F78A16120000000, float 0xBF75C808E0000000, float 0x3F830D95E0000000, float 0xBF7D598660000000, float 0xBF9BF24E00000000, float 0xBF90C2AE20000000, float 0x3F817D9AE0000000, float 0x3F7DA475A0000000, float 0xBF87CBA880000000, float 0x3F87162460000000, float 0xBF8174FBC0000000, float 0x3F5B16C9E0000000, float 0x3F90B69200000000, float 0xBF95AFCC60000000, float 0xBF707D97A0000000, float 0x3F76BBBD40000000, float 0x3F77CC8A60000000, float 0xBF71A46580000000, float 0xBF713490E0000000, float 0xBF74A22B00000000, float 0xBF8B7796E0000000], align 64
@__constant_64xf32 = private constant [64 x float] [float 0x3F97D2B040000000, float 0x3F741EECE0000000, float 0xBF83893940000000, float 0xBFA15D2F40000000, float 0x3F854B5FE0000000, float 0xBFA3C39800000000, float 0x3FA8E29940000000, float 0xBF978FAB40000000, float 0x3F986ACD80000000, float 0x3F9751B680000000, float 0x3F7BF9C4E0000000, float 0x3FA36E0AA0000000, float 0x3FAC477AC0000000, float 0xBF81B70A00000000, float 0xBFA19961E0000000, float 0x3FA4A924E0000000, float 0xBFA7E47C60000000, float 0xBFA42E8420000000, float 0xBF4CC68260000000, float 0xBF90F04880000000, float 0x3F7D708280000000, float 0x3F8DFC2360000000, float 0x3FAB624540000000, float 0xBFA69EEB00000000, float 0xBF98C26540000000, float 0xBF8680E200000000, float 0xBFA5D743A0000000, float 0x3F972C4500000000, float 0x3FAC2CB400000000, float 0xBF9D261C40000000, float 0x3F9C0C7140000000, float 0xBF9AB88B60000000, float 0x3FA7DE8840000000, float 0xBFAA3FAEE0000000, float 0x3FA51F7500000000, float 0xBFA74482E0000000, float 0x3FA443CC20000000, float 0x3FAC86CD00000000, float 0x3F936F4020000000, float 0xBF53D371A0000000, float 0xBFA8EA5440000000, float 0xBF8D09DCC0000000, float 0xBFAACB8D00000000, float 0x3F95359BE0000000, float 0xBF8E858120000000, float 0xBFA0414DA0000000, float 0xBFA9B14C00000000, float 0xBF8A489AA0000000, float 0x3FA6AA2F60000000, float 0xBFA7853E40000000, float 0x3F81DEAEC0000000, float 0x3F7D74C080000000, float 0x3FA1873FC0000000, float 0xBFA5EC7600000000, float 0xBF71B56260000000, float 0xBF320599C0000000, float 0x3FA52B6E20000000, float 0x3FA1A42220000000, float 0xBFA7F42B20000000, float 0x3FA8D33940000000, float 0x3F62399420000000, float 0x3FA797BC80000000, float 0xBF8BAFB680000000, float 0xBF8FA0EE00000000], align 64
@__constant_64xf32_2 = private constant [64 x float] [float 0x3FB490CA80000000, float 0xBFC19A0840000000, float 0xBF9D377B80000000, float 0xBF6E7B0E40000000, float 0x3FBED43AE0000000, float 0xBFACE8A760000000, float 0x3FB0C09D60000000, float 0xBFBAB1CA60000000, float 0x3F91BF91E0000000, float 0x3FC259D6E0000000, float 0xBFC261FE40000000, float 0x3FB99B27E0000000, float 0x3FA18CA000000000, float 0x3FC5C3BB00000000, float 0x3FB5D20820000000, float 0x3FA7143DE0000000, float 0xBF9A984E40000000, float 0xBFC4ADA080000000, float 0xBFBADA98E0000000, float 0xBFA34E9020000000, float 0x3FB910E720000000, float 0x3F65F70060000000, float 0xBFB3087F60000000, float 0xBFC3531960000000, float 0xBFC55785C0000000, float 0x3FBA4616E0000000, float 0xBFC3179100000000, float 0xBFC33EB220000000, float 0xBF973CA840000000, float 0xBFC4EC6EC0000000, float 0x3FC4531F40000000, float 0x3F999945A0000000, float 0x3F99F852A0000000, float 0xBFAEF02C60000000, float 0xBFA7BB0380000000, float 0xBF4B528600000000, float 0x3FC57F8DC0000000, float 0x3FBF9B9A80000000, float 0xBFC1A74F20000000, float 0xBFB0D0E200000000, float 0x3F90C89CE0000000, float 0xBF96DE5480000000, float 0x3FBCCDFC60000000, float 0x3F9AA05DA0000000, float 0xBF95BF5F40000000, float 0x3FC18BC240000000, float 0xBFA4519960000000, float 0xBF3FACBF40000000, float 0x3FC5AD46C0000000, float 0x3FC1DB75E0000000, float 0x3FC0780460000000, float 0xBFBAE010E0000000, float 0x3FC6542B40000000, float 0xBFA3DBBE80000000, float 0xBFC525DD40000000, float 0x3FBBBEF1C0000000, float 0xBFB94D90A0000000, float 0x3FC242B860000000, float 0xBFC1D6A6A0000000, float 0xBFA33E21A0000000, float 0x3FB05CD160000000, float 0xBFA10190C0000000, float 0x3F8C17F600000000, float 0x3FBBAE8820000000], align 64
@__constant_64xf32_1 = private constant [64 x float] [float 0x3F58812000000000, float 0x3FA05D32E0000000, float 0x3F998BD200000000, float 0xBF90FE5B60000000, float 0xBF952CF7C0000000, float 0xBF9DB49F00000000, float 0xBFA38B1F60000000, float 0x3F708252C0000000, float 0x3F96A6F160000000, float 0xBF4D48D560000000, float 0xBFA02AE6C0000000, float 0xBF9EBE98C0000000, float 0x3F8F15E400000000, float 0x3FA45DCCE0000000, float 0xBF8BCC40C0000000, float 0xBF8F5814C0000000, float 0xBFA26683E0000000, float 0xBF93711900000000, float 0xBF8EE79D60000000, float 0x3F85AC8C00000000, float 0x3F8626E4C0000000, float 0xBF89918EC0000000, float 0x3F93DA65C0000000, float 0xBEFF52AAC0000000, float 0x3F80B0A360000000, float 0x3F99584700000000, float 0xBF8FC258C0000000, float 0x3FA3956800000000, float 0xBF6DB35D60000000, float 0x3F97060800000000, float 0xBFA46C8460000000, float 0x3F71349AC0000000, float 0x3F900C5B60000000, float 0xBF91DABDC0000000, float 0xBF84C49960000000, float 0xBF585B6000000000, float 0x3F6D6E9000000000, float 0xBF9E4147C0000000, float 0xBFA084B5C0000000, float 0xBFA4E90A60000000, float 0x3F6098A000000000, float 0xBFA3698DE0000000, float 0xBFA4927AE0000000, float 0xBF8E701EC0000000, float 0x3FA1A7EFC0000000, float 0xBFA36C2360000000, float 0x3F96A70600000000, float 0x3FA18A9C00000000, float 0x3F7AE142C0000000, float 0xBF93656800000000, float 0x3F9898D200000000, float 0xBF9D1B5260000000, float 0x3F95D313C0000000, float 0x3F9D66A5C0000000, float 0x3F9A3816C0000000, float 0xBF918CEEC0000000, float 0x3F399C0000000000, float 0xBF931B8C60000000, float 0xBFA0D19580000000, float 0x3F6A9BE560000000, float 0x3F9D253DC0000000, float 0x3FA3B215E0000000, float 0xBF8A9376C0000000, float 0x3F914EF200000000], align 64
@__constant_64xf32_0 = private constant [64 x float] [float 0x3F936D1420000000, float 0xBF7DD9D1E0000000, float 0xBF5C9E2760000000, float 0xBF854E0920000000, float 0x3F8930B3A0000000, float 0x3F6B9E8AE0000000, float 0xBF5E0B8840000000, float 0xBF91D89EE0000000, float 0x3F7F9CD0E0000000, float 0x3F94E13DE0000000, float 0xBFA2E47FC0000000, float 0x3F90F259E0000000, float 0x3F5E3EB660000000, float 0x3F7F094B40000000, float 0xBF6E5CD1A0000000, float 0xBF69D2E160000000, float 0xBF7F119100000000, float 0xBF7A05CDE0000000, float 0xBF84235280000000, float 0x3F82066080000000, float 0x3F8AE9BE40000000, float 0xBF8B77D9A0000000, float 0x3F3124D000000000, float 0xBF6D6BFD40000000, float 0xBF947AD320000000, float 0xBF501D0F40000000, float 0xBF87526940000000, float 0xBF85BB09A0000000, float 0xBF88C86100000000, float 0xBF9B5886E0000000, float 0xBF798D1E40000000, float 0xBF87E58560000000, float 0xBF86D81680000000, float 0xBF2D54BA00000000, float 0xBF84D46AE0000000, float 0xBF870D2AE0000000, float 0x3F975219C0000000, float 0x3F92577460000000, float 0xBF901F9420000000, float 0xBF89A3A000000000, float 0x3F48BE9DC0000000, float 0xBF9123FAE0000000, float 0xBF8AEB6D00000000, float 0xBF8C44E460000000, float 0xBF94CD4920000000, float 0x3F760F4FE0000000, float 0x3F4465FF00000000, float 0x3F7F86DDA0000000, float 0x3F998405E0000000, float 0x3F9D07C7E0000000, float 0x3F89D5F340000000, float 0xBF8D519760000000, float 0x3FA4E200C0000000, float 0xBF40A93900000000, float 0xBF869C2120000000, float 0xBF6AA10700000000, float 0xBF922C6CA0000000, float 0x3F8F09A460000000, float 0xBF9126FC60000000, float 0xBF9D553560000000, float 0x3F89053160000000, float 0xBF683C7EC0000000, float 0x3F8FA16400000000, float 0x3F90E70260000000], align 64
@__constant_64xf32_3 = private constant [64 x float] [float 0x3FECCF33E0000000, float 0x3FECD58C80000000, float 0x3FECCF3520000000, float 0x3FECD50800000000, float 0x3FECD1DDA0000000, float 0x3FECD412E0000000, float 0x3FECD17340000000, float 0x3FECD95FE0000000, float 0x3FECD2D040000000, float 0x3FECCEEB20000000, float 0x3FECD14040000000, float 0x3FECD1AAE0000000, float 0x3FECD458A0000000, float 0x3FECD1CCA0000000, float 0x3FECD04060000000, float 0x3FECD73280000000, float 0x3FECD9EA20000000, float 0x3FECD348A0000000, float 0x3FECD26740000000, float 0x3FECDBDB00000000, float 0x3FECD2D880000000, float 0x3FECD442C0000000, float 0x3FECD4A500000000, float 0x3FECD3FDA0000000, float 0x3FECD48200000000, float 0x3FECD15C60000000, float 0x3FECCFCCA0000000, float 0x3FECD06800000000, float 0x3FECD801C0000000, float 0x3FECDA4F60000000, float 0x3FECCF8220000000, float 0x3FECD51880000000, float 0x3FECD1FE00000000, float 0x3FECD27C00000000, float 0x3FECD132E0000000, float 0x3FECD09240000000, float 0x3FECD0DFC0000000, float 0x3FECD43B00000000, float 0x3FECD060C0000000, float 0x3FECD069C0000000, float 0x3FECD85100000000, float 0x3FECD24CE0000000, float 0x3FECD30B00000000, float 0x3FECD367E0000000, float 0x3FECD1F460000000, float 0x3FECCFE6A0000000, float 0x3FECD34FE0000000, float 0x3FECD15780000000, float 0x3FECCF32E0000000, float 0x3FECD134E0000000, float 0x3FECD34300000000, float 0x3FECD0AF80000000, float 0x3FECD8E4C0000000, float 0x3FECDB80E0000000, float 0x3FECD26A20000000, float 0x3FECD116A0000000, float 0x3FECD177A0000000, float 0x3FECD4F3E0000000, float 0x3FECD13320000000, float 0x3FECCFF560000000, float 0x3FECCFF980000000, float 0x3FECD209E0000000, float 0x3FECD4FE40000000, float 0x3FECCEF040000000], align 64
@0 = private constant [14 x i8] c"dronet_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [15 x ptr] [ptr @"main_graph$async_dispatch_0_slow_memcpy", ptr @"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", ptr @"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", ptr @"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", ptr @"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", ptr @"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", ptr @"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", ptr @"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", ptr @"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", ptr @"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", ptr @"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", ptr @"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", ptr @"main_graph$async_dispatch_12_matvec_like_6272_f32", ptr @"main_graph$async_dispatch_13_slow_memcpy", ptr @"main_graph$async_dispatch_14_matvec_like_6272_f32"]
@iree_hal_executable_library_query_v0_attrs = private constant [15 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 1, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [40 x i8] c"main_graph$async_dispatch_0_slow_memcpy\00", align 1
@2 = private constant [52 x i8] c"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32\00", align 1
@3 = private constant [50 x i8] c"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32\00", align 1
@4 = private constant [53 x i8] c"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32\00", align 1
@5 = private constant [56 x i8] c"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32\00", align 1
@6 = private constant [53 x i8] c"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32\00", align 1
@7 = private constant [53 x i8] c"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32\00", align 1
@8 = private constant [56 x i8] c"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32\00", align 1
@9 = private constant [53 x i8] c"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32\00", align 1
@10 = private constant [52 x i8] c"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32\00", align 1
@11 = private constant [56 x i8] c"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32\00", align 1
@12 = private constant [54 x i8] c"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32\00", align 1
@13 = private constant [50 x i8] c"main_graph$async_dispatch_12_matvec_like_6272_f32\00", align 1
@14 = private constant [41 x i8] c"main_graph$async_dispatch_13_slow_memcpy\00", align 1
@15 = private constant [50 x i8] c"main_graph$async_dispatch_14_matvec_like_6272_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [15 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15]
@16 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@17 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@18 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@19 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_3.mlir\00", align 1
@20 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_4.mlir\00", align 1
@21 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_5.mlir\00", align 1
@22 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_6.mlir\00", align 1
@23 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_7.mlir\00", align 1
@24 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_8.mlir\00", align 1
@25 = private constant [135 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_9.mlir\00", align 1
@26 = private constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_10.mlir\00", align 1
@27 = private constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_11.mlir\00", align 1
@28 = private constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_12.mlir\00", align 1
@29 = private constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_13.mlir\00", align 1
@30 = private constant [136 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/dronet/models/configs//configured_module_main_graph$async_dispatch_14.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [15 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @16 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @17 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @18 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @19 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @20 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @21 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @22 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @23 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @24 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 134, ptr @25 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @26 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @27 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @28 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @29 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 135, ptr @30 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [15 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 15, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !31 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !107
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !107
  %6 = load ptr, ptr %5, align 8, !dbg !107
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !108
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !109
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !109
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !109
  %10 = load ptr, ptr %9, align 8, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !110
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !111
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !111
  %13 = zext i32 %12 to i64, !dbg !111
  %14 = sdiv i64 %13, 4, !dbg !111
  %15 = mul i64 %14, 4, !dbg !111
  %16 = icmp ne i64 %13, %15, !dbg !111
  %17 = icmp slt i64 %13, 0, !dbg !111
  %18 = and i1 %16, %17, !dbg !111
  %19 = add i64 %14, -1, !dbg !111
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !111
  %21 = srem i64 %13, 4, !dbg !111
  %22 = icmp slt i64 %21, 0, !dbg !111
  %23 = add nsw i64 %21, 4, !dbg !111
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !111
  %25 = mul nsw i64 %20, 112, !dbg !111
  %26 = mul nsw i64 %24, 56, !dbg !111
  br label %27, !dbg !111

27:                                               ; preds = %46, %3
  %28 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !111
  %29 = icmp slt i64 %28, 112, !dbg !111
  br i1 %29, label %30, label %48, !dbg !111

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %45, %33 ], [ 0, %27 ], !dbg !111
  %32 = icmp slt i64 %31, 56, !dbg !111
  br i1 %32, label %33, label %46, !dbg !111

33:                                               ; preds = %30
  %34 = add i64 %25, %28, !dbg !111
  %35 = add i64 %26, %31, !dbg !111
  %36 = mul i64 %34, 224, !dbg !111
  %37 = add i64 %36, %35, !dbg !111
  %38 = getelementptr float, ptr %6, i64 %37, !dbg !111
  %39 = load <8 x float>, ptr %38, align 4, !dbg !111
  %40 = add i64 %34, 2, !dbg !111
  %41 = add i64 %35, 2, !dbg !111
  %42 = mul i64 %40, 228, !dbg !111
  %43 = add i64 %42, %41, !dbg !111
  %44 = getelementptr float, ptr %10, i64 %43, !dbg !111
  store <8 x float> %39, ptr %44, align 4, !dbg !111
  %45 = add i64 %31, 8, !dbg !111
  br label %30, !dbg !111

46:                                               ; preds = %30
  %47 = add i64 %28, 1, !dbg !111
  br label %27, !dbg !111

48:                                               ; preds = %27
  ret i32 0, !dbg !112
}

define internal i32 @"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !113 {
  %4 = alloca float, i64 8, align 64, !dbg !114
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !115
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !115
  %7 = load ptr, ptr %6, align 8, !dbg !115
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !115
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !116
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !116
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !116
  %11 = load ptr, ptr %10, align 8, !dbg !116
  %12 = getelementptr float, ptr %11, i64 23808, !dbg !116
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !116
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !117
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !117
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !117
  %16 = load ptr, ptr %15, align 8, !dbg !117
  %17 = getelementptr float, ptr %16, i64 51984, !dbg !117
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !117
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !118
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !118
  %20 = zext i32 %19 to i64, !dbg !118
  %21 = sdiv i64 %20, 4, !dbg !118
  %22 = mul i64 %21, 4, !dbg !118
  %23 = icmp ne i64 %20, %22, !dbg !118
  %24 = icmp slt i64 %20, 0, !dbg !118
  %25 = and i1 %23, %24, !dbg !118
  %26 = add i64 %21, -1, !dbg !118
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !118
  %28 = srem i64 %20, 4, !dbg !118
  %29 = icmp slt i64 %28, 0, !dbg !118
  %30 = add nsw i64 %28, 4, !dbg !118
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !118
  %32 = mul nsw i64 %27, 28, !dbg !118
  %33 = mul nsw i64 %31, 28, !dbg !118
  br label %34, !dbg !118

34:                                               ; preds = %115, %3
  %35 = phi i64 [ %116, %115 ], [ 0, %3 ], !dbg !118
  %36 = icmp slt i64 %35, 32, !dbg !118
  br i1 %36, label %37, label %117, !dbg !118

37:                                               ; preds = %34
  %38 = getelementptr float, ptr @__constant_32xf32, i64 %35, !dbg !119
  %39 = load <1 x float>, ptr %38, align 4, !dbg !119
  br label %40, !dbg !118

40:                                               ; preds = %113, %37
  %41 = phi i64 [ %114, %113 ], [ 0, %37 ], !dbg !118
  %42 = icmp slt i64 %41, 28, !dbg !118
  br i1 %42, label %43, label %115, !dbg !118

43:                                               ; preds = %111, %40
  %44 = phi i64 [ %112, %111 ], [ 0, %40 ], !dbg !118
  %45 = icmp slt i64 %44, 28, !dbg !118
  br i1 %45, label %46, label %113, !dbg !118

46:                                               ; preds = %43
  %47 = sub i64 28, %44, !dbg !118
  %48 = icmp slt i64 %47, 8, !dbg !118
  %49 = select i1 %48, i64 %47, i64 8, !dbg !118
  %50 = trunc i64 %49 to i32, !dbg !120
  %51 = insertelement <8 x i32> poison, i32 %50, i32 0, !dbg !120
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !120
  %53 = icmp sgt <8 x i32> %52, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !120
  %54 = getelementptr float, ptr %4, i64 0, !dbg !120
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %54, i32 4, <8 x i1> %53), !dbg !120
  %55 = mul nsw i64 %44, 2, !dbg !118
  %56 = mul nsw i64 %31, 56, !dbg !118
  %57 = add i64 %55, %56, !dbg !118
  br label %58, !dbg !118

58:                                               ; preds = %94, %46
  %59 = phi i64 [ %95, %94 ], [ 0, %46 ], !dbg !118
  %60 = icmp slt i64 %59, 5, !dbg !118
  br i1 %60, label %61, label %96, !dbg !118

61:                                               ; preds = %58
  %62 = mul nsw i64 %41, 2, !dbg !118
  %63 = mul nsw i64 %27, 56, !dbg !118
  %64 = add i64 %62, %63, !dbg !118
  %65 = add i64 %64, %59, !dbg !118
  br label %66, !dbg !118

66:                                               ; preds = %92, %61
  %67 = phi i64 [ %93, %92 ], [ 0, %61 ], !dbg !118
  %68 = icmp slt i64 %67, %49, !dbg !118
  br i1 %68, label %69, label %94, !dbg !118

69:                                               ; preds = %72, %66
  %70 = phi i64 [ %91, %72 ], [ 0, %66 ], !dbg !118
  %71 = icmp slt i64 %70, 5, !dbg !118
  br i1 %71, label %72, label %92, !dbg !118

72:                                               ; preds = %69
  %73 = mul nsw i64 %67, 2, !dbg !118
  %74 = add i64 %57, %73, !dbg !118
  %75 = add i64 %74, %70, !dbg !118
  %76 = mul nuw nsw i64 %65, 228, !dbg !118
  %77 = add nuw nsw i64 %76, %75, !dbg !118
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !118
  %79 = load float, ptr %78, align 4, !dbg !118
  %80 = mul nuw nsw i64 %35, 25, !dbg !118
  %81 = mul nuw nsw i64 %59, 5, !dbg !118
  %82 = add nuw nsw i64 %80, %81, !dbg !118
  %83 = add nuw nsw i64 %82, %70, !dbg !118
  %84 = getelementptr inbounds nuw float, ptr %12, i64 %83, !dbg !118
  %85 = load float, ptr %84, align 4, !dbg !118
  %86 = add nuw nsw i64 0, %67, !dbg !118
  %87 = getelementptr inbounds nuw float, ptr %4, i64 %86, !dbg !118
  %88 = load float, ptr %87, align 4, !dbg !118
  %89 = fmul contract float %79, %85, !dbg !121
  %90 = fadd contract float %88, %89, !dbg !122
  store float %90, ptr %87, align 4, !dbg !118
  %91 = add i64 %70, 1, !dbg !118
  br label %69, !dbg !118

92:                                               ; preds = %69
  %93 = add i64 %67, 1, !dbg !118
  br label %66, !dbg !118

94:                                               ; preds = %66
  %95 = add i64 %59, 1, !dbg !118
  br label %58, !dbg !118

96:                                               ; preds = %58
  %97 = icmp sgt i64 %49, 0, !dbg !119
  br i1 %97, label %98, label %111, !dbg !119

98:                                               ; preds = %96
  %99 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %54, i32 4, <8 x i1> %53, <8 x float> poison), !dbg !119
  %100 = extractelement <1 x float> %39, i64 0, !dbg !123
  %101 = insertelement <8 x float> poison, float %100, i32 0, !dbg !123
  %102 = shufflevector <8 x float> %101, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !123
  %103 = fadd contract <8 x float> %99, %102, !dbg !123
  %104 = add i64 %32, %41, !dbg !123
  %105 = add i64 %33, %44, !dbg !123
  %106 = mul i64 %35, 12544, !dbg !123
  %107 = mul i64 %104, 112, !dbg !123
  %108 = add i64 %106, %107, !dbg !123
  %109 = add i64 %108, %105, !dbg !123
  %110 = getelementptr float, ptr %17, i64 %109, !dbg !123
  call void @llvm.masked.store.v8f32.p0(<8 x float> %103, ptr %110, i32 4, <8 x i1> %53), !dbg !123
  br label %111, !dbg !119

111:                                              ; preds = %98, %96
  %112 = add i64 %44, 8, !dbg !118
  br label %43, !dbg !118

113:                                              ; preds = %43
  %114 = add i64 %41, 1, !dbg !118
  br label %40, !dbg !118

115:                                              ; preds = %40
  %116 = add i64 %35, 1, !dbg !118
  br label %34, !dbg !118

117:                                              ; preds = %34
  ret i32 0, !dbg !124
}

define internal i32 @"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !125 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !126
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !126
  %6 = load ptr, ptr %5, align 8, !dbg !126
  %7 = getelementptr float, ptr %6, i64 51984, !dbg !126
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !126
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !127
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !127
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !127
  %11 = load ptr, ptr %10, align 8, !dbg !127
  %12 = getelementptr float, ptr %11, i64 453392, !dbg !127
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !127
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !128
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !128
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !128
  %16 = load ptr, ptr %15, align 8, !dbg !128
  %17 = getelementptr float, ptr %16, i64 557360, !dbg !128
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !128
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !129
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !129
  %20 = zext i32 %19 to i64, !dbg !129
  %21 = sdiv i64 %20, 25, !dbg !129
  %22 = mul i64 %21, 25, !dbg !129
  %23 = icmp ne i64 %20, %22, !dbg !129
  %24 = icmp slt i64 %20, 0, !dbg !129
  %25 = and i1 %23, %24, !dbg !129
  %26 = add i64 %21, -1, !dbg !129
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !129
  %28 = srem i64 %20, 25, !dbg !129
  %29 = icmp slt i64 %28, 0, !dbg !129
  %30 = add nsw i64 %28, 25, !dbg !129
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !129
  %32 = sdiv i64 %31, 5, !dbg !129
  %33 = srem i64 %20, 5, !dbg !129
  %34 = icmp slt i64 %33, 0, !dbg !129
  %35 = add nsw i64 %33, 5, !dbg !129
  %36 = select i1 %34, i64 %35, i64 %33, !dbg !129
  %37 = mul nsw i64 %27, 8, !dbg !129
  %38 = mul nsw i64 %32, 11, !dbg !129
  %39 = mul nsw i64 %36, 11, !dbg !129
  %40 = call float @llvm.sqrt.f32(float 0x3FECCCE1C0000000), !dbg !130
  %41 = fdiv float 1.000000e+00, %40, !dbg !130
  br label %42, !dbg !129

42:                                               ; preds = %138, %3
  %43 = phi i64 [ %139, %138 ], [ 0, %3 ], !dbg !129
  %44 = icmp slt i64 %43, 8, !dbg !129
  br i1 %44, label %45, label %140, !dbg !129

45:                                               ; preds = %42
  %46 = add i64 %43, %37, !dbg !129
  %47 = getelementptr float, ptr @__constant_32xf32_0, i64 %46, !dbg !131
  %48 = load <1 x float>, ptr %47, align 4, !dbg !131
  br label %49, !dbg !129

49:                                               ; preds = %136, %45
  %50 = phi i64 [ %137, %136 ], [ 0, %45 ], !dbg !129
  %51 = icmp slt i64 %50, 11, !dbg !129
  br i1 %51, label %52, label %138, !dbg !129

52:                                               ; preds = %134, %49
  %53 = phi i64 [ %135, %134 ], [ 0, %49 ], !dbg !129
  %54 = icmp slt i64 %53, 11, !dbg !129
  br i1 %54, label %55, label %136, !dbg !129

55:                                               ; preds = %52
  %56 = sub i64 11, %53, !dbg !129
  %57 = icmp slt i64 %56, 8, !dbg !129
  %58 = select i1 %57, i64 %56, i64 8, !dbg !129
  %59 = trunc i64 %58 to i32, !dbg !132
  %60 = insertelement <8 x i32> poison, i32 %59, i32 0, !dbg !132
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !132
  %62 = icmp sgt <8 x i32> %61, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !132
  %63 = add i64 %38, %50, !dbg !132
  %64 = add i64 %39, %53, !dbg !132
  %65 = mul i64 %46, 3025, !dbg !132
  %66 = mul i64 %63, 55, !dbg !132
  %67 = add i64 %65, %66, !dbg !132
  %68 = add i64 %67, %64, !dbg !132
  %69 = getelementptr float, ptr %17, i64 %68, !dbg !132
  call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 0xFFF0000000000000), ptr %69, i32 4, <8 x i1> %62), !dbg !132
  %70 = mul nsw i64 %53, 2, !dbg !129
  %71 = mul nsw i64 %36, 22, !dbg !129
  %72 = add i64 %70, %71, !dbg !129
  br label %73, !dbg !129

73:                                               ; preds = %111, %55
  %74 = phi i64 [ %112, %111 ], [ 0, %55 ], !dbg !129
  %75 = icmp slt i64 %74, 3, !dbg !129
  br i1 %75, label %76, label %113, !dbg !129

76:                                               ; preds = %73
  %77 = mul nsw i64 %50, 2, !dbg !129
  %78 = mul nsw i64 %32, 22, !dbg !129
  %79 = add i64 %77, %78, !dbg !129
  %80 = add i64 %79, %74, !dbg !129
  br label %81, !dbg !129

81:                                               ; preds = %109, %76
  %82 = phi i64 [ %110, %109 ], [ 0, %76 ], !dbg !129
  %83 = icmp slt i64 %82, %58, !dbg !129
  br i1 %83, label %84, label %111, !dbg !129

84:                                               ; preds = %87, %81
  %85 = phi i64 [ %108, %87 ], [ 0, %81 ], !dbg !129
  %86 = icmp slt i64 %85, 3, !dbg !129
  br i1 %86, label %87, label %109, !dbg !129

87:                                               ; preds = %84
  %88 = mul nsw i64 %82, 2, !dbg !129
  %89 = add i64 %72, %88, !dbg !129
  %90 = add i64 %89, %85, !dbg !129
  %91 = mul nuw nsw i64 %46, 12544, !dbg !129
  %92 = mul nuw nsw i64 %80, 112, !dbg !129
  %93 = add nuw nsw i64 %91, %92, !dbg !129
  %94 = add nuw nsw i64 %93, %90, !dbg !129
  %95 = getelementptr inbounds nuw float, ptr %7, i64 %94, !dbg !129
  %96 = load float, ptr %95, align 4, !dbg !129
  %97 = add i64 %64, %82, !dbg !129
  %98 = mul nuw nsw i64 %46, 3025, !dbg !129
  %99 = mul nuw nsw i64 %63, 55, !dbg !129
  %100 = add nuw nsw i64 %98, %99, !dbg !129
  %101 = add nuw nsw i64 %100, %97, !dbg !129
  %102 = getelementptr inbounds nuw float, ptr %17, i64 %101, !dbg !129
  %103 = load float, ptr %102, align 4, !dbg !129
  %104 = fcmp ugt float %103, %96, !dbg !133
  %105 = select i1 %104, float %103, float %96, !dbg !133
  %106 = fcmp uno float %96, %96, !dbg !133
  %107 = select i1 %106, float %96, float %105, !dbg !133
  store float %107, ptr %102, align 4, !dbg !129
  %108 = add i64 %85, 1, !dbg !129
  br label %84, !dbg !129

109:                                              ; preds = %84
  %110 = add i64 %82, 1, !dbg !129
  br label %81, !dbg !129

111:                                              ; preds = %81
  %112 = add i64 %74, 1, !dbg !129
  br label %73, !dbg !129

113:                                              ; preds = %73
  %114 = icmp sgt i64 %58, 0, !dbg !131
  br i1 %114, label %115, label %134, !dbg !131

115:                                              ; preds = %113
  %116 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %69, i32 4, <8 x i1> %62, <8 x float> poison), !dbg !131
  %117 = extractelement <1 x float> %48, i64 0, !dbg !134
  %118 = insertelement <8 x float> poison, float %117, i32 0, !dbg !134
  %119 = shufflevector <8 x float> %118, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !134
  %120 = fsub contract <8 x float> %116, %119, !dbg !134
  %121 = insertelement <8 x float> poison, float %41, i32 0, !dbg !135
  %122 = shufflevector <8 x float> %121, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !135
  %123 = fmul contract <8 x float> %120, %122, !dbg !135
  %124 = fadd contract <8 x float> %123, zeroinitializer, !dbg !136
  %125 = fcmp ugt <8 x float> %124, zeroinitializer, !dbg !137
  %126 = select <8 x i1> %125, <8 x float> %124, <8 x float> zeroinitializer, !dbg !138
  %127 = add i64 %63, 1, !dbg !138
  %128 = add i64 %64, 1, !dbg !138
  %129 = mul i64 %46, 3249, !dbg !138
  %130 = mul i64 %127, 57, !dbg !138
  %131 = add i64 %129, %130, !dbg !138
  %132 = add i64 %131, %128, !dbg !138
  %133 = getelementptr float, ptr %12, i64 %132, !dbg !138
  call void @llvm.masked.store.v8f32.p0(<8 x float> %126, ptr %133, i32 4, <8 x i1> %62), !dbg !138
  br label %134, !dbg !131

134:                                              ; preds = %115, %113
  %135 = add i64 %53, 8, !dbg !129
  br label %52, !dbg !129

136:                                              ; preds = %52
  %137 = add i64 %50, 1, !dbg !129
  br label %49, !dbg !129

138:                                              ; preds = %49
  %139 = add i64 %43, 1, !dbg !129
  br label %42, !dbg !129

140:                                              ; preds = %42
  ret i32 0, !dbg !139
}

define internal i32 @"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !140 {
  %4 = alloca float, i64 8, align 64, !dbg !141
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !142
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !142
  %7 = load ptr, ptr %6, align 8, !dbg !142
  %8 = getelementptr float, ptr %7, i64 453392, !dbg !142
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !142
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !143
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !143
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !143
  %12 = load ptr, ptr %11, align 8, !dbg !143
  %13 = getelementptr float, ptr %12, i64 218400, !dbg !143
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !143
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !144
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !144
  %16 = getelementptr ptr, ptr %15, i32 2, !dbg !144
  %17 = load ptr, ptr %16, align 8, !dbg !144
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !144
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !145
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !145
  %20 = zext i32 %19 to i64, !dbg !145
  %21 = sdiv i64 %20, 2, !dbg !145
  %22 = mul i64 %21, 2, !dbg !145
  %23 = icmp ne i64 %20, %22, !dbg !145
  %24 = icmp slt i64 %20, 0, !dbg !145
  %25 = and i1 %23, %24, !dbg !145
  %26 = add i64 %21, -1, !dbg !145
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !145
  %28 = srem i64 %20, 2, !dbg !145
  %29 = icmp slt i64 %28, 0, !dbg !145
  %30 = add nsw i64 %28, 2, !dbg !145
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !145
  %32 = mul nsw i64 %27, 4, !dbg !145
  %33 = mul nsw i64 %31, 14, !dbg !145
  br label %34, !dbg !145

34:                                               ; preds = %126, %3
  %35 = phi i64 [ %127, %126 ], [ 0, %3 ], !dbg !145
  %36 = icmp slt i64 %35, 4, !dbg !145
  br i1 %36, label %37, label %128, !dbg !145

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !145
  %39 = getelementptr float, ptr @__constant_32xf32_1, i64 %38, !dbg !146
  %40 = load <1 x float>, ptr %39, align 4, !dbg !146
  br label %41, !dbg !145

41:                                               ; preds = %124, %37
  %42 = phi i64 [ %125, %124 ], [ 0, %37 ], !dbg !145
  %43 = icmp slt i64 %42, 14, !dbg !145
  br i1 %43, label %44, label %126, !dbg !145

44:                                               ; preds = %122, %41
  %45 = phi i64 [ %123, %122 ], [ 0, %41 ], !dbg !145
  %46 = icmp slt i64 %45, 28, !dbg !145
  br i1 %46, label %47, label %124, !dbg !145

47:                                               ; preds = %44
  %48 = sub i64 28, %45, !dbg !145
  %49 = icmp slt i64 %48, 8, !dbg !145
  %50 = select i1 %49, i64 %48, i64 8, !dbg !145
  %51 = trunc i64 %50 to i32, !dbg !147
  %52 = insertelement <8 x i32> poison, i32 %51, i32 0, !dbg !147
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !147
  %54 = icmp sgt <8 x i32> %53, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !147
  %55 = getelementptr float, ptr %4, i64 0, !dbg !147
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %55, i32 4, <8 x i1> %54), !dbg !147
  %56 = mul nsw i64 %45, 2, !dbg !145
  br label %57, !dbg !145

57:                                               ; preds = %102, %47
  %58 = phi i64 [ %103, %102 ], [ 0, %47 ], !dbg !145
  %59 = icmp slt i64 %58, 32, !dbg !145
  br i1 %59, label %60, label %104, !dbg !145

60:                                               ; preds = %100, %57
  %61 = phi i64 [ %101, %100 ], [ 0, %57 ], !dbg !145
  %62 = icmp slt i64 %61, 3, !dbg !145
  br i1 %62, label %63, label %102, !dbg !145

63:                                               ; preds = %60
  %64 = mul nsw i64 %42, 2, !dbg !145
  %65 = mul nsw i64 %31, 28, !dbg !145
  %66 = add i64 %64, %65, !dbg !145
  %67 = add i64 %66, %61, !dbg !145
  br label %68, !dbg !145

68:                                               ; preds = %98, %63
  %69 = phi i64 [ %99, %98 ], [ 0, %63 ], !dbg !145
  %70 = icmp slt i64 %69, %50, !dbg !145
  br i1 %70, label %71, label %100, !dbg !145

71:                                               ; preds = %74, %68
  %72 = phi i64 [ %97, %74 ], [ 0, %68 ], !dbg !145
  %73 = icmp slt i64 %72, 3, !dbg !145
  br i1 %73, label %74, label %98, !dbg !145

74:                                               ; preds = %71
  %75 = mul nsw i64 %69, 2, !dbg !145
  %76 = add i64 %56, %75, !dbg !145
  %77 = add i64 %76, %72, !dbg !145
  %78 = mul nuw nsw i64 %58, 3249, !dbg !145
  %79 = mul nuw nsw i64 %67, 57, !dbg !145
  %80 = add nuw nsw i64 %78, %79, !dbg !145
  %81 = add nuw nsw i64 %80, %77, !dbg !145
  %82 = getelementptr inbounds nuw float, ptr %8, i64 %81, !dbg !145
  %83 = load float, ptr %82, align 4, !dbg !145
  %84 = mul nuw nsw i64 %38, 288, !dbg !145
  %85 = mul nuw nsw i64 %58, 9, !dbg !145
  %86 = add nuw nsw i64 %84, %85, !dbg !145
  %87 = mul nuw nsw i64 %61, 3, !dbg !145
  %88 = add nuw nsw i64 %86, %87, !dbg !145
  %89 = add nuw nsw i64 %88, %72, !dbg !145
  %90 = getelementptr inbounds nuw float, ptr %13, i64 %89, !dbg !145
  %91 = load float, ptr %90, align 4, !dbg !145
  %92 = add nuw nsw i64 0, %69, !dbg !145
  %93 = getelementptr inbounds nuw float, ptr %4, i64 %92, !dbg !145
  %94 = load float, ptr %93, align 4, !dbg !145
  %95 = fmul contract float %83, %91, !dbg !148
  %96 = fadd contract float %94, %95, !dbg !149
  store float %96, ptr %93, align 4, !dbg !145
  %97 = add i64 %72, 1, !dbg !145
  br label %71, !dbg !145

98:                                               ; preds = %71
  %99 = add i64 %69, 1, !dbg !145
  br label %68, !dbg !145

100:                                              ; preds = %68
  %101 = add i64 %61, 1, !dbg !145
  br label %60, !dbg !145

102:                                              ; preds = %60
  %103 = add i64 %58, 1, !dbg !145
  br label %57, !dbg !145

104:                                              ; preds = %57
  %105 = icmp sgt i64 %50, 0, !dbg !146
  br i1 %105, label %106, label %122, !dbg !146

106:                                              ; preds = %104
  %107 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %55, i32 4, <8 x i1> %54, <8 x float> poison), !dbg !146
  %108 = extractelement <1 x float> %40, i64 0, !dbg !150
  %109 = insertelement <8 x float> poison, float %108, i32 0, !dbg !150
  %110 = shufflevector <8 x float> %109, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !150
  %111 = fadd contract <8 x float> %107, %110, !dbg !150
  %112 = fcmp ugt <8 x float> %111, zeroinitializer, !dbg !151
  %113 = select <8 x i1> %112, <8 x float> %111, <8 x float> zeroinitializer, !dbg !152
  %114 = add i64 %33, %42, !dbg !152
  %115 = add i64 %114, 1, !dbg !152
  %116 = add i64 %45, 1, !dbg !152
  %117 = mul i64 %38, 900, !dbg !152
  %118 = mul i64 %115, 30, !dbg !152
  %119 = add i64 %117, %118, !dbg !152
  %120 = add i64 %119, %116, !dbg !152
  %121 = getelementptr float, ptr %17, i64 %120, !dbg !152
  call void @llvm.masked.store.v8f32.p0(<8 x float> %113, ptr %121, i32 4, <8 x i1> %54), !dbg !152
  br label %122, !dbg !146

122:                                              ; preds = %106, %104
  %123 = add i64 %45, 8, !dbg !145
  br label %44, !dbg !145

124:                                              ; preds = %44
  %125 = add i64 %42, 1, !dbg !145
  br label %41, !dbg !145

126:                                              ; preds = %41
  %127 = add i64 %35, 1, !dbg !145
  br label %34, !dbg !145

128:                                              ; preds = %34
  ret i32 0, !dbg !153
}

define internal i32 @"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !154 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !155
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !155
  %6 = load ptr, ptr %5, align 8, !dbg !155
  %7 = getelementptr float, ptr %6, i64 557360, !dbg !155
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !155
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !156
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !156
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !156
  %11 = load ptr, ptr %10, align 8, !dbg !156
  %12 = getelementptr float, ptr %11, i64 22784, !dbg !156
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !156
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !157
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !157
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !157
  %16 = load ptr, ptr %15, align 8, !dbg !157
  %17 = getelementptr float, ptr %16, i64 28800, !dbg !157
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !157
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !158
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !158
  %20 = zext i32 %19 to i64, !dbg !158
  %21 = sdiv i64 %20, 2, !dbg !158
  %22 = mul i64 %21, 2, !dbg !158
  %23 = icmp ne i64 %20, %22, !dbg !158
  %24 = icmp slt i64 %20, 0, !dbg !158
  %25 = and i1 %23, %24, !dbg !158
  %26 = add i64 %21, -1, !dbg !158
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !158
  %28 = srem i64 %20, 2, !dbg !158
  %29 = icmp slt i64 %28, 0, !dbg !158
  %30 = add nsw i64 %28, 2, !dbg !158
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !158
  %32 = mul nsw i64 %27, 4, !dbg !158
  %33 = mul nsw i64 %31, 14, !dbg !158
  br label %34, !dbg !158

34:                                               ; preds = %162, %3
  %35 = phi i64 [ %163, %162 ], [ 0, %3 ], !dbg !158
  %36 = icmp slt i64 %35, 4, !dbg !158
  br i1 %36, label %37, label %164, !dbg !158

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !158
  br label %39, !dbg !158

39:                                               ; preds = %160, %37
  %40 = phi i64 [ %161, %160 ], [ 0, %37 ], !dbg !158
  %41 = icmp slt i64 %40, 14, !dbg !158
  br i1 %41, label %42, label %162, !dbg !158

42:                                               ; preds = %151, %39
  %43 = phi i64 [ %159, %151 ], [ 0, %39 ], !dbg !158
  %44 = icmp slt i64 %43, 28, !dbg !158
  br i1 %44, label %45, label %160, !dbg !158

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %150, %49 ], [ 0, %42 ], !dbg !158
  %47 = phi <1 x float> [ %149, %49 ], [ zeroinitializer, %42 ], !dbg !158
  %48 = icmp slt i64 %46, 32, !dbg !158
  br i1 %48, label %49, label %151, !dbg !158

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !158
  %51 = mul nsw i64 %50, 2, !dbg !158
  %52 = mul nsw i64 %43, 2, !dbg !158
  %53 = mul nuw nsw i64 %46, 3025, !dbg !158
  %54 = mul nuw nsw i64 %51, 55, !dbg !158
  %55 = add nuw nsw i64 %53, %54, !dbg !158
  %56 = add nuw nsw i64 %55, %52, !dbg !158
  %57 = getelementptr inbounds nuw float, ptr %7, i64 %56, !dbg !158
  %58 = load float, ptr %57, align 4, !dbg !158
  %59 = insertelement <1 x float> poison, float %58, i32 0, !dbg !158
  %60 = add i64 %46, 1, !dbg !158
  %61 = mul nuw nsw i64 %60, 3025, !dbg !158
  %62 = add nuw nsw i64 %61, %54, !dbg !158
  %63 = add nuw nsw i64 %62, %52, !dbg !158
  %64 = getelementptr inbounds nuw float, ptr %7, i64 %63, !dbg !158
  %65 = load float, ptr %64, align 4, !dbg !158
  %66 = insertelement <1 x float> poison, float %65, i32 0, !dbg !158
  %67 = add i64 %46, 2, !dbg !158
  %68 = mul nuw nsw i64 %67, 3025, !dbg !158
  %69 = add nuw nsw i64 %68, %54, !dbg !158
  %70 = add nuw nsw i64 %69, %52, !dbg !158
  %71 = getelementptr inbounds nuw float, ptr %7, i64 %70, !dbg !158
  %72 = load float, ptr %71, align 4, !dbg !158
  %73 = insertelement <1 x float> poison, float %72, i32 0, !dbg !158
  %74 = add i64 %46, 3, !dbg !158
  %75 = mul nuw nsw i64 %74, 3025, !dbg !158
  %76 = add nuw nsw i64 %75, %54, !dbg !158
  %77 = add nuw nsw i64 %76, %52, !dbg !158
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !158
  %79 = load float, ptr %78, align 4, !dbg !158
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !158
  %81 = add i64 %46, 4, !dbg !158
  %82 = mul nuw nsw i64 %81, 3025, !dbg !158
  %83 = add nuw nsw i64 %82, %54, !dbg !158
  %84 = add nuw nsw i64 %83, %52, !dbg !158
  %85 = getelementptr inbounds nuw float, ptr %7, i64 %84, !dbg !158
  %86 = load float, ptr %85, align 4, !dbg !158
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !158
  %88 = add i64 %46, 5, !dbg !158
  %89 = mul nuw nsw i64 %88, 3025, !dbg !158
  %90 = add nuw nsw i64 %89, %54, !dbg !158
  %91 = add nuw nsw i64 %90, %52, !dbg !158
  %92 = getelementptr inbounds nuw float, ptr %7, i64 %91, !dbg !158
  %93 = load float, ptr %92, align 4, !dbg !158
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !158
  %95 = add i64 %46, 6, !dbg !158
  %96 = mul nuw nsw i64 %95, 3025, !dbg !158
  %97 = add nuw nsw i64 %96, %54, !dbg !158
  %98 = add nuw nsw i64 %97, %52, !dbg !158
  %99 = getelementptr inbounds nuw float, ptr %7, i64 %98, !dbg !158
  %100 = load float, ptr %99, align 4, !dbg !158
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !158
  %102 = add i64 %46, 7, !dbg !158
  %103 = mul nuw nsw i64 %102, 3025, !dbg !158
  %104 = add nuw nsw i64 %103, %54, !dbg !158
  %105 = add nuw nsw i64 %104, %52, !dbg !158
  %106 = getelementptr inbounds nuw float, ptr %7, i64 %105, !dbg !158
  %107 = load float, ptr %106, align 4, !dbg !158
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !158
  %109 = mul nuw nsw i64 %38, 32, !dbg !159
  %110 = add nuw nsw i64 %109, %46, !dbg !159
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !159
  %112 = load float, ptr %111, align 4, !dbg !159
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !159
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %113, <1 x float> %47), !dbg !159
  %115 = add nuw nsw i64 %109, %60, !dbg !159
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !159
  %117 = load float, ptr %116, align 4, !dbg !159
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !159
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %118, <1 x float> %114), !dbg !159
  %120 = add nuw nsw i64 %109, %67, !dbg !159
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !159
  %122 = load float, ptr %121, align 4, !dbg !159
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !159
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %123, <1 x float> %119), !dbg !159
  %125 = add nuw nsw i64 %109, %74, !dbg !159
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !159
  %127 = load float, ptr %126, align 4, !dbg !159
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !159
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %128, <1 x float> %124), !dbg !159
  %130 = add nuw nsw i64 %109, %81, !dbg !159
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !159
  %132 = load float, ptr %131, align 4, !dbg !159
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !159
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %133, <1 x float> %129), !dbg !159
  %135 = add nuw nsw i64 %109, %88, !dbg !159
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !159
  %137 = load float, ptr %136, align 4, !dbg !159
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !159
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %94, <1 x float> %138, <1 x float> %134), !dbg !159
  %140 = add nuw nsw i64 %109, %95, !dbg !159
  %141 = getelementptr inbounds nuw float, ptr %12, i64 %140, !dbg !159
  %142 = load float, ptr %141, align 4, !dbg !159
  %143 = insertelement <1 x float> poison, float %142, i32 0, !dbg !159
  %144 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %101, <1 x float> %143, <1 x float> %139), !dbg !159
  %145 = add nuw nsw i64 %109, %102, !dbg !159
  %146 = getelementptr inbounds nuw float, ptr %12, i64 %145, !dbg !159
  %147 = load float, ptr %146, align 4, !dbg !159
  %148 = insertelement <1 x float> poison, float %147, i32 0, !dbg !159
  %149 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %148, <1 x float> %144), !dbg !159
  %150 = add i64 %46, 8, !dbg !158
  br label %45, !dbg !158

151:                                              ; preds = %45
  %152 = extractelement <1 x float> %47, i64 0, !dbg !158
  %153 = add i64 %33, %40, !dbg !158
  %154 = mul nuw nsw i64 %38, 784, !dbg !158
  %155 = mul nuw nsw i64 %153, 28, !dbg !158
  %156 = add nuw nsw i64 %154, %155, !dbg !158
  %157 = add nuw nsw i64 %156, %43, !dbg !158
  %158 = getelementptr inbounds nuw float, ptr %17, i64 %157, !dbg !158
  store float %152, ptr %158, align 4, !dbg !158
  %159 = add i64 %43, 1, !dbg !158
  br label %42, !dbg !158

160:                                              ; preds = %42
  %161 = add i64 %40, 1, !dbg !158
  br label %39, !dbg !158

162:                                              ; preds = %39
  %163 = add i64 %35, 1, !dbg !158
  br label %34, !dbg !158

164:                                              ; preds = %34
  ret i32 0, !dbg !160
}

define internal i32 @"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !161 {
  %4 = alloca float, i64 8, align 64, !dbg !162
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !163
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !163
  %7 = load ptr, ptr %6, align 8, !dbg !163
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !163
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !164
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !164
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !164
  %11 = load ptr, ptr %10, align 8, !dbg !164
  %12 = getelementptr float, ptr %11, i64 24608, !dbg !164
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !164
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !165
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !165
  %15 = load ptr, ptr %14, align 8, !dbg !165
  %16 = getelementptr float, ptr %15, i64 28800, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !165
  %17 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !166
  %18 = extractvalue %iree_hal_executable_dispatch_state_v0_t %17, 10, !dbg !166
  %19 = getelementptr ptr, ptr %18, i32 2, !dbg !166
  %20 = load ptr, ptr %19, align 8, !dbg !166
  %21 = getelementptr float, ptr %20, i64 53888, !dbg !166
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 64) ], !dbg !166
  %22 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !167
  %23 = extractvalue %iree_hal_executable_dispatch_state_v0_t %22, 10, !dbg !167
  %24 = getelementptr ptr, ptr %23, i32 3, !dbg !167
  %25 = load ptr, ptr %24, align 8, !dbg !167
  %26 = getelementptr float, ptr %25, i64 82688, !dbg !167
  call void @llvm.assume(i1 true) [ "align"(ptr %26, i64 64) ], !dbg !167
  %27 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !168
  %28 = extractvalue %iree_hal_executable_workgroup_state_v0_t %27, 0, !dbg !168
  %29 = zext i32 %28 to i64, !dbg !168
  %30 = sdiv i64 %29, 2, !dbg !168
  %31 = mul i64 %30, 2, !dbg !168
  %32 = icmp ne i64 %29, %31, !dbg !168
  %33 = icmp slt i64 %29, 0, !dbg !168
  %34 = and i1 %32, %33, !dbg !168
  %35 = add i64 %30, -1, !dbg !168
  %36 = select i1 %34, i64 %35, i64 %30, !dbg !168
  %37 = srem i64 %29, 2, !dbg !168
  %38 = icmp slt i64 %37, 0, !dbg !168
  %39 = add nsw i64 %37, 2, !dbg !168
  %40 = select i1 %38, i64 %39, i64 %37, !dbg !168
  %41 = mul nsw i64 %36, 4, !dbg !168
  %42 = mul nsw i64 %40, 14, !dbg !168
  %43 = call float @llvm.sqrt.f32(float 0x3FECCCE1C0000000), !dbg !169
  %44 = fdiv float 1.000000e+00, %43, !dbg !169
  br label %45, !dbg !168

45:                                               ; preds = %154, %3
  %46 = phi i64 [ %155, %154 ], [ 0, %3 ], !dbg !168
  %47 = icmp slt i64 %46, 4, !dbg !168
  br i1 %47, label %48, label %156, !dbg !168

48:                                               ; preds = %45
  %49 = add i64 %46, %41, !dbg !168
  %50 = getelementptr float, ptr @__constant_32xf32_1_0, i64 %49, !dbg !170
  %51 = load <1 x float>, ptr %50, align 4, !dbg !170
  %52 = getelementptr float, ptr @__constant_32xf32_0_0, i64 %49, !dbg !170
  %53 = load <1 x float>, ptr %52, align 4, !dbg !170
  %54 = getelementptr float, ptr @__constant_32xf32_2, i64 %49, !dbg !170
  %55 = load <1 x float>, ptr %54, align 4, !dbg !170
  br label %56, !dbg !168

56:                                               ; preds = %152, %48
  %57 = phi i64 [ %153, %152 ], [ 0, %48 ], !dbg !168
  %58 = icmp slt i64 %57, 14, !dbg !168
  br i1 %58, label %59, label %154, !dbg !168

59:                                               ; preds = %115, %56
  %60 = phi i64 [ %151, %115 ], [ 0, %56 ], !dbg !168
  %61 = icmp slt i64 %60, 28, !dbg !168
  br i1 %61, label %62, label %152, !dbg !168

62:                                               ; preds = %59
  %63 = sub i64 28, %60, !dbg !168
  %64 = icmp slt i64 %63, 8, !dbg !168
  %65 = select i1 %64, i64 %63, i64 8, !dbg !168
  %66 = trunc i64 %65 to i32, !dbg !171
  %67 = insertelement <8 x i32> poison, i32 %66, i32 0, !dbg !171
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !171
  %69 = icmp sgt <8 x i32> %68, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !171
  %70 = getelementptr float, ptr %4, i64 0, !dbg !171
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %70, i32 4, <8 x i1> %69), !dbg !171
  br label %71, !dbg !168

71:                                               ; preds = %113, %62
  %72 = phi i64 [ %114, %113 ], [ 0, %62 ], !dbg !168
  %73 = icmp slt i64 %72, 32, !dbg !168
  br i1 %73, label %74, label %115, !dbg !168

74:                                               ; preds = %111, %71
  %75 = phi i64 [ %112, %111 ], [ 0, %71 ], !dbg !168
  %76 = icmp slt i64 %75, 3, !dbg !168
  br i1 %76, label %77, label %113, !dbg !168

77:                                               ; preds = %74
  %78 = add i64 %75, %57, !dbg !168
  %79 = add i64 %78, %42, !dbg !168
  br label %80, !dbg !168

80:                                               ; preds = %109, %77
  %81 = phi i64 [ %110, %109 ], [ 0, %77 ], !dbg !168
  %82 = icmp slt i64 %81, %65, !dbg !168
  br i1 %82, label %83, label %111, !dbg !168

83:                                               ; preds = %86, %80
  %84 = phi i64 [ %108, %86 ], [ 0, %80 ], !dbg !168
  %85 = icmp slt i64 %84, 3, !dbg !168
  br i1 %85, label %86, label %109, !dbg !168

86:                                               ; preds = %83
  %87 = add i64 %60, %81, !dbg !168
  %88 = add i64 %87, %84, !dbg !168
  %89 = mul nuw nsw i64 %72, 900, !dbg !168
  %90 = mul nuw nsw i64 %79, 30, !dbg !168
  %91 = add nuw nsw i64 %89, %90, !dbg !168
  %92 = add nuw nsw i64 %91, %88, !dbg !168
  %93 = getelementptr inbounds nuw float, ptr %7, i64 %92, !dbg !168
  %94 = load float, ptr %93, align 4, !dbg !168
  %95 = mul nuw nsw i64 %49, 288, !dbg !168
  %96 = mul nuw nsw i64 %72, 9, !dbg !168
  %97 = add nuw nsw i64 %95, %96, !dbg !168
  %98 = mul nuw nsw i64 %75, 3, !dbg !168
  %99 = add nuw nsw i64 %97, %98, !dbg !168
  %100 = add nuw nsw i64 %99, %84, !dbg !168
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !168
  %102 = load float, ptr %101, align 4, !dbg !168
  %103 = add nuw nsw i64 0, %81, !dbg !168
  %104 = getelementptr inbounds nuw float, ptr %4, i64 %103, !dbg !168
  %105 = load float, ptr %104, align 4, !dbg !168
  %106 = fmul contract float %94, %102, !dbg !172
  %107 = fadd contract float %105, %106, !dbg !173
  store float %107, ptr %104, align 4, !dbg !168
  %108 = add i64 %84, 1, !dbg !168
  br label %83, !dbg !168

109:                                              ; preds = %83
  %110 = add i64 %81, 1, !dbg !168
  br label %80, !dbg !168

111:                                              ; preds = %80
  %112 = add i64 %75, 1, !dbg !168
  br label %74, !dbg !168

113:                                              ; preds = %74
  %114 = add i64 %72, 1, !dbg !168
  br label %71, !dbg !168

115:                                              ; preds = %71
  %116 = add i64 %42, %57, !dbg !170
  %117 = mul i64 %49, 784, !dbg !170
  %118 = mul i64 %116, 28, !dbg !170
  %119 = add i64 %117, %118, !dbg !170
  %120 = add i64 %119, %60, !dbg !170
  %121 = getelementptr float, ptr %16, i64 %120, !dbg !170
  %122 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %121, i32 4, <8 x i1> %69, <8 x float> poison), !dbg !170
  %123 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %70, i32 4, <8 x i1> %69, <8 x float> poison), !dbg !170
  %124 = extractelement <1 x float> %53, i64 0, !dbg !174
  %125 = insertelement <8 x float> poison, float %124, i32 0, !dbg !174
  %126 = shufflevector <8 x float> %125, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !174
  %127 = fadd contract <8 x float> %123, %126, !dbg !174
  %128 = extractelement <1 x float> %51, i64 0, !dbg !175
  %129 = insertelement <8 x float> poison, float %128, i32 0, !dbg !175
  %130 = shufflevector <8 x float> %129, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !175
  %131 = fadd contract <8 x float> %122, %130, !dbg !175
  %132 = fadd contract <8 x float> %131, %127, !dbg !176
  %133 = extractelement <1 x float> %55, i64 0, !dbg !177
  %134 = insertelement <8 x float> poison, float %133, i32 0, !dbg !177
  %135 = shufflevector <8 x float> %134, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !177
  %136 = fsub contract <8 x float> %132, %135, !dbg !177
  %137 = insertelement <8 x float> poison, float %44, i32 0, !dbg !178
  %138 = shufflevector <8 x float> %137, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !178
  %139 = fmul contract <8 x float> %136, %138, !dbg !178
  %140 = fadd contract <8 x float> %139, zeroinitializer, !dbg !179
  %141 = fcmp ugt <8 x float> %140, zeroinitializer, !dbg !180
  %142 = select <8 x i1> %141, <8 x float> %140, <8 x float> zeroinitializer, !dbg !181
  %143 = getelementptr float, ptr %26, i64 %120, !dbg !176
  call void @llvm.masked.store.v8f32.p0(<8 x float> %132, ptr %143, i32 4, <8 x i1> %69), !dbg !176
  %144 = add i64 %116, 1, !dbg !181
  %145 = add i64 %60, 1, !dbg !181
  %146 = mul i64 %49, 900, !dbg !181
  %147 = mul i64 %144, 30, !dbg !181
  %148 = add i64 %146, %147, !dbg !181
  %149 = add i64 %148, %145, !dbg !181
  %150 = getelementptr float, ptr %21, i64 %149, !dbg !181
  call void @llvm.masked.store.v8f32.p0(<8 x float> %142, ptr %150, i32 4, <8 x i1> %69), !dbg !181
  %151 = add i64 %60, 8, !dbg !168
  br label %59, !dbg !168

152:                                              ; preds = %59
  %153 = add i64 %57, 1, !dbg !168
  br label %56, !dbg !168

154:                                              ; preds = %56
  %155 = add i64 %46, 1, !dbg !168
  br label %45, !dbg !168

156:                                              ; preds = %45
  ret i32 0, !dbg !182
}

define internal i32 @"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !183 {
  %4 = alloca float, i64 8, align 64, !dbg !184
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !185
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !185
  %7 = load ptr, ptr %6, align 8, !dbg !185
  %8 = getelementptr float, ptr %7, i64 53888, !dbg !185
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !185
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !186
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !186
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !186
  %12 = load ptr, ptr %11, align 8, !dbg !186
  %13 = getelementptr float, ptr %12, i64 227616, !dbg !186
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !186
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !187
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !187
  %16 = getelementptr ptr, ptr %15, i32 2, !dbg !187
  %17 = load ptr, ptr %16, align 8, !dbg !187
  %18 = getelementptr float, ptr %17, i64 107776, !dbg !187
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !187
  %19 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !188
  %20 = extractvalue %iree_hal_executable_workgroup_state_v0_t %19, 0, !dbg !188
  %21 = zext i32 %20 to i64, !dbg !188
  %22 = sdiv i64 %21, 2, !dbg !188
  %23 = mul i64 %22, 2, !dbg !188
  %24 = icmp ne i64 %21, %23, !dbg !188
  %25 = icmp slt i64 %21, 0, !dbg !188
  %26 = and i1 %24, %25, !dbg !188
  %27 = add i64 %22, -1, !dbg !188
  %28 = select i1 %26, i64 %27, i64 %22, !dbg !188
  %29 = srem i64 %21, 2, !dbg !188
  %30 = icmp slt i64 %29, 0, !dbg !188
  %31 = add nsw i64 %29, 2, !dbg !188
  %32 = select i1 %30, i64 %31, i64 %29, !dbg !188
  %33 = mul nsw i64 %28, 8, !dbg !188
  %34 = mul nsw i64 %32, 7, !dbg !188
  br label %35, !dbg !188

35:                                               ; preds = %127, %3
  %36 = phi i64 [ %128, %127 ], [ 0, %3 ], !dbg !188
  %37 = icmp slt i64 %36, 8, !dbg !188
  br i1 %37, label %38, label %129, !dbg !188

38:                                               ; preds = %35
  %39 = add i64 %36, %33, !dbg !188
  %40 = getelementptr float, ptr @__constant_64xf32, i64 %39, !dbg !189
  %41 = load <1 x float>, ptr %40, align 4, !dbg !189
  br label %42, !dbg !188

42:                                               ; preds = %125, %38
  %43 = phi i64 [ %126, %125 ], [ 0, %38 ], !dbg !188
  %44 = icmp slt i64 %43, 7, !dbg !188
  br i1 %44, label %45, label %127, !dbg !188

45:                                               ; preds = %123, %42
  %46 = phi i64 [ %124, %123 ], [ 0, %42 ], !dbg !188
  %47 = icmp slt i64 %46, 14, !dbg !188
  br i1 %47, label %48, label %125, !dbg !188

48:                                               ; preds = %45
  %49 = sub i64 14, %46, !dbg !188
  %50 = icmp slt i64 %49, 8, !dbg !188
  %51 = select i1 %50, i64 %49, i64 8, !dbg !188
  %52 = trunc i64 %51 to i32, !dbg !190
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !190
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !190
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !190
  %56 = getelementptr float, ptr %4, i64 0, !dbg !190
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !190
  %57 = mul nsw i64 %46, 2, !dbg !188
  br label %58, !dbg !188

58:                                               ; preds = %103, %48
  %59 = phi i64 [ %104, %103 ], [ 0, %48 ], !dbg !188
  %60 = icmp slt i64 %59, 32, !dbg !188
  br i1 %60, label %61, label %105, !dbg !188

61:                                               ; preds = %101, %58
  %62 = phi i64 [ %102, %101 ], [ 0, %58 ], !dbg !188
  %63 = icmp slt i64 %62, 3, !dbg !188
  br i1 %63, label %64, label %103, !dbg !188

64:                                               ; preds = %61
  %65 = mul nsw i64 %43, 2, !dbg !188
  %66 = mul nsw i64 %32, 14, !dbg !188
  %67 = add i64 %65, %66, !dbg !188
  %68 = add i64 %67, %62, !dbg !188
  br label %69, !dbg !188

69:                                               ; preds = %99, %64
  %70 = phi i64 [ %100, %99 ], [ 0, %64 ], !dbg !188
  %71 = icmp slt i64 %70, %51, !dbg !188
  br i1 %71, label %72, label %101, !dbg !188

72:                                               ; preds = %75, %69
  %73 = phi i64 [ %98, %75 ], [ 0, %69 ], !dbg !188
  %74 = icmp slt i64 %73, 3, !dbg !188
  br i1 %74, label %75, label %99, !dbg !188

75:                                               ; preds = %72
  %76 = mul nsw i64 %70, 2, !dbg !188
  %77 = add i64 %57, %76, !dbg !188
  %78 = add i64 %77, %73, !dbg !188
  %79 = mul nuw nsw i64 %59, 900, !dbg !188
  %80 = mul nuw nsw i64 %68, 30, !dbg !188
  %81 = add nuw nsw i64 %79, %80, !dbg !188
  %82 = add nuw nsw i64 %81, %78, !dbg !188
  %83 = getelementptr inbounds nuw float, ptr %8, i64 %82, !dbg !188
  %84 = load float, ptr %83, align 4, !dbg !188
  %85 = mul nuw nsw i64 %39, 288, !dbg !188
  %86 = mul nuw nsw i64 %59, 9, !dbg !188
  %87 = add nuw nsw i64 %85, %86, !dbg !188
  %88 = mul nuw nsw i64 %62, 3, !dbg !188
  %89 = add nuw nsw i64 %87, %88, !dbg !188
  %90 = add nuw nsw i64 %89, %73, !dbg !188
  %91 = getelementptr inbounds nuw float, ptr %13, i64 %90, !dbg !188
  %92 = load float, ptr %91, align 4, !dbg !188
  %93 = add nuw nsw i64 0, %70, !dbg !188
  %94 = getelementptr inbounds nuw float, ptr %4, i64 %93, !dbg !188
  %95 = load float, ptr %94, align 4, !dbg !188
  %96 = fmul contract float %84, %92, !dbg !191
  %97 = fadd contract float %95, %96, !dbg !192
  store float %97, ptr %94, align 4, !dbg !188
  %98 = add i64 %73, 1, !dbg !188
  br label %72, !dbg !188

99:                                               ; preds = %72
  %100 = add i64 %70, 1, !dbg !188
  br label %69, !dbg !188

101:                                              ; preds = %69
  %102 = add i64 %62, 1, !dbg !188
  br label %61, !dbg !188

103:                                              ; preds = %61
  %104 = add i64 %59, 1, !dbg !188
  br label %58, !dbg !188

105:                                              ; preds = %58
  %106 = icmp sgt i64 %51, 0, !dbg !189
  br i1 %106, label %107, label %123, !dbg !189

107:                                              ; preds = %105
  %108 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %56, i32 4, <8 x i1> %55, <8 x float> poison), !dbg !189
  %109 = extractelement <1 x float> %41, i64 0, !dbg !193
  %110 = insertelement <8 x float> poison, float %109, i32 0, !dbg !193
  %111 = shufflevector <8 x float> %110, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !193
  %112 = fadd contract <8 x float> %108, %111, !dbg !193
  %113 = fcmp ugt <8 x float> %112, zeroinitializer, !dbg !194
  %114 = select <8 x i1> %113, <8 x float> %112, <8 x float> zeroinitializer, !dbg !195
  %115 = add i64 %34, %43, !dbg !195
  %116 = add i64 %115, 1, !dbg !195
  %117 = add i64 %46, 1, !dbg !195
  %118 = mul i64 %39, 256, !dbg !195
  %119 = mul i64 %116, 16, !dbg !195
  %120 = add i64 %118, %119, !dbg !195
  %121 = add i64 %120, %117, !dbg !195
  %122 = getelementptr float, ptr %18, i64 %121, !dbg !195
  call void @llvm.masked.store.v8f32.p0(<8 x float> %114, ptr %122, i32 4, <8 x i1> %55), !dbg !195
  br label %123, !dbg !189

123:                                              ; preds = %107, %105
  %124 = add i64 %46, 8, !dbg !188
  br label %45, !dbg !188

125:                                              ; preds = %45
  %126 = add i64 %43, 1, !dbg !188
  br label %42, !dbg !188

127:                                              ; preds = %42
  %128 = add i64 %36, 1, !dbg !188
  br label %35, !dbg !188

129:                                              ; preds = %35
  ret i32 0, !dbg !196
}

define internal i32 @"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !197 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !198
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !198
  %6 = load ptr, ptr %5, align 8, !dbg !198
  %7 = getelementptr float, ptr %6, i64 82688, !dbg !198
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !198
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !199
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !199
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !199
  %11 = load ptr, ptr %10, align 8, !dbg !199
  %12 = getelementptr float, ptr %11, i64 20736, !dbg !199
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !199
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !200
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !200
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !200
  %16 = load ptr, ptr %15, align 8, !dbg !200
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !200
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !201
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !201
  %19 = zext i32 %18 to i64, !dbg !201
  %20 = sdiv i64 %19, 2, !dbg !201
  %21 = mul i64 %20, 2, !dbg !201
  %22 = icmp ne i64 %19, %21, !dbg !201
  %23 = icmp slt i64 %19, 0, !dbg !201
  %24 = and i1 %22, %23, !dbg !201
  %25 = add i64 %20, -1, !dbg !201
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !201
  %27 = srem i64 %19, 2, !dbg !201
  %28 = icmp slt i64 %27, 0, !dbg !201
  %29 = add nsw i64 %27, 2, !dbg !201
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !201
  %31 = mul nsw i64 %26, 8, !dbg !201
  %32 = mul nsw i64 %30, 7, !dbg !201
  br label %33, !dbg !201

33:                                               ; preds = %161, %3
  %34 = phi i64 [ %162, %161 ], [ 0, %3 ], !dbg !201
  %35 = icmp slt i64 %34, 8, !dbg !201
  br i1 %35, label %36, label %163, !dbg !201

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !201
  br label %38, !dbg !201

38:                                               ; preds = %159, %36
  %39 = phi i64 [ %160, %159 ], [ 0, %36 ], !dbg !201
  %40 = icmp slt i64 %39, 7, !dbg !201
  br i1 %40, label %41, label %161, !dbg !201

41:                                               ; preds = %150, %38
  %42 = phi i64 [ %158, %150 ], [ 0, %38 ], !dbg !201
  %43 = icmp slt i64 %42, 14, !dbg !201
  br i1 %43, label %44, label %159, !dbg !201

44:                                               ; preds = %48, %41
  %45 = phi i64 [ %149, %48 ], [ 0, %41 ], !dbg !201
  %46 = phi <1 x float> [ %148, %48 ], [ zeroinitializer, %41 ], !dbg !201
  %47 = icmp slt i64 %45, 32, !dbg !201
  br i1 %47, label %48, label %150, !dbg !201

48:                                               ; preds = %44
  %49 = add i64 %39, %32, !dbg !201
  %50 = mul nsw i64 %49, 2, !dbg !201
  %51 = mul nsw i64 %42, 2, !dbg !201
  %52 = mul nuw nsw i64 %45, 784, !dbg !201
  %53 = mul nuw nsw i64 %50, 28, !dbg !201
  %54 = add nuw nsw i64 %52, %53, !dbg !201
  %55 = add nuw nsw i64 %54, %51, !dbg !201
  %56 = getelementptr inbounds nuw float, ptr %7, i64 %55, !dbg !201
  %57 = load float, ptr %56, align 4, !dbg !201
  %58 = insertelement <1 x float> poison, float %57, i32 0, !dbg !201
  %59 = add i64 %45, 1, !dbg !201
  %60 = mul nuw nsw i64 %59, 784, !dbg !201
  %61 = add nuw nsw i64 %60, %53, !dbg !201
  %62 = add nuw nsw i64 %61, %51, !dbg !201
  %63 = getelementptr inbounds nuw float, ptr %7, i64 %62, !dbg !201
  %64 = load float, ptr %63, align 4, !dbg !201
  %65 = insertelement <1 x float> poison, float %64, i32 0, !dbg !201
  %66 = add i64 %45, 2, !dbg !201
  %67 = mul nuw nsw i64 %66, 784, !dbg !201
  %68 = add nuw nsw i64 %67, %53, !dbg !201
  %69 = add nuw nsw i64 %68, %51, !dbg !201
  %70 = getelementptr inbounds nuw float, ptr %7, i64 %69, !dbg !201
  %71 = load float, ptr %70, align 4, !dbg !201
  %72 = insertelement <1 x float> poison, float %71, i32 0, !dbg !201
  %73 = add i64 %45, 3, !dbg !201
  %74 = mul nuw nsw i64 %73, 784, !dbg !201
  %75 = add nuw nsw i64 %74, %53, !dbg !201
  %76 = add nuw nsw i64 %75, %51, !dbg !201
  %77 = getelementptr inbounds nuw float, ptr %7, i64 %76, !dbg !201
  %78 = load float, ptr %77, align 4, !dbg !201
  %79 = insertelement <1 x float> poison, float %78, i32 0, !dbg !201
  %80 = add i64 %45, 4, !dbg !201
  %81 = mul nuw nsw i64 %80, 784, !dbg !201
  %82 = add nuw nsw i64 %81, %53, !dbg !201
  %83 = add nuw nsw i64 %82, %51, !dbg !201
  %84 = getelementptr inbounds nuw float, ptr %7, i64 %83, !dbg !201
  %85 = load float, ptr %84, align 4, !dbg !201
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !201
  %87 = add i64 %45, 5, !dbg !201
  %88 = mul nuw nsw i64 %87, 784, !dbg !201
  %89 = add nuw nsw i64 %88, %53, !dbg !201
  %90 = add nuw nsw i64 %89, %51, !dbg !201
  %91 = getelementptr inbounds nuw float, ptr %7, i64 %90, !dbg !201
  %92 = load float, ptr %91, align 4, !dbg !201
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !201
  %94 = add i64 %45, 6, !dbg !201
  %95 = mul nuw nsw i64 %94, 784, !dbg !201
  %96 = add nuw nsw i64 %95, %53, !dbg !201
  %97 = add nuw nsw i64 %96, %51, !dbg !201
  %98 = getelementptr inbounds nuw float, ptr %7, i64 %97, !dbg !201
  %99 = load float, ptr %98, align 4, !dbg !201
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !201
  %101 = add i64 %45, 7, !dbg !201
  %102 = mul nuw nsw i64 %101, 784, !dbg !201
  %103 = add nuw nsw i64 %102, %53, !dbg !201
  %104 = add nuw nsw i64 %103, %51, !dbg !201
  %105 = getelementptr inbounds nuw float, ptr %7, i64 %104, !dbg !201
  %106 = load float, ptr %105, align 4, !dbg !201
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !201
  %108 = mul nuw nsw i64 %37, 32, !dbg !202
  %109 = add nuw nsw i64 %108, %45, !dbg !202
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !202
  %111 = load float, ptr %110, align 4, !dbg !202
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !202
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %112, <1 x float> %46), !dbg !202
  %114 = add nuw nsw i64 %108, %59, !dbg !202
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !202
  %116 = load float, ptr %115, align 4, !dbg !202
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !202
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %65, <1 x float> %117, <1 x float> %113), !dbg !202
  %119 = add nuw nsw i64 %108, %66, !dbg !202
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !202
  %121 = load float, ptr %120, align 4, !dbg !202
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !202
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %122, <1 x float> %118), !dbg !202
  %124 = add nuw nsw i64 %108, %73, !dbg !202
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !202
  %126 = load float, ptr %125, align 4, !dbg !202
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !202
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %127, <1 x float> %123), !dbg !202
  %129 = add nuw nsw i64 %108, %80, !dbg !202
  %130 = getelementptr inbounds nuw float, ptr %12, i64 %129, !dbg !202
  %131 = load float, ptr %130, align 4, !dbg !202
  %132 = insertelement <1 x float> poison, float %131, i32 0, !dbg !202
  %133 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %132, <1 x float> %128), !dbg !202
  %134 = add nuw nsw i64 %108, %87, !dbg !202
  %135 = getelementptr inbounds nuw float, ptr %12, i64 %134, !dbg !202
  %136 = load float, ptr %135, align 4, !dbg !202
  %137 = insertelement <1 x float> poison, float %136, i32 0, !dbg !202
  %138 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %93, <1 x float> %137, <1 x float> %133), !dbg !202
  %139 = add nuw nsw i64 %108, %94, !dbg !202
  %140 = getelementptr inbounds nuw float, ptr %12, i64 %139, !dbg !202
  %141 = load float, ptr %140, align 4, !dbg !202
  %142 = insertelement <1 x float> poison, float %141, i32 0, !dbg !202
  %143 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %100, <1 x float> %142, <1 x float> %138), !dbg !202
  %144 = add nuw nsw i64 %108, %101, !dbg !202
  %145 = getelementptr inbounds nuw float, ptr %12, i64 %144, !dbg !202
  %146 = load float, ptr %145, align 4, !dbg !202
  %147 = insertelement <1 x float> poison, float %146, i32 0, !dbg !202
  %148 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %107, <1 x float> %147, <1 x float> %143), !dbg !202
  %149 = add i64 %45, 8, !dbg !201
  br label %44, !dbg !201

150:                                              ; preds = %44
  %151 = extractelement <1 x float> %46, i64 0, !dbg !201
  %152 = add i64 %32, %39, !dbg !201
  %153 = mul nuw nsw i64 %37, 196, !dbg !201
  %154 = mul nuw nsw i64 %152, 14, !dbg !201
  %155 = add nuw nsw i64 %153, %154, !dbg !201
  %156 = add nuw nsw i64 %155, %42, !dbg !201
  %157 = getelementptr inbounds nuw float, ptr %16, i64 %156, !dbg !201
  store float %151, ptr %157, align 4, !dbg !201
  %158 = add i64 %42, 1, !dbg !201
  br label %41, !dbg !201

159:                                              ; preds = %41
  %160 = add i64 %39, 1, !dbg !201
  br label %38, !dbg !201

161:                                              ; preds = %38
  %162 = add i64 %34, 1, !dbg !201
  br label %33, !dbg !201

163:                                              ; preds = %33
  ret i32 0, !dbg !203
}

define internal i32 @"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !204 {
  %4 = alloca float, i64 8, align 64, !dbg !205
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !206
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !206
  %7 = load ptr, ptr %6, align 8, !dbg !206
  %8 = getelementptr float, ptr %7, i64 107776, !dbg !206
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !206
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !207
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !207
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !207
  %12 = load ptr, ptr %11, align 8, !dbg !207
  %13 = getelementptr float, ptr %12, i64 33824, !dbg !207
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !207
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !208
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !208
  %16 = load ptr, ptr %15, align 8, !dbg !208
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !208
  %17 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !209
  %18 = extractvalue %iree_hal_executable_dispatch_state_v0_t %17, 10, !dbg !209
  %19 = getelementptr ptr, ptr %18, i32 2, !dbg !209
  %20 = load ptr, ptr %19, align 8, !dbg !209
  %21 = getelementptr float, ptr %20, i64 12544, !dbg !209
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 64) ], !dbg !209
  %22 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !210
  %23 = extractvalue %iree_hal_executable_dispatch_state_v0_t %22, 10, !dbg !210
  %24 = getelementptr ptr, ptr %23, i32 3, !dbg !210
  %25 = load ptr, ptr %24, align 8, !dbg !210
  %26 = getelementptr float, ptr %25, i64 28928, !dbg !210
  call void @llvm.assume(i1 true) [ "align"(ptr %26, i64 64) ], !dbg !210
  %27 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !211
  %28 = extractvalue %iree_hal_executable_workgroup_state_v0_t %27, 0, !dbg !211
  %29 = zext i32 %28 to i64, !dbg !211
  %30 = sdiv i64 %29, 2, !dbg !211
  %31 = mul i64 %30, 2, !dbg !211
  %32 = icmp ne i64 %29, %31, !dbg !211
  %33 = icmp slt i64 %29, 0, !dbg !211
  %34 = and i1 %32, %33, !dbg !211
  %35 = add i64 %30, -1, !dbg !211
  %36 = select i1 %34, i64 %35, i64 %30, !dbg !211
  %37 = srem i64 %29, 2, !dbg !211
  %38 = icmp slt i64 %37, 0, !dbg !211
  %39 = add nsw i64 %37, 2, !dbg !211
  %40 = select i1 %38, i64 %39, i64 %37, !dbg !211
  %41 = mul nsw i64 %36, 8, !dbg !211
  %42 = mul nsw i64 %40, 7, !dbg !211
  br label %43, !dbg !211

43:                                               ; preds = %158, %3
  %44 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !211
  %45 = icmp slt i64 %44, 8, !dbg !211
  br i1 %45, label %46, label %160, !dbg !211

46:                                               ; preds = %43
  %47 = add i64 %44, %41, !dbg !211
  %48 = getelementptr float, ptr @__constant_64xf32_2, i64 %47, !dbg !212
  %49 = load <1 x float>, ptr %48, align 4, !dbg !212
  %50 = getelementptr float, ptr @__constant_64xf32_1, i64 %47, !dbg !212
  %51 = load <1 x float>, ptr %50, align 4, !dbg !212
  %52 = getelementptr float, ptr @__constant_64xf32_0, i64 %47, !dbg !212
  %53 = load <1 x float>, ptr %52, align 4, !dbg !212
  %54 = getelementptr float, ptr @__constant_64xf32_3, i64 %47, !dbg !212
  %55 = load <1 x float>, ptr %54, align 4, !dbg !212
  %56 = fadd contract <1 x float> %55, splat (float 0x3EE4F8B580000000), !dbg !213
  %57 = call <1 x float> @llvm.sqrt.v1f32(<1 x float> %56), !dbg !214
  %58 = fdiv <1 x float> splat (float 1.000000e+00), %57, !dbg !214
  br label %59, !dbg !211

59:                                               ; preds = %156, %46
  %60 = phi i64 [ %157, %156 ], [ 0, %46 ], !dbg !211
  %61 = icmp slt i64 %60, 7, !dbg !211
  br i1 %61, label %62, label %158, !dbg !211

62:                                               ; preds = %118, %59
  %63 = phi i64 [ %155, %118 ], [ 0, %59 ], !dbg !211
  %64 = icmp slt i64 %63, 14, !dbg !211
  br i1 %64, label %65, label %156, !dbg !211

65:                                               ; preds = %62
  %66 = sub i64 14, %63, !dbg !211
  %67 = icmp slt i64 %66, 8, !dbg !211
  %68 = select i1 %67, i64 %66, i64 8, !dbg !211
  %69 = trunc i64 %68 to i32, !dbg !215
  %70 = insertelement <8 x i32> poison, i32 %69, i32 0, !dbg !215
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !215
  %72 = icmp sgt <8 x i32> %71, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !215
  %73 = getelementptr float, ptr %4, i64 0, !dbg !215
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %73, i32 4, <8 x i1> %72), !dbg !215
  br label %74, !dbg !211

74:                                               ; preds = %116, %65
  %75 = phi i64 [ %117, %116 ], [ 0, %65 ], !dbg !211
  %76 = icmp slt i64 %75, 64, !dbg !211
  br i1 %76, label %77, label %118, !dbg !211

77:                                               ; preds = %114, %74
  %78 = phi i64 [ %115, %114 ], [ 0, %74 ], !dbg !211
  %79 = icmp slt i64 %78, 3, !dbg !211
  br i1 %79, label %80, label %116, !dbg !211

80:                                               ; preds = %77
  %81 = add i64 %78, %60, !dbg !211
  %82 = add i64 %81, %42, !dbg !211
  br label %83, !dbg !211

83:                                               ; preds = %112, %80
  %84 = phi i64 [ %113, %112 ], [ 0, %80 ], !dbg !211
  %85 = icmp slt i64 %84, %68, !dbg !211
  br i1 %85, label %86, label %114, !dbg !211

86:                                               ; preds = %89, %83
  %87 = phi i64 [ %111, %89 ], [ 0, %83 ], !dbg !211
  %88 = icmp slt i64 %87, 3, !dbg !211
  br i1 %88, label %89, label %112, !dbg !211

89:                                               ; preds = %86
  %90 = add i64 %63, %84, !dbg !211
  %91 = add i64 %90, %87, !dbg !211
  %92 = mul nuw nsw i64 %75, 256, !dbg !211
  %93 = mul nuw nsw i64 %82, 16, !dbg !211
  %94 = add nuw nsw i64 %92, %93, !dbg !211
  %95 = add nuw nsw i64 %94, %91, !dbg !211
  %96 = getelementptr inbounds nuw float, ptr %8, i64 %95, !dbg !211
  %97 = load float, ptr %96, align 4, !dbg !211
  %98 = mul nuw nsw i64 %47, 576, !dbg !211
  %99 = mul nuw nsw i64 %75, 9, !dbg !211
  %100 = add nuw nsw i64 %98, %99, !dbg !211
  %101 = mul nuw nsw i64 %78, 3, !dbg !211
  %102 = add nuw nsw i64 %100, %101, !dbg !211
  %103 = add nuw nsw i64 %102, %87, !dbg !211
  %104 = getelementptr inbounds nuw float, ptr %13, i64 %103, !dbg !211
  %105 = load float, ptr %104, align 4, !dbg !211
  %106 = add nuw nsw i64 0, %84, !dbg !211
  %107 = getelementptr inbounds nuw float, ptr %4, i64 %106, !dbg !211
  %108 = load float, ptr %107, align 4, !dbg !211
  %109 = fmul contract float %97, %105, !dbg !216
  %110 = fadd contract float %108, %109, !dbg !217
  store float %110, ptr %107, align 4, !dbg !211
  %111 = add i64 %87, 1, !dbg !211
  br label %86, !dbg !211

112:                                              ; preds = %86
  %113 = add i64 %84, 1, !dbg !211
  br label %83, !dbg !211

114:                                              ; preds = %83
  %115 = add i64 %78, 1, !dbg !211
  br label %77, !dbg !211

116:                                              ; preds = %77
  %117 = add i64 %75, 1, !dbg !211
  br label %74, !dbg !211

118:                                              ; preds = %74
  %119 = add i64 %42, %60, !dbg !212
  %120 = mul i64 %47, 196, !dbg !212
  %121 = mul i64 %119, 14, !dbg !212
  %122 = add i64 %120, %121, !dbg !212
  %123 = add i64 %122, %63, !dbg !212
  %124 = getelementptr float, ptr %16, i64 %123, !dbg !212
  %125 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %124, i32 4, <8 x i1> %72, <8 x float> poison), !dbg !212
  %126 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %73, i32 4, <8 x i1> %72, <8 x float> poison), !dbg !212
  %127 = extractelement <1 x float> %51, i64 0, !dbg !218
  %128 = insertelement <8 x float> poison, float %127, i32 0, !dbg !218
  %129 = shufflevector <8 x float> %128, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !218
  %130 = fadd contract <8 x float> %126, %129, !dbg !218
  %131 = extractelement <1 x float> %49, i64 0, !dbg !219
  %132 = insertelement <8 x float> poison, float %131, i32 0, !dbg !219
  %133 = shufflevector <8 x float> %132, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !219
  %134 = fadd contract <8 x float> %125, %133, !dbg !219
  %135 = fadd contract <8 x float> %134, %130, !dbg !220
  %136 = extractelement <1 x float> %53, i64 0, !dbg !221
  %137 = insertelement <8 x float> poison, float %136, i32 0, !dbg !221
  %138 = shufflevector <8 x float> %137, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !221
  %139 = fsub contract <8 x float> %135, %138, !dbg !221
  %140 = extractelement <1 x float> %58, i64 0, !dbg !222
  %141 = insertelement <8 x float> poison, float %140, i32 0, !dbg !222
  %142 = shufflevector <8 x float> %141, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !222
  %143 = fmul contract <8 x float> %139, %142, !dbg !222
  %144 = fadd contract <8 x float> %143, zeroinitializer, !dbg !223
  %145 = fcmp ugt <8 x float> %144, zeroinitializer, !dbg !224
  %146 = select <8 x i1> %145, <8 x float> %144, <8 x float> zeroinitializer, !dbg !225
  %147 = getelementptr float, ptr %26, i64 %123, !dbg !220
  call void @llvm.masked.store.v8f32.p0(<8 x float> %135, ptr %147, i32 4, <8 x i1> %72), !dbg !220
  %148 = add i64 %119, 1, !dbg !225
  %149 = add i64 %63, 1, !dbg !225
  %150 = mul i64 %47, 256, !dbg !225
  %151 = mul i64 %148, 16, !dbg !225
  %152 = add i64 %150, %151, !dbg !225
  %153 = add i64 %152, %149, !dbg !225
  %154 = getelementptr float, ptr %21, i64 %153, !dbg !225
  call void @llvm.masked.store.v8f32.p0(<8 x float> %146, ptr %154, i32 4, <8 x i1> %72), !dbg !225
  %155 = add i64 %63, 8, !dbg !211
  br label %62, !dbg !211

156:                                              ; preds = %62
  %157 = add i64 %60, 1, !dbg !211
  br label %59, !dbg !211

158:                                              ; preds = %59
  %159 = add i64 %44, 1, !dbg !211
  br label %43, !dbg !211

160:                                              ; preds = %43
  ret i32 0, !dbg !226
}

define internal i32 @"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !227 {
  %4 = alloca float, i64 7, align 64, !dbg !228
  %5 = alloca float, i64 7, align 64, !dbg !229
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !230
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !230
  %8 = load ptr, ptr %7, align 8, !dbg !230
  %9 = getelementptr float, ptr %8, i64 12544, !dbg !230
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !230
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !231
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !231
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !231
  %13 = load ptr, ptr %12, align 8, !dbg !231
  %14 = getelementptr float, ptr %13, i64 246048, !dbg !231
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !231
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !232
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !232
  %17 = getelementptr ptr, ptr %16, i32 1, !dbg !232
  %18 = load ptr, ptr %17, align 8, !dbg !232
  %19 = getelementptr float, ptr %18, i64 319776, !dbg !232
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !232
  %20 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !233
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %20, 10, !dbg !233
  %22 = getelementptr ptr, ptr %21, i32 2, !dbg !233
  %23 = load ptr, ptr %22, align 8, !dbg !233
  %24 = getelementptr float, ptr %23, i64 41472, !dbg !233
  call void @llvm.assume(i1 true) [ "align"(ptr %24, i64 64) ], !dbg !233
  %25 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !228
  %26 = extractvalue %iree_hal_executable_workgroup_state_v0_t %25, 0, !dbg !228
  %27 = zext i32 %26 to i64, !dbg !228
  %28 = sdiv i64 %27, 7, !dbg !228
  %29 = mul i64 %28, 7, !dbg !228
  %30 = icmp ne i64 %27, %29, !dbg !228
  %31 = icmp slt i64 %27, 0, !dbg !228
  %32 = and i1 %30, %31, !dbg !228
  %33 = add i64 %28, -1, !dbg !228
  %34 = select i1 %32, i64 %33, i64 %28, !dbg !228
  %35 = srem i64 %27, 7, !dbg !228
  %36 = icmp slt i64 %35, 0, !dbg !228
  %37 = add nsw i64 %35, 7, !dbg !228
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !228
  %39 = mul nsw i64 %34, 16, !dbg !228
  %40 = getelementptr float, ptr %5, i64 0, !dbg !234
  store <7 x float> zeroinitializer, ptr %40, align 4, !dbg !234
  br label %41, !dbg !228

41:                                               ; preds = %99, %3
  %42 = phi i64 [ %116, %99 ], [ 0, %3 ], !dbg !228
  %43 = icmp slt i64 %42, 16, !dbg !228
  br i1 %43, label %44, label %117, !dbg !228

44:                                               ; preds = %41
  %45 = add i64 %42, %39, !dbg !228
  br label %46, !dbg !228

46:                                               ; preds = %49, %44
  %47 = phi i64 [ %54, %49 ], [ 0, %44 ], !dbg !228
  %48 = icmp slt i64 %47, 7, !dbg !228
  br i1 %48, label %49, label %55, !dbg !228

49:                                               ; preds = %46
  %50 = add nuw nsw i64 0, %47, !dbg !228
  %51 = getelementptr inbounds nuw float, ptr %5, i64 %50, !dbg !228
  %52 = load float, ptr %51, align 4, !dbg !228
  %53 = getelementptr inbounds nuw float, ptr %4, i64 %50, !dbg !228
  store float %52, ptr %53, align 4, !dbg !228
  %54 = add i64 %47, 1, !dbg !228
  br label %46, !dbg !228

55:                                               ; preds = %97, %46
  %56 = phi i64 [ %98, %97 ], [ 0, %46 ], !dbg !228
  %57 = icmp slt i64 %56, 64, !dbg !228
  br i1 %57, label %58, label %99, !dbg !228

58:                                               ; preds = %95, %55
  %59 = phi i64 [ %96, %95 ], [ 0, %55 ], !dbg !228
  %60 = icmp slt i64 %59, 3, !dbg !228
  br i1 %60, label %61, label %97, !dbg !228

61:                                               ; preds = %58
  %62 = mul nsw i64 %38, 2, !dbg !228
  %63 = add i64 %62, %59, !dbg !228
  br label %64, !dbg !228

64:                                               ; preds = %93, %61
  %65 = phi i64 [ %94, %93 ], [ 0, %61 ], !dbg !228
  %66 = icmp slt i64 %65, 7, !dbg !228
  br i1 %66, label %67, label %95, !dbg !228

67:                                               ; preds = %70, %64
  %68 = phi i64 [ %92, %70 ], [ 0, %64 ], !dbg !228
  %69 = icmp slt i64 %68, 3, !dbg !228
  br i1 %69, label %70, label %93, !dbg !228

70:                                               ; preds = %67
  %71 = mul nsw i64 %65, 2, !dbg !228
  %72 = add i64 %71, %68, !dbg !228
  %73 = mul nuw nsw i64 %56, 256, !dbg !228
  %74 = mul nuw nsw i64 %63, 16, !dbg !228
  %75 = add nuw nsw i64 %73, %74, !dbg !228
  %76 = add nuw nsw i64 %75, %72, !dbg !228
  %77 = getelementptr inbounds nuw float, ptr %9, i64 %76, !dbg !228
  %78 = load float, ptr %77, align 4, !dbg !228
  %79 = mul nuw nsw i64 %45, 576, !dbg !228
  %80 = mul nuw nsw i64 %56, 9, !dbg !228
  %81 = add nuw nsw i64 %79, %80, !dbg !228
  %82 = mul nuw nsw i64 %59, 3, !dbg !228
  %83 = add nuw nsw i64 %81, %82, !dbg !228
  %84 = add nuw nsw i64 %83, %68, !dbg !228
  %85 = getelementptr inbounds nuw float, ptr %14, i64 %84, !dbg !228
  %86 = load float, ptr %85, align 4, !dbg !228
  %87 = add nuw nsw i64 0, %65, !dbg !228
  %88 = getelementptr inbounds nuw float, ptr %4, i64 %87, !dbg !228
  %89 = load float, ptr %88, align 4, !dbg !228
  %90 = fmul contract float %78, %86, !dbg !235
  %91 = fadd contract float %89, %90, !dbg !236
  store float %91, ptr %88, align 4, !dbg !228
  %92 = add i64 %68, 1, !dbg !228
  br label %67, !dbg !228

93:                                               ; preds = %67
  %94 = add i64 %65, 1, !dbg !228
  br label %64, !dbg !228

95:                                               ; preds = %64
  %96 = add i64 %59, 1, !dbg !228
  br label %58, !dbg !228

97:                                               ; preds = %58
  %98 = add i64 %56, 1, !dbg !228
  br label %55, !dbg !228

99:                                               ; preds = %55
  %100 = getelementptr float, ptr %4, i64 0, !dbg !237
  %101 = load <7 x float>, ptr %100, align 4, !dbg !237
  %102 = getelementptr float, ptr %19, i64 %45, !dbg !237
  %103 = load <1 x float>, ptr %102, align 4, !dbg !237
  %104 = extractelement <1 x float> %103, i64 0, !dbg !238
  %105 = insertelement <7 x float> poison, float %104, i32 0, !dbg !238
  %106 = shufflevector <7 x float> %105, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !238
  %107 = fadd contract <7 x float> %101, %106, !dbg !238
  %108 = fcmp ugt <7 x float> %107, zeroinitializer, !dbg !239
  %109 = select <7 x i1> %108, <7 x float> %107, <7 x float> zeroinitializer, !dbg !240
  %110 = add i64 %38, 1, !dbg !228
  %111 = mul i64 %45, 81, !dbg !228
  %112 = mul i64 %110, 9, !dbg !228
  %113 = add i64 %111, %112, !dbg !228
  %114 = add i64 %113, 1, !dbg !228
  %115 = getelementptr float, ptr %24, i64 %114, !dbg !228
  store <7 x float> %109, ptr %115, align 4, !dbg !228
  %116 = add i64 %42, 1, !dbg !228
  br label %41, !dbg !228

117:                                              ; preds = %41
  ret i32 0, !dbg !241
}

define internal i32 @"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !242 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !243
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !243
  %6 = load ptr, ptr %5, align 8, !dbg !243
  %7 = getelementptr float, ptr %6, i64 28928, !dbg !243
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !243
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !244
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !244
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !244
  %11 = load ptr, ptr %10, align 8, !dbg !244
  %12 = getelementptr float, ptr %11, i64 12544, !dbg !244
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !244
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !245
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !245
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !245
  %16 = load ptr, ptr %15, align 8, !dbg !245
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !245
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !246
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !246
  %19 = zext i32 %18 to i64, !dbg !246
  %20 = mul nsw i64 %19, 16, !dbg !246
  br label %21, !dbg !246

21:                                               ; preds = %147, %3
  %22 = phi i64 [ %148, %147 ], [ 0, %3 ], !dbg !246
  %23 = icmp slt i64 %22, 16, !dbg !246
  br i1 %23, label %24, label %149, !dbg !246

24:                                               ; preds = %21
  %25 = add i64 %22, %20, !dbg !246
  br label %26, !dbg !246

26:                                               ; preds = %145, %24
  %27 = phi i64 [ %146, %145 ], [ 0, %24 ], !dbg !246
  %28 = icmp slt i64 %27, 7, !dbg !246
  br i1 %28, label %29, label %147, !dbg !246

29:                                               ; preds = %137, %26
  %30 = phi i64 [ %144, %137 ], [ 0, %26 ], !dbg !246
  %31 = icmp slt i64 %30, 7, !dbg !246
  br i1 %31, label %32, label %145, !dbg !246

32:                                               ; preds = %36, %29
  %33 = phi i64 [ %136, %36 ], [ 0, %29 ], !dbg !246
  %34 = phi <1 x float> [ %135, %36 ], [ zeroinitializer, %29 ], !dbg !246
  %35 = icmp slt i64 %33, 64, !dbg !246
  br i1 %35, label %36, label %137, !dbg !246

36:                                               ; preds = %32
  %37 = mul nsw i64 %27, 2, !dbg !246
  %38 = mul nsw i64 %30, 2, !dbg !246
  %39 = mul nuw nsw i64 %33, 196, !dbg !246
  %40 = mul nuw nsw i64 %37, 14, !dbg !246
  %41 = add nuw nsw i64 %39, %40, !dbg !246
  %42 = add nuw nsw i64 %41, %38, !dbg !246
  %43 = getelementptr inbounds nuw float, ptr %7, i64 %42, !dbg !246
  %44 = load float, ptr %43, align 4, !dbg !246
  %45 = insertelement <1 x float> poison, float %44, i32 0, !dbg !246
  %46 = add i64 %33, 1, !dbg !246
  %47 = mul nuw nsw i64 %46, 196, !dbg !246
  %48 = add nuw nsw i64 %47, %40, !dbg !246
  %49 = add nuw nsw i64 %48, %38, !dbg !246
  %50 = getelementptr inbounds nuw float, ptr %7, i64 %49, !dbg !246
  %51 = load float, ptr %50, align 4, !dbg !246
  %52 = insertelement <1 x float> poison, float %51, i32 0, !dbg !246
  %53 = add i64 %33, 2, !dbg !246
  %54 = mul nuw nsw i64 %53, 196, !dbg !246
  %55 = add nuw nsw i64 %54, %40, !dbg !246
  %56 = add nuw nsw i64 %55, %38, !dbg !246
  %57 = getelementptr inbounds nuw float, ptr %7, i64 %56, !dbg !246
  %58 = load float, ptr %57, align 4, !dbg !246
  %59 = insertelement <1 x float> poison, float %58, i32 0, !dbg !246
  %60 = add i64 %33, 3, !dbg !246
  %61 = mul nuw nsw i64 %60, 196, !dbg !246
  %62 = add nuw nsw i64 %61, %40, !dbg !246
  %63 = add nuw nsw i64 %62, %38, !dbg !246
  %64 = getelementptr inbounds nuw float, ptr %7, i64 %63, !dbg !246
  %65 = load float, ptr %64, align 4, !dbg !246
  %66 = insertelement <1 x float> poison, float %65, i32 0, !dbg !246
  %67 = add i64 %33, 4, !dbg !246
  %68 = mul nuw nsw i64 %67, 196, !dbg !246
  %69 = add nuw nsw i64 %68, %40, !dbg !246
  %70 = add nuw nsw i64 %69, %38, !dbg !246
  %71 = getelementptr inbounds nuw float, ptr %7, i64 %70, !dbg !246
  %72 = load float, ptr %71, align 4, !dbg !246
  %73 = insertelement <1 x float> poison, float %72, i32 0, !dbg !246
  %74 = add i64 %33, 5, !dbg !246
  %75 = mul nuw nsw i64 %74, 196, !dbg !246
  %76 = add nuw nsw i64 %75, %40, !dbg !246
  %77 = add nuw nsw i64 %76, %38, !dbg !246
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !246
  %79 = load float, ptr %78, align 4, !dbg !246
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !246
  %81 = add i64 %33, 6, !dbg !246
  %82 = mul nuw nsw i64 %81, 196, !dbg !246
  %83 = add nuw nsw i64 %82, %40, !dbg !246
  %84 = add nuw nsw i64 %83, %38, !dbg !246
  %85 = getelementptr inbounds nuw float, ptr %7, i64 %84, !dbg !246
  %86 = load float, ptr %85, align 4, !dbg !246
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !246
  %88 = add i64 %33, 7, !dbg !246
  %89 = mul nuw nsw i64 %88, 196, !dbg !246
  %90 = add nuw nsw i64 %89, %40, !dbg !246
  %91 = add nuw nsw i64 %90, %38, !dbg !246
  %92 = getelementptr inbounds nuw float, ptr %7, i64 %91, !dbg !246
  %93 = load float, ptr %92, align 4, !dbg !246
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !246
  %95 = mul nuw nsw i64 %25, 64, !dbg !247
  %96 = add nuw nsw i64 %95, %33, !dbg !247
  %97 = getelementptr inbounds nuw float, ptr %12, i64 %96, !dbg !247
  %98 = load float, ptr %97, align 4, !dbg !247
  %99 = insertelement <1 x float> poison, float %98, i32 0, !dbg !247
  %100 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %45, <1 x float> %99, <1 x float> %34), !dbg !247
  %101 = add nuw nsw i64 %95, %46, !dbg !247
  %102 = getelementptr inbounds nuw float, ptr %12, i64 %101, !dbg !247
  %103 = load float, ptr %102, align 4, !dbg !247
  %104 = insertelement <1 x float> poison, float %103, i32 0, !dbg !247
  %105 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %104, <1 x float> %100), !dbg !247
  %106 = add nuw nsw i64 %95, %53, !dbg !247
  %107 = getelementptr inbounds nuw float, ptr %12, i64 %106, !dbg !247
  %108 = load float, ptr %107, align 4, !dbg !247
  %109 = insertelement <1 x float> poison, float %108, i32 0, !dbg !247
  %110 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %109, <1 x float> %105), !dbg !247
  %111 = add nuw nsw i64 %95, %60, !dbg !247
  %112 = getelementptr inbounds nuw float, ptr %12, i64 %111, !dbg !247
  %113 = load float, ptr %112, align 4, !dbg !247
  %114 = insertelement <1 x float> poison, float %113, i32 0, !dbg !247
  %115 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %114, <1 x float> %110), !dbg !247
  %116 = add nuw nsw i64 %95, %67, !dbg !247
  %117 = getelementptr inbounds nuw float, ptr %12, i64 %116, !dbg !247
  %118 = load float, ptr %117, align 4, !dbg !247
  %119 = insertelement <1 x float> poison, float %118, i32 0, !dbg !247
  %120 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %119, <1 x float> %115), !dbg !247
  %121 = add nuw nsw i64 %95, %74, !dbg !247
  %122 = getelementptr inbounds nuw float, ptr %12, i64 %121, !dbg !247
  %123 = load float, ptr %122, align 4, !dbg !247
  %124 = insertelement <1 x float> poison, float %123, i32 0, !dbg !247
  %125 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %124, <1 x float> %120), !dbg !247
  %126 = add nuw nsw i64 %95, %81, !dbg !247
  %127 = getelementptr inbounds nuw float, ptr %12, i64 %126, !dbg !247
  %128 = load float, ptr %127, align 4, !dbg !247
  %129 = insertelement <1 x float> poison, float %128, i32 0, !dbg !247
  %130 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %129, <1 x float> %125), !dbg !247
  %131 = add nuw nsw i64 %95, %88, !dbg !247
  %132 = getelementptr inbounds nuw float, ptr %12, i64 %131, !dbg !247
  %133 = load float, ptr %132, align 4, !dbg !247
  %134 = insertelement <1 x float> poison, float %133, i32 0, !dbg !247
  %135 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %94, <1 x float> %134, <1 x float> %130), !dbg !247
  %136 = add i64 %33, 8, !dbg !246
  br label %32, !dbg !246

137:                                              ; preds = %32
  %138 = extractelement <1 x float> %34, i64 0, !dbg !246
  %139 = mul nuw nsw i64 %25, 49, !dbg !246
  %140 = mul nuw nsw i64 %27, 7, !dbg !246
  %141 = add nuw nsw i64 %139, %140, !dbg !246
  %142 = add nuw nsw i64 %141, %30, !dbg !246
  %143 = getelementptr inbounds nuw float, ptr %16, i64 %142, !dbg !246
  store float %138, ptr %143, align 4, !dbg !246
  %144 = add i64 %30, 1, !dbg !246
  br label %29, !dbg !246

145:                                              ; preds = %29
  %146 = add i64 %27, 1, !dbg !246
  br label %26, !dbg !246

147:                                              ; preds = %26
  %148 = add i64 %22, 1, !dbg !246
  br label %21, !dbg !246

149:                                              ; preds = %21
  ret i32 0, !dbg !248
}

define internal i32 @"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !249 {
  %4 = alloca float, i64 7, align 64, !dbg !250
  %5 = alloca float, i64 7, align 64, !dbg !251
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !252
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !252
  %8 = load ptr, ptr %7, align 8, !dbg !252
  %9 = getelementptr float, ptr %8, i64 41472, !dbg !252
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !252
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !253
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !253
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !253
  %13 = load ptr, ptr %12, align 8, !dbg !253
  %14 = getelementptr float, ptr %13, i64 70688, !dbg !253
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !253
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !254
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !254
  %17 = load ptr, ptr %16, align 8, !dbg !254
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !254
  %18 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !255
  %19 = extractvalue %iree_hal_executable_dispatch_state_v0_t %18, 10, !dbg !255
  %20 = getelementptr ptr, ptr %19, i32 1, !dbg !255
  %21 = load ptr, ptr %20, align 8, !dbg !255
  %22 = getelementptr float, ptr %21, i64 218272, !dbg !255
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !255
  %23 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !256
  %24 = extractvalue %iree_hal_executable_dispatch_state_v0_t %23, 10, !dbg !256
  %25 = getelementptr ptr, ptr %24, i32 1, !dbg !256
  %26 = load ptr, ptr %25, align 8, !dbg !256
  %27 = getelementptr float, ptr %26, i64 218144, !dbg !256
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !256
  %28 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !257
  %29 = extractvalue %iree_hal_executable_dispatch_state_v0_t %28, 10, !dbg !257
  %30 = getelementptr ptr, ptr %29, i32 2, !dbg !257
  %31 = load ptr, ptr %30, align 8, !dbg !257
  %32 = getelementptr float, ptr %31, i64 6272, !dbg !257
  call void @llvm.assume(i1 true) [ "align"(ptr %32, i64 64) ], !dbg !257
  %33 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !250
  %34 = extractvalue %iree_hal_executable_workgroup_state_v0_t %33, 0, !dbg !250
  %35 = zext i32 %34 to i64, !dbg !250
  %36 = sdiv i64 %35, 7, !dbg !250
  %37 = mul i64 %36, 7, !dbg !250
  %38 = icmp ne i64 %35, %37, !dbg !250
  %39 = icmp slt i64 %35, 0, !dbg !250
  %40 = and i1 %38, %39, !dbg !250
  %41 = add i64 %36, -1, !dbg !250
  %42 = select i1 %40, i64 %41, i64 %36, !dbg !250
  %43 = srem i64 %35, 7, !dbg !250
  %44 = icmp slt i64 %43, 0, !dbg !250
  %45 = add nsw i64 %43, 7, !dbg !250
  %46 = select i1 %44, i64 %45, i64 %43, !dbg !250
  %47 = mul nsw i64 %42, 16, !dbg !250
  %48 = getelementptr float, ptr %5, i64 0, !dbg !258
  store <7 x float> zeroinitializer, ptr %48, align 4, !dbg !258
  br label %49, !dbg !250

49:                                               ; preds = %105, %3
  %50 = phi i64 [ %130, %105 ], [ 0, %3 ], !dbg !250
  %51 = icmp slt i64 %50, 16, !dbg !250
  br i1 %51, label %52, label %131, !dbg !250

52:                                               ; preds = %49
  %53 = add i64 %50, %47, !dbg !250
  br label %54, !dbg !250

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %62, %57 ], [ 0, %52 ], !dbg !250
  %56 = icmp slt i64 %55, 7, !dbg !250
  br i1 %56, label %57, label %63, !dbg !250

57:                                               ; preds = %54
  %58 = add nuw nsw i64 0, %55, !dbg !250
  %59 = getelementptr inbounds nuw float, ptr %5, i64 %58, !dbg !250
  %60 = load float, ptr %59, align 4, !dbg !250
  %61 = getelementptr inbounds nuw float, ptr %4, i64 %58, !dbg !250
  store float %60, ptr %61, align 4, !dbg !250
  %62 = add i64 %55, 1, !dbg !250
  br label %54, !dbg !250

63:                                               ; preds = %103, %54
  %64 = phi i64 [ %104, %103 ], [ 0, %54 ], !dbg !250
  %65 = icmp slt i64 %64, 128, !dbg !250
  br i1 %65, label %66, label %105, !dbg !250

66:                                               ; preds = %101, %63
  %67 = phi i64 [ %102, %101 ], [ 0, %63 ], !dbg !250
  %68 = icmp slt i64 %67, 3, !dbg !250
  br i1 %68, label %69, label %103, !dbg !250

69:                                               ; preds = %66
  %70 = add i64 %67, %46, !dbg !250
  br label %71, !dbg !250

71:                                               ; preds = %99, %69
  %72 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !250
  %73 = icmp slt i64 %72, 7, !dbg !250
  br i1 %73, label %74, label %101, !dbg !250

74:                                               ; preds = %77, %71
  %75 = phi i64 [ %98, %77 ], [ 0, %71 ], !dbg !250
  %76 = icmp slt i64 %75, 3, !dbg !250
  br i1 %76, label %77, label %99, !dbg !250

77:                                               ; preds = %74
  %78 = add i64 %72, %75, !dbg !250
  %79 = mul nuw nsw i64 %64, 81, !dbg !250
  %80 = mul nuw nsw i64 %70, 9, !dbg !250
  %81 = add nuw nsw i64 %79, %80, !dbg !250
  %82 = add nuw nsw i64 %81, %78, !dbg !250
  %83 = getelementptr inbounds nuw float, ptr %9, i64 %82, !dbg !250
  %84 = load float, ptr %83, align 4, !dbg !250
  %85 = mul nuw nsw i64 %53, 1152, !dbg !250
  %86 = mul nuw nsw i64 %64, 9, !dbg !250
  %87 = add nuw nsw i64 %85, %86, !dbg !250
  %88 = mul nuw nsw i64 %67, 3, !dbg !250
  %89 = add nuw nsw i64 %87, %88, !dbg !250
  %90 = add nuw nsw i64 %89, %75, !dbg !250
  %91 = getelementptr inbounds nuw float, ptr %14, i64 %90, !dbg !250
  %92 = load float, ptr %91, align 4, !dbg !250
  %93 = add nuw nsw i64 0, %72, !dbg !250
  %94 = getelementptr inbounds nuw float, ptr %4, i64 %93, !dbg !250
  %95 = load float, ptr %94, align 4, !dbg !250
  %96 = fmul contract float %84, %92, !dbg !259
  %97 = fadd contract float %95, %96, !dbg !260
  store float %97, ptr %94, align 4, !dbg !250
  %98 = add i64 %75, 1, !dbg !250
  br label %74, !dbg !250

99:                                               ; preds = %74
  %100 = add i64 %72, 1, !dbg !250
  br label %71, !dbg !250

101:                                              ; preds = %71
  %102 = add i64 %67, 1, !dbg !250
  br label %66, !dbg !250

103:                                              ; preds = %66
  %104 = add i64 %64, 1, !dbg !250
  br label %63, !dbg !250

105:                                              ; preds = %63
  %106 = mul i64 %53, 49, !dbg !261
  %107 = mul i64 %46, 7, !dbg !261
  %108 = add i64 %106, %107, !dbg !261
  %109 = add i64 %108, 0, !dbg !261
  %110 = getelementptr float, ptr %17, i64 %109, !dbg !261
  %111 = load <7 x float>, ptr %110, align 4, !dbg !261
  %112 = getelementptr float, ptr %22, i64 %53, !dbg !261
  %113 = load <1 x float>, ptr %112, align 4, !dbg !261
  %114 = getelementptr float, ptr %4, i64 0, !dbg !261
  %115 = load <7 x float>, ptr %114, align 4, !dbg !261
  %116 = getelementptr float, ptr %27, i64 %53, !dbg !261
  %117 = load <1 x float>, ptr %116, align 4, !dbg !261
  %118 = extractelement <1 x float> %117, i64 0, !dbg !262
  %119 = insertelement <7 x float> poison, float %118, i32 0, !dbg !262
  %120 = shufflevector <7 x float> %119, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !262
  %121 = fadd contract <7 x float> %115, %120, !dbg !262
  %122 = extractelement <1 x float> %113, i64 0, !dbg !263
  %123 = insertelement <7 x float> poison, float %122, i32 0, !dbg !263
  %124 = shufflevector <7 x float> %123, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !263
  %125 = fadd contract <7 x float> %111, %124, !dbg !263
  %126 = fadd contract <7 x float> %125, %121, !dbg !264
  %127 = fcmp ugt <7 x float> %126, zeroinitializer, !dbg !265
  %128 = select <7 x i1> %127, <7 x float> %126, <7 x float> zeroinitializer, !dbg !266
  %129 = getelementptr float, ptr %32, i64 %109, !dbg !250
  store <7 x float> %128, ptr %129, align 4, !dbg !250
  %130 = add i64 %50, 1, !dbg !250
  br label %49, !dbg !250

131:                                              ; preds = %49
  ret i32 0, !dbg !267
}

define internal i32 @"main_graph$async_dispatch_12_matvec_like_6272_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !268 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !269
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !269
  %6 = load ptr, ptr %5, align 8, !dbg !269
  %7 = getelementptr float, ptr %6, i64 6272, !dbg !269
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !269
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !270
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !270
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !270
  %11 = load ptr, ptr %10, align 8, !dbg !270
  %12 = getelementptr float, ptr %11, i64 6272, !dbg !270
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !270
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !271
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !271
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !271
  %16 = load ptr, ptr %15, align 8, !dbg !271
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !271
  br label %17, !dbg !272

17:                                               ; preds = %21, %3
  %18 = phi i64 [ %30, %21 ], [ 0, %3 ], !dbg !272
  %19 = phi <1 x float> [ %29, %21 ], [ zeroinitializer, %3 ], !dbg !272
  %20 = icmp slt i64 %18, 6272, !dbg !272
  br i1 %20, label %21, label %31, !dbg !272

21:                                               ; preds = %17
  %22 = getelementptr float, ptr %7, i64 %18, !dbg !272
  %23 = load <8 x float>, ptr %22, align 4, !dbg !272
  %24 = getelementptr float, ptr %12, i64 %18, !dbg !272
  %25 = load <8 x float>, ptr %24, align 4, !dbg !272
  %26 = extractelement <1 x float> %19, i64 0, !dbg !272
  %27 = fmul contract <8 x float> %23, %25, !dbg !273
  %28 = call reassoc float @llvm.vector.reduce.fadd.v8f32(float %26, <8 x float> %27), !dbg !273
  %29 = insertelement <1 x float> poison, float %28, i32 0, !dbg !272
  %30 = add i64 %18, 8, !dbg !272
  br label %17, !dbg !272

31:                                               ; preds = %17
  %32 = extractelement <1 x float> %19, i64 0, !dbg !274
  %33 = fadd contract float %32, 0x3F7F9B8C40000000, !dbg !275
  store float %33, ptr %16, align 4, !dbg !275
  ret i32 0, !dbg !276
}

define internal i32 @"main_graph$async_dispatch_13_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !277 {
  ret i32 0, !dbg !278
}

define internal i32 @"main_graph$async_dispatch_14_matvec_like_6272_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !279 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !280
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !280
  %6 = load ptr, ptr %5, align 8, !dbg !280
  %7 = getelementptr float, ptr %6, i64 6272, !dbg !280
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !280
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !281
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !281
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !281
  %11 = load ptr, ptr %10, align 8, !dbg !281
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !281
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !282
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !282
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !282
  %15 = load ptr, ptr %14, align 8, !dbg !282
  %16 = getelementptr float, ptr %15, i64 16, !dbg !282
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !282
  br label %17, !dbg !283

17:                                               ; preds = %21, %3
  %18 = phi i64 [ %30, %21 ], [ 0, %3 ], !dbg !283
  %19 = phi <1 x float> [ %29, %21 ], [ zeroinitializer, %3 ], !dbg !283
  %20 = icmp slt i64 %18, 6272, !dbg !283
  br i1 %20, label %21, label %31, !dbg !283

21:                                               ; preds = %17
  %22 = getelementptr float, ptr %7, i64 %18, !dbg !283
  %23 = load <8 x float>, ptr %22, align 4, !dbg !283
  %24 = getelementptr float, ptr %11, i64 %18, !dbg !283
  %25 = load <8 x float>, ptr %24, align 4, !dbg !283
  %26 = extractelement <1 x float> %19, i64 0, !dbg !283
  %27 = fmul contract <8 x float> %23, %25, !dbg !284
  %28 = call reassoc float @llvm.vector.reduce.fadd.v8f32(float %26, <8 x float> %27), !dbg !284
  %29 = insertelement <1 x float> poison, float %28, i32 0, !dbg !283
  %30 = add i64 %18, 8, !dbg !283
  br label %17, !dbg !283

31:                                               ; preds = %17
  %32 = extractelement <1 x float> %19, i64 0, !dbg !285
  %33 = fadd contract float %32, 0x3F57804AC0000000, !dbg !286
  %34 = fneg contract float %33, !dbg !287
  %35 = fcmp uge float %34, 0xC055F33340000000, !dbg !288
  %36 = select i1 %35, float %34, float 0xC055F33340000000, !dbg !288
  %37 = fcmp ule float %36, 0x4056333340000000, !dbg !288
  %38 = select i1 %37, float %36, float 0x4056333340000000, !dbg !288
  %39 = call float @llvm.fma.f32(float %38, float 0x3FF7154760000000, float 5.000000e-01), !dbg !288
  %40 = call float @llvm.floor.f32(float %39), !dbg !288
  %41 = fcmp uge float %40, -1.270000e+02, !dbg !288
  %42 = select i1 %41, float %40, float -1.270000e+02, !dbg !288
  %43 = fcmp ule float %42, 1.270000e+02, !dbg !288
  %44 = select i1 %43, float %42, float 1.270000e+02, !dbg !288
  %45 = call float @llvm.fma.f32(float 0xBFE6300000000000, float %44, float %38), !dbg !288
  %46 = call float @llvm.fma.f32(float 0x3F2BD01060000000, float %44, float %45), !dbg !288
  %47 = call float @llvm.fma.f32(float %46, float 0x3F2A0D2CE0000000, float 0x3F56E879C0000000), !dbg !288
  %48 = call float @llvm.fma.f32(float %47, float %46, float 0x3F81112100000000), !dbg !288
  %49 = call float @llvm.fma.f32(float %48, float %46, float 0x3FA5553820000000), !dbg !288
  %50 = call float @llvm.fma.f32(float %49, float %46, float 0x3FC5555540000000), !dbg !288
  %51 = call float @llvm.fma.f32(float %50, float %46, float 5.000000e-01), !dbg !288
  %52 = fmul contract float %46, %46, !dbg !288
  %53 = call float @llvm.fma.f32(float %51, float %52, float %46), !dbg !288
  %54 = fadd contract float %53, 1.000000e+00, !dbg !288
  %55 = fptosi float %44 to i32, !dbg !288
  %56 = add i32 %55, 127, !dbg !288
  %57 = shl i32 %56, 23, !dbg !288
  %58 = bitcast i32 %57 to float, !dbg !288
  %59 = fmul contract float %54, %58, !dbg !288
  %60 = fadd contract float %59, 1.000000e+00, !dbg !289
  %61 = fdiv float 1.000000e+00, %60, !dbg !290
  store float %61, ptr %16, align 4, !dbg !290
  ret i32 0, !dbg !291
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), i32 immarg, <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.sqrt.v1f32(<1 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30}

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
!31 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_slow_memcpy", linkageName: "main_graph$async_dispatch_0_slow_memcpy", scope: !1, file: !1, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!32 = !DISubroutineType(cc: DW_CC_normal, types: !33)
!33 = !{!34, !35, !66, !95}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !39, file: !39, line: 246, size: 768, elements: !40)
!39 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!40 = !{!41, !49, !52, !55, !57}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, scope: !39, file: !39, line: 227, baseType: !45, size: 2048, elements: !47)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !{!48}
!48 = !DISubrange(count: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !58, offset: 256)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !39, file: !39, line: 227, size: 512, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, scope: !39, file: !39, line: 227, baseType: !62, size: 512, elements: !64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !63)
!63 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !{!65}
!65 = !DISubrange(count: 8)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !39, file: !39, line: 275, size: 384, elements: !70)
!70 = !{!71, !72, !73, !76, !77, !78, !79, !80, !83, !84, !85, !90}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !45, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !45, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !74, size: 16, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !75)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !74, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !45, size: 32, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !45, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !74, size: 16, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !81, size: 8, offset: 176)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !81, size: 8, offset: 184)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !42, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, scope: !39, file: !39, line: 227, baseType: !89, size: 4096, elements: !47)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_array_type, scope: !39, file: !39, line: 227, baseType: !94, size: 4096, elements: !47)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !62)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !39, file: !39, line: 321, size: 256, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !45, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !45, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !74, size: 16, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !74, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !45, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !50, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !45, size: 32, offset: 192)
!107 = !DILocation(line: 10, column: 8, scope: !31)
!108 = !DILocation(line: 11, column: 8, scope: !31)
!109 = !DILocation(line: 12, column: 8, scope: !31)
!110 = !DILocation(line: 13, column: 8, scope: !31)
!111 = !DILocation(line: 15, column: 8, scope: !31)
!112 = !DILocation(line: 19, column: 8, scope: !31)
!113 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", linkageName: "main_graph$async_dispatch_1_conv_32x112x112x5x5_f32", scope: !3, file: !3, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DILocation(line: 20, column: 8, scope: !113)
!115 = !DILocation(line: 14, column: 8, scope: !113)
!116 = !DILocation(line: 15, column: 8, scope: !113)
!117 = !DILocation(line: 16, column: 8, scope: !113)
!118 = !DILocation(line: 21, column: 8, scope: !113)
!119 = !DILocation(line: 27, column: 8, scope: !113)
!120 = !DILocation(line: 9, column: 8, scope: !113)
!121 = !DILocation(line: 23, column: 10, scope: !113)
!122 = !DILocation(line: 24, column: 10, scope: !113)
!123 = !DILocation(line: 29, column: 10, scope: !113)
!124 = !DILocation(line: 33, column: 8, scope: !113)
!125 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", linkageName: "main_graph$async_dispatch_2_conv_32x55x55x3x3_f32", scope: !5, file: !5, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!126 = !DILocation(line: 16, column: 8, scope: !125)
!127 = !DILocation(line: 17, column: 8, scope: !125)
!128 = !DILocation(line: 18, column: 8, scope: !125)
!129 = !DILocation(line: 23, column: 8, scope: !125)
!130 = !DILocation(line: 30, column: 10, scope: !125)
!131 = !DILocation(line: 28, column: 8, scope: !125)
!132 = !DILocation(line: 9, column: 8, scope: !125)
!133 = !DILocation(line: 25, column: 10, scope: !125)
!134 = !DILocation(line: 31, column: 10, scope: !125)
!135 = !DILocation(line: 32, column: 10, scope: !125)
!136 = !DILocation(line: 33, column: 10, scope: !125)
!137 = !DILocation(line: 34, column: 10, scope: !125)
!138 = !DILocation(line: 35, column: 10, scope: !125)
!139 = !DILocation(line: 40, column: 8, scope: !125)
!140 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", scope: !7, file: !7, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
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
!151 = !DILocation(line: 30, column: 10, scope: !140)
!152 = !DILocation(line: 31, column: 10, scope: !140)
!153 = !DILocation(line: 35, column: 8, scope: !140)
!154 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", linkageName: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", scope: !9, file: !9, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!155 = !DILocation(line: 13, column: 8, scope: !154)
!156 = !DILocation(line: 14, column: 8, scope: !154)
!157 = !DILocation(line: 15, column: 8, scope: !154)
!158 = !DILocation(line: 20, column: 8, scope: !154)
!159 = !DILocation(line: 23, column: 10, scope: !154)
!160 = !DILocation(line: 27, column: 8, scope: !154)
!161 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", scope: !11, file: !11, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!162 = !DILocation(line: 28, column: 8, scope: !161)
!163 = !DILocation(line: 19, column: 8, scope: !161)
!164 = !DILocation(line: 20, column: 8, scope: !161)
!165 = !DILocation(line: 21, column: 8, scope: !161)
!166 = !DILocation(line: 22, column: 8, scope: !161)
!167 = !DILocation(line: 23, column: 8, scope: !161)
!168 = !DILocation(line: 29, column: 8, scope: !161)
!169 = !DILocation(line: 40, column: 10, scope: !161)
!170 = !DILocation(line: 35, column: 8, scope: !161)
!171 = !DILocation(line: 10, column: 8, scope: !161)
!172 = !DILocation(line: 31, column: 10, scope: !161)
!173 = !DILocation(line: 32, column: 10, scope: !161)
!174 = !DILocation(line: 37, column: 10, scope: !161)
!175 = !DILocation(line: 38, column: 10, scope: !161)
!176 = !DILocation(line: 39, column: 10, scope: !161)
!177 = !DILocation(line: 41, column: 10, scope: !161)
!178 = !DILocation(line: 42, column: 10, scope: !161)
!179 = !DILocation(line: 43, column: 10, scope: !161)
!180 = !DILocation(line: 44, column: 10, scope: !161)
!181 = !DILocation(line: 45, column: 10, scope: !161)
!182 = !DILocation(line: 50, column: 8, scope: !161)
!183 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", linkageName: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", scope: !13, file: !13, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!184 = !DILocation(line: 20, column: 8, scope: !183)
!185 = !DILocation(line: 14, column: 8, scope: !183)
!186 = !DILocation(line: 15, column: 8, scope: !183)
!187 = !DILocation(line: 16, column: 8, scope: !183)
!188 = !DILocation(line: 21, column: 8, scope: !183)
!189 = !DILocation(line: 27, column: 8, scope: !183)
!190 = !DILocation(line: 9, column: 8, scope: !183)
!191 = !DILocation(line: 23, column: 10, scope: !183)
!192 = !DILocation(line: 24, column: 10, scope: !183)
!193 = !DILocation(line: 29, column: 10, scope: !183)
!194 = !DILocation(line: 30, column: 10, scope: !183)
!195 = !DILocation(line: 31, column: 10, scope: !183)
!196 = !DILocation(line: 35, column: 8, scope: !183)
!197 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", linkageName: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", scope: !15, file: !15, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!198 = !DILocation(line: 13, column: 8, scope: !197)
!199 = !DILocation(line: 14, column: 8, scope: !197)
!200 = !DILocation(line: 15, column: 8, scope: !197)
!201 = !DILocation(line: 20, column: 8, scope: !197)
!202 = !DILocation(line: 23, column: 10, scope: !197)
!203 = !DILocation(line: 27, column: 8, scope: !197)
!204 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", linkageName: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", scope: !17, file: !17, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!205 = !DILocation(line: 29, column: 8, scope: !204)
!206 = !DILocation(line: 20, column: 8, scope: !204)
!207 = !DILocation(line: 21, column: 8, scope: !204)
!208 = !DILocation(line: 22, column: 8, scope: !204)
!209 = !DILocation(line: 23, column: 8, scope: !204)
!210 = !DILocation(line: 24, column: 8, scope: !204)
!211 = !DILocation(line: 30, column: 8, scope: !204)
!212 = !DILocation(line: 36, column: 8, scope: !204)
!213 = !DILocation(line: 41, column: 10, scope: !204)
!214 = !DILocation(line: 42, column: 10, scope: !204)
!215 = !DILocation(line: 10, column: 8, scope: !204)
!216 = !DILocation(line: 32, column: 10, scope: !204)
!217 = !DILocation(line: 33, column: 10, scope: !204)
!218 = !DILocation(line: 38, column: 10, scope: !204)
!219 = !DILocation(line: 39, column: 10, scope: !204)
!220 = !DILocation(line: 40, column: 10, scope: !204)
!221 = !DILocation(line: 43, column: 10, scope: !204)
!222 = !DILocation(line: 44, column: 10, scope: !204)
!223 = !DILocation(line: 45, column: 10, scope: !204)
!224 = !DILocation(line: 46, column: 10, scope: !204)
!225 = !DILocation(line: 47, column: 10, scope: !204)
!226 = !DILocation(line: 52, column: 8, scope: !204)
!227 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", linkageName: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", scope: !19, file: !19, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!228 = !DILocation(line: 23, column: 8, scope: !227)
!229 = !DILocation(line: 22, column: 8, scope: !227)
!230 = !DILocation(line: 14, column: 8, scope: !227)
!231 = !DILocation(line: 15, column: 8, scope: !227)
!232 = !DILocation(line: 16, column: 8, scope: !227)
!233 = !DILocation(line: 17, column: 8, scope: !227)
!234 = !DILocation(line: 9, column: 8, scope: !227)
!235 = !DILocation(line: 25, column: 10, scope: !227)
!236 = !DILocation(line: 26, column: 10, scope: !227)
!237 = !DILocation(line: 29, column: 8, scope: !227)
!238 = !DILocation(line: 31, column: 10, scope: !227)
!239 = !DILocation(line: 32, column: 10, scope: !227)
!240 = !DILocation(line: 33, column: 10, scope: !227)
!241 = !DILocation(line: 37, column: 8, scope: !227)
!242 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", linkageName: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", scope: !21, file: !21, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!243 = !DILocation(line: 13, column: 8, scope: !242)
!244 = !DILocation(line: 14, column: 8, scope: !242)
!245 = !DILocation(line: 15, column: 8, scope: !242)
!246 = !DILocation(line: 20, column: 8, scope: !242)
!247 = !DILocation(line: 23, column: 10, scope: !242)
!248 = !DILocation(line: 27, column: 8, scope: !242)
!249 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", linkageName: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", scope: !23, file: !23, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!250 = !DILocation(line: 29, column: 8, scope: !249)
!251 = !DILocation(line: 28, column: 8, scope: !249)
!252 = !DILocation(line: 16, column: 8, scope: !249)
!253 = !DILocation(line: 17, column: 8, scope: !249)
!254 = !DILocation(line: 18, column: 8, scope: !249)
!255 = !DILocation(line: 19, column: 8, scope: !249)
!256 = !DILocation(line: 20, column: 8, scope: !249)
!257 = !DILocation(line: 21, column: 8, scope: !249)
!258 = !DILocation(line: 9, column: 8, scope: !249)
!259 = !DILocation(line: 31, column: 10, scope: !249)
!260 = !DILocation(line: 32, column: 10, scope: !249)
!261 = !DILocation(line: 35, column: 8, scope: !249)
!262 = !DILocation(line: 37, column: 10, scope: !249)
!263 = !DILocation(line: 38, column: 10, scope: !249)
!264 = !DILocation(line: 39, column: 10, scope: !249)
!265 = !DILocation(line: 40, column: 10, scope: !249)
!266 = !DILocation(line: 41, column: 10, scope: !249)
!267 = !DILocation(line: 45, column: 8, scope: !249)
!268 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_12_matvec_like_6272_f32", scope: !25, file: !25, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!269 = !DILocation(line: 13, column: 8, scope: !268)
!270 = !DILocation(line: 14, column: 8, scope: !268)
!271 = !DILocation(line: 15, column: 8, scope: !268)
!272 = !DILocation(line: 20, column: 8, scope: !268)
!273 = !DILocation(line: 23, column: 10, scope: !268)
!274 = !DILocation(line: 26, column: 8, scope: !268)
!275 = !DILocation(line: 28, column: 10, scope: !268)
!276 = !DILocation(line: 32, column: 8, scope: !268)
!277 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_slow_memcpy", linkageName: "main_graph$async_dispatch_13_slow_memcpy", scope: !27, file: !27, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!278 = !DILocation(line: 15, column: 8, scope: !277)
!279 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_14_matvec_like_6272_f32", scope: !29, file: !29, line: 1, type: !32, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!280 = !DILocation(line: 15, column: 8, scope: !279)
!281 = !DILocation(line: 16, column: 8, scope: !279)
!282 = !DILocation(line: 17, column: 8, scope: !279)
!283 = !DILocation(line: 22, column: 8, scope: !279)
!284 = !DILocation(line: 25, column: 10, scope: !279)
!285 = !DILocation(line: 28, column: 8, scope: !279)
!286 = !DILocation(line: 30, column: 10, scope: !279)
!287 = !DILocation(line: 31, column: 10, scope: !279)
!288 = !DILocation(line: 32, column: 10, scope: !279)
!289 = !DILocation(line: 33, column: 10, scope: !279)
!290 = !DILocation(line: 34, column: 10, scope: !279)
!291 = !DILocation(line: 38, column: 8, scope: !279)
