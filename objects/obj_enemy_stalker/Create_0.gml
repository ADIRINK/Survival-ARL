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