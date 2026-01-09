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
@16 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@17 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@18 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@19 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_3.mlir\00", align 1
@20 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_4.mlir\00", align 1
@21 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_5.mlir\00", align 1
@22 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_6.mlir\00", align 1
@23 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_7.mlir\00", align 1
@24 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_8.mlir\00", align 1
@25 = private constant [139 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_9.mlir\00", align 1
@26 = private constant [140 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_10.mlir\00", align 1
@27 = private constant [140 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_11.mlir\00", align 1
@28 = private constant [140 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_12.mlir\00", align 1
@29 = private constant [140 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_13.mlir\00", align 1
@30 = private constant [140 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_14.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [15 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @16 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @17 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @18 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @19 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @20 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @21 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @22 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @23 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @24 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @25 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 139, ptr @26 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 139, ptr @27 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 139, ptr @28 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 139, ptr @29 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 139, ptr @30 }]
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

define internal i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !33 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !109
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !109
  %6 = load ptr, ptr %5, align 8, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !110
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !111
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !111
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !111
  %10 = load ptr, ptr %9, align 8, !dbg !111
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !112
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !113
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !113
  %13 = zext i32 %12 to i64, !dbg !113
  %14 = sdiv i64 %13, 4, !dbg !113
  %15 = mul i64 %14, 4, !dbg !113
  %16 = icmp ne i64 %13, %15, !dbg !113
  %17 = icmp slt i64 %13, 0, !dbg !113
  %18 = and i1 %16, %17, !dbg !113
  %19 = add i64 %14, -1, !dbg !113
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !113
  %21 = srem i64 %13, 4, !dbg !113
  %22 = icmp slt i64 %21, 0, !dbg !113
  %23 = add nsw i64 %21, 4, !dbg !113
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !113
  %25 = mul nsw i64 %20, 112, !dbg !113
  %26 = mul nsw i64 %24, 56, !dbg !113
  br label %27, !dbg !113

27:                                               ; preds = %46, %3
  %28 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !113
  %29 = icmp slt i64 %28, 112, !dbg !113
  br i1 %29, label %30, label %48, !dbg !113

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %45, %33 ], [ 0, %27 ], !dbg !113
  %32 = icmp slt i64 %31, 56, !dbg !113
  br i1 %32, label %33, label %46, !dbg !113

33:                                               ; preds = %30
  %34 = add i64 %25, %28, !dbg !113
  %35 = add i64 %26, %31, !dbg !113
  %36 = mul i64 %34, 224, !dbg !113
  %37 = add i64 %36, %35, !dbg !113
  %38 = getelementptr float, ptr %6, i64 %37, !dbg !113
  %39 = load <8 x float>, ptr %38, align 4, !dbg !113
  %40 = add i64 %34, 2, !dbg !113
  %41 = add i64 %35, 2, !dbg !113
  %42 = mul i64 %40, 228, !dbg !113
  %43 = add i64 %42, %41, !dbg !113
  %44 = getelementptr float, ptr %10, i64 %43, !dbg !113
  store <8 x float> %39, ptr %44, align 4, !dbg !113
  %45 = add i64 %31, 8, !dbg !113
  br label %30, !dbg !113

46:                                               ; preds = %30
  %47 = add i64 %28, 1, !dbg !113
  br label %27, !dbg !113

48:                                               ; preds = %27
  ret i32 0, !dbg !114
}

define internal i32 @"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !115 {
  %4 = alloca float, i64 8, align 64, !dbg !116
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !117
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !117
  %7 = load ptr, ptr %6, align 8, !dbg !117
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !117
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !118
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !118
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !118
  %11 = load ptr, ptr %10, align 8, !dbg !118
  %12 = getelementptr float, ptr %11, i64 23808, !dbg !118
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !118
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !119
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !119
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !119
  %16 = load ptr, ptr %15, align 8, !dbg !119
  %17 = getelementptr float, ptr %16, i64 51984, !dbg !119
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !119
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !120
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !120
  %20 = zext i32 %19 to i64, !dbg !120
  %21 = sdiv i64 %20, 4, !dbg !120
  %22 = mul i64 %21, 4, !dbg !120
  %23 = icmp ne i64 %20, %22, !dbg !120
  %24 = icmp slt i64 %20, 0, !dbg !120
  %25 = and i1 %23, %24, !dbg !120
  %26 = add i64 %21, -1, !dbg !120
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !120
  %28 = srem i64 %20, 4, !dbg !120
  %29 = icmp slt i64 %28, 0, !dbg !120
  %30 = add nsw i64 %28, 4, !dbg !120
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !120
  %32 = mul nsw i64 %27, 28, !dbg !120
  %33 = mul nsw i64 %31, 28, !dbg !120
  br label %34, !dbg !120

34:                                               ; preds = %115, %3
  %35 = phi i64 [ %116, %115 ], [ 0, %3 ], !dbg !120
  %36 = icmp slt i64 %35, 32, !dbg !120
  br i1 %36, label %37, label %117, !dbg !120

37:                                               ; preds = %34
  %38 = getelementptr float, ptr @__constant_32xf32, i64 %35, !dbg !121
  %39 = load <1 x float>, ptr %38, align 4, !dbg !121
  br label %40, !dbg !120

40:                                               ; preds = %113, %37
  %41 = phi i64 [ %114, %113 ], [ 0, %37 ], !dbg !120
  %42 = icmp slt i64 %41, 28, !dbg !120
  br i1 %42, label %43, label %115, !dbg !120

43:                                               ; preds = %111, %40
  %44 = phi i64 [ %112, %111 ], [ 0, %40 ], !dbg !120
  %45 = icmp slt i64 %44, 28, !dbg !120
  br i1 %45, label %46, label %113, !dbg !120

46:                                               ; preds = %43
  %47 = sub i64 28, %44, !dbg !120
  %48 = icmp slt i64 %47, 8, !dbg !120
  %49 = select i1 %48, i64 %47, i64 8, !dbg !120
  %50 = trunc i64 %49 to i32, !dbg !122
  %51 = insertelement <8 x i32> poison, i32 %50, i32 0, !dbg !122
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !122
  %53 = icmp sgt <8 x i32> %52, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !122
  %54 = getelementptr float, ptr %4, i64 0, !dbg !122
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %54, i32 4, <8 x i1> %53), !dbg !122
  %55 = mul nsw i64 %44, 2, !dbg !120
  %56 = mul nsw i64 %31, 56, !dbg !120
  %57 = add i64 %55, %56, !dbg !120
  br label %58, !dbg !120

58:                                               ; preds = %94, %46
  %59 = phi i64 [ %95, %94 ], [ 0, %46 ], !dbg !120
  %60 = icmp slt i64 %59, 5, !dbg !120
  br i1 %60, label %61, label %96, !dbg !120

61:                                               ; preds = %58
  %62 = mul nsw i64 %41, 2, !dbg !120
  %63 = mul nsw i64 %27, 56, !dbg !120
  %64 = add i64 %62, %63, !dbg !120
  %65 = add i64 %64, %59, !dbg !120
  br label %66, !dbg !120

66:                                               ; preds = %92, %61
  %67 = phi i64 [ %93, %92 ], [ 0, %61 ], !dbg !120
  %68 = icmp slt i64 %67, %49, !dbg !120
  br i1 %68, label %69, label %94, !dbg !120

69:                                               ; preds = %72, %66
  %70 = phi i64 [ %91, %72 ], [ 0, %66 ], !dbg !120
  %71 = icmp slt i64 %70, 5, !dbg !120
  br i1 %71, label %72, label %92, !dbg !120

72:                                               ; preds = %69
  %73 = mul nsw i64 %67, 2, !dbg !120
  %74 = add i64 %57, %73, !dbg !120
  %75 = add i64 %74, %70, !dbg !120
  %76 = mul nuw nsw i64 %65, 228, !dbg !120
  %77 = add nuw nsw i64 %76, %75, !dbg !120
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !120
  %79 = load float, ptr %78, align 4, !dbg !120
  %80 = mul nuw nsw i64 %35, 25, !dbg !120
  %81 = mul nuw nsw i64 %59, 5, !dbg !120
  %82 = add nuw nsw i64 %80, %81, !dbg !120
  %83 = add nuw nsw i64 %82, %70, !dbg !120
  %84 = getelementptr inbounds nuw float, ptr %12, i64 %83, !dbg !120
  %85 = load float, ptr %84, align 4, !dbg !120
  %86 = add nuw nsw i64 0, %67, !dbg !120
  %87 = getelementptr inbounds nuw float, ptr %4, i64 %86, !dbg !120
  %88 = load float, ptr %87, align 4, !dbg !120
  %89 = fmul contract float %79, %85, !dbg !123
  %90 = fadd contract float %88, %89, !dbg !124
  store float %90, ptr %87, align 4, !dbg !120
  %91 = add i64 %70, 1, !dbg !120
  br label %69, !dbg !120

92:                                               ; preds = %69
  %93 = add i64 %67, 1, !dbg !120
  br label %66, !dbg !120

94:                                               ; preds = %66
  %95 = add i64 %59, 1, !dbg !120
  br label %58, !dbg !120

96:                                               ; preds = %58
  %97 = icmp sgt i64 %49, 0, !dbg !121
  br i1 %97, label %98, label %111, !dbg !121

98:                                               ; preds = %96
  %99 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %54, i32 4, <8 x i1> %53, <8 x float> poison), !dbg !121
  %100 = extractelement <1 x float> %39, i64 0, !dbg !125
  %101 = insertelement <8 x float> poison, float %100, i32 0, !dbg !125
  %102 = shufflevector <8 x float> %101, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !125
  %103 = fadd contract <8 x float> %99, %102, !dbg !125
  %104 = add i64 %32, %41, !dbg !125
  %105 = add i64 %33, %44, !dbg !125
  %106 = mul i64 %35, 12544, !dbg !125
  %107 = mul i64 %104, 112, !dbg !125
  %108 = add i64 %106, %107, !dbg !125
  %109 = add i64 %108, %105, !dbg !125
  %110 = getelementptr float, ptr %17, i64 %109, !dbg !125
  call void @llvm.masked.store.v8f32.p0(<8 x float> %103, ptr %110, i32 4, <8 x i1> %53), !dbg !125
  br label %111, !dbg !121

111:                                              ; preds = %98, %96
  %112 = add i64 %44, 8, !dbg !120
  br label %43, !dbg !120

113:                                              ; preds = %43
  %114 = add i64 %41, 1, !dbg !120
  br label %40, !dbg !120

115:                                              ; preds = %40
  %116 = add i64 %35, 1, !dbg !120
  br label %34, !dbg !120

117:                                              ; preds = %34
  ret i32 0, !dbg !126
}

define internal i32 @"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !127 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !128
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !128
  %6 = load ptr, ptr %5, align 8, !dbg !128
  %7 = getelementptr float, ptr %6, i64 51984, !dbg !128
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !128
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !129
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !129
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !129
  %11 = load ptr, ptr %10, align 8, !dbg !129
  %12 = getelementptr float, ptr %11, i64 453392, !dbg !129
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !129
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !130
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !130
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !130
  %16 = load ptr, ptr %15, align 8, !dbg !130
  %17 = getelementptr float, ptr %16, i64 557360, !dbg !130
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !130
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !131
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !131
  %20 = zext i32 %19 to i64, !dbg !131
  %21 = sdiv i64 %20, 25, !dbg !131
  %22 = mul i64 %21, 25, !dbg !131
  %23 = icmp ne i64 %20, %22, !dbg !131
  %24 = icmp slt i64 %20, 0, !dbg !131
  %25 = and i1 %23, %24, !dbg !131
  %26 = add i64 %21, -1, !dbg !131
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !131
  %28 = srem i64 %20, 25, !dbg !131
  %29 = icmp slt i64 %28, 0, !dbg !131
  %30 = add nsw i64 %28, 25, !dbg !131
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !131
  %32 = sdiv i64 %31, 5, !dbg !131
  %33 = srem i64 %20, 5, !dbg !131
  %34 = icmp slt i64 %33, 0, !dbg !131
  %35 = add nsw i64 %33, 5, !dbg !131
  %36 = select i1 %34, i64 %35, i64 %33, !dbg !131
  %37 = mul nsw i64 %27, 8, !dbg !131
  %38 = mul nsw i64 %32, 11, !dbg !131
  %39 = mul nsw i64 %36, 11, !dbg !131
  %40 = call float @llvm.sqrt.f32(float 0x3FECCCE1C0000000), !dbg !132
  %41 = fdiv float 1.000000e+00, %40, !dbg !132
  br label %42, !dbg !131

42:                                               ; preds = %138, %3
  %43 = phi i64 [ %139, %138 ], [ 0, %3 ], !dbg !131
  %44 = icmp slt i64 %43, 8, !dbg !131
  br i1 %44, label %45, label %140, !dbg !131

45:                                               ; preds = %42
  %46 = add i64 %43, %37, !dbg !131
  %47 = getelementptr float, ptr @__constant_32xf32_0, i64 %46, !dbg !133
  %48 = load <1 x float>, ptr %47, align 4, !dbg !133
  br label %49, !dbg !131

49:                                               ; preds = %136, %45
  %50 = phi i64 [ %137, %136 ], [ 0, %45 ], !dbg !131
  %51 = icmp slt i64 %50, 11, !dbg !131
  br i1 %51, label %52, label %138, !dbg !131

52:                                               ; preds = %134, %49
  %53 = phi i64 [ %135, %134 ], [ 0, %49 ], !dbg !131
  %54 = icmp slt i64 %53, 11, !dbg !131
  br i1 %54, label %55, label %136, !dbg !131

55:                                               ; preds = %52
  %56 = sub i64 11, %53, !dbg !131
  %57 = icmp slt i64 %56, 8, !dbg !131
  %58 = select i1 %57, i64 %56, i64 8, !dbg !131
  %59 = trunc i64 %58 to i32, !dbg !134
  %60 = insertelement <8 x i32> poison, i32 %59, i32 0, !dbg !134
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !134
  %62 = icmp sgt <8 x i32> %61, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !134
  %63 = add i64 %38, %50, !dbg !134
  %64 = add i64 %39, %53, !dbg !134
  %65 = mul i64 %46, 3025, !dbg !134
  %66 = mul i64 %63, 55, !dbg !134
  %67 = add i64 %65, %66, !dbg !134
  %68 = add i64 %67, %64, !dbg !134
  %69 = getelementptr float, ptr %17, i64 %68, !dbg !134
  call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 0xFFF0000000000000), ptr %69, i32 4, <8 x i1> %62), !dbg !134
  %70 = mul nsw i64 %53, 2, !dbg !131
  %71 = mul nsw i64 %36, 22, !dbg !131
  %72 = add i64 %70, %71, !dbg !131
  br label %73, !dbg !131

73:                                               ; preds = %111, %55
  %74 = phi i64 [ %112, %111 ], [ 0, %55 ], !dbg !131
  %75 = icmp slt i64 %74, 3, !dbg !131
  br i1 %75, label %76, label %113, !dbg !131

76:                                               ; preds = %73
  %77 = mul nsw i64 %50, 2, !dbg !131
  %78 = mul nsw i64 %32, 22, !dbg !131
  %79 = add i64 %77, %78, !dbg !131
  %80 = add i64 %79, %74, !dbg !131
  br label %81, !dbg !131

81:                                               ; preds = %109, %76
  %82 = phi i64 [ %110, %109 ], [ 0, %76 ], !dbg !131
  %83 = icmp slt i64 %82, %58, !dbg !131
  br i1 %83, label %84, label %111, !dbg !131

