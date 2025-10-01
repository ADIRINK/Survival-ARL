/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6FBD8B4C
/// @DnDComment : 
/// @DnDArgument : "funcName" "calculate_player_power"
/// @DnDArgument : "arg" "power=0"
function calculate_player_power(power=0) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12FC4F92
	/// @DnDComment : Base stats
	/// @DnDInput : 9
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "expr" "current_damage * 10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "current_penetration * 8"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "projectile_count * 12"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "expr_3" "(attack_cooldown / 60) * -5"
	/// @DnDArgument : "expr_relative_3" "1"
	/// @DnDArgument : "expr_4" "current_range * 0.05"
	/// @DnDArgument : "expr_relative_4" "1"
	/// @DnDArgument : "expr_5" "crit_chance * 100"
	/// @DnDArgument : "expr_relative_5" "1"
	/// @DnDArgument : "expr_6" "knockback * 0.3"
	/// @DnDArgument : "expr_relative_6" "1"
	/// @DnDArgument : "expr_7" "bounce_count * 6"
	/// @DnDArgument : "expr_relative_7" "1"
	/// @DnDArgument : "expr_8" "projectile_scale * 5"
	/// @DnDArgument : "expr_relative_8" "1"
	/// @DnDArgument : "var" "power"
	/// @DnDArgument : "var_1" "power"
	/// @DnDArgument : "var_2" "power"
	/// @DnDArgument : "var_3" "power"
	/// @DnDArgument : "var_4" "power"
	/// @DnDArgument : "var_5" "power"
	/// @DnDArgument : "var_6" "power"
	/// @DnDArgument : "var_7" "power"
	/// @DnDArgument : "var_8" "power"
	power += current_damage * 10;
	power += current_penetration * 8;
	power += projectile_count * 12;
	power += (attack_cooldown / 60) * -5;
	power += current_range * 0.05;
	power += crit_chance * 100;
	power += knockback * 0.3;
	power += bounce_count * 6;
	power += projectile_scale * 5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 494C7FEE
	/// @DnDInput : 3
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "expr" "max_hp * 0.5"
	/// @DnDArgument : "expr_1" "damage_reduction * 50"
	/// @DnDArgument : "expr_2" "lifesteal_percent * 80"
	/// @DnDArgument : "var" "power"
	/// @DnDArgument : "var_1" "power"
	/// @DnDArgument : "var_2" "power"
	power = max_hp * 0.5;
	power = damage_reduction * 50;
	power = lifesteal_percent * 80;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E023F53
	/// @DnDInput : 3
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "expr" "move_speed * 3"
	/// @DnDArgument : "expr_1" "pickup_range * 0.1"
	/// @DnDArgument : "expr_2" "wand_aeo_radius * 0.2"
	/// @DnDArgument : "var" "power"
	/// @DnDArgument : "var_1" "power"
	/// @DnDArgument : "var_2" "power"
	power = move_speed * 3;
	power = pickup_range * 0.1;
	power = wand_aeo_radius * 0.2;}