/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79FD31C8
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5DC655F9
	/// @DnDParent : 79FD31C8
	/// @DnDArgument : "alpha" "0.5"
	draw_set_alpha(0.5);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 68270F9C
	/// @DnDParent : 79FD31C8
	draw_set_colour($FFFFFFFF & $ffffff);
	var l68270F9C_0=($FFFFFFFF >> 24);
	draw_set_alpha(l68270F9C_0 / $ff);}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4C350F30
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 10F62A05
draw_set_alpha(1);