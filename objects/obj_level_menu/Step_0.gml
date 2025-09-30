/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DB48D32
/// @DnDInput : 4
/// @DnDArgument : "expr" "display_get_gui_width()"
/// @DnDArgument : "expr_1" "display_get_gui_height()"
/// @DnDArgument : "expr_2" "gw/2"
/// @DnDArgument : "expr_3" "gh/2"
/// @DnDArgument : "var" "gw"
/// @DnDArgument : "var_1" "gh"
/// @DnDArgument : "var_2" "cx"
/// @DnDArgument : "var_3" "cy"
gw = display_get_gui_width();
gh = display_get_gui_height();
cx = gw/2;
cy = gh/2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 611E9677
/// @DnDInput : 3
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0)"
/// @DnDArgument : "expr_1" "device_mouse_y_to_gui(0)"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "var" "mx"
/// @DnDArgument : "var_1" "my"
/// @DnDArgument : "var_2" "selected"
mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);
selected = -1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2DEA7EB5
/// @DnDArgument : "expr" "mx > cx - 360 && mx < cx - 180 && my > cy - 100 && my < cy + 150"
if(mx > cx - 360 && mx < cx - 180 && my > cy - 100 && my < cy + 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78552754
	/// @DnDParent : 2DEA7EB5
	/// @DnDArgument : "var" "selected"
	selected = 0;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1AD6BA1E
/// @DnDArgument : "expr" "mx > cx - 90 && mx < cx + 90 && my > cy - 100 && my < cy + 150"
if(mx > cx - 90 && mx < cx + 90 && my > cy - 100 && my < cy + 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E486082
	/// @DnDParent : 1AD6BA1E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "selected"
	selected = 1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4BC8E767
/// @DnDArgument : "expr" "mx > cx + 180  && mx < cx + 360 && my > cy - 100 && my < cy + 150"
if(mx > cx + 180  && mx < cx + 360 && my > cy - 100 && my < cy + 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E19B3AA
	/// @DnDParent : 4BC8E767
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "selected"
	selected = 2;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 0A255C9D
var l0A255C9D_0;l0A255C9D_0 = mouse_check_button_pressed(mb_left);if (l0A255C9D_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39B1FC7A
	/// @DnDParent : 0A255C9D
	/// @DnDArgument : "var" "selected"
	if(selected == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 44D197F8
		/// @DnDParent : 39B1FC7A
		/// @DnDArgument : "code" "apply_upgrade(upgrade_1)"
		apply_upgrade(upgrade_1)
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1FA12D94
		/// @DnDParent : 39B1FC7A
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C126C16
		/// @DnDParent : 39B1FC7A
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "obj_room_controller.game_paused"
		obj_room_controller.game_paused = false;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10279E29
	/// @DnDParent : 0A255C9D
	/// @DnDArgument : "var" "selected"
	/// @DnDArgument : "value" "1"
	if(selected == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 79A6C9F4
		/// @DnDParent : 10279E29
		/// @DnDArgument : "code" "apply_upgrade(upgrade_2)"
		apply_upgrade(upgrade_2)
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 24D2FC52
		/// @DnDParent : 10279E29
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37A6C155
		/// @DnDParent : 10279E29
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "obj_room_controller.game_paused"
		obj_room_controller.game_paused = false;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F438310
	/// @DnDParent : 0A255C9D
	/// @DnDArgument : "var" "selected"
	/// @DnDArgument : "value" "2"
	if(selected == 2){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 78EC4CFE
		/// @DnDParent : 3F438310
		/// @DnDArgument : "code" "apply_upgrade(upgrade_3)"
		apply_upgrade(upgrade_3)
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1365918F
		/// @DnDParent : 3F438310
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04688C9B
		/// @DnDParent : 3F438310
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "obj_room_controller.game_paused"
		obj_room_controller.game_paused = false;}}