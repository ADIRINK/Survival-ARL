/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1A3EF91E
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l1A3EF91E_0 = false;l1A3EF91E_0 = instance_exists(obj_player);if(l1A3EF91E_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2A2740FF
	/// @DnDParent : 1A3EF91E
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 31C322FE
	/// @DnDParent : 1A3EF91E
	/// @DnDArgument : "speed" "obj_player.move_speed * 1.6"
	speed = obj_player.move_speed * 1.6;}