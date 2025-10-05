/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4ABAB75B
/// @DnDArgument : "var" "obj_room_controller.game_paused"
/// @DnDArgument : "value" "false"
if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E10473
	/// @DnDInput : 4
	/// @DnDParent : 4ABAB75B
	/// @DnDArgument : "expr_2" "100"
	/// @DnDArgument : "expr_3" "300"
	/// @DnDArgument : "var" "spawn_x"
	/// @DnDArgument : "var_1" "spawn_y"
	/// @DnDArgument : "var_2" "edge_margin"
	/// @DnDArgument : "var_3" "safe_zone"
	spawn_x = 0;
	spawn_y = 0;
	edge_margin = 100;
	safe_zone = 300;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4ECE0193
	/// @DnDParent : 4ABAB75B
	/// @DnDArgument : "expr" "random(1) < 0.5"
	if(random(1) < 0.5){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6C2C231E
		/// @DnDParent : 4ECE0193
		/// @DnDArgument : "expr" "random(1) < 0.5"
		if(random(1) < 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 31A10BA6
			/// @DnDInput : 2
			/// @DnDParent : 6C2C231E
			/// @DnDArgument : "expr" "edge_margin"
			/// @DnDArgument : "expr_1" "random_range(edge_margin, room_height - edge_margin)"
			/// @DnDArgument : "var" "spawn_x"
			/// @DnDArgument : "var_1" "spawn_y"
			spawn_x = edge_margin;
			spawn_y = random_range(edge_margin, room_height - edge_margin);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 18C8A194
		/// @DnDParent : 4ECE0193
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7DDA7763
			/// @DnDInput : 2
			/// @DnDParent : 18C8A194
			/// @DnDArgument : "expr" "room_width - edge_margin"
			/// @DnDArgument : "expr_1" "random_range(edge_margin, room_height - edge_margin)"
			/// @DnDArgument : "var" "spawn_x"
			/// @DnDArgument : "var_1" "spawn_y"
			spawn_x = room_width - edge_margin;
			spawn_y = random_range(edge_margin, room_height - edge_margin);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 50C65E8A
	/// @DnDParent : 4ABAB75B
	else{	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 35721783
		/// @DnDParent : 50C65E8A
		/// @DnDArgument : "expr" "random(1) < 0.5"
		if(random(1) < 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 688F296D
			/// @DnDInput : 2
			/// @DnDParent : 35721783
			/// @DnDArgument : "expr" "random_range(edge_margin, room_width - edge_margin)"
			/// @DnDArgument : "expr_1" "edge_margin"
			/// @DnDArgument : "var" "spawn_x"
			/// @DnDArgument : "var_1" "spawn_y"
			spawn_x = random_range(edge_margin, room_width - edge_margin);
			spawn_y = edge_margin;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 379ABE92
		/// @DnDParent : 50C65E8A
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44A0F6C0
			/// @DnDInput : 2
			/// @DnDParent : 379ABE92
			/// @DnDArgument : "expr" "random_range(edge_margin, room_width - edge_margin)"
			/// @DnDArgument : "expr_1" "room_height - edge_margin"
			/// @DnDArgument : "var" "spawn_x"
			/// @DnDArgument : "var_1" "spawn_y"
			spawn_x = random_range(edge_margin, room_width - edge_margin);
			spawn_y = room_height - edge_margin;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01B11DD8
	/// @DnDParent : 4ABAB75B
	/// @DnDArgument : "var" "obj_room_controller.boss_killed"
	/// @DnDArgument : "value" "false"
	if(obj_room_controller.boss_killed == false){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 77659C15
		/// @DnDParent : 01B11DD8
		/// @DnDArgument : "expr" "random(1) < 0.9"
		if(random(1) < 0.9){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 72BBFFEA
			/// @DnDParent : 77659C15
			/// @DnDArgument : "xpos" "spawn_x"
			/// @DnDArgument : "ypos" "spawn_y"
			/// @DnDArgument : "objectid" "obj_enemy"
			/// @DnDSaveInfo : "objectid" "obj_enemy"
			instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 78CB3995
			/// @DnDParent : 77659C15
			/// @DnDArgument : "steps" "spawn_delay"
			alarm_set(0, spawn_delay);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 64679AE1
		/// @DnDParent : 01B11DD8
		else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F144E4E
			/// @DnDParent : 64679AE1
			/// @DnDArgument : "xpos" "spawn_x"
			/// @DnDArgument : "ypos" "spawn_y"
			/// @DnDArgument : "objectid" "obj_enemy_stalker"
			/// @DnDSaveInfo : "objectid" "obj_enemy_stalker"
			instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_stalker);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 15E45C43
			/// @DnDParent : 64679AE1
			/// @DnDArgument : "steps" "spawn_delay"
			alarm_set(0, spawn_delay);}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 163D0CF5
	/// @DnDParent : 4ABAB75B
	/// @DnDArgument : "var" "obj_room_controller.boss_killed"
	/// @DnDArgument : "value" "true"
	if(obj_room_controller.boss_killed == true){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 13CEA9F6
		/// @DnDParent : 163D0CF5
		/// @DnDArgument : "expr" "random(1) < 0.9"
		if(random(1) < 0.9){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 11DD9555
			/// @DnDParent : 13CEA9F6
			/// @DnDArgument : "xpos" "spawn_x"
			/// @DnDArgument : "ypos" "spawn_y"
			/// @DnDArgument : "objectid" "obj_enemy"
			/// @DnDSaveInfo : "objectid" "obj_enemy"
			instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 08BA9374
			/// @DnDParent : 13CEA9F6
			/// @DnDArgument : "expr" "max(spawn_min_delay, spawn_delay - spawn_accel)"
			/// @DnDArgument : "var" "spawn_delay"
			spawn_delay = max(spawn_min_delay, spawn_delay - spawn_accel);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0E44C722
			/// @DnDParent : 13CEA9F6
			/// @DnDArgument : "steps" "spawn_delay"
			alarm_set(0, spawn_delay);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 48E6A44B
		/// @DnDParent : 163D0CF5
		else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 47B02094
			/// @DnDParent : 48E6A44B
			/// @DnDArgument : "xpos" "spawn_x"
			/// @DnDArgument : "ypos" "spawn_y"
			/// @DnDArgument : "objectid" "obj_enemy_stalker"
			/// @DnDSaveInfo : "objectid" "obj_enemy_stalker"
			instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_stalker);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 425F7E1D
			/// @DnDParent : 48E6A44B
			/// @DnDArgument : "expr" "max(spawn_min_delay, spawn_delay - spawn_accel)"
			/// @DnDArgument : "var" "spawn_delay"
			spawn_delay = max(spawn_min_delay, spawn_delay - spawn_accel);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 65668DCF
			/// @DnDParent : 48E6A44B
			/// @DnDArgument : "steps" "spawn_delay"
			alarm_set(0, spawn_delay);}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5849910E
else{	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5A768748
	/// @DnDParent : 5849910E
	/// @DnDArgument : "steps" "spawn_delay"
	alarm_set(0, spawn_delay);}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B7706B6
/// @DnDArgument : "code" "// In Alarm 0, replace spawn position logic:$(13_10)if (instance_exists(obj_level_generator)) {$(13_10)    var num_islands = ds_list_size(obj_level_generator.islands);$(13_10)    if (num_islands > 0) {$(13_10)        var random_island = ds_list_find_value($(13_10)            obj_level_generator.islands, $(13_10)            irandom(num_islands - 1)$(13_10)        );$(13_10)        $(13_10)        spawn_x = random_island.center_x + random_range(-50, 50);$(13_10)        spawn_y = random_island.center_y + random_range(-50, 50);$(13_10)    }$(13_10)}"
// In Alarm 0, replace spawn position logic:
if (instance_exists(obj_level_generator)) {
    var num_islands = ds_list_size(obj_level_generator.islands);
    if (num_islands > 0) {
        var random_island = ds_list_find_value(
            obj_level_generator.islands, 
            irandom(num_islands - 1)
        );
        
        spawn_x = random_island.center_x + random_range(-50, 50);
        spawn_y = random_island.center_y + random_range(-50, 50);
    }
}