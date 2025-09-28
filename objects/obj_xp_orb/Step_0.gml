/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3B0E571A
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l3B0E571A_0 = false;l3B0E571A_0 = instance_exists(obj_player);if(l3B0E571A_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0F6D2474
	/// @DnDParent : 3B0E571A
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0F6464E6
	/// @DnDParent : 3B0E571A
	/// @DnDArgument : "speed" "3"
	speed = 3;}