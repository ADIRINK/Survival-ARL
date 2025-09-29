/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F9C0C69
/// @DnDInput : 2
/// @DnDArgument : "expr" "float_timer + 0.1"
/// @DnDArgument : "expr_1" "start_y + sin(float_timer) * 4"
/// @DnDArgument : "var" "float_timer"
/// @DnDArgument : "var_1" "y"
float_timer = float_timer + 0.1;
y = start_y + sin(float_timer) * 4;