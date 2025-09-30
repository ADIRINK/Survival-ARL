/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 26FFCF54
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 485F6E09
/// @DnDArgument : "var" "distance_to_object(obj_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "50"
if(distance_to_object(obj_player) < 50){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 48F623ED
	/// @DnDParent : 485F6E09
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_bottom"
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 293FF79D
	/// @DnDParent : 485F6E09
	/// @DnDArgument : "color" "$FF00FFFF"
	draw_set_colour($FF00FFFF & $ffffff);
	var l293FF79D_0=($FF00FFFF >> 24);
	draw_set_alpha(l293FF79D_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 52C75DE5
	/// @DnDParent : 485F6E09
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "string(floor(cost)) + " Gold""
	draw_text(x, y + -20, string("") + string(string(floor(cost)) + " Gold"));

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2EB56AAA
	/// @DnDParent : 485F6E09
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3ABC13EC
	/// @DnDParent : 485F6E09
	draw_set_colour($FFFFFFFF & $ffffff);
	var l3ABC13EC_0=($FFFFFFFF >> 24);
	draw_set_alpha(l3ABC13EC_0 / $ff);}