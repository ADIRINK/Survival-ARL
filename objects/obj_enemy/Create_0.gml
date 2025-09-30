/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BA2874B
/// @DnDInput : 8
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "expr_1" "20"
/// @DnDArgument : "expr_2" "1 + (obj_player.player_level * 0.1)"
/// @DnDArgument : "expr_3" "5 + (obj_player.player_level * 2)"
/// @DnDArgument : "expr_4" "60"
/// @DnDArgument : "expr_7" "base_hp + (obj_player.player_level * 5)"
/// @DnDArgument : "var" "base_hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "move_speed"
/// @DnDArgument : "var_3" "damage"
/// @DnDArgument : "var_4" "attack_cooldown"
/// @DnDArgument : "var_5" "attack_timer"
/// @DnDArgument : "var_6" "flash_timer"
/// @DnDArgument : "var_7" "hp"
base_hp = 20;
max_hp = 20;
move_speed = 1 + (obj_player.player_level * 0.1);
damage = 5 + (obj_player.player_level * 2);
attack_cooldown = 60;
attack_timer = 0;
flash_timer = 0;
hp = base_hp + (obj_player.player_level * 5);