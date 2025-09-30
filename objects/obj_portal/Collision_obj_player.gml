/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 448C057B
/// @DnDInput : 5
/// @DnDArgument : "expr" "obj_room_controller.floor_level + 1"
/// @DnDArgument : "expr_1" "3600 + (obj_room_controller.floor_level * 300)"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "obj_room_controller.floor_level"
/// @DnDArgument : "var_1" "obj_room_controller.boss_timer"
/// @DnDArgument : "var_2" "obj_room_controller.boss_spawned"
/// @DnDArgument : "var_3" "obj_room_controller.boss_killed"
/// @DnDArgument : "var_4" "obj_room_controller.boss_survival_timer"
obj_room_controller.floor_level = obj_room_controller.floor_level + 1;
obj_room_controller.boss_timer = 3600 + (obj_room_controller.floor_level * 300);
obj_room_controller.boss_spawned = false;
obj_room_controller.boss_killed = false;
obj_room_controller.boss_survival_timer = 0;

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 52F9AF99
room_restart();