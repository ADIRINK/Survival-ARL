/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 249492CC
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "depth"
depth = -y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45F88174
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 678DD4A1
	/// @DnDParent : 45F88174
	/// @DnDArgument : "expr" "flash_timer - 1"
	/// @DnDArgument : "var" "flash_timer"
	flash_timer = flash_timer - 1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 04751E1E
/// @DnDArgument : "expr" "variable_instance_exists(id, "knockback_timer") && knockback_timer > 0"
if(variable_instance_exists(id, "knockback_timer") && knockback_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AE2C471
	/// @DnDInput : 4
	/// @DnDParent : 04751E1E
	/// @DnDArgument : "expr" "knockback_timer / 10"
	/// @DnDArgument : "expr_1" "knockback_x * ease_factor * 0.3"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "knockback_y * ease_factor * 0.3"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "expr_3" "knockback_timer - 1"
	/// @DnDArgument : "var" "ease_factor"
	/// @DnDArgument : "var_1" "x"
	/// @DnDArgument : "var_2" "y"
	/// @DnDArgument : "var_3" "knockback_timer"
	ease_factor = knockback_timer / 10;
	x += knockback_x * ease_factor * 0.3;
	y += knockback_y * ease_factor * 0.3;
	knockback_timer = knockback_timer - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1750F23F
	/// @DnDParent : 04751E1E
	/// @DnDArgument : "var" "knockback_timer"
	/// @DnDArgument : "op" "3"
	if(knockback_timer <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31E7DF30
		/// @DnDInput : 2
		/// @DnDParent : 1750F23F
		/// @DnDArgument : "var" "knockback_x"
		/// @DnDArgument : "var_1" "knockback_y"
		knockback_x = 0;
		knockback_y = 0;}}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2790E981
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l2790E981_0 = false;l2790E981_0 = instance_exists(obj_player);if(l2790E981_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32A72C50
	/// @DnDParent : 2790E981
	/// @DnDArgument : "var" "obj_room_controller.game_paused"
	/// @DnDArgument : "value" "false"
	if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6101CFE5
		/// @DnDParent : 32A72C50
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0BD62943
		/// @DnDParent : 32A72C50
		/// @DnDArgument : "speed" "move_speed"
		speed = move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F2E18C5
		/// @DnDParent : 32A72C50
		/// @DnDArgument : "expr" "attack_timer - 1"
		/// @DnDArgument : "var" "attack_timer"
		attack_timer = attack_timer - 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DB1B768
		/// @DnDParent : 32A72C50
		/// @DnDArgument : "var" "attack_timer"
		/// @DnDArgument : "op" "3"
		if(attack_timer <= 0){	/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 0F2443AE
			/// @DnDParent : 6DB1B768
			/// @DnDArgument : "cond" "i < projectile_count"
			for(i = 0; i < projectile_count; i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 54744945
				/// @DnDInput : 2
				/// @DnDParent : 0F2443AE
				/// @DnDArgument : "expr" "instance_create_layer(x, y, "Instances", obj_boss_projectile)"
				/// @DnDArgument : "expr_1" "(360 / projectile_count) * i"
				/// @DnDArgument : "var" "proj"
				/// @DnDArgument : "var_1" "proj.direction"
				proj = instance_create_layer(x, y, "Instances", obj_boss_projectile);
				proj.direction = (360 / projectile_count) * i;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 787E524B
			/// @DnDParent : 6DB1B768
			/// @DnDArgument : "expr" "attack_cooldown"
			/// @DnDArgument : "var" "attack_timer"
			attack_timer = attack_cooldown;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FC06624
		/// @DnDParent : 32A72C50
		/// @DnDArgument : "var" "hp"
		/// @DnDArgument : "op" "3"
		if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 279875BD
			/// @DnDParent : 7FC06624
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_portal"
			instance_create_layer(x, y, "Instances", obj_portal);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 591C2158
			/// @DnDInput : 2
			/// @DnDParent : 7FC06624
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "obj_room_controller.kill_count + 1"
			/// @DnDArgument : "var" "obj_room_controller.boss_killed"
			/// @DnDArgument : "var_1" "kill_count"
			obj_room_controller.boss_killed = true;
			kill_count = obj_room_controller.kill_count + 1;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 605F9B08
			/// @DnDParent : 7FC06624
			instance_destroy();}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 01B93E35
	/// @DnDParent : 2790E981
	else{	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 473E17AF
		/// @DnDParent : 01B93E35
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		direction = point_direction(x, y, x, y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 384BCAA0
		/// @DnDParent : 01B93E35
		speed = 0;}}