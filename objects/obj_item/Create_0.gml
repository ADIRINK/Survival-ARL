/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 664D6252
/// @DnDInput : 6
/// @DnDArgument : "expr" "irandom(5)"
/// @DnDArgument : "expr_1" """"
/// @DnDArgument : "var" "item_id"
/// @DnDArgument : "var_1" "item_name"
/// @DnDArgument : "var_2" "damage_bonus"
/// @DnDArgument : "var_3" "speed_bonus"
/// @DnDArgument : "var_4" "hp_bonus"
/// @DnDArgument : "var_5" "range_bonus"
item_id = irandom(5);
item_name = "";
damage_bonus = 0;
speed_bonus = 0;
hp_bonus = 0;
range_bonus = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13BEB1C2
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "float_timer"
/// @DnDArgument : "var_1" "start_y"
float_timer = 0;
start_y = y;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4B92BD5F
/// @DnDArgument : "expr" "item_id"
var l4B92BD5F_0 = item_id;switch(l4B92BD5F_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 15F6C0F7
	/// @DnDParent : 4B92BD5F
	case 0:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FBA1528
		/// @DnDInput : 2
		/// @DnDParent : 15F6C0F7
		/// @DnDArgument : "expr" ""Damage Ring""
		/// @DnDArgument : "expr_1" "3"
		/// @DnDArgument : "var" "item_name"
		/// @DnDArgument : "var_1" "damage_bonus"
		item_name = "Damage Ring";
		damage_bonus = 3;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 664BFC3B
		/// @DnDParent : 15F6C0F7
		break;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 70E3450C
	/// @DnDParent : 4B92BD5F
	/// @DnDArgument : "const" "1"
	case 1:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AF3464A
		/// @DnDInput : 2
		/// @DnDParent : 70E3450C
		/// @DnDArgument : "expr" ""Speed Boots""
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "item_name"
		/// @DnDArgument : "var_1" "speed_bonus"
		item_name = "Speed Boots";
		speed_bonus = 1;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 668AF156
		/// @DnDParent : 70E3450C
		break;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 45389D99
	/// @DnDParent : 4B92BD5F
	/// @DnDArgument : "const" "2"
	case 2:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 668A3ED8
		/// @DnDInput : 2
		/// @DnDParent : 45389D99
		/// @DnDArgument : "expr" ""Heart Pendant""
		/// @DnDArgument : "expr_1" "20"
		/// @DnDArgument : "var" "item_name"
		/// @DnDArgument : "var_1" "hp_bonus"
		item_name = "Heart Pendant";
		hp_bonus = 20;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 11E1A9FE
		/// @DnDParent : 45389D99
		break;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7BDEE045
	/// @DnDParent : 4B92BD5F
	/// @DnDArgument : "const" "3"
	case 3:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59C1BACD
		/// @DnDInput : 2
		/// @DnDParent : 7BDEE045
		/// @DnDArgument : "expr" ""Scope""
		/// @DnDArgument : "expr_1" "50"
		/// @DnDArgument : "var" "item_name"
		/// @DnDArgument : "var_1" "range_bonus"
		item_name = "Scope";
		range_bonus = 50;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 3780929D
		/// @DnDParent : 7BDEE045
		break;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2277A1F5
	/// @DnDParent : 4B92BD5F
	/// @DnDArgument : "const" "4"
	case 4:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B040977
		/// @DnDInput : 3
		/// @DnDParent : 2277A1F5
		/// @DnDArgument : "expr" ""Power Glove""
		/// @DnDArgument : "expr_1" "2"
		/// @DnDArgument : "expr_2" "0.5"
		/// @DnDArgument : "var" "item_name"
		/// @DnDArgument : "var_1" "damage_bonus"
		/// @DnDArgument : "var_2" "speed_bonus"
		item_name = "Power Glove";
		damage_bonus = 2;
		speed_bonus = 0.5;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 1B8E7709
		/// @DnDParent : 2277A1F5
		break;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 71CACC60
	/// @DnDParent : 4B92BD5F
	/// @DnDArgument : "const" "5"
	case 5:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DF5AD67
		/// @DnDParent : 71CACC60
		/// @DnDArgument : "expr" ""Lucky Charm""
		/// @DnDArgument : "var" "item_name"
		item_name = "Lucky Charm";
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 4725D5ED
		/// @DnDParent : 71CACC60
		break;	break;}