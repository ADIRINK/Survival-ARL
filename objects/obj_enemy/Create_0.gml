/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BA2874B
/// @DnDInput : 9
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "expr_1" "15"
/// @DnDArgument : "expr_2" "1 + (obj_player.player_level * 0.1) * (1 + (obj_room_controller.floor_level - 1) * 0.1)"
/// @DnDArgument : "expr_3" "1 + (obj_room_controller.floor_level - 1) * 0.3"
/// @DnDArgument : "expr_4" "60"
/// @DnDArgument : "expr_7" "base_hp"
/// @DnDArgument : "expr_8" "5"
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
hp = base_hp;
damage = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 063A42D6
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
/// @DnDHash : 64129DB2
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
/// @DnDHash : 761D7887
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

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2F766879
/// @DnDInput : 2
/// @DnDArgument : "msg" "total_scaling"
/// @DnDArgument : "msg_1" "hp"
show_debug_message(string(total_scaling) + @"
" + string(hp));