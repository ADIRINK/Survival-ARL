/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79FD31C8
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 174AD004
	/// @DnDParent : 79FD31C8
	/// @DnDArgument : "colour" "$FFFF00FF"
	/// @DnDArgument : "alpha" "false"
	image_blend = $FFFF00FF & $ffffff;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 58854E58
	/// @DnDParent : 79FD31C8
	draw_self();

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4437D298
	/// @DnDParent : 79FD31C8
	/// @DnDArgument : "alpha" "false"
	image_blend = $FFFFFFFF & $ffffff;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DBE0E9B
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4C350F30
	/// @DnDParent : 1DBE0E9B
	draw_self();}