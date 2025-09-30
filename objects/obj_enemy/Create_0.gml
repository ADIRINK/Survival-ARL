/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BA2874B
/// @DnDInput : 9
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "expr_1" "15"
/// @DnDArgument : "expr_2" "1 + (obj_player.player_level * 0.1) * (1 + (obj_room_controller.floor_level - 1) * 0.1)"
/// @DnDArgument : "expr_3" "1 + (obj_room_controller.floor_level - 1) * 0.3"
/// @DnDArgument : "expr_4" "60"
/// @DnDArgument : "expr_7" "base_hp + (obj_player.player_level * 5) * floor_mult"
/// @DnDArgument : "expr_8" "5 + (obj_player.player_level * 2) * floor_mult"
/// @DnDArgument : "var" "base_hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "move_speed"
/// @DnDArgument : "var_3" "floor_mult"
/// @DnDArgument : "var_4" "attack_cooldown"
/// @DnDArgument : "var_5" "attack_timer"
/// @DnDArgument : "var_6" "flash_timer"
/// @DnDArgument : "var_7" "hp"
/// @DnDArgument : "var_8" "damage"
base_hp = 15;
max_hp = 15;
move_speed = 1 + (obj_player.player_level * 0.1) * (1 + (obj_room_controller.floor_level - 1) * 0.1);
floor_mult = 1 + (obj_room_controller.floor_level - 1) * 0.3;
attack_cooldown = 60;
attack_timer = 0;
flash_timer = 0;
hp = base_hp + (obj_player.player_level * 5) * floor_mult;
damage = 5 + (obj_player.player_level * 2) * floor_mult;