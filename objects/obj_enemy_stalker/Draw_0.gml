/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79FD31C8
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2CB8D071
	/// @DnDParent : 79FD31C8
	/// @DnDArgument : "code" "var pulse = 1 + (flash_timer / 10);$(13_10)   draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_white, 1);"
	var pulse = 1 + (flash_timer / 10);
	   draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_white, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DBE0E9B
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4C350F30
	/// @DnDParent : 1DBE0E9B
	draw_self();}