84:                                               ; preds = %87, %81
  %85 = phi i64 [ %108, %87 ], [ 0, %81 ], !dbg !131
  %86 = icmp slt i64 %85, 3, !dbg !131
  br i1 %86, label %87, label %109, !dbg !131

87:                                               ; preds = %84
  %88 = mul nsw i64 %82, 2, !dbg !131
  %89 = add i64 %72, %88, !dbg !131
  %90 = add i64 %89, %85, !dbg !131
  %91 = mul nuw nsw i64 %46, 12544, !dbg !131
  %92 = mul nuw nsw i64 %80, 112, !dbg !131
  %93 = add nuw nsw i64 %91, %92, !dbg !131
  %94 = add nuw nsw i64 %93, %90, !dbg !131
  %95 = getelementptr inbounds nuw float, ptr %7, i64 %94, !dbg !131
  %96 = load float, ptr %95, align 4, !dbg !131
  %97 = add i64 %64, %82, !dbg !131
  %98 = mul nuw nsw i64 %46, 3025, !dbg !131
  %99 = mul nuw nsw i64 %63, 55, !dbg !131
  %100 = add nuw nsw i64 %98, %99, !dbg !131
  %101 = add nuw nsw i64 %100, %97, !dbg !131
  %102 = getelementptr inbounds nuw float, ptr %17, i64 %101, !dbg !131
  %103 = load float, ptr %102, align 4, !dbg !131
  %104 = fcmp ugt float %103, %96, !dbg !135
  %105 = select i1 %104, float %103, float %96, !dbg !135
  %106 = fcmp uno float %96, %96, !dbg !135
  %107 = select i1 %106, float %96, float %105, !dbg !135
  store float %107, ptr %102, align 4, !dbg !131
  %108 = add i64 %85, 1, !dbg !131
  br label %84, !dbg !131

109:                                              ; preds = %84
  %110 = add i64 %82, 1, !dbg !131
  br label %81, !dbg !131

111:                                              ; preds = %81
  %112 = add i64 %74, 1, !dbg !131
  br label %73, !dbg !131

113:                                              ; preds = %73
  %114 = icmp sgt i64 %58, 0, !dbg !133
  br i1 %114, label %115, label %134, !dbg !133

115:                                              ; preds = %113
  %116 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %69, i32 4, <8 x i1> %62, <8 x float> poison), !dbg !133
  %117 = extractelement <1 x float> %48, i64 0, !dbg !136
  %118 = insertelement <8 x float> poison, float %117, i32 0, !dbg !136
  %119 = shufflevector <8 x float> %118, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !136
  %120 = fsub contract <8 x float> %116, %119, !dbg !136
  %121 = insertelement <8 x float> poison, float %41, i32 0, !dbg !137
  %122 = shufflevector <8 x float> %121, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !137
  %123 = fmul contract <8 x float> %120, %122, !dbg !137
  %124 = fadd contract <8 x float> %123, zeroinitializer, !dbg !138
  %125 = fcmp ugt <8 x float> %124, zeroinitializer, !dbg !139
  %126 = select <8 x i1> %125, <8 x float> %124, <8 x float> zeroinitializer, !dbg !140
  %127 = add i64 %63, 1, !dbg !140
  %128 = add i64 %64, 1, !dbg !140
  %129 = mul i64 %46, 3249, !dbg !140
  %130 = mul i64 %127, 57, !dbg !140
  %131 = add i64 %129, %130, !dbg !140
  %132 = add i64 %131, %128, !dbg !140
  %133 = getelementptr float, ptr %12, i64 %132, !dbg !140
  call void @llvm.masked.store.v8f32.p0(<8 x float> %126, ptr %133, i32 4, <8 x i1> %62), !dbg !140
  br label %134, !dbg !133

134:                                              ; preds = %115, %113
  %135 = add i64 %53, 8, !dbg !131
  br label %52, !dbg !131

136:                                              ; preds = %52
  %137 = add i64 %50, 1, !dbg !131
  br label %49, !dbg !131

138:                                              ; preds = %49
  %139 = add i64 %43, 1, !dbg !131
  br label %42, !dbg !131

140:                                              ; preds = %42
  ret i32 0, !dbg !141
}

define internal i32 @"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !142 {
  %4 = alloca float, i64 8, align 64, !dbg !143
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !144
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !144
  %7 = load ptr, ptr %6, align 8, !dbg !144
  %8 = getelementptr float, ptr %7, i64 453392, !dbg !144
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !144
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !145
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !145
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !145
  %12 = load ptr, ptr %11, align 8, !dbg !145
  %13 = getelementptr float, ptr %12, i64 218400, !dbg !145
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !145
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !146
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !146
  %16 = getelementptr ptr, ptr %15, i32 2, !dbg !146
  %17 = load ptr, ptr %16, align 8, !dbg !146
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !146
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !147
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !147
  %20 = zext i32 %19 to i64, !dbg !147
  %21 = sdiv i64 %20, 2, !dbg !147
  %22 = mul i64 %21, 2, !dbg !147
  %23 = icmp ne i64 %20, %22, !dbg !147
  %24 = icmp slt i64 %20, 0, !dbg !147
  %25 = and i1 %23, %24, !dbg !147
  %26 = add i64 %21, -1, !dbg !147
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !147
  %28 = srem i64 %20, 2, !dbg !147
  %29 = icmp slt i64 %28, 0, !dbg !147
  %30 = add nsw i64 %28, 2, !dbg !147
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !147
  %32 = mul nsw i64 %27, 4, !dbg !147
  %33 = mul nsw i64 %31, 14, !dbg !147
  br label %34, !dbg !147

34:                                               ; preds = %126, %3
  %35 = phi i64 [ %127, %126 ], [ 0, %3 ], !dbg !147
  %36 = icmp slt i64 %35, 4, !dbg !147
  br i1 %36, label %37, label %128, !dbg !147

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !147
  %39 = getelementptr float, ptr @__constant_32xf32_1, i64 %38, !dbg !148
  %40 = load <1 x float>, ptr %39, align 4, !dbg !148
  br label %41, !dbg !147

41:                                               ; preds = %124, %37
  %42 = phi i64 [ %125, %124 ], [ 0, %37 ], !dbg !147
  %43 = icmp slt i64 %42, 14, !dbg !147
  br i1 %43, label %44, label %126, !dbg !147

44:                                               ; preds = %122, %41
  %45 = phi i64 [ %123, %122 ], [ 0, %41 ], !dbg !147
  %46 = icmp slt i64 %45, 28, !dbg !147
  br i1 %46, label %47, label %124, !dbg !147

47:                                               ; preds = %44
  %48 = sub i64 28, %45, !dbg !147
  %49 = icmp slt i64 %48, 8, !dbg !147
  %50 = select i1 %49, i64 %48, i64 8, !dbg !147
  %51 = trunc i64 %50 to i32, !dbg !149
  %52 = insertelement <8 x i32> poison, i32 %51, i32 0, !dbg !149
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !149
  %54 = icmp sgt <8 x i32> %53, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !149
  %55 = getelementptr float, ptr %4, i64 0, !dbg !149
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %55, i32 4, <8 x i1> %54), !dbg !149
  %56 = mul nsw i64 %45, 2, !dbg !147
  br label %57, !dbg !147

57:                                               ; preds = %102, %47
  %58 = phi i64 [ %103, %102 ], [ 0, %47 ], !dbg !147
  %59 = icmp slt i64 %58, 32, !dbg !147
  br i1 %59, label %60, label %104, !dbg !147

60:                                               ; preds = %100, %57
  %61 = phi i64 [ %101, %100 ], [ 0, %57 ], !dbg !147
  %62 = icmp slt i64 %61, 3, !dbg !147
  br i1 %62, label %63, label %102, !dbg !147

63:                                               ; preds = %60
  %64 = mul nsw i64 %42, 2, !dbg !147
  %65 = mul nsw i64 %31, 28, !dbg !147
  %66 = add i64 %64, %65, !dbg !147
  %67 = add i64 %66, %61, !dbg !147
  br label %68, !dbg !147

68:                                               ; preds = %98, %63
  %69 = phi i64 [ %99, %98 ], [ 0, %63 ], !dbg !147
  %70 = icmp slt i64 %69, %50, !dbg !147
  br i1 %70, label %71, label %100, !dbg !147

71:                                               ; preds = %74, %68
  %72 = phi i64 [ %97, %74 ], [ 0, %68 ], !dbg !147
  %73 = icmp slt i64 %72, 3, !dbg !147
  br i1 %73, label %74, label %98, !dbg !147

74:                                               ; preds = %71
  %75 = mul nsw i64 %69, 2, !dbg !147
  %76 = add i64 %56, %75, !dbg !147
  %77 = add i64 %76, %72, !dbg !147
  %78 = mul nuw nsw i64 %58, 3249, !dbg !147
  %79 = mul nuw nsw i64 %67, 57, !dbg !147
  %80 = add nuw nsw i64 %78, %79, !dbg !147
  %81 = add nuw nsw i64 %80, %77, !dbg !147
  %82 = getelementptr inbounds nuw float, ptr %8, i64 %81, !dbg !147
  %83 = load float, ptr %82, align 4, !dbg !147
  %84 = mul nuw nsw i64 %38, 288, !dbg !147
  %85 = mul nuw nsw i64 %58, 9, !dbg !147
  %86 = add nuw nsw i64 %84, %85, !dbg !147
  %87 = mul nuw nsw i64 %61, 3, !dbg !147
  %88 = add nuw nsw i64 %86, %87, !dbg !147
  %89 = add nuw nsw i64 %88, %72, !dbg !147
  %90 = getelementptr inbounds nuw float, ptr %13, i64 %89, !dbg !147
  %91 = load float, ptr %90, align 4, !dbg !147
  %92 = add nuw nsw i64 0, %69, !dbg !147
  %93 = getelementptr inbounds nuw float, ptr %4, i64 %92, !dbg !147
  %94 = load float, ptr %93, align 4, !dbg !147
  %95 = fmul contract float %83, %91, !dbg !150
  %96 = fadd contract float %94, %95, !dbg !151
  store float %96, ptr %93, align 4, !dbg !147
  %97 = add i64 %72, 1, !dbg !147
  br label %71, !dbg !147

98:                                               ; preds = %71
  %99 = add i64 %69, 1, !dbg !147
  br label %68, !dbg !147

100:                                              ; preds = %68
  %101 = add i64 %61, 1, !dbg !147
  br label %60, !dbg !147

102:                                              ; preds = %60
  %103 = add i64 %58, 1, !dbg !147
  br label %57, !dbg !147

104:                                              ; preds = %57
  %105 = icmp sgt i64 %50, 0, !dbg !148
  br i1 %105, label %106, label %122, !dbg !148

106:                                              ; preds = %104
  %107 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %55, i32 4, <8 x i1> %54, <8 x float> poison), !dbg !148
  %108 = extractelement <1 x float> %40, i64 0, !dbg !152
  %109 = insertelement <8 x float> poison, float %108, i32 0, !dbg !152
  %110 = shufflevector <8 x float> %109, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !152
  %111 = fadd contract <8 x float> %107, %110, !dbg !152
  %112 = fcmp ugt <8 x float> %111, zeroinitializer, !dbg !153
  %113 = select <8 x i1> %112, <8 x float> %111, <8 x float> zeroinitializer, !dbg !154
  %114 = add i64 %33, %42, !dbg !154
  %115 = add i64 %114, 1, !dbg !154
  %116 = add i64 %45, 1, !dbg !154
  %117 = mul i64 %38, 900, !dbg !154
  %118 = mul i64 %115, 30, !dbg !154
  %119 = add i64 %117, %118, !dbg !154
  %120 = add i64 %119, %116, !dbg !154
  %121 = getelementptr float, ptr %17, i64 %120, !dbg !154
  call void @llvm.masked.store.v8f32.p0(<8 x float> %113, ptr %121, i32 4, <8 x i1> %54), !dbg !154
  br label %122, !dbg !148

122:                                              ; preds = %106, %104
  %123 = add i64 %45, 8, !dbg !147
  br label %44, !dbg !147

124:                                              ; preds = %44
  %125 = add i64 %42, 1, !dbg !147
  br label %41, !dbg !147

126:                                              ; preds = %41
  %127 = add i64 %35, 1, !dbg !147
  br label %34, !dbg !147

128:                                              ; preds = %34
  ret i32 0, !dbg !155
}

define internal i32 @"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !156 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !157
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !157
  %6 = load ptr, ptr %5, align 8, !dbg !157
  %7 = getelementptr float, ptr %6, i64 557360, !dbg !157
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !157
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !158
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !158
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !158
  %11 = load ptr, ptr %10, align 8, !dbg !158
  %12 = getelementptr float, ptr %11, i64 22784, !dbg !158
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !158
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !159
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !159
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !159
  %16 = load ptr, ptr %15, align 8, !dbg !159
  %17 = getelementptr float, ptr %16, i64 28800, !dbg !159
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !159
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !160
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !160
  %20 = zext i32 %19 to i64, !dbg !160
  %21 = sdiv i64 %20, 2, !dbg !160
  %22 = mul i64 %21, 2, !dbg !160
  %23 = icmp ne i64 %20, %22, !dbg !160
  %24 = icmp slt i64 %20, 0, !dbg !160
  %25 = and i1 %23, %24, !dbg !160
  %26 = add i64 %21, -1, !dbg !160
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !160
  %28 = srem i64 %20, 2, !dbg !160
  %29 = icmp slt i64 %28, 0, !dbg !160
  %30 = add nsw i64 %28, 2, !dbg !160
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !160
  %32 = mul nsw i64 %27, 4, !dbg !160
  %33 = mul nsw i64 %31, 14, !dbg !160
  br label %34, !dbg !160

34:                                               ; preds = %162, %3
  %35 = phi i64 [ %163, %162 ], [ 0, %3 ], !dbg !160
  %36 = icmp slt i64 %35, 4, !dbg !160
  br i1 %36, label %37, label %164, !dbg !160

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !160
  br label %39, !dbg !160

39:                                               ; preds = %160, %37
  %40 = phi i64 [ %161, %160 ], [ 0, %37 ], !dbg !160
  %41 = icmp slt i64 %40, 14, !dbg !160
  br i1 %41, label %42, label %162, !dbg !160

