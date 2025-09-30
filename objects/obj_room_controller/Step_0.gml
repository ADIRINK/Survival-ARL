/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34E16753
/// @DnDArgument : "var" "boss_spawned"
/// @DnDArgument : "value" "false"
if(boss_spawned == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22863741
	/// @DnDParent : 34E16753
	/// @DnDArgument : "var" "obj_room_controller.game_paused"
	/// @DnDArgument : "value" "false"
	if(obj_room_controller.game_paused == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21A6AFDF
		/// @DnDParent : 22863741
		/// @DnDArgument : "expr" "boss_timer - 1"
		/// @DnDArgument : "var" "boss_timer"
		boss_timer = boss_timer - 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37AEC08E
		/// @DnDParent : 22863741
		/// @DnDArgument : "var" "boss_timer"
		/// @DnDArgument : "op" "3"
		if(boss_timer <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 70350C0F
			/// @DnDParent : 37AEC08E
			/// @DnDArgument : "xpos" "room_width / 2"
			/// @DnDArgument : "ypos" "100"
			/// @DnDArgument : "objectid" "obj_boss"
			/// @DnDSaveInfo : "objectid" "obj_boss"
			instance_create_layer(room_width / 2, 100, "Instances", obj_boss);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70C1CAB3
			/// @DnDParent : 37AEC08E
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "boss_spawned"
			boss_spawned = true;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43B27E46
/// @DnDArgument : "var" "boss_killed"
/// @DnDArgument : "value" "true"
if(boss_killed == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 798ABD92
	/// @DnDParent : 43B27E46
	/// @DnDArgument : "expr" "boss_survival_timer + 1"
	/// @DnDArgument : "var" "boss_survival_timer"
	boss_survival_timer = boss_survival_timer + 1;}