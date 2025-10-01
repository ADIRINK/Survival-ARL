/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 429BB0BF
/// @DnDComment : 
/// @DnDArgument : "funcName" "apply_upgrade"
/// @DnDArgument : "arg" "upgrade_type"
function apply_upgrade(upgrade_type) {	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 447CC59B
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 429BB0BF
	with(obj_player) {
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 658A4552
		/// @DnDParent : 447CC59B
		/// @DnDArgument : "expr" "argument0"
		var l658A4552_0 = argument0;switch(l658A4552_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4ABB6A7F
			/// @DnDParent : 658A4552
			case 0:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 051E20B1
				/// @DnDParent : 4ABB6A7F
				/// @DnDArgument : "expr" "projectile_count + 1"
				/// @DnDArgument : "var" "projectile_count"
				projectile_count = projectile_count + 1;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4BA6754B
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "1"
			case 1:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0308EB0E
				/// @DnDParent : 4BA6754B
				/// @DnDArgument : "expr" "attack_cooldown  * 0.7"
				/// @DnDArgument : "var" "attack_cooldown"
				attack_cooldown = attack_cooldown  * 0.7;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 07558781
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "2"
			case 2:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 47F35BA6
				/// @DnDParent : 07558781
				/// @DnDArgument : "expr" "current_damage * 1.3"
				/// @DnDArgument : "var" "current_damage"
				current_damage = current_damage * 1.3;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 39FB0FEC
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "3"
			case 3:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 70DB16A8
				/// @DnDParent : 39FB0FEC
				/// @DnDArgument : "expr" "current_range + 60"
				/// @DnDArgument : "var" "current_range"
				current_range = current_range + 60;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 174F5836
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "4"
			case 4:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7E040701
				/// @DnDParent : 174F5836
				/// @DnDArgument : "expr" "current_penetration + 1"
				/// @DnDArgument : "var" "current_penetration"
				current_penetration = current_penetration + 1;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 722C877A
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "5"
			case 5:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57BA100E
				/// @DnDParent : 722C877A
				/// @DnDArgument : "expr" "crit_chance + 0.05"
				/// @DnDArgument : "var" "crit_chance"
				crit_chance = crit_chance + 0.05;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 210D647D
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "6"
			case 6:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4ECDA60D
				/// @DnDParent : 210D647D
				/// @DnDArgument : "expr" "move_speed + 0.5"
				/// @DnDArgument : "var" "move_speed"
				move_speed = move_speed + 0.5;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5AE9324D
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "7"
			case 7:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4ED23873
				/// @DnDInput : 2
				/// @DnDParent : 5AE9324D
				/// @DnDArgument : "expr" "max_hp + 15"
				/// @DnDArgument : "expr_1" "hp + 15"
				/// @DnDArgument : "var" "max_hp"
				/// @DnDArgument : "var_1" "hp"
				max_hp = max_hp + 15;
				hp = hp + 15;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 699D1FFE
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "8"
			case 8:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2F3E6C71
				/// @DnDParent : 699D1FFE
				/// @DnDArgument : "expr" "knockback * 1.5"
				/// @DnDArgument : "var" "knockback"
				knockback = knockback * 1.5;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 35CF1411
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "9"
			case 9:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2B5E621B
				/// @DnDParent : 35CF1411
				/// @DnDArgument : "expr" "lifesteal_percent + 0.1"
				/// @DnDArgument : "var" "lifesteal_percent"
				lifesteal_percent = lifesteal_percent + 0.1;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 36B01355
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "10"
			case 10:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 027A3E27
				/// @DnDParent : 36B01355
				/// @DnDArgument : "expr" "projectile_scale + 0.13"
				/// @DnDArgument : "var" "projectile_scale"
				projectile_scale = projectile_scale + 0.13;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 06D30993
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "11"
			case 11:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 47C8BFA8
				/// @DnDParent : 06D30993
				/// @DnDArgument : "expr" "max_hp + 25"
				/// @DnDArgument : "var" "max_hp"
				max_hp = max_hp + 25;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1D39E147
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "12"
			case 12:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 12B86CDC
				/// @DnDParent : 1D39E147
				/// @DnDArgument : "expr" "pickup_range + 25"
				/// @DnDArgument : "var" "pickup_range"
				pickup_range = pickup_range + 25;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0EF5F73F
			/// @DnDParent : 658A4552
			/// @DnDArgument : "const" "13"
			case 13:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6C7B7A87
				/// @DnDInput : 2
				/// @DnDParent : 0EF5F73F
				/// @DnDArgument : "expr" "bounce_count + 1"
				/// @DnDArgument : "expr_1" "current_penetration + 1"
				/// @DnDArgument : "var" "bounce_count"
				/// @DnDArgument : "var_1" "current_penetration"
				bounce_count = bounce_count + 1;
				current_penetration = current_penetration + 1;	break;}
	}}