42:                                               ; preds = %151, %39
  %43 = phi i64 [ %159, %151 ], [ 0, %39 ], !dbg !160
  %44 = icmp slt i64 %43, 28, !dbg !160
  br i1 %44, label %45, label %160, !dbg !160

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %150, %49 ], [ 0, %42 ], !dbg !160
  %47 = phi <1 x float> [ %149, %49 ], [ zeroinitializer, %42 ], !dbg !160
  %48 = icmp slt i64 %46, 32, !dbg !160
  br i1 %48, label %49, label %151, !dbg !160

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !160
  %51 = mul nsw i64 %50, 2, !dbg !160
  %52 = mul nsw i64 %43, 2, !dbg !160
  %53 = mul nuw nsw i64 %46, 3025, !dbg !160
  %54 = mul nuw nsw i64 %51, 55, !dbg !160
  %55 = add nuw nsw i64 %53, %54, !dbg !160
  %56 = add nuw nsw i64 %55, %52, !dbg !160
  %57 = getelementptr inbounds nuw float, ptr %7, i64 %56, !dbg !160
  %58 = load float, ptr %57, align 4, !dbg !160
  %59 = insertelement <1 x float> poison, float %58, i32 0, !dbg !160
  %60 = add i64 %46, 1, !dbg !160
  %61 = mul nuw nsw i64 %60, 3025, !dbg !160
  %62 = add nuw nsw i64 %61, %54, !dbg !160
  %63 = add nuw nsw i64 %62, %52, !dbg !160
  %64 = getelementptr inbounds nuw float, ptr %7, i64 %63, !dbg !160
  %65 = load float, ptr %64, align 4, !dbg !160
  %66 = insertelement <1 x float> poison, float %65, i32 0, !dbg !160
  %67 = add i64 %46, 2, !dbg !160
  %68 = mul nuw nsw i64 %67, 3025, !dbg !160
  %69 = add nuw nsw i64 %68, %54, !dbg !160
  %70 = add nuw nsw i64 %69, %52, !dbg !160
  %71 = getelementptr inbounds nuw float, ptr %7, i64 %70, !dbg !160
  %72 = load float, ptr %71, align 4, !dbg !160
  %73 = insertelement <1 x float> poison, float %72, i32 0, !dbg !160
  %74 = add i64 %46, 3, !dbg !160
  %75 = mul nuw nsw i64 %74, 3025, !dbg !160
  %76 = add nuw nsw i64 %75, %54, !dbg !160
  %77 = add nuw nsw i64 %76, %52, !dbg !160
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !160
  %79 = load float, ptr %78, align 4, !dbg !160
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !160
  %81 = add i64 %46, 4, !dbg !160
  %82 = mul nuw nsw i64 %81, 3025, !dbg !160
  %83 = add nuw nsw i64 %82, %54, !dbg !160
  %84 = add nuw nsw i64 %83, %52, !dbg !160
  %85 = getelementptr inbounds nuw float, ptr %7, i64 %84, !dbg !160
  %86 = load float, ptr %85, align 4, !dbg !160
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !160
  %88 = add i64 %46, 5, !dbg !160
  %89 = mul nuw nsw i64 %88, 3025, !dbg !160
  %90 = add nuw nsw i64 %89, %54, !dbg !160
  %91 = add nuw nsw i64 %90, %52, !dbg !160
  %92 = getelementptr inbounds nuw float, ptr %7, i64 %91, !dbg !160
  %93 = load float, ptr %92, align 4, !dbg !160
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !160
  %95 = add i64 %46, 6, !dbg !160
  %96 = mul nuw nsw i64 %95, 3025, !dbg !160
  %97 = add nuw nsw i64 %96, %54, !dbg !160
  %98 = add nuw nsw i64 %97, %52, !dbg !160
  %99 = getelementptr inbounds nuw float, ptr %7, i64 %98, !dbg !160
  %100 = load float, ptr %99, align 4, !dbg !160
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !160
  %102 = add i64 %46, 7, !dbg !160
  %103 = mul nuw nsw i64 %102, 3025, !dbg !160
  %104 = add nuw nsw i64 %103, %54, !dbg !160
  %105 = add nuw nsw i64 %104, %52, !dbg !160
  %106 = getelementptr inbounds nuw float, ptr %7, i64 %105, !dbg !160
  %107 = load float, ptr %106, align 4, !dbg !160
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !160
  %109 = mul nuw nsw i64 %38, 32, !dbg !161
  %110 = add nuw nsw i64 %109, %46, !dbg !161
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !161
  %112 = load float, ptr %111, align 4, !dbg !161
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !161
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %113, <1 x float> %47), !dbg !161
  %115 = add nuw nsw i64 %109, %60, !dbg !161
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !161
  %117 = load float, ptr %116, align 4, !dbg !161
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !161
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %118, <1 x float> %114), !dbg !161
  %120 = add nuw nsw i64 %109, %67, !dbg !161
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !161
  %122 = load float, ptr %121, align 4, !dbg !161
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !161
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %123, <1 x float> %119), !dbg !161
  %125 = add nuw nsw i64 %109, %74, !dbg !161
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !161
  %127 = load float, ptr %126, align 4, !dbg !161
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !161
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %128, <1 x float> %124), !dbg !161
  %130 = add nuw nsw i64 %109, %81, !dbg !161
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !161
  %132 = load float, ptr %131, align 4, !dbg !161
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !161
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %133, <1 x float> %129), !dbg !161
  %135 = add nuw nsw i64 %109, %88, !dbg !161
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !161
  %137 = load float, ptr %136, align 4, !dbg !161
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !161
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %94, <1 x float> %138, <1 x float> %134), !dbg !161
  %140 = add nuw nsw i64 %109, %95, !dbg !161
  %141 = getelementptr inbounds nuw float, ptr %12, i64 %140, !dbg !161
  %142 = load float, ptr %141, align 4, !dbg !161
  %143 = insertelement <1 x float> poison, float %142, i32 0, !dbg !161
  %144 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %101, <1 x float> %143, <1 x float> %139), !dbg !161
  %145 = add nuw nsw i64 %109, %102, !dbg !161
  %146 = getelementptr inbounds nuw float, ptr %12, i64 %145, !dbg !161
  %147 = load float, ptr %146, align 4, !dbg !161
  %148 = insertelement <1 x float> poison, float %147, i32 0, !dbg !161
  %149 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %148, <1 x float> %144), !dbg !161
  %150 = add i64 %46, 8, !dbg !160
  br label %45, !dbg !160

151:                                              ; preds = %45
  %152 = extractelement <1 x float> %47, i64 0, !dbg !160
  %153 = add i64 %33, %40, !dbg !160
  %154 = mul nuw nsw i64 %38, 784, !dbg !160
  %155 = mul nuw nsw i64 %153, 28, !dbg !160
  %156 = add nuw nsw i64 %154, %155, !dbg !160
  %157 = add nuw nsw i64 %156, %43, !dbg !160
  %158 = getelementptr inbounds nuw float, ptr %17, i64 %157, !dbg !160
  store float %152, ptr %158, align 4, !dbg !160
  %159 = add i64 %43, 1, !dbg !160
  br label %42, !dbg !160

160:                                              ; preds = %42
  %161 = add i64 %40, 1, !dbg !160
  br label %39, !dbg !160

162:                                              ; preds = %39
  %163 = add i64 %35, 1, !dbg !160
  br label %34, !dbg !160

164:                                              ; preds = %34
  ret i32 0, !dbg !162
}

define internal i32 @"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !163 {
  %4 = alloca float, i64 8, align 64, !dbg !164
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !165
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !165
  %7 = load ptr, ptr %6, align 8, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !165
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !166
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !166
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !166
  %11 = load ptr, ptr %10, align 8, !dbg !166
  %12 = getelementptr float, ptr %11, i64 24608, !dbg !166
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !166
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !167
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !167
  %15 = load ptr, ptr %14, align 8, !dbg !167
  %16 = getelementptr float, ptr %15, i64 28800, !dbg !167
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !167
  %17 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !168
  %18 = extractvalue %iree_hal_executable_dispatch_state_v0_t %17, 10, !dbg !168
  %19 = getelementptr ptr, ptr %18, i32 2, !dbg !168
  %20 = load ptr, ptr %19, align 8, !dbg !168
  %21 = getelementptr float, ptr %20, i64 53888, !dbg !168
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 64) ], !dbg !168
  %22 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !169
  %23 = extractvalue %iree_hal_executable_dispatch_state_v0_t %22, 10, !dbg !169
  %24 = getelementptr ptr, ptr %23, i32 3, !dbg !169
  %25 = load ptr, ptr %24, align 8, !dbg !169
  %26 = getelementptr float, ptr %25, i64 82688, !dbg !169
  call void @llvm.assume(i1 true) [ "align"(ptr %26, i64 64) ], !dbg !169
  %27 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !170
  %28 = extractvalue %iree_hal_executable_workgroup_state_v0_t %27, 0, !dbg !170
  %29 = zext i32 %28 to i64, !dbg !170
  %30 = sdiv i64 %29, 2, !dbg !170
  %31 = mul i64 %30, 2, !dbg !170
  %32 = icmp ne i64 %29, %31, !dbg !170
  %33 = icmp slt i64 %29, 0, !dbg !170
  %34 = and i1 %32, %33, !dbg !170
  %35 = add i64 %30, -1, !dbg !170
  %36 = select i1 %34, i64 %35, i64 %30, !dbg !170
  %37 = srem i64 %29, 2, !dbg !170
  %38 = icmp slt i64 %37, 0, !dbg !170
  %39 = add nsw i64 %37, 2, !dbg !170
  %40 = select i1 %38, i64 %39, i64 %37, !dbg !170
  %41 = mul nsw i64 %36, 4, !dbg !170
  %42 = mul nsw i64 %40, 14, !dbg !170
  %43 = call float @llvm.sqrt.f32(float 0x3FECCCE1C0000000), !dbg !171
  %44 = fdiv float 1.000000e+00, %43, !dbg !171
  br label %45, !dbg !170

45:                                               ; preds = %154, %3
  %46 = phi i64 [ %155, %154 ], [ 0, %3 ], !dbg !170
  %47 = icmp slt i64 %46, 4, !dbg !170
  br i1 %47, label %48, label %156, !dbg !170

48:                                               ; preds = %45
  %49 = add i64 %46, %41, !dbg !170
  %50 = getelementptr float, ptr @__constant_32xf32_1_0, i64 %49, !dbg !172
  %51 = load <1 x float>, ptr %50, align 4, !dbg !172
  %52 = getelementptr float, ptr @__constant_32xf32_0_0, i64 %49, !dbg !172
  %53 = load <1 x float>, ptr %52, align 4, !dbg !172
  %54 = getelementptr float, ptr @__constant_32xf32_2, i64 %49, !dbg !172
  %55 = load <1 x float>, ptr %54, align 4, !dbg !172
  br label %56, !dbg !170

56:                                               ; preds = %152, %48
  %57 = phi i64 [ %153, %152 ], [ 0, %48 ], !dbg !170
  %58 = icmp slt i64 %57, 14, !dbg !170
  br i1 %58, label %59, label %154, !dbg !170

59:                                               ; preds = %115, %56
  %60 = phi i64 [ %151, %115 ], [ 0, %56 ], !dbg !170
  %61 = icmp slt i64 %60, 28, !dbg !170
  br i1 %61, label %62, label %152, !dbg !170

62:                                               ; preds = %59
  %63 = sub i64 28, %60, !dbg !170
  %64 = icmp slt i64 %63, 8, !dbg !170
  %65 = select i1 %64, i64 %63, i64 8, !dbg !170
  %66 = trunc i64 %65 to i32, !dbg !173
  %67 = insertelement <8 x i32> poison, i32 %66, i32 0, !dbg !173
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !173
  %69 = icmp sgt <8 x i32> %68, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !173
  %70 = getelementptr float, ptr %4, i64 0, !dbg !173
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %70, i32 4, <8 x i1> %69), !dbg !173
  br label %71, !dbg !170

71:                                               ; preds = %113, %62
  %72 = phi i64 [ %114, %113 ], [ 0, %62 ], !dbg !170
  %73 = icmp slt i64 %72, 32, !dbg !170
  br i1 %73, label %74, label %115, !dbg !170

74:                                               ; preds = %111, %71
  %75 = phi i64 [ %112, %111 ], [ 0, %71 ], !dbg !170
  %76 = icmp slt i64 %75, 3, !dbg !170
  br i1 %76, label %77, label %113, !dbg !170

77:                                               ; preds = %74
  %78 = add i64 %75, %57, !dbg !170
  %79 = add i64 %78, %42, !dbg !170
  br label %80, !dbg !170

80:                                               ; preds = %109, %77
  %81 = phi i64 [ %110, %109 ], [ 0, %77 ], !dbg !170
  %82 = icmp slt i64 %81, %65, !dbg !170
  br i1 %82, label %83, label %111, !dbg !170

83:                                               ; preds = %86, %80
  %84 = phi i64 [ %108, %86 ], [ 0, %80 ], !dbg !170
  %85 = icmp slt i64 %84, 3, !dbg !170
  br i1 %85, label %86, label %109, !dbg !170

86:                                               ; preds = %83
  %87 = add i64 %60, %81, !dbg !170
  %88 = add i64 %87, %84, !dbg !170
  %89 = mul nuw nsw i64 %72, 900, !dbg !170
  %90 = mul nuw nsw i64 %79, 30, !dbg !170
  %91 = add nuw nsw i64 %89, %90, !dbg !170
  %92 = add nuw nsw i64 %91, %88, !dbg !170
  %93 = getelementptr inbounds nuw float, ptr %7, i64 %92, !dbg !170
  %94 = load float, ptr %93, align 4, !dbg !170
  %95 = mul nuw nsw i64 %49, 288, !dbg !170
  %96 = mul nuw nsw i64 %72, 9, !dbg !170
  %97 = add nuw nsw i64 %95, %96, !dbg !170
  %98 = mul nuw nsw i64 %75, 3, !dbg !170
  %99 = add nuw nsw i64 %97, %98, !dbg !170
  %100 = add nuw nsw i64 %99, %84, !dbg !170
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !170
  %102 = load float, ptr %101, align 4, !dbg !170
  %103 = add nuw nsw i64 0, %81, !dbg !170
  %104 = getelementptr inbounds nuw float, ptr %4, i64 %103, !dbg !170
  %105 = load float, ptr %104, align 4, !dbg !170
  %106 = fmul contract float %94, %102, !dbg !174
  %107 = fadd contract float %105, %106, !dbg !175
  store float %107, ptr %104, align 4, !dbg !170
  %108 = add i64 %84, 1, !dbg !170
  br label %83, !dbg !170

109:                                              ; preds = %83
  %110 = add i64 %81, 1, !dbg !170
  br label %80, !dbg !170

111:                                              ; preds = %80
  %112 = add i64 %75, 1, !dbg !170
  br label %74, !dbg !170

113:                                              ; preds = %74
  %114 = add i64 %72, 1, !dbg !170
  br label %71, !dbg !170

115:                                              ; preds = %71
  %116 = add i64 %42, %57, !dbg !172
  %117 = mul i64 %49, 784, !dbg !172
  %118 = mul i64 %116, 28, !dbg !172
  %119 = add i64 %117, %118, !dbg !172
  %120 = add i64 %119, %60, !dbg !172
  %121 = getelementptr float, ptr %16, i64 %120, !dbg !172
  %122 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %121, i32 4, <8 x i1> %69, <8 x float> poison), !dbg !172
  %123 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %70, i32 4, <8 x i1> %69, <8 x float> poison), !dbg !172
  %124 = extractelement <1 x float> %53, i64 0, !dbg !176
  %125 = insertelement <8 x float> poison, float %124, i32 0, !dbg !176
  %126 = shufflevector <8 x float> %125, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !176
  %127 = fadd contract <8 x float> %123, %126, !dbg !176
  %128 = extractelement <1 x float> %51, i64 0, !dbg !177
  %129 = insertelement <8 x float> poison, float %128, i32 0, !dbg !177
  %130 = shufflevector <8 x float> %129, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !177
  %131 = fadd contract <8 x float> %122, %130, !dbg !177
  %132 = fadd contract <8 x float> %131, %127, !dbg !178
  %133 = extractelement <1 x float> %55, i64 0, !dbg !179
  %134 = insertelement <8 x float> poison, float %133, i32 0, !dbg !179
  %135 = shufflevector <8 x float> %134, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !179
  %136 = fsub contract <8 x float> %132, %135, !dbg !179
  %137 = insertelement <8 x float> poison, float %44, i32 0, !dbg !180
  %138 = shufflevector <8 x float> %137, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !180
  %139 = fmul contract <8 x float> %136, %138, !dbg !180
  %140 = fadd contract <8 x float> %139, zeroinitializer, !dbg !181
  %141 = fcmp ugt <8 x float> %140, zeroinitializer, !dbg !182
  %142 = select <8 x i1> %141, <8 x float> %140, <8 x float> zeroinitializer, !dbg !183
  %143 = getelementptr float, ptr %26, i64 %120, !dbg !178
  call void @llvm.masked.store.v8f32.p0(<8 x float> %132, ptr %143, i32 4, <8 x i1> %69), !dbg !178
  %144 = add i64 %116, 1, !dbg !183
  %145 = add i64 %60, 1, !dbg !183
  %146 = mul i64 %49, 900, !dbg !183
  %147 = mul i64 %144, 30, !dbg !183
  %148 = add i64 %146, %147, !dbg !183
  %149 = add i64 %148, %145, !dbg !183
  %150 = getelementptr float, ptr %21, i64 %149, !dbg !183
  call void @llvm.masked.store.v8f32.p0(<8 x float> %142, ptr %150, i32 4, <8 x i1> %69), !dbg !183
  %151 = add i64 %60, 8, !dbg !170
  br label %59, !dbg !170

