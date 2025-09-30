/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 464C0AF1
/// @DnDArgument : "var" "obj_room_controller.game_paused"
/// @DnDArgument : "value" "false"
if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 35883787
	/// @DnDParent : 464C0AF1
	/// @DnDArgument : "speed" "projectile_speed"
	speed = projectile_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 744F1A10
	/// @DnDParent : 464C0AF1
	/// @DnDArgument : "expr" "life_time - 1"
	/// @DnDArgument : "var" "life_time"
	life_time = life_time - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64BF7747
	/// @DnDParent : 464C0AF1
	/// @DnDArgument : "var" "life_time"
	/// @DnDArgument : "op" "3"
	if(life_time <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BE42916
		/// @DnDParent : 64BF7747
		instance_destroy();}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5FBD8B47
else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4112C6FA
	/// @DnDParent : 5FBD8B47
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3203513C
	/// @DnDParent : 5FBD8B47
	/// @DnDArgument : "expr" "life_time - 1"
	/// @DnDArgument : "var" "life_time"
	life_time = life_time - 1;}