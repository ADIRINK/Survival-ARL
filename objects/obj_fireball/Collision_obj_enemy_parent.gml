/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2CF56654
/// @DnDArgument : "expr" "ds_list_find_index(hit_enemies, other.id) == -1"
if(ds_list_find_index(hit_enemies, other.id) == -1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6A993E45
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "code" "ds_list_add(hit_enemies, other.id);"
	ds_list_add(hit_enemies, other.id);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C00A4EA
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "expr" "damage"
	/// @DnDArgument : "var" "final_damage"
	final_damage = damage;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47FB0710
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "var" "random(1)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "obj_player.crit_chance"
	if(random(1) < obj_player.crit_chance){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 075067EC
		/// @DnDParent : 47FB0710
		/// @DnDArgument : "expr" "damage * 2"
		/// @DnDArgument : "var" "final_damage"
		final_damage = damage * 2;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0BAC9A23
		/// @DnDParent : 47FB0710
		/// @DnDArgument : "xpos" "other.x"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "objectid" "obj_floating_text"
		/// @DnDSaveInfo : "objectid" "obj_floating_text"
		instance_create_layer(other.x, other.y, "Instances", obj_floating_text);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C92F0DE
	/// @DnDInput : 2
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_1" "hits_left - 1"
	/// @DnDArgument : "var" "other.flash_timer"
	/// @DnDArgument : "var_1" "hits_left"
	other.flash_timer = 5;
	hits_left = hits_left - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 397CCCBD
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "var" "bounces_left"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "0 && can_bounce"
	if(bounces_left > 0 && can_bounce){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CBD83F8
		/// @DnDInput : 3
		/// @DnDParent : 397CCCBD
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "noone"
		/// @DnDArgument : "expr_2" "obj_player.current_damage"
		/// @DnDArgument : "var" "can_bounce"
		/// @DnDArgument : "var_1" "nearest_bounce"
		/// @DnDArgument : "var_2" "nearest_bounce_dist"
		can_bounce = false;
		nearest_bounce = noone;
		nearest_bounce_dist = obj_player.current_damage;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3A631D0B
		/// @DnDApplyTo : {obj_enemy_parent}
		/// @DnDParent : 397CCCBD
		with(obj_enemy_parent) {
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 41C0E8C5
			/// @DnDParent : 3A631D0B
			/// @DnDArgument : "expr" "ds_list_find_index(other.hit_enemies, id) == -1"
			if(ds_list_find_index(other.hit_enemies, id) == -1){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6E33304E
				/// @DnDParent : 41C0E8C5
				/// @DnDArgument : "expr" "point_distance(other.x, other.y, x, y)"
				/// @DnDArgument : "var" "dist"
				dist = point_distance(other.x, other.y, x, y);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5B374B2A
				/// @DnDParent : 41C0E8C5
				/// @DnDArgument : "var" "dist"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "nearest_bounce_dist"
				if(dist < nearest_bounce_dist){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 10C517AF
					/// @DnDInput : 2
					/// @DnDParent : 5B374B2A
					/// @DnDArgument : "expr" "id"
					/// @DnDArgument : "expr_1" "dist"
					/// @DnDArgument : "var" "nearest_bounce"
					/// @DnDArgument : "var_1" "nearest_bounce_dist"
					nearest_bounce = id;
					nearest_bounce_dist = dist;}}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65EF8A5E
		/// @DnDParent : 397CCCBD
		/// @DnDArgument : "var" "nearest_bounce"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(nearest_bounce == noone)){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
			/// @DnDVersion : 1
			/// @DnDHash : 4AD671AF
			/// @DnDParent : 65EF8A5E
			/// @DnDArgument : "direction" "point_direction(x, y, nearest_bounce.x, nearest_bounce.y)"
			direction = point_direction(x, y, nearest_bounce.x, nearest_bounce.y);}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 72B9D5CD
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "expr" "bounces_left > 0 && can_bounce"
	if(bounces_left > 0 && can_bounce){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 4BA9F5A4
		/// @DnDApplyTo : {obj_enemy_parent}
		/// @DnDParent : 72B9D5CD
		with(obj_enemy_parent) {
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 02A0FA5A
			/// @DnDParent : 4BA9F5A4
			/// @DnDArgument : "expr" "ds_list_find_index(other.hit_enemies, id) == -1"
			if(ds_list_find_index(other.hit_enemies, id) == -1){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1115B6B4
				/// @DnDParent : 02A0FA5A
				/// @DnDArgument : "expr" "point_distance(other.x, other.y, x, y)"
				/// @DnDArgument : "var" "dist"
				dist = point_distance(other.x, other.y, x, y);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 54931BD1
				/// @DnDParent : 02A0FA5A
				/// @DnDArgument : "var" "dist"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "nearest_bounce_dist"
				if(dist < nearest_bounce_dist){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2D024A2F
					/// @DnDInput : 2
					/// @DnDParent : 54931BD1
					/// @DnDArgument : "expr" "id"
					/// @DnDArgument : "expr_1" "dist"
					/// @DnDArgument : "var" "nearest_bounce"
					/// @DnDArgument : "var_1" "nearest_bounce_dist"
					nearest_bounce = id;
					nearest_bounce_dist = dist;}}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E797209
		/// @DnDParent : 72B9D5CD
		/// @DnDArgument : "var" "nearest_bounce"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(nearest_bounce == noone)){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
			/// @DnDVersion : 1
			/// @DnDHash : 3FF4A8DF
			/// @DnDParent : 0E797209
			/// @DnDArgument : "direction" "point_direction(x, y, nearest_bounce.x, nearest_bounce.y)"
			direction = point_direction(x, y, nearest_bounce.x, nearest_bounce.y);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 48CF6B0D
			/// @DnDInput : 2
			/// @DnDParent : 0E797209
			/// @DnDArgument : "expr" "bounces_left-1"
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "var" "bounces_left"
			/// @DnDArgument : "var_1" "can_bounce"
			bounces_left = bounces_left-1;
			can_bounce = true;}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F4A7E25
	/// @DnDInput : 3
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "noone"
	/// @DnDArgument : "expr_2" "obj_player.current_damage"
	/// @DnDArgument : "var" "can_bounce"
	/// @DnDArgument : "var_1" "nearest_bounce"
	/// @DnDArgument : "var_2" "nearest_bounce_dist"
	can_bounce = false;
	nearest_bounce = noone;
	nearest_bounce_dist = obj_player.current_damage;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E190BF8
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "var" "obj_player.lifesteal_percent"
	/// @DnDArgument : "op" "2"
	if(obj_player.lifesteal_percent > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67672E0A
		/// @DnDParent : 7E190BF8
		/// @DnDArgument : "expr" "final_damage * obj_player.lifesteal_percent"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_player.hp"
		obj_player.hp += final_damage * obj_player.lifesteal_percent;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43D26821
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "var" "obj_player.hp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_player.max_hp"
	if(obj_player.hp > obj_player.max_hp){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24071AC3
		/// @DnDParent : 43D26821
		/// @DnDArgument : "expr" "obj_player.max_hp"
		/// @DnDArgument : "var" "obj_player.hp"
		obj_player.hp = obj_player.max_hp;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 664E690D
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "var" "hits_left"
	/// @DnDArgument : "op" "3"
	if(hits_left <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 367066F6
		/// @DnDParent : 664E690D
		/// @DnDArgument : "code" "ds_list_destroy(hit_enemies);"
		ds_list_destroy(hit_enemies);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2085ED3D
		/// @DnDParent : 664E690D
		instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 75E277C5
	/// @DnDApplyTo : {obj_enemy_parent}
	/// @DnDParent : 2CF56654
	with(obj_enemy_parent) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BD60F16
		/// @DnDParent : 75E277C5
		/// @DnDArgument : "expr" "point_distance(x, y, other.x, other.y)"
		/// @DnDArgument : "var" "dist"
		dist = point_distance(x, y, other.x, other.y);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26B38B6B
		/// @DnDParent : 75E277C5
		/// @DnDArgument : "var" "dist"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "other.aoe_radius"
		if(dist <= other.aoe_radius){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33324DD4
			/// @DnDInput : 3
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "expr" "point_direction(other.x, other.y, x, y)"
			/// @DnDArgument : "expr_1" "(other.aoe_radius - dist) / other.aoe_radius * obj_player.knockback"
			/// @DnDArgument : "expr_2" "hp - other.final_damage"
			/// @DnDArgument : "var" "knock_dir"
			/// @DnDArgument : "var_1" "knock_force"
			/// @DnDArgument : "var_2" "hp"
			knock_dir = point_direction(other.x, other.y, x, y);
			knock_force = (other.aoe_radius - dist) / other.aoe_radius * obj_player.knockback;
			hp = hp - other.final_damage;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 130EA1EE
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "expr" "!variable_instance_exists(id, "knockback_x")"
			if(!variable_instance_exists(id, "knockback_x")){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0B315993
				/// @DnDInput : 2
				/// @DnDParent : 130EA1EE
				/// @DnDArgument : "var" "knockback_x"
				/// @DnDArgument : "var_1" "knockback_y"
				knockback_x = 0;
				knockback_y = 0;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69BD4316
			/// @DnDInput : 3
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "expr" "lengthdir_x(knock_force, knock_dir)"
			/// @DnDArgument : "expr_1" "lengthdir_y(knock_force, knock_dir)"
			/// @DnDArgument : "expr_2" "10"
			/// @DnDArgument : "var" "knockback_x"
			/// @DnDArgument : "var_1" "knockback_y"
			/// @DnDArgument : "var_2" "knockback_timer"
			knockback_x = lengthdir_x(knock_force, knock_dir);
			knockback_y = lengthdir_y(knock_force, knock_dir);
			knockback_timer = 10;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 53C6B85E
			/// @DnDDisabled : 1
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_explosion"}
	}}