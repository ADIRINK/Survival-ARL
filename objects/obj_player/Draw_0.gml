/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD543C4
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 45F9A9FF
	/// @DnDParent : 5FD543C4
	/// @DnDArgument : "color" "$FF0000FF"
	draw_set_colour($FF0000FF & $ffffff);
	var l45F9A9FF_0=($FF0000FF >> 24);
	draw_set_alpha(l45F9A9FF_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0D9F5F01
	/// @DnDParent : 5FD543C4
	/// @DnDArgument : "alpha" "0.7"
	draw_set_alpha(0.7);}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 18442581
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4072A8D8
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3FC34F3C
draw_set_colour($FFFFFFFF & $ffffff);
var l3FC34F3C_0=($FFFFFFFF >> 24);
draw_set_alpha(l3FC34F3C_0 / $ff);