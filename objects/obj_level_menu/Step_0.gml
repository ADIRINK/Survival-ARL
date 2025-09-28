/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 611E9677
/// @DnDInput : 3
/// @DnDArgument : "expr" "mouse_x"
/// @DnDArgument : "expr_1" "mouse_y"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "var" "mx"
/// @DnDArgument : "var_1" "my"
/// @DnDArgument : "var_2" "selected"
mx = mouse_x;
my = mouse_y;
selected = -1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2DEA7EB5
/// @DnDArgument : "expr" "mx > x - 220 && mx < x - 40 && my > y - 100 && my < y + 150"
if(mx > x - 220 && mx < x - 40 && my > y - 100 && my < y + 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78552754
	/// @DnDParent : 2DEA7EB5
	/// @DnDArgument : "var" "selected"
	selected = 0;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1AD6BA1E
/// @DnDArgument : "expr" "mx > x - 90 && mx < x + 90 && my > y - 100 && my < y + 150"
if(mx > x - 90 && mx < x + 90 && my > y - 100 && my < y + 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E486082
	/// @DnDParent : 1AD6BA1E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "selected"
	selected = 1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4BC8E767
/// @DnDArgument : "expr" "mx > x + 40 && mx < x + 220 && my > y - 100 && my < y + 150"
if(mx > x + 40 && mx < x + 220 && my > y - 100 && my < y + 150){	/// @DnDAction : YoYo Games.Common.Variable
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
		apply_upgrade(upgrade_1)}

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
		apply_upgrade(upgrade_2)}

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
		apply_upgrade(upgrade_3)}}