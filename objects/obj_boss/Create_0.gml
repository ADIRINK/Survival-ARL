/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 539E8B9C
/// @DnDInput : 8
/// @DnDArgument : "expr" "300 + (obj_room_controller.floor_level * 100)"
/// @DnDArgument : "expr_1" "hp"
/// @DnDArgument : "expr_2" "0.2"
/// @DnDArgument : "expr_3" "20 + (obj_room_controller.floor_level * 5)"
/// @DnDArgument : "expr_4" "120"
/// @DnDArgument : "expr_5" "60"
/// @DnDArgument : "expr_6" "8"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "move_speed"
/// @DnDArgument : "var_3" "damage"
/// @DnDArgument : "var_4" "attack_cooldown"
/// @DnDArgument : "var_5" "attack_timer"
/// @DnDArgument : "var_6" "projectile_count"
/// @DnDArgument : "var_7" "flash_timer"
hp = 300 + (obj_room_controller.floor_level * 100);
max_hp = hp;
move_speed = 0.2;
damage = 20 + (obj_room_controller.floor_level * 5);
attack_cooldown = 120;
attack_timer = 60;
projectile_count = 8;
flash_timer = 0;