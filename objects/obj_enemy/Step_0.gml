/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 136669FF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_room_controller.game_paused"
/// @DnDArgument : "value" "false"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22302258
/// @DnDParent : 136669FF
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B66B995
	/// @DnDParent : 22302258
	/// @DnDArgument : "expr" "flash_timer - 1"
	/// @DnDArgument : "var" "flash_timer"
	flash_timer = flash_timer - 1;}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6CB1719B
/// @DnDParent : 136669FF
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l6CB1719B_0 = false;l6CB1719B_0 = instance_exists(obj_player);if(l6CB1719B_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FD828BB
	/// @DnDParent : 6CB1719B
	/// @DnDArgument : "var" "obj_room_controller.game_paused"
	/// @DnDArgument : "value" "false"
	if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 332FCF30
		/// @DnDParent : 7FD828BB
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 44096D47
		/// @DnDParent : 7FD828BB
		/// @DnDArgument : "speed" "move_speed"
		speed = move_speed;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 00B3795A
		/// @DnDParent : 7FD828BB
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 628832D8
		/// @DnDParent : 7FD828BB
		/// @DnDArgument : "code" "// Push away from ALL nearby enemies$(13_10)with (obj_enemy) {$(13_10)    if (id != other.id) {  // Don't check self$(13_10)        var dist = point_distance(x, y, other.x, other.y);$(13_10)        if (dist < 16 && dist > 0) {  // If too close$(13_10)            var push_strength = (16 - dist) / 16;  // Stronger push when closer$(13_10)            var push_dir = point_direction(other.x, other.y, x, y);$(13_10)            x += lengthdir_x(push_strength * 2, push_dir);$(13_10)            y += lengthdir_y(push_strength * 2, push_dir);$(13_10)        }$(13_10)    }$(13_10)}"
		// Push away from ALL nearby enemies
		with (obj_enemy) {
		    if (id != other.id) {  // Don't check self
		        var dist = point_distance(x, y, other.x, other.y);
		        if (dist < 16 && dist > 0) {  // If too close
		            var push_strength = (16 - dist) / 16;  // Stronger push when closer
		            var push_dir = point_direction(other.x, other.y, x, y);
		            x += lengthdir_x(push_strength * 2, push_dir);
		            y += lengthdir_y(push_strength * 2, push_dir);
		        }
		    }
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 441BA1AB
	/// @DnDParent : 6CB1719B
	/// @DnDArgument : "var" "obj_room_controller.game_paused"
	/// @DnDArgument : "value" "true"
	if(obj_room_controller.game_paused == true){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 325D354F
		/// @DnDParent : 441BA1AB
		speed = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 659DBE5C
		/// @DnDParent : 441BA1AB
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		direction = point_direction(x, y, x, y);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 525586E3
		/// @DnDParent : 441BA1AB
		/// @DnDArgument : "speed" "0"
		image_speed = 0;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1486AE77
/// @DnDParent : 136669FF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_player"
/// @DnDSaveInfo : "object" "obj_player"
var l1486AE77_0 = instance_place(x + 0, y + 0, [obj_player]);if ((l1486AE77_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 086DC37A
	/// @DnDParent : 1486AE77
	/// @DnDArgument : "expr" "attack_timer - 1"
	/// @DnDArgument : "var" "attack_timer"
	attack_timer = attack_timer - 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F67DC93
/// @DnDParent : 136669FF
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43339454
	/// @DnDParent : 2F67DC93
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_xp_orb"
	/// @DnDSaveInfo : "objectid" "obj_xp_orb"
	instance_create_layer(x + 0, y + 0, "Instances", obj_xp_orb);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0B5D272F
	/// @DnDParent : 2F67DC93
	/// @DnDArgument : "expr" "random(1) < 0.3"
	if(random(1) < 0.3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C27B410
		/// @DnDParent : 0B5D272F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_gold"
		/// @DnDSaveInfo : "objectid" "obj_gold"
		instance_create_layer(x + 0, y + 0, "Instances", obj_gold);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 646B43C0
		/// @DnDParent : 0B5D272F
		instance_destroy();}}