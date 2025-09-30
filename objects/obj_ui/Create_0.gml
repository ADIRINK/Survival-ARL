/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42FD7F90
/// @DnDInput : 3
/// @DnDArgument : "expr" "view_camera[0]"
/// @DnDArgument : "expr_1" "camera_get_view_y(cam) + camera_get_view_height(cam)"
/// @DnDArgument : "expr_2" "camera_get_view_x(cam) + camera_get_view_width(cam)"
/// @DnDArgument : "var" "cam"
/// @DnDArgument : "var_1" "camy"
/// @DnDArgument : "var_2" "camx"
cam = view_camera[0];
camy = camera_get_view_y(cam) + camera_get_view_height(cam);
camx = camera_get_view_x(cam) + camera_get_view_width(cam);