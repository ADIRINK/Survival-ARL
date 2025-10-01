/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6FBD8B4C
/// @DnDComment : 
/// @DnDArgument : "funcName" "calculate_player_power"
/// @DnDArgument : "arg" "p_power=0"
function calculate_player_power(p_power=0) {	/// @DnDAction : YoYo Games.Common.Variable
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
	/// @DnDArgument : "var" "p_power"
	/// @DnDArgument : "var_1" "p_power"
	/// @DnDArgument : "var_2" "p_power"
	/// @DnDArgument : "var_3" "p_power"
	/// @DnDArgument : "var_4" "p_power"
	/// @DnDArgument : "var_5" "p_power"
	/// @DnDArgument : "var_6" "p_power"
	/// @DnDArgument : "var_7" "p_power"
	/// @DnDArgument : "var_8" "p_power"
	p_power += current_damage * 10;
	p_power += current_penetration * 8;
	p_power += projectile_count * 12;
	p_power += (attack_cooldown / 60) * -5;
	p_power += current_range * 0.05;
	p_power += crit_chance * 100;
	p_power += knockback * 0.3;
	p_power += bounce_count * 6;
	p_power += projectile_scale * 5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 494C7FEE
	/// @DnDInput : 3
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "expr" "max_hp * 0.5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "damage_reduction * 50"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "lifesteal_percent * 80"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "p_power"
	/// @DnDArgument : "var_1" "p_power"
	/// @DnDArgument : "var_2" "p_power"
	p_power += max_hp * 0.5;
	p_power += damage_reduction * 50;
	p_power += lifesteal_percent * 80;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E023F53
	/// @DnDInput : 3
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "expr" "move_speed * 3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "pickup_range * 0.1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "wand_aeo_radius * 0.2"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "p_power"
	/// @DnDArgument : "var_1" "p_power"
	/// @DnDArgument : "var_2" "p_power"
	p_power += move_speed * 3;
	p_power += pickup_range * 0.1;
	p_power += wand_aeo_radius * 0.2;

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 2B930F25
	/// @DnDParent : 6FBD8B4C
	/// @DnDArgument : "value" "p_power"
	return p_power;}