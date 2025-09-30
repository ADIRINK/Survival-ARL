/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3C16D61C
/// @DnDArgument : "expr" "!variable_instance_exists(id, "cost")"
if(!variable_instance_exists(id, "cost")){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 013024E5
	/// @DnDParent : 3C16D61C
	/// @DnDArgument : "expr" "25"
	/// @DnDArgument : "var" "cost"
	cost = 25;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2983B847
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "opened"
opened = false;