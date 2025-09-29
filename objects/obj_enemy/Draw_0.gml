/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79FD31C8
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 68270F9C
	/// @DnDParent : 79FD31C8
	/// @DnDArgument : "color" "$FFFF00FF"
	draw_set_colour($FFFF00FF & $ffffff);
	var l68270F9C_0=($FFFF00FF >> 24);
	draw_set_alpha(l68270F9C_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 58854E58
	/// @DnDParent : 79FD31C8
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3B1BF344
	/// @DnDParent : 79FD31C8
	draw_set_colour($FFFFFFFF & $ffffff);
	var l3B1BF344_0=($FFFFFFFF >> 24);
	draw_set_alpha(l3B1BF344_0 / $ff);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DBE0E9B
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4C350F30
	/// @DnDParent : 1DBE0E9B
	draw_self();}