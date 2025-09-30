/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCB1FD5
/// @DnDInput : 4
/// @DnDArgument : "expr" "obj_player.wand_damage"
/// @DnDArgument : "expr_1" "obj_player.wand_aeo_radius"
/// @DnDArgument : "expr_2" "6"
/// @DnDArgument : "expr_3" "obj_player.wand_range"
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "var_1" "aeo_radius"
/// @DnDArgument : "var_2" "fireball_speed"
/// @DnDArgument : "var_3" "range_left"
damage = obj_player.wand_damage;
aeo_radius = obj_player.wand_aeo_radius;
fireball_speed = 6;
range_left = obj_player.wand_range;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1B1EFC0A
/// @DnDArgument : "obj" "obj_enemy_parent"
/// @DnDSaveInfo : "obj" "obj_enemy_parent"
var l1B1EFC0A_0 = false;l1B1EFC0A_0 = instance_exists(obj_enemy_parent);if(l1B1EFC0A_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 635FDA31
	/// @DnDInput : 2
	/// @DnDParent : 1B1EFC0A
	/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent)"
	/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
	/// @DnDArgument : "var" "target"
	/// @DnDArgument : "var_1" "direction"
	target = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
	direction = point_direction(x, y, target.x, target.y);}