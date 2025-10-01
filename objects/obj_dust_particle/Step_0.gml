/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 368CFC59
/// @DnDInput : 3
/// @DnDArgument : "expr" "-0.027"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "-0.1"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "alpha"
/// @DnDArgument : "var_1" "life_time"
/// @DnDArgument : "var_2" "size"
alpha += -0.027;
life_time += -1;
size += -0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6034B0AB
/// @DnDArgument : "var" "life_time"
/// @DnDArgument : "op" "3"
if(life_time <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C301D32
	/// @DnDParent : 6034B0AB
	instance_destroy();}