152:                                              ; preds = %59
  %153 = add i64 %57, 1, !dbg !170
  br label %56, !dbg !170

154:                                              ; preds = %56
  %155 = add i64 %46, 1, !dbg !170
  br label %45, !dbg !170

156:                                              ; preds = %45
  ret i32 0, !dbg !184
}

define internal i32 @"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !185 {
  %4 = alloca float, i64 8, align 64, !dbg !186
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !187
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !187
  %7 = load ptr, ptr %6, align 8, !dbg !187
  %8 = getelementptr float, ptr %7, i64 53888, !dbg !187
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !187
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !188
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !188
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !188
  %12 = load ptr, ptr %11, align 8, !dbg !188
  %13 = getelementptr float, ptr %12, i64 227616, !dbg !188
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !188
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !189
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !189
  %16 = getelementptr ptr, ptr %15, i32 2, !dbg !189
  %17 = load ptr, ptr %16, align 8, !dbg !189
  %18 = getelementptr float, ptr %17, i64 107776, !dbg !189
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !189
  %19 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !190
  %20 = extractvalue %iree_hal_executable_workgroup_state_v0_t %19, 0, !dbg !190
  %21 = zext i32 %20 to i64, !dbg !190
  %22 = sdiv i64 %21, 2, !dbg !190
  %23 = mul i64 %22, 2, !dbg !190
  %24 = icmp ne i64 %21, %23, !dbg !190
  %25 = icmp slt i64 %21, 0, !dbg !190
  %26 = and i1 %24, %25, !dbg !190
  %27 = add i64 %22, -1, !dbg !190
  %28 = select i1 %26, i64 %27, i64 %22, !dbg !190
  %29 = srem i64 %21, 2, !dbg !190
  %30 = icmp slt i64 %29, 0, !dbg !190
  %31 = add nsw i64 %29, 2, !dbg !190
  %32 = select i1 %30, i64 %31, i64 %29, !dbg !190
  %33 = mul nsw i64 %28, 8, !dbg !190
  %34 = mul nsw i64 %32, 7, !dbg !190
  br label %35, !dbg !190

35:                                               ; preds = %127, %3
  %36 = phi i64 [ %128, %127 ], [ 0, %3 ], !dbg !190
  %37 = icmp slt i64 %36, 8, !dbg !190
  br i1 %37, label %38, label %129, !dbg !190

38:                                               ; preds = %35
  %39 = add i64 %36, %33, !dbg !190
  %40 = getelementptr float, ptr @__constant_64xf32, i64 %39, !dbg !191
  %41 = load <1 x float>, ptr %40, align 4, !dbg !191
  br label %42, !dbg !190

42:                                               ; preds = %125, %38
  %43 = phi i64 [ %126, %125 ], [ 0, %38 ], !dbg !190
  %44 = icmp slt i64 %43, 7, !dbg !190
  br i1 %44, label %45, label %127, !dbg !190

45:                                               ; preds = %123, %42
  %46 = phi i64 [ %124, %123 ], [ 0, %42 ], !dbg !190
  %47 = icmp slt i64 %46, 14, !dbg !190
  br i1 %47, label %48, label %125, !dbg !190

48:                                               ; preds = %45
  %49 = sub i64 14, %46, !dbg !190
  %50 = icmp slt i64 %49, 8, !dbg !190
  %51 = select i1 %50, i64 %49, i64 8, !dbg !190
  %52 = trunc i64 %51 to i32, !dbg !192
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !192
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !192
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !192
  %56 = getelementptr float, ptr %4, i64 0, !dbg !192
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !192
  %57 = mul nsw i64 %46, 2, !dbg !190
  br label %58, !dbg !190

58:                                               ; preds = %103, %48
  %59 = phi i64 [ %104, %103 ], [ 0, %48 ], !dbg !190
  %60 = icmp slt i64 %59, 32, !dbg !190
  br i1 %60, label %61, label %105, !dbg !190

61:                                               ; preds = %101, %58
  %62 = phi i64 [ %102, %101 ], [ 0, %58 ], !dbg !190
  %63 = icmp slt i64 %62, 3, !dbg !190
  br i1 %63, label %64, label %103, !dbg !190

64:                                               ; preds = %61
  %65 = mul nsw i64 %43, 2, !dbg !190
  %66 = mul nsw i64 %32, 14, !dbg !190
  %67 = add i64 %65, %66, !dbg !190
  %68 = add i64 %67, %62, !dbg !190
  br label %69, !dbg !190

69:                                               ; preds = %99, %64
  %70 = phi i64 [ %100, %99 ], [ 0, %64 ], !dbg !190
  %71 = icmp slt i64 %70, %51, !dbg !190
  br i1 %71, label %72, label %101, !dbg !190

72:                                               ; preds = %75, %69
  %73 = phi i64 [ %98, %75 ], [ 0, %69 ], !dbg !190
  %74 = icmp slt i64 %73, 3, !dbg !190
  br i1 %74, label %75, label %99, !dbg !190

75:                                               ; preds = %72
  %76 = mul nsw i64 %70, 2, !dbg !190
  %77 = add i64 %57, %76, !dbg !190
  %78 = add i64 %77, %73, !dbg !190
  %79 = mul nuw nsw i64 %59, 900, !dbg !190
  %80 = mul nuw nsw i64 %68, 30, !dbg !190
  %81 = add nuw nsw i64 %79, %80, !dbg !190
  %82 = add nuw nsw i64 %81, %78, !dbg !190
  %83 = getelementptr inbounds nuw float, ptr %8, i64 %82, !dbg !190
  %84 = load float, ptr %83, align 4, !dbg !190
  %85 = mul nuw nsw i64 %39, 288, !dbg !190
  %86 = mul nuw nsw i64 %59, 9, !dbg !190
  %87 = add nuw nsw i64 %85, %86, !dbg !190
  %88 = mul nuw nsw i64 %62, 3, !dbg !190
  %89 = add nuw nsw i64 %87, %88, !dbg !190
  %90 = add nuw nsw i64 %89, %73, !dbg !190
  %91 = getelementptr inbounds nuw float, ptr %13, i64 %90, !dbg !190
  %92 = load float, ptr %91, align 4, !dbg !190
  %93 = add nuw nsw i64 0, %70, !dbg !190
  %94 = getelementptr inbounds nuw float, ptr %4, i64 %93, !dbg !190
  %95 = load float, ptr %94, align 4, !dbg !190
  %96 = fmul contract float %84, %92, !dbg !193
  %97 = fadd contract float %95, %96, !dbg !194
  store float %97, ptr %94, align 4, !dbg !190
  %98 = add i64 %73, 1, !dbg !190
  br label %72, !dbg !190

99:                                               ; preds = %72
  %100 = add i64 %70, 1, !dbg !190
  br label %69, !dbg !190

101:                                              ; preds = %69
  %102 = add i64 %62, 1, !dbg !190
  br label %61, !dbg !190

103:                                              ; preds = %61
  %104 = add i64 %59, 1, !dbg !190
  br label %58, !dbg !190

105:                                              ; preds = %58
  %106 = icmp sgt i64 %51, 0, !dbg !191
  br i1 %106, label %107, label %123, !dbg !191

107:                                              ; preds = %105
  %108 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %56, i32 4, <8 x i1> %55, <8 x float> poison), !dbg !191
  %109 = extractelement <1 x float> %41, i64 0, !dbg !195
  %110 = insertelement <8 x float> poison, float %109, i32 0, !dbg !195
  %111 = shufflevector <8 x float> %110, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !195
  %112 = fadd contract <8 x float> %108, %111, !dbg !195
  %113 = fcmp ugt <8 x float> %112, zeroinitializer, !dbg !196
  %114 = select <8 x i1> %113, <8 x float> %112, <8 x float> zeroinitializer, !dbg !197
  %115 = add i64 %34, %43, !dbg !197
  %116 = add i64 %115, 1, !dbg !197
  %117 = add i64 %46, 1, !dbg !197
  %118 = mul i64 %39, 256, !dbg !197
  %119 = mul i64 %116, 16, !dbg !197
  %120 = add i64 %118, %119, !dbg !197
  %121 = add i64 %120, %117, !dbg !197
  %122 = getelementptr float, ptr %18, i64 %121, !dbg !197
  call void @llvm.masked.store.v8f32.p0(<8 x float> %114, ptr %122, i32 4, <8 x i1> %55), !dbg !197
  br label %123, !dbg !191

123:                                              ; preds = %107, %105
  %124 = add i64 %46, 8, !dbg !190
  br label %45, !dbg !190

125:                                              ; preds = %45
  %126 = add i64 %43, 1, !dbg !190
  br label %42, !dbg !190

127:                                              ; preds = %42
  %128 = add i64 %36, 1, !dbg !190
  br label %35, !dbg !190

129:                                              ; preds = %35
  ret i32 0, !dbg !198
}

define internal i32 @"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !199 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !200
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !200
  %6 = load ptr, ptr %5, align 8, !dbg !200
  %7 = getelementptr float, ptr %6, i64 82688, !dbg !200
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !200
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !201
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !201
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !201
  %11 = load ptr, ptr %10, align 8, !dbg !201
  %12 = getelementptr float, ptr %11, i64 20736, !dbg !201
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !201
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !202
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !202
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !202
  %16 = load ptr, ptr %15, align 8, !dbg !202
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !202
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !203
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !203
  %19 = zext i32 %18 to i64, !dbg !203
  %20 = sdiv i64 %19, 2, !dbg !203
  %21 = mul i64 %20, 2, !dbg !203
  %22 = icmp ne i64 %19, %21, !dbg !203
  %23 = icmp slt i64 %19, 0, !dbg !203
  %24 = and i1 %22, %23, !dbg !203
  %25 = add i64 %20, -1, !dbg !203
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !203
  %27 = srem i64 %19, 2, !dbg !203
  %28 = icmp slt i64 %27, 0, !dbg !203
  %29 = add nsw i64 %27, 2, !dbg !203
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !203
  %31 = mul nsw i64 %26, 8, !dbg !203
  %32 = mul nsw i64 %30, 7, !dbg !203
  br label %33, !dbg !203

33:                                               ; preds = %161, %3
  %34 = phi i64 [ %162, %161 ], [ 0, %3 ], !dbg !203
  %35 = icmp slt i64 %34, 8, !dbg !203
  br i1 %35, label %36, label %163, !dbg !203

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !203
  br label %38, !dbg !203

38:                                               ; preds = %159, %36
  %39 = phi i64 [ %160, %159 ], [ 0, %36 ], !dbg !203
  %40 = icmp slt i64 %39, 7, !dbg !203
  br i1 %40, label %41, label %161, !dbg !203

41:                                               ; preds = %150, %38
  %42 = phi i64 [ %158, %150 ], [ 0, %38 ], !dbg !203
  %43 = icmp slt i64 %42, 14, !dbg !203
  br i1 %43, label %44, label %159, !dbg !203

44:                                               ; preds = %48, %41
  %45 = phi i64 [ %149, %48 ], [ 0, %41 ], !dbg !203
  %46 = phi <1 x float> [ %148, %48 ], [ zeroinitializer, %41 ], !dbg !203
  %47 = icmp slt i64 %45, 32, !dbg !203
  br i1 %47, label %48, label %150, !dbg !203

