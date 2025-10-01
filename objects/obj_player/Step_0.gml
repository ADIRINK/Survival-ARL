/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11B1AC09
/// @DnDArgument : "var" "obj_room_controller.game_paused"
/// @DnDArgument : "value" "false"
if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65A5814F
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "moving"
	moving = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F065956
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "expr" "-y"
	/// @DnDArgument : "var" "depth"
	depth = -y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FBC9BE5
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "expr" "calculate_player_power()"
	/// @DnDArgument : "var" "player_power"
	player_power = calculate_player_power();

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2B206F54
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "msg" "calculate_player_power()"
	show_debug_message(string(calculate_player_power()));

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3886C29A
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "key" "ord("W")"
	var l3886C29A_0;l3886C29A_0 = keyboard_check(ord("W"));if (l3886C29A_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 28BF80BD
		/// @DnDParent : 3886C29A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-move_speed"
		/// @DnDArgument : "y_relative" "1"
		y += -move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 553D6002
		/// @DnDParent : 3886C29A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "moving"
		moving = true;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 31BF1AF8
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "key" "ord("S")"
	var l31BF1AF8_0;l31BF1AF8_0 = keyboard_check(ord("S"));if (l31BF1AF8_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7F3FF521
		/// @DnDParent : 31BF1AF8
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "+move_speed"
		/// @DnDArgument : "y_relative" "1"
		y += +move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09884F04
		/// @DnDParent : 31BF1AF8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "moving"
		moving = true;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1008DEB9
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "key" "ord("A")"
	var l1008DEB9_0;l1008DEB9_0 = keyboard_check(ord("A"));if (l1008DEB9_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4CD6536B
		/// @DnDParent : 1008DEB9
		/// @DnDArgument : "x" "-move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		x += -move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4072DBEE
		/// @DnDParent : 1008DEB9
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "moving"
		moving = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FB4A388
		/// @DnDParent : 1008DEB9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = -1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2BAF7062
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "key" "ord("D")"
	var l2BAF7062_0;l2BAF7062_0 = keyboard_check(ord("D"));if (l2BAF7062_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 76C3978E
		/// @DnDParent : 2BAF7062
		/// @DnDArgument : "x" "+move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		x += +move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59C0F25D
		/// @DnDParent : 2BAF7062
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "moving"
		moving = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BF3D4E7
		/// @DnDParent : 2BAF7062
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = 1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02F6D14F
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "true"
	if(moving == true){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DFDAD49
		/// @DnDParent : 02F6D14F
		/// @DnDArgument : "var" "random(1)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "0.3"
		if(random(1) < 0.3){	/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 075A143C
			/// @DnDParent : 5DFDAD49
			/// @DnDArgument : "code" "// Emit dust particle$(13_10)part_particles_create(dust_system, x + random_range(-8, 8), y, dust_particle, 1);"
			// Emit dust particle
			part_particles_create(dust_system, x + random_range(-8, 8), y, dust_particle, 1);}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1648131A
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "expr" "attack_timer - 1"
	/// @DnDArgument : "var" "attack_timer"
	attack_timer = attack_timer - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31AE8FA4
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "attack_timer"
	/// @DnDArgument : "op" "3"
	if(attack_timer <= 0){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1F7DCD34
		/// @DnDParent : 31AE8FA4
		/// @DnDArgument : "obj" "obj_boss"
		/// @DnDSaveInfo : "obj" "obj_boss"
		var l1F7DCD34_0 = false;l1F7DCD34_0 = instance_exists(obj_boss);if(l1F7DCD34_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23BC8E2B
			/// @DnDParent : 1F7DCD34
			/// @DnDArgument : "expr" "instance_nearest(x, y, obj_boss)"
			/// @DnDArgument : "var" "boss_target"
			boss_target = instance_nearest(x, y, obj_boss);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1B7E6368
			/// @DnDParent : 1F7DCD34
			/// @DnDArgument : "expr" "boss_target != noone && point_distance(x, y, boss_target.x, boss_target.y) <= current_range"
			if(boss_target != noone && point_distance(x, y, boss_target.x, boss_target.y) <= current_range){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6F375A26
				/// @DnDParent : 1B7E6368
				/// @DnDArgument : "expr" "boss_target"
				/// @DnDArgument : "var" "nearest_enemy"
				nearest_enemy = boss_target;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 78AD7727
				/// @DnDParent : 1B7E6368
				/// @DnDArgument : "expr" "attack_cooldown"
				/// @DnDArgument : "var" "attack_timer"
				attack_timer = attack_cooldown;
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 706C5E7D
				/// @DnDParent : 1B7E6368
				/// @DnDArgument : "times" "projectile_count"
				repeat(projectile_count){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 36D30034
					/// @DnDParent : 706C5E7D
					/// @DnDArgument : "var" "weapon_type"
					if(weapon_type == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
						/// @DnDVersion : 1
						/// @DnDHash : 42D473C7
						/// @DnDParent : 36D30034
						/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
						for (var i = 0; i < projectile_count; i++) {
						    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);
						    if (projectile_count > 1) {
						        var spread = 7.5;
						        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
						        arrow.direction += angle_offset;
						    }
						}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 7450B922
					/// @DnDParent : 706C5E7D
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4C5CE71F
						/// @DnDParent : 7450B922
						/// @DnDArgument : "var" "weapon_type"
						/// @DnDArgument : "value" "1"
						if(weapon_type == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
							/// @DnDVersion : 1
							/// @DnDHash : 0D4300D9
							/// @DnDParent : 4C5CE71F
							/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
							for (var i = 0; i < projectile_count; i++) {
							    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);
							    if (projectile_count > 1) {
							        var spread = 7.5;
							        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
							        arrow.direction += angle_offset;
							    }
							}}}}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1E4C7116
			/// @DnDParent : 1F7DCD34
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10C15B96
				/// @DnDParent : 1E4C7116
				/// @DnDArgument : "expr" "instance_nearest(x, y, obj_enemy_parent)"
				/// @DnDArgument : "var" "nearest_enemy"
				nearest_enemy = instance_nearest(x, y, obj_enemy_parent);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3960B114
				/// @DnDParent : 1E4C7116
				/// @DnDArgument : "expr" "attack_cooldown"
				/// @DnDArgument : "var" "attack_timer"
				attack_timer = attack_cooldown;
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 73A90F37
				/// @DnDParent : 1E4C7116
				/// @DnDArgument : "times" "projectile_count"
				repeat(projectile_count){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 47B92E7D
					/// @DnDParent : 73A90F37
					/// @DnDArgument : "var" "weapon_type"
					if(weapon_type == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
						/// @DnDVersion : 1
						/// @DnDHash : 748B7703
						/// @DnDParent : 47B92E7D
						/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
						for (var i = 0; i < projectile_count; i++) {
						    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);
						    if (projectile_count > 1) {
						        var spread = 7.5;
						        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
						        arrow.direction += angle_offset;
						    }
						}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 402C68FC
					/// @DnDParent : 73A90F37
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 33ADD2B8
						/// @DnDParent : 402C68FC
						/// @DnDArgument : "var" "weapon_type"
						/// @DnDArgument : "value" "1"
						if(weapon_type == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
							/// @DnDVersion : 1
							/// @DnDHash : 727FCC8F
							/// @DnDParent : 33ADD2B8
							/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
							for (var i = 0; i < projectile_count; i++) {
							    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);
							    if (projectile_count > 1) {
							        var spread = 7.5;
							        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
							        arrow.direction += angle_offset;
							    }
							}}}}}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3945A63F
		/// @DnDParent : 31AE8FA4
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 66E5AFBF
			/// @DnDParent : 3945A63F
			/// @DnDArgument : "expr" "instance_nearest(x, y, obj_enemy_parent)"
			/// @DnDArgument : "var" "nearest_enemy"
			nearest_enemy = instance_nearest(x, y, obj_enemy_parent);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23B6DC33
			/// @DnDParent : 3945A63F
			/// @DnDArgument : "expr" "attack_cooldown"
			/// @DnDArgument : "var" "attack_timer"
			attack_timer = attack_cooldown;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 07C5A59D
			/// @DnDParent : 3945A63F
			/// @DnDArgument : "times" "projectile_count"
			repeat(projectile_count){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2B0306B2
				/// @DnDParent : 07C5A59D
				/// @DnDArgument : "var" "weapon_type"
				if(weapon_type == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
					/// @DnDVersion : 1
					/// @DnDHash : 1725B905
					/// @DnDParent : 2B0306B2
					/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
					for (var i = 0; i < projectile_count; i++) {
					    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);
					    if (projectile_count > 1) {
					        var spread = 7.5;
					        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
					        arrow.direction += angle_offset;
					    }
					}}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 1775ED2F
				/// @DnDParent : 07C5A59D
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6F875398
					/// @DnDParent : 1775ED2F
					/// @DnDArgument : "var" "weapon_type"
					/// @DnDArgument : "value" "1"
					if(weapon_type == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
						/// @DnDVersion : 1
						/// @DnDHash : 176E3F37
						/// @DnDParent : 6F875398
						/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
						for (var i = 0; i < projectile_count; i++) {
						    var arrow = instance_create_layer(x, y, "Instances", obj_fireball);
						    if (projectile_count > 1) {
						        var spread = 7.5;
						        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
						        arrow.direction += angle_offset;
						    }
						}}}}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E507686
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0){	/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7336278B
		/// @DnDParent : 1E507686
		game_restart();}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 268C6E11
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "flash_timer"
	/// @DnDArgument : "op" "2"
	if(flash_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69B11693
		/// @DnDParent : 268C6E11
		/// @DnDArgument : "expr" "flash_timer - 1"
		/// @DnDArgument : "var" "flash_timer"
		flash_timer = flash_timer - 1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17C730DD
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "xp"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "xp_needed"
	if(xp >= xp_needed){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5753319E
		/// @DnDInput : 3
		/// @DnDParent : 17C730DD
		/// @DnDArgument : "expr" "xp - xp_needed"
		/// @DnDArgument : "expr_1" "player_level + 1"
		/// @DnDArgument : "expr_2" "xp_needed + 5"
		/// @DnDArgument : "var" "xp"
		/// @DnDArgument : "var_1" "player_level"
		/// @DnDArgument : "var_2" "xp_needed"
		xp = xp - xp_needed;
		player_level = player_level + 1;
		xp_needed = xp_needed + 5;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0F91FF5D
		/// @DnDParent : 17C730DD
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_level_menu"
		/// @DnDSaveInfo : "objectid" "obj_level_menu"
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_level_menu);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30701071
	/// @DnDParent : 11B1AC09
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "true"
	if(moving == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DD936FB
		/// @DnDParent : 30701071
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_speed"
		image_speed = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 226CCCDE
	/// @DnDParent : 11B1AC09
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14AE3E60
		/// @DnDInput : 2
		/// @DnDParent : 226CCCDE
		/// @DnDArgument : "var" "image_speed"
		/// @DnDArgument : "var_1" "image_index"
		image_speed = 0;
		image_index = 0;}}