/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B1677A2
/// @DnDInput : 3
/// @DnDArgument : "expr" "y + y_speed"
/// @DnDArgument : "expr_1" "life_time - 1"
/// @DnDArgument : "expr_2" "life_time / 30"
/// @DnDArgument : "var" "y"
/// @DnDArgument : "var_1" "life_time"
/// @DnDArgument : "var_2" "alpha"
y = y + y_speed;
life_time = life_time - 1;
alpha = life_time / 30;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64D3AC2E
/// @DnDArgument : "var" "life_time"
/// @DnDArgument : "op" "3"
if(life_time <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D671B24
	/// @DnDParent : 64D3AC2E
	instance_destroy();}