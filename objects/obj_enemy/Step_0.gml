/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62418972
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B9533B3
	/// @DnDParent : 62418972
	/// @DnDArgument : "expr" "flash_timer - 1"
	/// @DnDArgument : "var" "flash_timer"
	flash_timer = flash_timer - 1;

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 43304DEC
	/// @DnDParent : 62418972
	/// @DnDArgument : "color" "$7DFFFFFF"
	draw_set_colour($7DFFFFFF & $ffffff);
	var l43304DEC_0=($7DFFFFFF >> 24);
	draw_set_alpha(l43304DEC_0 / $ff);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C0A79BC
else{	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 25EE24E0
	/// @DnDParent : 7C0A79BC
	draw_set_colour($FFFFFFFF & $ffffff);
	var l25EE24E0_0=($FFFFFFFF >> 24);
	draw_set_alpha(l25EE24E0_0 / $ff);}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6CB1719B
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l6CB1719B_0 = false;l6CB1719B_0 = instance_exists(obj_player);if(l6CB1719B_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 332FCF30
	/// @DnDParent : 6CB1719B
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 44096D47
	/// @DnDParent : 6CB1719B
	/// @DnDArgument : "speed" "move_speed"
	speed = move_speed;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1486AE77
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