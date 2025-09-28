/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E07ACCC
/// @DnDInput : 5
/// @DnDArgument : "expr" "obj_player.arrow_damage"
/// @DnDArgument : "expr_1" "obj_player.arrow_penetration"
/// @DnDArgument : "expr_2" "obj_player.arrow_range"
/// @DnDArgument : "expr_4" "penetration"
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "var_1" "penetration"
/// @DnDArgument : "var_2" "range_left"
/// @DnDArgument : "var_3" "arrow_speed"
/// @DnDArgument : "var_4" "hits_left"
damage = obj_player.arrow_damage;
penetration = obj_player.arrow_penetration;
range_left = obj_player.arrow_range;
arrow_speed = 0;
hits_left = penetration;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 018BE96A
/// @DnDArgument : "obj" "obj_enemy"
/// @DnDSaveInfo : "obj" "obj_enemy"
var l018BE96A_0 = false;l018BE96A_0 = instance_exists(obj_enemy);if(l018BE96A_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 795A5BDE
	/// @DnDInput : 2
	/// @DnDParent : 018BE96A
	/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy)"
	/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
	/// @DnDArgument : "var" "target"
	/// @DnDArgument : "var_1" "direction"
	target = instance_nearest(obj_player.x, obj_player.y, obj_enemy);
	direction = point_direction(x, y, target.x, target.y);}