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
	/// @DnDInput : 3
	/// @DnDParent : 2CF56654
	/// @DnDArgument : "expr" "other.hp - final_damage"
	/// @DnDArgument : "expr_1" "hits_left - 1"
	/// @DnDArgument : "expr_2" "5"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "hits_left"
	/// @DnDArgument : "var_2" "other.flash_timer"
	other.hp = other.hp - final_damage;
	hits_left = hits_left - 1;
	other.flash_timer = 5;

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
			/// @DnDInput : 2
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "expr" "point_direction(other.x, other.y, x, y)"
			/// @DnDArgument : "expr_1" "(other.aoe_radius - dist) / other.aoe_radius * obj_player.knockback"
			/// @DnDArgument : "var" "knock_dir"
			/// @DnDArgument : "var_1" "knock_force"
			knock_dir = point_direction(other.x, other.y, x, y);
			knock_force = (other.aoe_radius - dist) / other.aoe_radius * obj_player.knockback;
		
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