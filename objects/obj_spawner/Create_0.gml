/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7FF5F074
/// @DnDInput : 3
/// @DnDArgument : "expr" "90"
/// @DnDArgument : "expr_1" "15"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "spawn_delay"
/// @DnDArgument : "var_1" "spawn_min_delay"
/// @DnDArgument : "var_2" "spawn_accel"
spawn_delay = 90;
spawn_min_delay = 15;
spawn_accel = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7970E580
/// @DnDArgument : "steps" "spawn_delay"
alarm_set(0, spawn_delay);