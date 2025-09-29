/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07507EA6
/// @DnDArgument : "var" "distance_to_object(obj_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "50 && !opened"
if(distance_to_object(obj_player) < 50 && !opened){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23ABF342
	/// @DnDParent : 07507EA6
	/// @DnDArgument : "var" "keyboard_check_pressed(ord("E")) && obj_player.gold"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "cost"
	if(keyboard_check_pressed(ord("E")) && obj_player.gold >= cost){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34D4FB66
		/// @DnDInput : 2
		/// @DnDParent : 23ABF342
		/// @DnDArgument : "expr" "-cost"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "obj_player.gold"
		/// @DnDArgument : "var_1" "opened"
		obj_player.gold = -cost;
		opened = true;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F8C4CF0
		/// @DnDParent : 23ABF342
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-32"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_item"
		/// @DnDSaveInfo : "objectid" "obj_item"
		instance_create_layer(x + 0, y + -32, "Instances", obj_item);}}