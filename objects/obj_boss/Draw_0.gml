/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5906265E
/// @DnDArgument : "code" "draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 1.0);"
draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 1.0);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 52710B5A
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6B3F7636
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l6B3F7636_0=($FF000000 >> 24);
draw_set_alpha(l6B3F7636_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 27A3C8E2
/// @DnDArgument : "x1" "-50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-40"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "+50"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-35"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + -50, y + -40, x + +50, y + -35, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 086CBE00
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l086CBE00_0=($FF0000FF >> 24);
draw_set_alpha(l086CBE00_0 / $ff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 735F766A
/// @DnDArgument : "expr" "hp / max_hp"
/// @DnDArgument : "var" "hp_percent"
hp_percent = hp / max_hp;

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 7259858B
/// @DnDArgument : "x1" "-50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-40"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "+50 + (100 * hp_percent)"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-35"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + -50, y + -40, x + +50 + (100 * hp_percent), y + -35, 0);