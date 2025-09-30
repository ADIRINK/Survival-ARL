/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5286A40D
/// @DnDArgument : "speed" "fireball_speed"
speed = fireball_speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6759F460
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 326AB9C0
/// @DnDArgument : "expr" "range_left - fireball_speed"
/// @DnDArgument : "var" "range_left"
range_left = range_left - fireball_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3569E83A
/// @DnDArgument : "var" "range_left"
/// @DnDArgument : "op" "3"
if(range_left <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22B7A701
	/// @DnDParent : 3569E83A
	instance_destroy();}