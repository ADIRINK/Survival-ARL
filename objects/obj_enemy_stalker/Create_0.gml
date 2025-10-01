/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BA2874B
/// @DnDInput : 11
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "expr_1" "20"
/// @DnDArgument : "expr_2" "obj_player.move_speed * 1.2"
/// @DnDArgument : "expr_3" "8 + (obj_player.player_level * 2)"
/// @DnDArgument : "expr_4" "60"
/// @DnDArgument : "expr_7" "base_hp + (obj_player.player_level * 3)"
/// @DnDArgument : "expr_8" "obj_player.move_speed * 0.8"
/// @DnDArgument : "expr_9" "base_speed"
/// @DnDArgument : "expr_10" "150"
/// @DnDArgument : "var" "base_hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "base_speed"
/// @DnDArgument : "var_3" "damage"
/// @DnDArgument : "var_4" "attack_cooldown"
/// @DnDArgument : "var_5" "attack_timer"
/// @DnDArgument : "var_6" "flash_timer"
/// @DnDArgument : "var_7" "hp"
/// @DnDArgument : "var_8" "slow_speed"
/// @DnDArgument : "var_9" "move_speed"
/// @DnDArgument : "var_10" "engage_distance"
base_hp = 15;
max_hp = 20;
base_speed = obj_player.move_speed * 1.2;
damage = 8 + (obj_player.player_level * 2);
attack_cooldown = 60;
attack_timer = 0;
flash_timer = 0;
hp = base_hp + (obj_player.player_level * 3);
slow_speed = obj_player.move_speed * 0.8;
move_speed = base_speed;
engage_distance = 150;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B24252D
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
/// @DnDHash : 3F4D139D
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
/// @DnDHash : 74679D35
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