48:                                               ; preds = %44
  %49 = add i64 %39, %32, !dbg !203
  %50 = mul nsw i64 %49, 2, !dbg !203
  %51 = mul nsw i64 %42, 2, !dbg !203
  %52 = mul nuw nsw i64 %45, 784, !dbg !203
  %53 = mul nuw nsw i64 %50, 28, !dbg !203
  %54 = add nuw nsw i64 %52, %53, !dbg !203
  %55 = add nuw nsw i64 %54, %51, !dbg !203
  %56 = getelementptr inbounds nuw float, ptr %7, i64 %55, !dbg !203
  %57 = load float, ptr %56, align 4, !dbg !203
  %58 = insertelement <1 x float> poison, float %57, i32 0, !dbg !203
  %59 = add i64 %45, 1, !dbg !203
  %60 = mul nuw nsw i64 %59, 784, !dbg !203
  %61 = add nuw nsw i64 %60, %53, !dbg !203
  %62 = add nuw nsw i64 %61, %51, !dbg !203
  %63 = getelementptr inbounds nuw float, ptr %7, i64 %62, !dbg !203
  %64 = load float, ptr %63, align 4, !dbg !203
  %65 = insertelement <1 x float> poison, float %64, i32 0, !dbg !203
  %66 = add i64 %45, 2, !dbg !203
  %67 = mul nuw nsw i64 %66, 784, !dbg !203
  %68 = add nuw nsw i64 %67, %53, !dbg !203
  %69 = add nuw nsw i64 %68, %51, !dbg !203
  %70 = getelementptr inbounds nuw float, ptr %7, i64 %69, !dbg !203
  %71 = load float, ptr %70, align 4, !dbg !203
  %72 = insertelement <1 x float> poison, float %71, i32 0, !dbg !203
  %73 = add i64 %45, 3, !dbg !203
  %74 = mul nuw nsw i64 %73, 784, !dbg !203
  %75 = add nuw nsw i64 %74, %53, !dbg !203
  %76 = add nuw nsw i64 %75, %51, !dbg !203
  %77 = getelementptr inbounds nuw float, ptr %7, i64 %76, !dbg !203
  %78 = load float, ptr %77, align 4, !dbg !203
  %79 = insertelement <1 x float> poison, float %78, i32 0, !dbg !203
  %80 = add i64 %45, 4, !dbg !203
  %81 = mul nuw nsw i64 %80, 784, !dbg !203
  %82 = add nuw nsw i64 %81, %53, !dbg !203
  %83 = add nuw nsw i64 %82, %51, !dbg !203
  %84 = getelementptr inbounds nuw float, ptr %7, i64 %83, !dbg !203
  %85 = load float, ptr %84, align 4, !dbg !203
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !203
  %87 = add i64 %45, 5, !dbg !203
  %88 = mul nuw nsw i64 %87, 784, !dbg !203
  %89 = add nuw nsw i64 %88, %53, !dbg !203
  %90 = add nuw nsw i64 %89, %51, !dbg !203
  %91 = getelementptr inbounds nuw float, ptr %7, i64 %90, !dbg !203
  %92 = load float, ptr %91, align 4, !dbg !203
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !203
  %94 = add i64 %45, 6, !dbg !203
  %95 = mul nuw nsw i64 %94, 784, !dbg !203
  %96 = add nuw nsw i64 %95, %53, !dbg !203
  %97 = add nuw nsw i64 %96, %51, !dbg !203
  %98 = getelementptr inbounds nuw float, ptr %7, i64 %97, !dbg !203
  %99 = load float, ptr %98, align 4, !dbg !203
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !203
  %101 = add i64 %45, 7, !dbg !203
  %102 = mul nuw nsw i64 %101, 784, !dbg !203
  %103 = add nuw nsw i64 %102, %53, !dbg !203
  %104 = add nuw nsw i64 %103, %51, !dbg !203
  %105 = getelementptr inbounds nuw float, ptr %7, i64 %104, !dbg !203
  %106 = load float, ptr %105, align 4, !dbg !203
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !203
  %108 = mul nuw nsw i64 %37, 32, !dbg !204
  %109 = add nuw nsw i64 %108, %45, !dbg !204
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !204
  %111 = load float, ptr %110, align 4, !dbg !204
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !204
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %112, <1 x float> %46), !dbg !204
  %114 = add nuw nsw i64 %108, %59, !dbg !204
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !204
  %116 = load float, ptr %115, align 4, !dbg !204
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !204
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %65, <1 x float> %117, <1 x float> %113), !dbg !204
  %119 = add nuw nsw i64 %108, %66, !dbg !204
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !204
  %121 = load float, ptr %120, align 4, !dbg !204
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !204
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %122, <1 x float> %118), !dbg !204
  %124 = add nuw nsw i64 %108, %73, !dbg !204
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !204
  %126 = load float, ptr %125, align 4, !dbg !204
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !204
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %127, <1 x float> %123), !dbg !204
  %129 = add nuw nsw i64 %108, %80, !dbg !204
  %130 = getelementptr inbounds nuw float, ptr %12, i64 %129, !dbg !204
  %131 = load float, ptr %130, align 4, !dbg !204
  %132 = insertelement <1 x float> poison, float %131, i32 0, !dbg !204
  %133 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %132, <1 x float> %128), !dbg !204
  %134 = add nuw nsw i64 %108, %87, !dbg !204
  %135 = getelementptr inbounds nuw float, ptr %12, i64 %134, !dbg !204
  %136 = load float, ptr %135, align 4, !dbg !204
  %137 = insertelement <1 x float> poison, float %136, i32 0, !dbg !204
  %138 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %93, <1 x float> %137, <1 x float> %133), !dbg !204
  %139 = add nuw nsw i64 %108, %94, !dbg !204
  %140 = getelementptr inbounds nuw float, ptr %12, i64 %139, !dbg !204
  %141 = load float, ptr %140, align 4, !dbg !204
  %142 = insertelement <1 x float> poison, float %141, i32 0, !dbg !204
  %143 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %100, <1 x float> %142, <1 x float> %138), !dbg !204
  %144 = add nuw nsw i64 %108, %101, !dbg !204
  %145 = getelementptr inbounds nuw float, ptr %12, i64 %144, !dbg !204
  %146 = load float, ptr %145, align 4, !dbg !204
  %147 = insertelement <1 x float> poison, float %146, i32 0, !dbg !204
  %148 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %107, <1 x float> %147, <1 x float> %143), !dbg !204
  %149 = add i64 %45, 8, !dbg !203
  br label %44, !dbg !203

150:                                              ; preds = %44
  %151 = extractelement <1 x float> %46, i64 0, !dbg !203
  %152 = add i64 %32, %39, !dbg !203
  %153 = mul nuw nsw i64 %37, 196, !dbg !203
  %154 = mul nuw nsw i64 %152, 14, !dbg !203
  %155 = add nuw nsw i64 %153, %154, !dbg !203
  %156 = add nuw nsw i64 %155, %42, !dbg !203
  %157 = getelementptr inbounds nuw float, ptr %16, i64 %156, !dbg !203
  store float %151, ptr %157, align 4, !dbg !203
  %158 = add i64 %42, 1, !dbg !203
  br label %41, !dbg !203

159:                                              ; preds = %41
  %160 = add i64 %39, 1, !dbg !203
  br label %38, !dbg !203

161:                                              ; preds = %38
  %162 = add i64 %34, 1, !dbg !203
  br label %33, !dbg !203

163:                                              ; preds = %33
  ret i32 0, !dbg !205
}

define internal i32 @"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !206 {
  %4 = alloca float, i64 8, align 64, !dbg !207
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !208
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !208
  %7 = load ptr, ptr %6, align 8, !dbg !208
  %8 = getelementptr float, ptr %7, i64 107776, !dbg !208
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !208
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !209
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !209
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !209
  %12 = load ptr, ptr %11, align 8, !dbg !209
  %13 = getelementptr float, ptr %12, i64 33824, !dbg !209
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !209
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !210
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !210
  %16 = load ptr, ptr %15, align 8, !dbg !210
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !210
  %17 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !211
  %18 = extractvalue %iree_hal_executable_dispatch_state_v0_t %17, 10, !dbg !211
  %19 = getelementptr ptr, ptr %18, i32 2, !dbg !211
  %20 = load ptr, ptr %19, align 8, !dbg !211
  %21 = getelementptr float, ptr %20, i64 12544, !dbg !211
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 64) ], !dbg !211
  %22 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !212
  %23 = extractvalue %iree_hal_executable_dispatch_state_v0_t %22, 10, !dbg !212
  %24 = getelementptr ptr, ptr %23, i32 3, !dbg !212
  %25 = load ptr, ptr %24, align 8, !dbg !212
  %26 = getelementptr float, ptr %25, i64 28928, !dbg !212
  call void @llvm.assume(i1 true) [ "align"(ptr %26, i64 64) ], !dbg !212
  %27 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !213
  %28 = extractvalue %iree_hal_executable_workgroup_state_v0_t %27, 0, !dbg !213
  %29 = zext i32 %28 to i64, !dbg !213
  %30 = sdiv i64 %29, 2, !dbg !213
  %31 = mul i64 %30, 2, !dbg !213
  %32 = icmp ne i64 %29, %31, !dbg !213
  %33 = icmp slt i64 %29, 0, !dbg !213
  %34 = and i1 %32, %33, !dbg !213
  %35 = add i64 %30, -1, !dbg !213
  %36 = select i1 %34, i64 %35, i64 %30, !dbg !213
  %37 = srem i64 %29, 2, !dbg !213
  %38 = icmp slt i64 %37, 0, !dbg !213
  %39 = add nsw i64 %37, 2, !dbg !213
  %40 = select i1 %38, i64 %39, i64 %37, !dbg !213
  %41 = mul nsw i64 %36, 8, !dbg !213
  %42 = mul nsw i64 %40, 7, !dbg !213
  br label %43, !dbg !213

43:                                               ; preds = %158, %3
  %44 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !213
  %45 = icmp slt i64 %44, 8, !dbg !213
  br i1 %45, label %46, label %160, !dbg !213

46:                                               ; preds = %43
  %47 = add i64 %44, %41, !dbg !213
  %48 = getelementptr float, ptr @__constant_64xf32_2, i64 %47, !dbg !214
  %49 = load <1 x float>, ptr %48, align 4, !dbg !214
  %50 = getelementptr float, ptr @__constant_64xf32_1, i64 %47, !dbg !214
  %51 = load <1 x float>, ptr %50, align 4, !dbg !214
  %52 = getelementptr float, ptr @__constant_64xf32_0, i64 %47, !dbg !214
  %53 = load <1 x float>, ptr %52, align 4, !dbg !214
  %54 = getelementptr float, ptr @__constant_64xf32_3, i64 %47, !dbg !214
  %55 = load <1 x float>, ptr %54, align 4, !dbg !214
  %56 = fadd contract <1 x float> %55, splat (float 0x3EE4F8B580000000), !dbg !215
  %57 = call <1 x float> @llvm.sqrt.v1f32(<1 x float> %56), !dbg !216
  %58 = fdiv <1 x float> splat (float 1.000000e+00), %57, !dbg !216
  br label %59, !dbg !213

59:                                               ; preds = %156, %46
  %60 = phi i64 [ %157, %156 ], [ 0, %46 ], !dbg !213
  %61 = icmp slt i64 %60, 7, !dbg !213
  br i1 %61, label %62, label %158, !dbg !213

62:                                               ; preds = %118, %59
  %63 = phi i64 [ %155, %118 ], [ 0, %59 ], !dbg !213
  %64 = icmp slt i64 %63, 14, !dbg !213
  br i1 %64, label %65, label %156, !dbg !213

65:                                               ; preds = %62
  %66 = sub i64 14, %63, !dbg !213
  %67 = icmp slt i64 %66, 8, !dbg !213
  %68 = select i1 %67, i64 %66, i64 8, !dbg !213
  %69 = trunc i64 %68 to i32, !dbg !217
  %70 = insertelement <8 x i32> poison, i32 %69, i32 0, !dbg !217
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !217
  %72 = icmp sgt <8 x i32> %71, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !217
  %73 = getelementptr float, ptr %4, i64 0, !dbg !217
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %73, i32 4, <8 x i1> %72), !dbg !217
  br label %74, !dbg !213

74:                                               ; preds = %116, %65
  %75 = phi i64 [ %117, %116 ], [ 0, %65 ], !dbg !213
  %76 = icmp slt i64 %75, 64, !dbg !213
  br i1 %76, label %77, label %118, !dbg !213

77:                                               ; preds = %114, %74
  %78 = phi i64 [ %115, %114 ], [ 0, %74 ], !dbg !213
  %79 = icmp slt i64 %78, 3, !dbg !213
  br i1 %79, label %80, label %116, !dbg !213

80:                                               ; preds = %77
  %81 = add i64 %78, %60, !dbg !213
  %82 = add i64 %81, %42, !dbg !213
  br label %83, !dbg !213

83:                                               ; preds = %112, %80
  %84 = phi i64 [ %113, %112 ], [ 0, %80 ], !dbg !213
  %85 = icmp slt i64 %84, %68, !dbg !213
  br i1 %85, label %86, label %114, !dbg !213

86:                                               ; preds = %89, %83
  %87 = phi i64 [ %111, %89 ], [ 0, %83 ], !dbg !213
  %88 = icmp slt i64 %87, 3, !dbg !213
  br i1 %88, label %89, label %112, !dbg !213

89:                                               ; preds = %86
  %90 = add i64 %63, %84, !dbg !213
  %91 = add i64 %90, %87, !dbg !213
  %92 = mul nuw nsw i64 %75, 256, !dbg !213
  %93 = mul nuw nsw i64 %82, 16, !dbg !213
  %94 = add nuw nsw i64 %92, %93, !dbg !213
  %95 = add nuw nsw i64 %94, %91, !dbg !213
  %96 = getelementptr inbounds nuw float, ptr %8, i64 %95, !dbg !213
  %97 = load float, ptr %96, align 4, !dbg !213
  %98 = mul nuw nsw i64 %47, 576, !dbg !213
  %99 = mul nuw nsw i64 %75, 9, !dbg !213
  %100 = add nuw nsw i64 %98, %99, !dbg !213
  %101 = mul nuw nsw i64 %78, 3, !dbg !213
  %102 = add nuw nsw i64 %100, %101, !dbg !213
  %103 = add nuw nsw i64 %102, %87, !dbg !213
  %104 = getelementptr inbounds nuw float, ptr %13, i64 %103, !dbg !213
  %105 = load float, ptr %104, align 4, !dbg !213
  %106 = add nuw nsw i64 0, %84, !dbg !213
  %107 = getelementptr inbounds nuw float, ptr %4, i64 %106, !dbg !213
  %108 = load float, ptr %107, align 4, !dbg !213
  %109 = fmul contract float %97, %105, !dbg !218
  %110 = fadd contract float %108, %109, !dbg !219
  store float %110, ptr %107, align 4, !dbg !213
  %111 = add i64 %87, 1, !dbg !213
  br label %86, !dbg !213

112:                                              ; preds = %86
  %113 = add i64 %84, 1, !dbg !213
  br label %83, !dbg !213

114:                                              ; preds = %83
  %115 = add i64 %78, 1, !dbg !213
  br label %77, !dbg !213

116:                                              ; preds = %77
  %117 = add i64 %75, 1, !dbg !213
  br label %74, !dbg !213

118:                                              ; preds = %74
  %119 = add i64 %42, %60, !dbg !214
  %120 = mul i64 %47, 196, !dbg !214
  %121 = mul i64 %119, 14, !dbg !214
  %122 = add i64 %120, %121, !dbg !214
  %123 = add i64 %122, %63, !dbg !214
  %124 = getelementptr float, ptr %16, i64 %123, !dbg !214
  %125 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %124, i32 4, <8 x i1> %72, <8 x float> poison), !dbg !214
  %126 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %73, i32 4, <8 x i1> %72, <8 x float> poison), !dbg !214
  %127 = extractelement <1 x float> %51, i64 0, !dbg !220
  %128 = insertelement <8 x float> poison, float %127, i32 0, !dbg !220
  %129 = shufflevector <8 x float> %128, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !220
  %130 = fadd contract <8 x float> %126, %129, !dbg !220
  %131 = extractelement <1 x float> %49, i64 0, !dbg !221
  %132 = insertelement <8 x float> poison, float %131, i32 0, !dbg !221
  %133 = shufflevector <8 x float> %132, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !221
  %134 = fadd contract <8 x float> %125, %133, !dbg !221
  %135 = fadd contract <8 x float> %134, %130, !dbg !222
  %136 = extractelement <1 x float> %53, i64 0, !dbg !223
  %137 = insertelement <8 x float> poison, float %136, i32 0, !dbg !223
  %138 = shufflevector <8 x float> %137, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !223
  %139 = fsub contract <8 x float> %135, %138, !dbg !223
  %140 = extractelement <1 x float> %58, i64 0, !dbg !224
  %141 = insertelement <8 x float> poison, float %140, i32 0, !dbg !224
  %142 = shufflevector <8 x float> %141, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !224
  %143 = fmul contract <8 x float> %139, %142, !dbg !224
  %144 = fadd contract <8 x float> %143, zeroinitializer, !dbg !225
  %145 = fcmp ugt <8 x float> %144, zeroinitializer, !dbg !226
  %146 = select <8 x i1> %145, <8 x float> %144, <8 x float> zeroinitializer, !dbg !227
  %147 = getelementptr float, ptr %26, i64 %123, !dbg !222
  call void @llvm.masked.store.v8f32.p0(<8 x float> %135, ptr %147, i32 4, <8 x i1> %72), !dbg !222
  %148 = add i64 %119, 1, !dbg !227
  %149 = add i64 %63, 1, !dbg !227
  %150 = mul i64 %47, 256, !dbg !227
  %151 = mul i64 %148, 16, !dbg !227
  %152 = add i64 %150, %151, !dbg !227
  %153 = add i64 %152, %149, !dbg !227
  %154 = getelementptr float, ptr %21, i64 %153, !dbg !227
  call void @llvm.masked.store.v8f32.p0(<8 x float> %146, ptr %154, i32 4, <8 x i1> %72), !dbg !227
  %155 = add i64 %63, 8, !dbg !213
  br label %62, !dbg !213

