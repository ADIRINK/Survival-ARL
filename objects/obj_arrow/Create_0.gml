/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E07ACCC
/// @DnDInput : 8
/// @DnDArgument : "expr" "obj_player.current_damage"
/// @DnDArgument : "expr_1" "obj_player.current_penetration"
/// @DnDArgument : "expr_2" "obj_player.current_range"
/// @DnDArgument : "expr_3" "8"
/// @DnDArgument : "expr_4" "penetration"
/// @DnDArgument : "expr_5" "ds_list_create()"
/// @DnDArgument : "expr_6" "obj_player.projectile_scale"
/// @DnDArgument : "expr_7" "obj_player.projectile_scale"
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "var_1" "penetration"
/// @DnDArgument : "var_2" "range_left"
/// @DnDArgument : "var_3" "arrow_speed"
/// @DnDArgument : "var_4" "hits_left"
/// @DnDArgument : "var_5" "hit_enemies"
/// @DnDArgument : "var_6" "image_xscale"
/// @DnDArgument : "var_7" "image_yscale"
damage = obj_player.current_damage;
penetration = obj_player.current_penetration;
range_left = obj_player.current_range;
arrow_speed = 8;
hits_left = penetration;
hit_enemies = ds_list_create();
image_xscale = obj_player.projectile_scale;
image_yscale = obj_player.projectile_scale;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2412E72D
/// @DnDArgument : "obj" "obj_enemy_parent"
/// @DnDSaveInfo : "obj" "obj_enemy_parent"
var l2412E72D_0 = false;l2412E72D_0 = instance_exists(obj_enemy_parent);if(l2412E72D_0){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 246DE391
	/// @DnDParent : 2412E72D
	/// @DnDArgument : "obj" "obj_boss"
	/// @DnDSaveInfo : "obj" "obj_boss"
	var l246DE391_0 = false;l246DE391_0 = instance_exists(obj_boss);if(l246DE391_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6823ECBF
		/// @DnDParent : 246DE391
		/// @DnDArgument : "expr" "instance_nearest(x, y, obj_boss)"
		/// @DnDArgument : "var" "target"
		target = instance_nearest(x, y, obj_boss);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 257EA59F
		/// @DnDParent : 246DE391
		/// @DnDArgument : "expr" "point_distance(x, y, target.x, target.y) <= obj_player.current_range"
		if(point_distance(x, y, target.x, target.y) <= obj_player.current_range){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1ED30506
			/// @DnDInput : 2
			/// @DnDParent : 257EA59F
			/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_boss)"
			/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
			/// @DnDArgument : "var" "target"
			/// @DnDArgument : "var_1" "direction"
			target = instance_nearest(obj_player.x, obj_player.y, obj_boss);
			direction = point_direction(x, y, target.x, target.y);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1D41857E
		/// @DnDParent : 246DE391
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1355E665
			/// @DnDInput : 2
			/// @DnDParent : 1D41857E
			/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent)"
			/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
			/// @DnDArgument : "var" "target"
			/// @DnDArgument : "var_1" "direction"
			target = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
			direction = point_direction(x, y, target.x, target.y);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1CC984DF
	/// @DnDParent : 2412E72D
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37D21718
		/// @DnDInput : 2
		/// @DnDParent : 1CC984DF
		/// @DnDArgument : "expr" "instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent)"
		/// @DnDArgument : "expr_1" "point_direction(x, y, target.x, target.y)"
		/// @DnDArgument : "var" "target"
		/// @DnDArgument : "var_1" "direction"
		target = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
		direction = point_direction(x, y, target.x, target.y);}}