/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 23AB5E6F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 69353976
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" ""
draw_set_halign(fa_center);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 264C42F1
/// @DnDArgument : "color" "$FF00FFFF"
draw_set_colour($FF00FFFF & $ffffff);
var l264C42F1_0=($FF00FFFF >> 24);
draw_set_alpha(l264C42F1_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 32C8A820
/// @DnDArgument : "y" "-20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "item_name"
draw_text(0, y + -20, string(item_name) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6237D950
/// @DnDArgument : "valign" ""
draw_set_halign(fa_left);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5E038E5E
draw_set_colour($FFFFFFFF & $ffffff);
var l5E038E5E_0=($FFFFFFFF >> 24);
draw_set_alpha(l5E038E5E_0 / $ff);