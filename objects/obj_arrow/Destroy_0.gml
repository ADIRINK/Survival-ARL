/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 227170BB
/// @DnDArgument : "code" "if (ds_exists(hit_enemies, ds_type_list)) {$(13_10)    ds_list_destroy(hit_enemies);$(13_10)}"
if (ds_exists(hit_enemies, ds_type_list)) {
    ds_list_destroy(hit_enemies);
}