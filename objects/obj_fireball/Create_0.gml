/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCB1FD5
/// @DnDInput : 11
/// @DnDArgument : "expr" "obj_player.current_damage"
/// @DnDArgument : "expr_1" "obj_player.wand_aeo_radius"
/// @DnDArgument : "expr_2" "6"
/// @DnDArgument : "expr_3" "obj_player.current_range"
/// @DnDArgument : "expr_4" "obj_player.current_penetration"
/// @DnDArgument : "expr_5" "penetration"
/// @DnDArgument : "expr_6" "ds_list_create()"
/// @DnDArgument : "expr_7" "obj_player.projectile_scale"
/// @DnDArgument : "expr_8" "obj_player.projectile_scale"
/// @DnDArgument : "expr_9" "obj_player.bounce_count"
/// @DnDArgument : "expr_10" "true"
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "var_1" "aoe_radius"
/// @DnDArgument : "var_2" "fireball_speed"
/// @DnDArgument : "var_3" "range_left"
/// @DnDArgument : "var_4" "penetration"
/// @DnDArgument : "var_5" "hits_left"
/// @DnDArgument : "var_6" "hit_enemies"
/// @DnDArgument : "var_7" "image_xscale"
/// @DnDArgument : "var_8" "image_yscale"
/// @DnDArgument : "var_9" "bounces_left"
/// @DnDArgument : "var_10" "can_bounce"
damage = obj_player.current_damage;
aoe_radius = obj_player.wand_aeo_radius;
fireball_speed = 6;
range_left = obj_player.current_range;
penetration = obj_player.current_penetration;
hits_left = penetration;
hit_enemies = ds_list_create();
image_xscale = obj_player.projectile_scale;
image_yscale = obj_player.projectile_scale;
bounces_left = obj_player.bounce_count;
can_bounce = true;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 73852C24
/// @DnDArgument : "obj" "obj_enemy_parent"
/// @DnDSaveInfo : "obj" "obj_enemy_parent"
var l73852C24_0 = false;l73852C24_0 = instance_exists(obj_enemy_parent);if(l73852C24_0){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5288F78F
	/// @DnDParent : 73852C24
	/// @DnDArgument : "obj" "obj_boss"
	/// @DnDSaveInfo : "obj" "obj_boss"
	var l5288F78F_0 = false;l5288F78F_0 = instance_exists(obj_boss);if(l5288F78F_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DD33308
		/// @DnDParent : 5288F78F
		/// @DnDArgument : "expr" "instance_nearest(x, y, obj_boss)"
		/// @DnDArgument : "var" "target"
		target = instance_nearest(x, y, obj_boss);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 475AC572
		/// @DnDParent : 5288F78F
		/// @DnDArgument : "expr" "point_distance(x, y, target.x, target.y) <= obj_player.current_range"
		if(point_distance(x, y, target.x, target.y) <= obj_player.current_range){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 561E7924
			/// @DnDInput : 2
			/// @DnDParent : 475AC572
			/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_boss)"
			/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
			/// @DnDArgument : "var" "target"
			/// @DnDArgument : "var_1" "direction"
			target = instance_nearest(obj_player.x, obj_player.y, obj_boss);
			direction = point_direction(x, y, target.x, target.y);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3BD620FD
		/// @DnDParent : 5288F78F
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4BE004C8
			/// @DnDInput : 2
			/// @DnDParent : 3BD620FD
			/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent)"
			/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
			/// @DnDArgument : "var" "target"
			/// @DnDArgument : "var_1" "direction"
			target = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
			direction = point_direction(x, y, target.x, target.y);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3C3C8B2C
	/// @DnDParent : 73852C24
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 693FCE06
		/// @DnDInput : 2
		/// @DnDParent : 3C3C8B2C
		/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent)"
		/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
		/// @DnDArgument : "var" "target"
		/// @DnDArgument : "var_1" "direction"
		target = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
		direction = point_direction(x, y, target.x, target.y);}}