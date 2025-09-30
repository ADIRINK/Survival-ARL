/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2FFFC4C5
/// @DnDArgument : "expr" "ds_list_find_index(hit_enemies, other.id) == -1"
if(ds_list_find_index(hit_enemies, other.id) == -1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 38A3F82D
	/// @DnDParent : 2FFFC4C5
	/// @DnDArgument : "code" "ds_list_add(hit_enemies, other.id);"
	ds_list_add(hit_enemies, other.id);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 75E277C5
	/// @DnDApplyTo : {obj_enemy}
	/// @DnDParent : 2FFFC4C5
	with(obj_enemy) {
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
		/// @DnDArgument : "value" "other.aeo_radius"
		if(dist <= other.aeo_radius){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CDEDA26
			/// @DnDInput : 3
			/// @DnDParent : 26B38B6B
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
			/// @DnDHash : 0E32816A
			/// @DnDParent : 26B38B6B
			/// @DnDArgument : "var" "hits_left"
			/// @DnDArgument : "op" "3"
			if(hits_left <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
				/// @DnDVersion : 1
				/// @DnDHash : 072CE3A6
				/// @DnDParent : 0E32816A
				/// @DnDArgument : "code" "ds_list_destroy(hit_enemies);"
				ds_list_destroy(hit_enemies);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 33324DD4
				/// @DnDInput : 4
				/// @DnDParent : 0E32816A
				/// @DnDArgument : "expr" "point_direction(other.x, other.y, x, y)"
				/// @DnDArgument : "expr_1" "(other.aoe_radius - dist) / other.aoe_radius * 8"
				/// @DnDArgument : "expr_2" "lengthdir_x(knock_force, knock_dir)"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "lengthdir_y(knock_force, knock_dir)"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "knock_dir"
				/// @DnDArgument : "var_1" "knock_force"
				/// @DnDArgument : "var_2" "x"
				/// @DnDArgument : "var_3" "y"
				knock_dir = point_direction(other.x, other.y, x, y);
				knock_force = (other.aoe_radius - dist) / other.aoe_radius * 8;
				x += lengthdir_x(knock_force, knock_dir);
				y += lengthdir_y(knock_force, knock_dir);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 53C6B85E
				/// @DnDParent : 0E32816A
				/// @DnDArgument : "xpos" "x"
				/// @DnDArgument : "ypos" "y"
				/// @DnDArgument : "objectid" "obj_explosion"
				instance_create_layer(x, y, "Instances", obj_explosion);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 59D15768
				/// @DnDParent : 0E32816A
				instance_destroy();}}
	}}