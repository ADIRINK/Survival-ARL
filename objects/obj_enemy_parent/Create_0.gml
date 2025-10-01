/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 426BD9A1
/// @DnDInput : 3
/// @DnDArgument : "expr" "base_hp"
/// @DnDArgument : "expr_1" "damage"
/// @DnDArgument : "expr_2" "move_speed"
/// @DnDArgument : "var" "base_hp"
/// @DnDArgument : "var_1" "base_damage"
/// @DnDArgument : "var_2" "base_speed"
base_hp = base_hp;
base_damage = damage;
base_speed = move_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F3DD52A
/// @DnDInput : 3
/// @DnDArgument : "expr" "1 + (obj_player.player_level * 0.15)"
/// @DnDArgument : "expr_1" "obj_player.player_power / 100;"
/// @DnDArgument : "expr_2" "(level_scaling + power_scaling) / 2"
/// @DnDArgument : "var" "level_scaling"
/// @DnDArgument : "var_1" "power_scaling"
/// @DnDArgument : "var_2" "total_scaling"
level_scaling = 1 + (obj_player.player_level * 0.15);
power_scaling = obj_player.player_power / 100;;
total_scaling = (level_scaling + power_scaling) / 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1889563C
/// @DnDInput : 4
/// @DnDArgument : "expr" "base_hp * total_scaling"
/// @DnDArgument : "expr_1" "hp"
/// @DnDArgument : "expr_2" "base_damage * total_scaling"
/// @DnDArgument : "expr_3" "base_speed * (1 + (total_scaling - 1) * 0.3)"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "damage"
/// @DnDArgument : "var_3" "move_speed"
hp = base_hp * total_scaling;
max_hp = hp;
damage = base_damage * total_scaling;
move_speed = base_speed * (1 + (total_scaling - 1) * 0.3);