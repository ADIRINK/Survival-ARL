/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08821F90
/// @DnDInput : 3
/// @DnDArgument : "expr" "other.hp - damage"
/// @DnDArgument : "expr_1" "hits_left - 1"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "var" "other.hp"
/// @DnDArgument : "var_1" "hits_left"
/// @DnDArgument : "var_2" "other.flash_timer"
other.hp = other.hp - damage;
hits_left = hits_left - 1;
other.flash_timer = 5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D52D1EA
/// @DnDArgument : "var" "hits_left"
/// @DnDArgument : "op" "3"
if(hits_left <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 013CBB93
	/// @DnDParent : 7D52D1EA
	instance_destroy();}