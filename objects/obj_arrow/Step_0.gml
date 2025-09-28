/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0F292BA2
/// @DnDArgument : "speed" "arrow_speed"
speed = arrow_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BA649F9
/// @DnDArgument : "expr" "range_left - arrow_speed"
/// @DnDArgument : "var" "range_left"
range_left = range_left - arrow_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60AFC1B5
/// @DnDArgument : "var" "range_left"
/// @DnDArgument : "op" "3"
if(range_left <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 336883B5
	/// @DnDParent : 60AFC1B5
	instance_destroy();}