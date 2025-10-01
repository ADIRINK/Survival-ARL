/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A3D0296
/// @DnDInput : 12
/// @DnDArgument : "expr" "600"
/// @DnDArgument : "expr_1" "400"
/// @DnDArgument : "expr_2" "180"
/// @DnDArgument : "expr_3" "260"
/// @DnDArgument : "expr_4" "-1"
/// @DnDArgument : "expr_5" "room_width/2"
/// @DnDArgument : "expr_6" "room_height/2"
/// @DnDArgument : "expr_7" "irandom(8)"
/// @DnDArgument : "expr_8" "irandom(8)"
/// @DnDArgument : "expr_9" "irandom(8)"
/// @DnDArgument : "expr_10" "true"
/// @DnDArgument : "expr_11" "view_camera[0]"
/// @DnDArgument : "var" "menu_width"
/// @DnDArgument : "var_1" "menu_height"
/// @DnDArgument : "var_2" "button_widht"
/// @DnDArgument : "var_3" "button_height"
/// @DnDArgument : "var_4" "selected"
/// @DnDArgument : "var_5" "x"
/// @DnDArgument : "var_6" "y"
/// @DnDArgument : "var_7" "upgrade_1"
/// @DnDArgument : "var_8" "upgrade_2"
/// @DnDArgument : "var_9" "upgrade_3"
/// @DnDArgument : "var_10" "obj_room_controller.game_paused"
/// @DnDArgument : "var_11" "cam"
menu_width = 600;
menu_height = 400;
button_widht = 180;
button_height = 260;
selected = -1;
x = room_width/2;
y = room_height/2;
upgrade_1 = irandom(8);
upgrade_2 = irandom(8);
upgrade_3 = irandom(8);
obj_room_controller.game_paused = true;
cam = view_camera[0];

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BC4B78F
/// @DnDInput : 2
/// @DnDArgument : "expr" "camera_get_view_x(cam) + camera_get_view_width(cam)"
/// @DnDArgument : "expr_1" "camera_get_view_y(cam) + camera_get_view_height(cam)"
/// @DnDArgument : "var" "camx"
/// @DnDArgument : "var_1" "camy"
camx = camera_get_view_x(cam) + camera_get_view_width(cam);
camy = camera_get_view_y(cam) + camera_get_view_height(cam);

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 03616BB9
/// @DnDArgument : "var" "upgrade_2"
/// @DnDArgument : "value" "upgrade_1"
while ((upgrade_2 == upgrade_1)) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F35921C
	/// @DnDParent : 03616BB9
	/// @DnDArgument : "expr" "irandom(8)"
	/// @DnDArgument : "var" "upgrade_2"
	upgrade_2 = irandom(8);
}

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 61C0B975
/// @DnDArgument : "var" "upgrade_3"
/// @DnDArgument : "value" "upgrade_1"
while ((upgrade_3 == upgrade_1)) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A24906C
	/// @DnDParent : 61C0B975
	/// @DnDArgument : "expr" "irandom(8)"
	/// @DnDArgument : "var" "upgrade_3"
	upgrade_3 = irandom(8);
}

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 1BF1AF58
/// @DnDArgument : "var" "upgrade_3"
/// @DnDArgument : "value" "upgrade_2"
while ((upgrade_3 == upgrade_2)) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A361E4C
	/// @DnDParent : 1BF1AF58
	/// @DnDArgument : "expr" "irandom(8)"
	/// @DnDArgument : "var" "upgrade_3"
	upgrade_3 = irandom(8);
}