156:                                              ; preds = %62
  %157 = add i64 %60, 1, !dbg !213
  br label %59, !dbg !213

158:                                              ; preds = %59
  %159 = add i64 %44, 1, !dbg !213
  br label %43, !dbg !213

160:                                              ; preds = %43
  ret i32 0, !dbg !228
}

define internal i32 @"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !229 {
  %4 = alloca float, i64 7, align 64, !dbg !230
  %5 = alloca float, i64 7, align 64, !dbg !231
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !232
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !232
  %8 = load ptr, ptr %7, align 8, !dbg !232
  %9 = getelementptr float, ptr %8, i64 12544, !dbg !232
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !232
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !233
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !233
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !233
  %13 = load ptr, ptr %12, align 8, !dbg !233
  %14 = getelementptr float, ptr %13, i64 246048, !dbg !233
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !233
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !234
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !234
  %17 = getelementptr ptr, ptr %16, i32 1, !dbg !234
  %18 = load ptr, ptr %17, align 8, !dbg !234
  %19 = getelementptr float, ptr %18, i64 319776, !dbg !234
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !234
  %20 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !235
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %20, 10, !dbg !235
  %22 = getelementptr ptr, ptr %21, i32 2, !dbg !235
  %23 = load ptr, ptr %22, align 8, !dbg !235
  %24 = getelementptr float, ptr %23, i64 41472, !dbg !235
  call void @llvm.assume(i1 true) [ "align"(ptr %24, i64 64) ], !dbg !235
  %25 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !230
  %26 = extractvalue %iree_hal_executable_workgroup_state_v0_t %25, 0, !dbg !230
  %27 = zext i32 %26 to i64, !dbg !230
  %28 = sdiv i64 %27, 7, !dbg !230
  %29 = mul i64 %28, 7, !dbg !230
  %30 = icmp ne i64 %27, %29, !dbg !230
  %31 = icmp slt i64 %27, 0, !dbg !230
  %32 = and i1 %30, %31, !dbg !230
  %33 = add i64 %28, -1, !dbg !230
  %34 = select i1 %32, i64 %33, i64 %28, !dbg !230
  %35 = srem i64 %27, 7, !dbg !230
  %36 = icmp slt i64 %35, 0, !dbg !230
  %37 = add nsw i64 %35, 7, !dbg !230
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !230
  %39 = mul nsw i64 %34, 16, !dbg !230
  %40 = getelementptr float, ptr %5, i64 0, !dbg !236
  store <7 x float> zeroinitializer, ptr %40, align 4, !dbg !236
  br label %41, !dbg !230

41:                                               ; preds = %99, %3
  %42 = phi i64 [ %116, %99 ], [ 0, %3 ], !dbg !230
  %43 = icmp slt i64 %42, 16, !dbg !230
  br i1 %43, label %44, label %117, !dbg !230

44:                                               ; preds = %41
  %45 = add i64 %42, %39, !dbg !230
  br label %46, !dbg !230

46:                                               ; preds = %49, %44
  %47 = phi i64 [ %54, %49 ], [ 0, %44 ], !dbg !230
  %48 = icmp slt i64 %47, 7, !dbg !230
  br i1 %48, label %49, label %55, !dbg !230

49:                                               ; preds = %46
  %50 = add nuw nsw i64 0, %47, !dbg !230
  %51 = getelementptr inbounds nuw float, ptr %5, i64 %50, !dbg !230
  %52 = load float, ptr %51, align 4, !dbg !230
  %53 = getelementptr inbounds nuw float, ptr %4, i64 %50, !dbg !230
  store float %52, ptr %53, align 4, !dbg !230
  %54 = add i64 %47, 1, !dbg !230
  br label %46, !dbg !230

55:                                               ; preds = %97, %46
  %56 = phi i64 [ %98, %97 ], [ 0, %46 ], !dbg !230
  %57 = icmp slt i64 %56, 64, !dbg !230
  br i1 %57, label %58, label %99, !dbg !230

58:                                               ; preds = %95, %55
  %59 = phi i64 [ %96, %95 ], [ 0, %55 ], !dbg !230
  %60 = icmp slt i64 %59, 3, !dbg !230
  br i1 %60, label %61, label %97, !dbg !230

61:                                               ; preds = %58
  %62 = mul nsw i64 %38, 2, !dbg !230
  %63 = add i64 %62, %59, !dbg !230
  br label %64, !dbg !230

64:                                               ; preds = %93, %61
  %65 = phi i64 [ %94, %93 ], [ 0, %61 ], !dbg !230
  %66 = icmp slt i64 %65, 7, !dbg !230
  br i1 %66, label %67, label %95, !dbg !230

67:                                               ; preds = %70, %64
  %68 = phi i64 [ %92, %70 ], [ 0, %64 ], !dbg !230
  %69 = icmp slt i64 %68, 3, !dbg !230
  br i1 %69, label %70, label %93, !dbg !230

70:                                               ; preds = %67
  %71 = mul nsw i64 %65, 2, !dbg !230
  %72 = add i64 %71, %68, !dbg !230
  %73 = mul nuw nsw i64 %56, 256, !dbg !230
  %74 = mul nuw nsw i64 %63, 16, !dbg !230
  %75 = add nuw nsw i64 %73, %74, !dbg !230
  %76 = add nuw nsw i64 %75, %72, !dbg !230
  %77 = getelementptr inbounds nuw float, ptr %9, i64 %76, !dbg !230
  %78 = load float, ptr %77, align 4, !dbg !230
  %79 = mul nuw nsw i64 %45, 576, !dbg !230
  %80 = mul nuw nsw i64 %56, 9, !dbg !230
  %81 = add nuw nsw i64 %79, %80, !dbg !230
  %82 = mul nuw nsw i64 %59, 3, !dbg !230
  %83 = add nuw nsw i64 %81, %82, !dbg !230
  %84 = add nuw nsw i64 %83, %68, !dbg !230
  %85 = getelementptr inbounds nuw float, ptr %14, i64 %84, !dbg !230
  %86 = load float, ptr %85, align 4, !dbg !230
  %87 = add nuw nsw i64 0, %65, !dbg !230
  %88 = getelementptr inbounds nuw float, ptr %4, i64 %87, !dbg !230
  %89 = load float, ptr %88, align 4, !dbg !230
  %90 = fmul contract float %78, %86, !dbg !237
  %91 = fadd contract float %89, %90, !dbg !238
  store float %91, ptr %88, align 4, !dbg !230
  %92 = add i64 %68, 1, !dbg !230
  br label %67, !dbg !230

93:                                               ; preds = %67
  %94 = add i64 %65, 1, !dbg !230
  br label %64, !dbg !230

95:                                               ; preds = %64
  %96 = add i64 %59, 1, !dbg !230
  br label %58, !dbg !230

97:                                               ; preds = %58
  %98 = add i64 %56, 1, !dbg !230
  br label %55, !dbg !230

99:                                               ; preds = %55
  %100 = getelementptr float, ptr %4, i64 0, !dbg !239
  %101 = load <7 x float>, ptr %100, align 4, !dbg !239
  %102 = getelementptr float, ptr %19, i64 %45, !dbg !239
  %103 = load <1 x float>, ptr %102, align 4, !dbg !239
  %104 = extractelement <1 x float> %103, i64 0, !dbg !240
  %105 = insertelement <7 x float> poison, float %104, i32 0, !dbg !240
  %106 = shufflevector <7 x float> %105, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !240
  %107 = fadd contract <7 x float> %101, %106, !dbg !240
  %108 = fcmp ugt <7 x float> %107, zeroinitializer, !dbg !241
  %109 = select <7 x i1> %108, <7 x float> %107, <7 x float> zeroinitializer, !dbg !242
  %110 = add i64 %38, 1, !dbg !230
  %111 = mul i64 %45, 81, !dbg !230
  %112 = mul i64 %110, 9, !dbg !230
  %113 = add i64 %111, %112, !dbg !230
  %114 = add i64 %113, 1, !dbg !230
  %115 = getelementptr float, ptr %24, i64 %114, !dbg !230
  store <7 x float> %109, ptr %115, align 4, !dbg !230
  %116 = add i64 %42, 1, !dbg !230
  br label %41, !dbg !230

117:                                              ; preds = %41
  ret i32 0, !dbg !243
}

define internal i32 @"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !244 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !245
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !245
  %6 = load ptr, ptr %5, align 8, !dbg !245
  %7 = getelementptr float, ptr %6, i64 28928, !dbg !245
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !245
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !246
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !246
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !246
  %11 = load ptr, ptr %10, align 8, !dbg !246
  %12 = getelementptr float, ptr %11, i64 12544, !dbg !246
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !246
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !247
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !247
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !247
  %16 = load ptr, ptr %15, align 8, !dbg !247
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !247
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !248
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !248
  %19 = zext i32 %18 to i64, !dbg !248
  %20 = mul nsw i64 %19, 16, !dbg !248
  br label %21, !dbg !248

21:                                               ; preds = %147, %3
  %22 = phi i64 [ %148, %147 ], [ 0, %3 ], !dbg !248
  %23 = icmp slt i64 %22, 16, !dbg !248
  br i1 %23, label %24, label %149, !dbg !248

24:                                               ; preds = %21
  %25 = add i64 %22, %20, !dbg !248
  br label %26, !dbg !248

26:                                               ; preds = %145, %24
  %27 = phi i64 [ %146, %145 ], [ 0, %24 ], !dbg !248
  %28 = icmp slt i64 %27, 7, !dbg !248
  br i1 %28, label %29, label %147, !dbg !248

29:                                               ; preds = %137, %26
  %30 = phi i64 [ %144, %137 ], [ 0, %26 ], !dbg !248
  %31 = icmp slt i64 %30, 7, !dbg !248
  br i1 %31, label %32, label %145, !dbg !248

32:                                               ; preds = %36, %29
  %33 = phi i64 [ %136, %36 ], [ 0, %29 ], !dbg !248
  %34 = phi <1 x float> [ %135, %36 ], [ zeroinitializer, %29 ], !dbg !248
  %35 = icmp slt i64 %33, 64, !dbg !248
  br i1 %35, label %36, label %137, !dbg !248

36:                                               ; preds = %32
  %37 = mul nsw i64 %27, 2, !dbg !248
  %38 = mul nsw i64 %30, 2, !dbg !248
  %39 = mul nuw nsw i64 %33, 196, !dbg !248
  %40 = mul nuw nsw i64 %37, 14, !dbg !248
  %41 = add nuw nsw i64 %39, %40, !dbg !248
  %42 = add nuw nsw i64 %41, %38, !dbg !248
  %43 = getelementptr inbounds nuw float, ptr %7, i64 %42, !dbg !248
  %44 = load float, ptr %43, align 4, !dbg !248
  %45 = insertelement <1 x float> poison, float %44, i32 0, !dbg !248
  %46 = add i64 %33, 1, !dbg !248
  %47 = mul nuw nsw i64 %46, 196, !dbg !248
  %48 = add nuw nsw i64 %47, %40, !dbg !248
  %49 = add nuw nsw i64 %48, %38, !dbg !248
  %50 = getelementptr inbounds nuw float, ptr %7, i64 %49, !dbg !248
  %51 = load float, ptr %50, align 4, !dbg !248
  %52 = insertelement <1 x float> poison, float %51, i32 0, !dbg !248
  %53 = add i64 %33, 2, !dbg !248
  %54 = mul nuw nsw i64 %53, 196, !dbg !248
  %55 = add nuw nsw i64 %54, %40, !dbg !248
  %56 = add nuw nsw i64 %55, %38, !dbg !248
  %57 = getelementptr inbounds nuw float, ptr %7, i64 %56, !dbg !248
  %58 = load float, ptr %57, align 4, !dbg !248
  %59 = insertelement <1 x float> poison, float %58, i32 0, !dbg !248
  %60 = add i64 %33, 3, !dbg !248
  %61 = mul nuw nsw i64 %60, 196, !dbg !248
  %62 = add nuw nsw i64 %61, %40, !dbg !248
  %63 = add nuw nsw i64 %62, %38, !dbg !248
  %64 = getelementptr inbounds nuw float, ptr %7, i64 %63, !dbg !248
  %65 = load float, ptr %64, align 4, !dbg !248
  %66 = insertelement <1 x float> poison, float %65, i32 0, !dbg !248
  %67 = add i64 %33, 4, !dbg !248
  %68 = mul nuw nsw i64 %67, 196, !dbg !248
  %69 = add nuw nsw i64 %68, %40, !dbg !248
  %70 = add nuw nsw i64 %69, %38, !dbg !248
  %71 = getelementptr inbounds nuw float, ptr %7, i64 %70, !dbg !248
  %72 = load float, ptr %71, align 4, !dbg !248
  %73 = insertelement <1 x float> poison, float %72, i32 0, !dbg !248
  %74 = add i64 %33, 5, !dbg !248
  %75 = mul nuw nsw i64 %74, 196, !dbg !248
  %76 = add nuw nsw i64 %75, %40, !dbg !248
  %77 = add nuw nsw i64 %76, %38, !dbg !248
  %78 = getelementptr inbounds nuw float, ptr %7, i64 %77, !dbg !248
  %79 = load float, ptr %78, align 4, !dbg !248
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !248
  %81 = add i64 %33, 6, !dbg !248
  %82 = mul nuw nsw i64 %81, 196, !dbg !248
  %83 = add nuw nsw i64 %82, %40, !dbg !248
  %84 = add nuw nsw i64 %83, %38, !dbg !248
  %85 = getelementptr inbounds nuw float, ptr %7, i64 %84, !dbg !248
  %86 = load float, ptr %85, align 4, !dbg !248
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !248
  %88 = add i64 %33, 7, !dbg !248
  %89 = mul nuw nsw i64 %88, 196, !dbg !248
  %90 = add nuw nsw i64 %89, %40, !dbg !248
  %91 = add nuw nsw i64 %90, %38, !dbg !248
  %92 = getelementptr inbounds nuw float, ptr %7, i64 %91, !dbg !248
  %93 = load float, ptr %92, align 4, !dbg !248
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !248
  %95 = mul nuw nsw i64 %25, 64, !dbg !249
  %96 = add nuw nsw i64 %95, %33, !dbg !249
  %97 = getelementptr inbounds nuw float, ptr %12, i64 %96, !dbg !249
  %98 = load float, ptr %97, align 4, !dbg !249
  %99 = insertelement <1 x float> poison, float %98, i32 0, !dbg !249
  %100 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %45, <1 x float> %99, <1 x float> %34), !dbg !249
  %101 = add nuw nsw i64 %95, %46, !dbg !249
  %102 = getelementptr inbounds nuw float, ptr %12, i64 %101, !dbg !249
  %103 = load float, ptr %102, align 4, !dbg !249
  %104 = insertelement <1 x float> poison, float %103, i32 0, !dbg !249
  %105 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %104, <1 x float> %100), !dbg !249
  %106 = add nuw nsw i64 %95, %53, !dbg !249
  %107 = getelementptr inbounds nuw float, ptr %12, i64 %106, !dbg !249
  %108 = load float, ptr %107, align 4, !dbg !249
  %109 = insertelement <1 x float> poison, float %108, i32 0, !dbg !249
  %110 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %109, <1 x float> %105), !dbg !249
  %111 = add nuw nsw i64 %95, %60, !dbg !249
  %112 = getelementptr inbounds nuw float, ptr %12, i64 %111, !dbg !249
  %113 = load float, ptr %112, align 4, !dbg !249
  %114 = insertelement <1 x float> poison, float %113, i32 0, !dbg !249
  %115 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %114, <1 x float> %110), !dbg !249
  %116 = add nuw nsw i64 %95, %67, !dbg !249
  %117 = getelementptr inbounds nuw float, ptr %12, i64 %116, !dbg !249
  %118 = load float, ptr %117, align 4, !dbg !249
  %119 = insertelement <1 x float> poison, float %118, i32 0, !dbg !249
  %120 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %119, <1 x float> %115), !dbg !249
  %121 = add nuw nsw i64 %95, %74, !dbg !249
  %122 = getelementptr inbounds nuw float, ptr %12, i64 %121, !dbg !249
  %123 = load float, ptr %122, align 4, !dbg !249
  %124 = insertelement <1 x float> poison, float %123, i32 0, !dbg !249
  %125 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %124, <1 x float> %120), !dbg !249
  %126 = add nuw nsw i64 %95, %81, !dbg !249
  %127 = getelementptr inbounds nuw float, ptr %12, i64 %126, !dbg !249
  %128 = load float, ptr %127, align 4, !dbg !249
  %129 = insertelement <1 x float> poison, float %128, i32 0, !dbg !249
  %130 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %129, <1 x float> %125), !dbg !249
  %131 = add nuw nsw i64 %95, %88, !dbg !249
  %132 = getelementptr inbounds nuw float, ptr %12, i64 %131, !dbg !249
  %133 = load float, ptr %132, align 4, !dbg !249
  %134 = insertelement <1 x float> poison, float %133, i32 0, !dbg !249
  %135 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %94, <1 x float> %134, <1 x float> %130), !dbg !249
  %136 = add i64 %33, 8, !dbg !248
  br label %32, !dbg !248

