/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 448C057B
/// @DnDInput : 4
/// @DnDArgument : "expr" "obj_room_controller.floor_level + 1"
/// @DnDArgument : "expr_1" "3600 + (obj_room_controller.floor_level * 300)"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "obj_room_controller.floor_level"
/// @DnDArgument : "var_1" "boss_timer"
/// @DnDArgument : "var_2" "boss_spawned"
/// @DnDArgument : "var_3" "boss_killed"
obj_room_controller.floor_level = obj_room_controller.floor_level + 1;
boss_timer = 3600 + (obj_room_controller.floor_level * 300);
boss_spawned = false;
boss_killed = false;

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 52F9AF99
room_restart();