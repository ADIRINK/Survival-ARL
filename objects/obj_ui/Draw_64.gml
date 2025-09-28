/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5A0CE048
draw_set_colour($FFFFFFFF & $ffffff);
var l5A0CE048_0=($FFFFFFFF >> 24);
draw_set_alpha(l5A0CE048_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C616FDB
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "obj_player.hp"
draw_text(10, 10, string("HP: ") + string(obj_player.hp));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3989A8D9
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""Level: ""
/// @DnDArgument : "var" "obj_player.player_level"
draw_text(10, 30, string("Level: ") + string(obj_player.player_level));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1A773E20
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" ""XP: ""
/// @DnDArgument : "var" "string(obj_player.xp) + "/" + string(obj_player.xp_needed)"
draw_text(10, 50, string("XP: ") + string(string(obj_player.xp) + "/" + string(obj_player.xp_needed)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10ABDB27
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "caption" ""Gold: ""
/// @DnDArgument : "var" "obj_player.gold"
draw_text(10, 70, string("Gold: ") + string(obj_player.gold));