137:                                              ; preds = %32
  %138 = extractelement <1 x float> %34, i64 0, !dbg !248
  %139 = mul nuw nsw i64 %25, 49, !dbg !248
  %140 = mul nuw nsw i64 %27, 7, !dbg !248
  %141 = add nuw nsw i64 %139, %140, !dbg !248
  %142 = add nuw nsw i64 %141, %30, !dbg !248
  %143 = getelementptr inbounds nuw float, ptr %16, i64 %142, !dbg !248
  store float %138, ptr %143, align 4, !dbg !248
  %144 = add i64 %30, 1, !dbg !248
  br label %29, !dbg !248

145:                                              ; preds = %29
  %146 = add i64 %27, 1, !dbg !248
  br label %26, !dbg !248

147:                                              ; preds = %26
  %148 = add i64 %22, 1, !dbg !248
  br label %21, !dbg !248

149:                                              ; preds = %21
  ret i32 0, !dbg !250
}

define internal i32 @"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !251 {
  %4 = alloca float, i64 7, align 64, !dbg !252
  %5 = alloca float, i64 7, align 64, !dbg !253
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !254
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !254
  %8 = load ptr, ptr %7, align 8, !dbg !254
  %9 = getelementptr float, ptr %8, i64 41472, !dbg !254
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !254
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !255
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !255
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !255
  %13 = load ptr, ptr %12, align 8, !dbg !255
  %14 = getelementptr float, ptr %13, i64 70688, !dbg !255
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !255
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !256
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !256
  %17 = load ptr, ptr %16, align 8, !dbg !256
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !256
  %18 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !257
  %19 = extractvalue %iree_hal_executable_dispatch_state_v0_t %18, 10, !dbg !257
  %20 = getelementptr ptr, ptr %19, i32 1, !dbg !257
  %21 = load ptr, ptr %20, align 8, !dbg !257
  %22 = getelementptr float, ptr %21, i64 218272, !dbg !257
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !257
  %23 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !258
  %24 = extractvalue %iree_hal_executable_dispatch_state_v0_t %23, 10, !dbg !258
  %25 = getelementptr ptr, ptr %24, i32 1, !dbg !258
  %26 = load ptr, ptr %25, align 8, !dbg !258
  %27 = getelementptr float, ptr %26, i64 218144, !dbg !258
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !258
  %28 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !259
  %29 = extractvalue %iree_hal_executable_dispatch_state_v0_t %28, 10, !dbg !259
  %30 = getelementptr ptr, ptr %29, i32 2, !dbg !259
  %31 = load ptr, ptr %30, align 8, !dbg !259
  %32 = getelementptr float, ptr %31, i64 6272, !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %32, i64 64) ], !dbg !259
  %33 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !252
  %34 = extractvalue %iree_hal_executable_workgroup_state_v0_t %33, 0, !dbg !252
  %35 = zext i32 %34 to i64, !dbg !252
  %36 = sdiv i64 %35, 7, !dbg !252
  %37 = mul i64 %36, 7, !dbg !252
  %38 = icmp ne i64 %35, %37, !dbg !252
  %39 = icmp slt i64 %35, 0, !dbg !252
  %40 = and i1 %38, %39, !dbg !252
  %41 = add i64 %36, -1, !dbg !252
  %42 = select i1 %40, i64 %41, i64 %36, !dbg !252
  %43 = srem i64 %35, 7, !dbg !252
  %44 = icmp slt i64 %43, 0, !dbg !252
  %45 = add nsw i64 %43, 7, !dbg !252
  %46 = select i1 %44, i64 %45, i64 %43, !dbg !252
  %47 = mul nsw i64 %42, 16, !dbg !252
  %48 = getelementptr float, ptr %5, i64 0, !dbg !260
  store <7 x float> zeroinitializer, ptr %48, align 4, !dbg !260
  br label %49, !dbg !252

49:                                               ; preds = %105, %3
  %50 = phi i64 [ %130, %105 ], [ 0, %3 ], !dbg !252
  %51 = icmp slt i64 %50, 16, !dbg !252
  br i1 %51, label %52, label %131, !dbg !252

52:                                               ; preds = %49
  %53 = add i64 %50, %47, !dbg !252
  br label %54, !dbg !252

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %62, %57 ], [ 0, %52 ], !dbg !252
  %56 = icmp slt i64 %55, 7, !dbg !252
  br i1 %56, label %57, label %63, !dbg !252

57:                                               ; preds = %54
  %58 = add nuw nsw i64 0, %55, !dbg !252
  %59 = getelementptr inbounds nuw float, ptr %5, i64 %58, !dbg !252
  %60 = load float, ptr %59, align 4, !dbg !252
  %61 = getelementptr inbounds nuw float, ptr %4, i64 %58, !dbg !252
  store float %60, ptr %61, align 4, !dbg !252
  %62 = add i64 %55, 1, !dbg !252
  br label %54, !dbg !252

63:                                               ; preds = %103, %54
  %64 = phi i64 [ %104, %103 ], [ 0, %54 ], !dbg !252
  %65 = icmp slt i64 %64, 128, !dbg !252
  br i1 %65, label %66, label %105, !dbg !252

66:                                               ; preds = %101, %63
  %67 = phi i64 [ %102, %101 ], [ 0, %63 ], !dbg !252
  %68 = icmp slt i64 %67, 3, !dbg !252
  br i1 %68, label %69, label %103, !dbg !252

69:                                               ; preds = %66
  %70 = add i64 %67, %46, !dbg !252
  br label %71, !dbg !252

71:                                               ; preds = %99, %69
  %72 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !252
  %73 = icmp slt i64 %72, 7, !dbg !252
  br i1 %73, label %74, label %101, !dbg !252

74:                                               ; preds = %77, %71
  %75 = phi i64 [ %98, %77 ], [ 0, %71 ], !dbg !252
  %76 = icmp slt i64 %75, 3, !dbg !252
  br i1 %76, label %77, label %99, !dbg !252

77:                                               ; preds = %74
  %78 = add i64 %72, %75, !dbg !252
  %79 = mul nuw nsw i64 %64, 81, !dbg !252
  %80 = mul nuw nsw i64 %70, 9, !dbg !252
  %81 = add nuw nsw i64 %79, %80, !dbg !252
  %82 = add nuw nsw i64 %81, %78, !dbg !252
  %83 = getelementptr inbounds nuw float, ptr %9, i64 %82, !dbg !252
  %84 = load float, ptr %83, align 4, !dbg !252
  %85 = mul nuw nsw i64 %53, 1152, !dbg !252
  %86 = mul nuw nsw i64 %64, 9, !dbg !252
  %87 = add nuw nsw i64 %85, %86, !dbg !252
  %88 = mul nuw nsw i64 %67, 3, !dbg !252
  %89 = add nuw nsw i64 %87, %88, !dbg !252
  %90 = add nuw nsw i64 %89, %75, !dbg !252
  %91 = getelementptr inbounds nuw float, ptr %14, i64 %90, !dbg !252
  %92 = load float, ptr %91, align 4, !dbg !252
  %93 = add nuw nsw i64 0, %72, !dbg !252
  %94 = getelementptr inbounds nuw float, ptr %4, i64 %93, !dbg !252
  %95 = load float, ptr %94, align 4, !dbg !252
  %96 = fmul contract float %84, %92, !dbg !261
  %97 = fadd contract float %95, %96, !dbg !262
  store float %97, ptr %94, align 4, !dbg !252
  %98 = add i64 %75, 1, !dbg !252
  br label %74, !dbg !252

99:                                               ; preds = %74
  %100 = add i64 %72, 1, !dbg !252
  br label %71, !dbg !252

101:                                              ; preds = %71
  %102 = add i64 %67, 1, !dbg !252
  br label %66, !dbg !252

103:                                              ; preds = %66
  %104 = add i64 %64, 1, !dbg !252
  br label %63, !dbg !252

105:                                              ; preds = %63
  %106 = mul i64 %53, 49, !dbg !263
  %107 = mul i64 %46, 7, !dbg !263
  %108 = add i64 %106, %107, !dbg !263
  %109 = add i64 %108, 0, !dbg !263
  %110 = getelementptr float, ptr %17, i64 %109, !dbg !263
  %111 = load <7 x float>, ptr %110, align 4, !dbg !263
  %112 = getelementptr float, ptr %22, i64 %53, !dbg !263
  %113 = load <1 x float>, ptr %112, align 4, !dbg !263
  %114 = getelementptr float, ptr %4, i64 0, !dbg !263
  %115 = load <7 x float>, ptr %114, align 4, !dbg !263
  %116 = getelementptr float, ptr %27, i64 %53, !dbg !263
  %117 = load <1 x float>, ptr %116, align 4, !dbg !263
  %118 = extractelement <1 x float> %117, i64 0, !dbg !264
  %119 = insertelement <7 x float> poison, float %118, i32 0, !dbg !264
  %120 = shufflevector <7 x float> %119, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !264
  %121 = fadd contract <7 x float> %115, %120, !dbg !264
  %122 = extractelement <1 x float> %113, i64 0, !dbg !265
  %123 = insertelement <7 x float> poison, float %122, i32 0, !dbg !265
  %124 = shufflevector <7 x float> %123, <7 x float> poison, <7 x i32> zeroinitializer, !dbg !265
  %125 = fadd contract <7 x float> %111, %124, !dbg !265
  %126 = fadd contract <7 x float> %125, %121, !dbg !266
  %127 = fcmp ugt <7 x float> %126, zeroinitializer, !dbg !267
  %128 = select <7 x i1> %127, <7 x float> %126, <7 x float> zeroinitializer, !dbg !268
  %129 = getelementptr float, ptr %32, i64 %109, !dbg !252
  store <7 x float> %128, ptr %129, align 4, !dbg !252
  %130 = add i64 %50, 1, !dbg !252
  br label %49, !dbg !252

131:                                              ; preds = %49
  ret i32 0, !dbg !269
}

define internal i32 @"main_graph$async_dispatch_12_matvec_like_6272_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !270 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !271
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !271
  %6 = load ptr, ptr %5, align 8, !dbg !271
  %7 = getelementptr float, ptr %6, i64 6272, !dbg !271
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !271
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !272
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !272
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !272
  %11 = load ptr, ptr %10, align 8, !dbg !272
  %12 = getelementptr float, ptr %11, i64 6272, !dbg !272
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !272
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !273
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !273
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !273
  %16 = load ptr, ptr %15, align 8, !dbg !273
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !273
  br label %17, !dbg !274

17:                                               ; preds = %21, %3
  %18 = phi i64 [ %30, %21 ], [ 0, %3 ], !dbg !274
  %19 = phi <1 x float> [ %29, %21 ], [ zeroinitializer, %3 ], !dbg !274
  %20 = icmp slt i64 %18, 6272, !dbg !274
  br i1 %20, label %21, label %31, !dbg !274

21:                                               ; preds = %17
  %22 = getelementptr float, ptr %7, i64 %18, !dbg !274
  %23 = load <8 x float>, ptr %22, align 4, !dbg !274
  %24 = getelementptr float, ptr %12, i64 %18, !dbg !274
  %25 = load <8 x float>, ptr %24, align 4, !dbg !274
  %26 = extractelement <1 x float> %19, i64 0, !dbg !274
  %27 = fmul contract <8 x float> %23, %25, !dbg !275
  %28 = call reassoc float @llvm.vector.reduce.fadd.v8f32(float %26, <8 x float> %27), !dbg !275
  %29 = insertelement <1 x float> poison, float %28, i32 0, !dbg !274
  %30 = add i64 %18, 8, !dbg !274
  br label %17, !dbg !274

31:                                               ; preds = %17
  %32 = extractelement <1 x float> %19, i64 0, !dbg !276
  %33 = fadd contract float %32, 0x3F7F9B8C40000000, !dbg !277
  store float %33, ptr %16, align 4, !dbg !277
  ret i32 0, !dbg !278
}

define internal i32 @"main_graph$async_dispatch_13_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !279 {
  ret i32 0, !dbg !280
}

define internal i32 @"main_graph$async_dispatch_14_matvec_like_6272_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !281 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !282
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !282
  %6 = load ptr, ptr %5, align 8, !dbg !282
  %7 = getelementptr float, ptr %6, i64 6272, !dbg !282
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !282
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !283
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !283
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !283
  %11 = load ptr, ptr %10, align 8, !dbg !283
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !283
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !284
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !284
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !284
  %15 = load ptr, ptr %14, align 8, !dbg !284
  %16 = getelementptr float, ptr %15, i64 16, !dbg !284
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !284
  br label %17, !dbg !285

17:                                               ; preds = %21, %3
  %18 = phi i64 [ %30, %21 ], [ 0, %3 ], !dbg !285
  %19 = phi <1 x float> [ %29, %21 ], [ zeroinitializer, %3 ], !dbg !285
  %20 = icmp slt i64 %18, 6272, !dbg !285
  br i1 %20, label %21, label %31, !dbg !285

21:                                               ; preds = %17
  %22 = getelementptr float, ptr %7, i64 %18, !dbg !285
  %23 = load <8 x float>, ptr %22, align 4, !dbg !285
  %24 = getelementptr float, ptr %11, i64 %18, !dbg !285
  %25 = load <8 x float>, ptr %24, align 4, !dbg !285
  %26 = extractelement <1 x float> %19, i64 0, !dbg !285
  %27 = fmul contract <8 x float> %23, %25, !dbg !286
  %28 = call reassoc float @llvm.vector.reduce.fadd.v8f32(float %26, <8 x float> %27), !dbg !286
  %29 = insertelement <1 x float> poison, float %28, i32 0, !dbg !285
  %30 = add i64 %18, 8, !dbg !285
  br label %17, !dbg !285

