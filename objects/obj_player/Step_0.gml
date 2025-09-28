/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3886C29A
/// @DnDArgument : "key" "ord("W")"
var l3886C29A_0;l3886C29A_0 = keyboard_check(ord("W"));if (l3886C29A_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 28BF80BD
	/// @DnDParent : 3886C29A
	/// @DnDArgument : "y" "-move_speed"
	y = -move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31BF1AF8
/// @DnDArgument : "key" "ord("S")"
var l31BF1AF8_0;l31BF1AF8_0 = keyboard_check(ord("S"));if (l31BF1AF8_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7F3FF521
	/// @DnDParent : 31BF1AF8
	/// @DnDArgument : "y" "+move_speed"
	y = +move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1008DEB9
/// @DnDArgument : "key" "ord("A")"
var l1008DEB9_0;l1008DEB9_0 = keyboard_check(ord("A"));if (l1008DEB9_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4CD6536B
	/// @DnDParent : 1008DEB9
	/// @DnDArgument : "x" "-move_speed"
	x = -move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2BAF7062
/// @DnDArgument : "key" "ord("D")"
var l2BAF7062_0;l2BAF7062_0 = keyboard_check(ord("D"));if (l2BAF7062_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 76C3978E
	/// @DnDParent : 2BAF7062
	/// @DnDArgument : "y" "+move_speed"
	y = +move_speed;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1648131A
/// @DnDArgument : "expr" "attack_timer - 1"
/// @DnDArgument : "var" "attack_timer"
attack_timer = attack_timer - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31AE8FA4
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
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 32DE2DDF
		/// @DnDParent : 6FD510C5
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_arrow"
		/// @DnDSaveInfo : "objectid" "obj_arrow"
		instance_create_layer(x, y, "Instances", obj_arrow);
	
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
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7336278B
	/// @DnDParent : 1E507686
	game_restart();}