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
		/// @DnDHash : 6FD510C5
		/// @DnDParent : 31AE8FA4
		/// @DnDArgument : "obj" "obj_enemy"
		/// @DnDSaveInfo : "obj" "obj_enemy"
		var l6FD510C5_0 = false;l6FD510C5_0 = instance_exists(obj_enemy);if(l6FD510C5_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10C15B96
			/// @DnDParent : 6FD510C5
			/// @DnDArgument : "expr" "instance_nearest(x, y, obj_enemy)"
			/// @DnDArgument : "var" "nearest_enemy"
			nearest_enemy = instance_nearest(x, y, obj_enemy);
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 73A90F37
			/// @DnDParent : 6FD510C5
			/// @DnDArgument : "times" "projectile_count"
			repeat(projectile_count){	/// @DnDAction : YoYo Games.Common.Execute_Code
				/// @DnDVersion : 1
				/// @DnDHash : 748B7703
				/// @DnDParent : 73A90F37
				/// @DnDArgument : "code" "for (var i = 0; i < projectile_count; i++) {$(13_10)    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);$(13_10)    if (projectile_count > 1) {$(13_10)        var spread = 7.5;$(13_10)        var angle_offset = (i - (projectile_count - 1) / 2) * spread;$(13_10)        arrow.direction += angle_offset;$(13_10)    }$(13_10)}"
				for (var i = 0; i < projectile_count; i++) {
				    var arrow = instance_create_layer(x, y, "Instances", obj_arrow);
				    if (projectile_count > 1) {
				        var spread = 7.5;
				        var angle_offset = (i - (projectile_count - 1) / 2) * spread;
				        arrow.direction += angle_offset;
				    }
				}}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3960B114
			/// @DnDParent : 6FD510C5
			/// @DnDArgument : "expr" "attack_cooldown"
			/// @DnDArgument : "var" "attack_timer"
			attack_timer = attack_cooldown;}}

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