31:                                               ; preds = %17
  %32 = extractelement <1 x float> %19, i64 0, !dbg !287
  %33 = fadd contract float %32, 0x3F57804AC0000000, !dbg !288
  %34 = fneg contract float %33, !dbg !289
  %35 = fcmp uge float %34, 0xC055F33340000000, !dbg !290
  %36 = select i1 %35, float %34, float 0xC055F33340000000, !dbg !290
  %37 = fcmp ule float %36, 0x4056333340000000, !dbg !290
  %38 = select i1 %37, float %36, float 0x4056333340000000, !dbg !290
  %39 = call float @llvm.fma.f32(float %38, float 0x3FF7154760000000, float 5.000000e-01), !dbg !290
  %40 = call float @llvm.floor.f32(float %39), !dbg !290
  %41 = fcmp uge float %40, -1.270000e+02, !dbg !290
  %42 = select i1 %41, float %40, float -1.270000e+02, !dbg !290
  %43 = fcmp ule float %42, 1.270000e+02, !dbg !290
  %44 = select i1 %43, float %42, float 1.270000e+02, !dbg !290
  %45 = call float @llvm.fma.f32(float 0xBFE6300000000000, float %44, float %38), !dbg !290
  %46 = call float @llvm.fma.f32(float 0x3F2BD01060000000, float %44, float %45), !dbg !290
  %47 = call float @llvm.fma.f32(float %46, float 0x3F2A0D2CE0000000, float 0x3F56E879C0000000), !dbg !290
  %48 = call float @llvm.fma.f32(float %47, float %46, float 0x3F81112100000000), !dbg !290
  %49 = call float @llvm.fma.f32(float %48, float %46, float 0x3FA5553820000000), !dbg !290
  %50 = call float @llvm.fma.f32(float %49, float %46, float 0x3FC5555540000000), !dbg !290
  %51 = call float @llvm.fma.f32(float %50, float %46, float 5.000000e-01), !dbg !290
  %52 = fmul contract float %46, %46, !dbg !290
  %53 = call float @llvm.fma.f32(float %51, float %52, float %46), !dbg !290
  %54 = fadd contract float %53, 1.000000e+00, !dbg !290
  %55 = fptosi float %44 to i32, !dbg !290
  %56 = add i32 %55, 127, !dbg !290
  %57 = shl i32 %56, 23, !dbg !290
  %58 = bitcast i32 %57 to float, !dbg !290
  %59 = fmul contract float %54, %58, !dbg !290
  %60 = fadd contract float %59, 1.000000e+00, !dbg !291
  %61 = fdiv float 1.000000e+00, %60, !dbg !292
  store float %61, ptr %16, align 4, !dbg !292
  ret i32 0, !dbg !293
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
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
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
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
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
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
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #5 {
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
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
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
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #5 {
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
  store i16 %37, ptr %2, align 4, !tbaa !294
  %38 = load float, ptr %2, align 4, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_main_graph$async_dispatch_3.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_main_graph$async_dispatch_4.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_main_graph$async_dispatch_5.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!12 = distinct !DICompileUnit(language: DW_LANG_C17, file: !13, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!13 = !DIFile(filename: "configured_module_main_graph$async_dispatch_6.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!14 = distinct !DICompileUnit(language: DW_LANG_C17, file: !15, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!15 = !DIFile(filename: "configured_module_main_graph$async_dispatch_7.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!16 = distinct !DICompileUnit(language: DW_LANG_C17, file: !17, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!17 = !DIFile(filename: "configured_module_main_graph$async_dispatch_8.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!18 = distinct !DICompileUnit(language: DW_LANG_C17, file: !19, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!19 = !DIFile(filename: "configured_module_main_graph$async_dispatch_9.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!20 = distinct !DICompileUnit(language: DW_LANG_C17, file: !21, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = !DIFile(filename: "configured_module_main_graph$async_dispatch_10.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!22 = distinct !DICompileUnit(language: DW_LANG_C17, file: !23, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!23 = !DIFile(filename: "configured_module_main_graph$async_dispatch_11.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!24 = distinct !DICompileUnit(language: DW_LANG_C17, file: !25, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!25 = !DIFile(filename: "configured_module_main_graph$async_dispatch_12.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!26 = distinct !DICompileUnit(language: DW_LANG_C17, file: !27, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!27 = !DIFile(filename: "configured_module_main_graph$async_dispatch_13.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!28 = distinct !DICompileUnit(language: DW_LANG_C17, file: !29, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!29 = !DIFile(filename: "configured_module_main_graph$async_dispatch_14.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
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
!132 = !DILocation(line: 30, column: 10, scope: !127)
!133 = !DILocation(line: 28, column: 8, scope: !127)
!134 = !DILocation(line: 9, column: 8, scope: !127)
!135 = !DILocation(line: 25, column: 10, scope: !127)
!136 = !DILocation(line: 31, column: 10, scope: !127)
!137 = !DILocation(line: 32, column: 10, scope: !127)
!138 = !DILocation(line: 33, column: 10, scope: !127)
!139 = !DILocation(line: 34, column: 10, scope: !127)
!140 = !DILocation(line: 35, column: 10, scope: !127)
!141 = !DILocation(line: 40, column: 8, scope: !127)
!142 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32", scope: !7, file: !7, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!143 = !DILocation(line: 20, column: 8, scope: !142)
!144 = !DILocation(line: 14, column: 8, scope: !142)
!145 = !DILocation(line: 15, column: 8, scope: !142)
!146 = !DILocation(line: 16, column: 8, scope: !142)
!147 = !DILocation(line: 21, column: 8, scope: !142)
!148 = !DILocation(line: 27, column: 8, scope: !142)
!149 = !DILocation(line: 9, column: 8, scope: !142)
!150 = !DILocation(line: 23, column: 10, scope: !142)
!151 = !DILocation(line: 24, column: 10, scope: !142)
!152 = !DILocation(line: 29, column: 10, scope: !142)
!153 = !DILocation(line: 30, column: 10, scope: !142)
!154 = !DILocation(line: 31, column: 10, scope: !142)
!155 = !DILocation(line: 35, column: 8, scope: !142)
!156 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", linkageName: "main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32", scope: !9, file: !9, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!157 = !DILocation(line: 13, column: 8, scope: !156)
!158 = !DILocation(line: 14, column: 8, scope: !156)
!159 = !DILocation(line: 15, column: 8, scope: !156)
!160 = !DILocation(line: 20, column: 8, scope: !156)
!161 = !DILocation(line: 23, column: 10, scope: !156)
!162 = !DILocation(line: 27, column: 8, scope: !156)
!163 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32", scope: !11, file: !11, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!164 = !DILocation(line: 28, column: 8, scope: !163)
!165 = !DILocation(line: 19, column: 8, scope: !163)
!166 = !DILocation(line: 20, column: 8, scope: !163)
!167 = !DILocation(line: 21, column: 8, scope: !163)
!168 = !DILocation(line: 22, column: 8, scope: !163)
!169 = !DILocation(line: 23, column: 8, scope: !163)
!170 = !DILocation(line: 29, column: 8, scope: !163)
!171 = !DILocation(line: 40, column: 10, scope: !163)
!172 = !DILocation(line: 35, column: 8, scope: !163)
!173 = !DILocation(line: 10, column: 8, scope: !163)
!174 = !DILocation(line: 31, column: 10, scope: !163)
!175 = !DILocation(line: 32, column: 10, scope: !163)
!176 = !DILocation(line: 37, column: 10, scope: !163)
!177 = !DILocation(line: 38, column: 10, scope: !163)
!178 = !DILocation(line: 39, column: 10, scope: !163)
!179 = !DILocation(line: 41, column: 10, scope: !163)
!180 = !DILocation(line: 42, column: 10, scope: !163)
!181 = !DILocation(line: 43, column: 10, scope: !163)
!182 = !DILocation(line: 44, column: 10, scope: !163)
!183 = !DILocation(line: 45, column: 10, scope: !163)
!184 = !DILocation(line: 50, column: 8, scope: !163)
!185 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", linkageName: "main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32", scope: !13, file: !13, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!186 = !DILocation(line: 20, column: 8, scope: !185)
!187 = !DILocation(line: 14, column: 8, scope: !185)
!188 = !DILocation(line: 15, column: 8, scope: !185)
!189 = !DILocation(line: 16, column: 8, scope: !185)
!190 = !DILocation(line: 21, column: 8, scope: !185)
!191 = !DILocation(line: 27, column: 8, scope: !185)
!192 = !DILocation(line: 9, column: 8, scope: !185)
!193 = !DILocation(line: 23, column: 10, scope: !185)
!194 = !DILocation(line: 24, column: 10, scope: !185)
!195 = !DILocation(line: 29, column: 10, scope: !185)
!196 = !DILocation(line: 30, column: 10, scope: !185)
!197 = !DILocation(line: 31, column: 10, scope: !185)
!198 = !DILocation(line: 35, column: 8, scope: !185)
!199 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", linkageName: "main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32", scope: !15, file: !15, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!200 = !DILocation(line: 13, column: 8, scope: !199)
!201 = !DILocation(line: 14, column: 8, scope: !199)
!202 = !DILocation(line: 15, column: 8, scope: !199)
!203 = !DILocation(line: 20, column: 8, scope: !199)
!204 = !DILocation(line: 23, column: 10, scope: !199)
!205 = !DILocation(line: 27, column: 8, scope: !199)
!206 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", linkageName: "main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32", scope: !17, file: !17, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!207 = !DILocation(line: 29, column: 8, scope: !206)
!208 = !DILocation(line: 20, column: 8, scope: !206)
!209 = !DILocation(line: 21, column: 8, scope: !206)
!210 = !DILocation(line: 22, column: 8, scope: !206)
!211 = !DILocation(line: 23, column: 8, scope: !206)
!212 = !DILocation(line: 24, column: 8, scope: !206)
!213 = !DILocation(line: 30, column: 8, scope: !206)
!214 = !DILocation(line: 36, column: 8, scope: !206)
!215 = !DILocation(line: 41, column: 10, scope: !206)
!216 = !DILocation(line: 42, column: 10, scope: !206)
!217 = !DILocation(line: 10, column: 8, scope: !206)
!218 = !DILocation(line: 32, column: 10, scope: !206)
!219 = !DILocation(line: 33, column: 10, scope: !206)
!220 = !DILocation(line: 38, column: 10, scope: !206)
!221 = !DILocation(line: 39, column: 10, scope: !206)
!222 = !DILocation(line: 40, column: 10, scope: !206)
!223 = !DILocation(line: 43, column: 10, scope: !206)
!224 = !DILocation(line: 44, column: 10, scope: !206)
!225 = !DILocation(line: 45, column: 10, scope: !206)
!226 = !DILocation(line: 46, column: 10, scope: !206)
!227 = !DILocation(line: 47, column: 10, scope: !206)
!228 = !DILocation(line: 52, column: 8, scope: !206)
!229 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", linkageName: "main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32", scope: !19, file: !19, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!230 = !DILocation(line: 23, column: 8, scope: !229)
!231 = !DILocation(line: 22, column: 8, scope: !229)
!232 = !DILocation(line: 14, column: 8, scope: !229)
!233 = !DILocation(line: 15, column: 8, scope: !229)
!234 = !DILocation(line: 16, column: 8, scope: !229)
!235 = !DILocation(line: 17, column: 8, scope: !229)
!236 = !DILocation(line: 9, column: 8, scope: !229)
!237 = !DILocation(line: 25, column: 10, scope: !229)
!238 = !DILocation(line: 26, column: 10, scope: !229)
!239 = !DILocation(line: 29, column: 8, scope: !229)
!240 = !DILocation(line: 31, column: 10, scope: !229)
!241 = !DILocation(line: 32, column: 10, scope: !229)
!242 = !DILocation(line: 33, column: 10, scope: !229)
!243 = !DILocation(line: 37, column: 8, scope: !229)
!244 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", linkageName: "main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32", scope: !21, file: !21, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!245 = !DILocation(line: 13, column: 8, scope: !244)
!246 = !DILocation(line: 14, column: 8, scope: !244)
!247 = !DILocation(line: 15, column: 8, scope: !244)
!248 = !DILocation(line: 20, column: 8, scope: !244)
!249 = !DILocation(line: 23, column: 10, scope: !244)
!250 = !DILocation(line: 27, column: 8, scope: !244)
!251 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", linkageName: "main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32", scope: !23, file: !23, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!252 = !DILocation(line: 29, column: 8, scope: !251)
!253 = !DILocation(line: 28, column: 8, scope: !251)
!254 = !DILocation(line: 16, column: 8, scope: !251)
!255 = !DILocation(line: 17, column: 8, scope: !251)
!256 = !DILocation(line: 18, column: 8, scope: !251)
!257 = !DILocation(line: 19, column: 8, scope: !251)
!258 = !DILocation(line: 20, column: 8, scope: !251)
!259 = !DILocation(line: 21, column: 8, scope: !251)
!260 = !DILocation(line: 9, column: 8, scope: !251)
!261 = !DILocation(line: 31, column: 10, scope: !251)
!262 = !DILocation(line: 32, column: 10, scope: !251)
!263 = !DILocation(line: 35, column: 8, scope: !251)
!264 = !DILocation(line: 37, column: 10, scope: !251)
!265 = !DILocation(line: 38, column: 10, scope: !251)
!266 = !DILocation(line: 39, column: 10, scope: !251)
!267 = !DILocation(line: 40, column: 10, scope: !251)
!268 = !DILocation(line: 41, column: 10, scope: !251)
!269 = !DILocation(line: 45, column: 8, scope: !251)
!270 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_12_matvec_like_6272_f32", scope: !25, file: !25, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!271 = !DILocation(line: 13, column: 8, scope: !270)
!272 = !DILocation(line: 14, column: 8, scope: !270)
!273 = !DILocation(line: 15, column: 8, scope: !270)
!274 = !DILocation(line: 20, column: 8, scope: !270)
!275 = !DILocation(line: 23, column: 10, scope: !270)
!276 = !DILocation(line: 26, column: 8, scope: !270)
!277 = !DILocation(line: 28, column: 10, scope: !270)
!278 = !DILocation(line: 32, column: 8, scope: !270)
!279 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_slow_memcpy", linkageName: "main_graph$async_dispatch_13_slow_memcpy", scope: !27, file: !27, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!280 = !DILocation(line: 15, column: 8, scope: !279)
!281 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matvec_like_6272_f32", linkageName: "main_graph$async_dispatch_14_matvec_like_6272_f32", scope: !29, file: !29, line: 1, type: !34, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!282 = !DILocation(line: 15, column: 8, scope: !281)
!283 = !DILocation(line: 16, column: 8, scope: !281)
!284 = !DILocation(line: 17, column: 8, scope: !281)
!285 = !DILocation(line: 22, column: 8, scope: !281)
!286 = !DILocation(line: 25, column: 10, scope: !281)
!287 = !DILocation(line: 28, column: 8, scope: !281)
!288 = !DILocation(line: 30, column: 10, scope: !281)
!289 = !DILocation(line: 31, column: 10, scope: !281)
!290 = !DILocation(line: 32, column: 10, scope: !281)
!291 = !DILocation(line: 33, column: 10, scope: !281)
!292 = !DILocation(line: 34, column: 10, scope: !281)
!293 = !DILocation(line: 38, column: 8, scope: !281)
!294 = !{!295, !295, i64 0}
!295 = !{!"short", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !{!299, !299, i64 0}
!299 = !{!"float", !296, i64 0}
