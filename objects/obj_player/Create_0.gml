/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34433D75
/// @DnDComment : Player vars
/// @DnDInput : 9
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_1" "100"
/// @DnDArgument : "expr_2" "3"
/// @DnDArgument : "expr_4" "10"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "expr_6" "25"
/// @DnDArgument : "expr_8" "ds_list_create();"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "max_hp"
/// @DnDArgument : "var_2" "move_speed"
/// @DnDArgument : "var_3" "xp"
/// @DnDArgument : "var_4" "xp_needed"
/// @DnDArgument : "var_5" "player_level"
/// @DnDArgument : "var_6" "gold"
/// @DnDArgument : "var_7" "flash_timer"
/// @DnDArgument : "var_8" "items_collected"
hp = 100;
max_hp = 100;
move_speed = 3;
xp = 0;
xp_needed = 10;
player_level = 1;
gold = 25;
flash_timer = 0;
items_collected = ds_list_create();;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4746CB52
/// @DnDComment : Weapon vars
/// @DnDInput : 8
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "expr_3" "200"
/// @DnDArgument : "expr_4" "10"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "expr_6" "0.1"
/// @DnDArgument : "var" "attack_cooldown"
/// @DnDArgument : "var_1" "attack_timer"
/// @DnDArgument : "var_2" "projectile_count"
/// @DnDArgument : "var_3" "arrow_range"
/// @DnDArgument : "var_4" "arrow_damage"
/// @DnDArgument : "var_5" "arrow_penetration"
/// @DnDArgument : "var_6" "crit_chance"
/// @DnDArgument : "var_7" "crit_multiplier"
attack_cooldown = 60;
attack_timer = 0;
projectile_count = 1;
arrow_range = 200;
arrow_damage = 10;
arrow_penetration = 1;
crit_chance = 0.1;
crit_multiplier = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11C72EA8
/// @DnDInput : 5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "15"
/// @DnDArgument : "expr_2" "80"
/// @DnDArgument : "expr_3" "90"
/// @DnDArgument : "expr_4" "200"
/// @DnDArgument : "var" "weapon_type"
/// @DnDArgument : "var_1" "wand_damage"
/// @DnDArgument : "var_2" "wand_aeo_radius"
/// @DnDArgument : "var_3" "wand_cooldown"
/// @DnDArgument : "var_4" "wand_range"
weapon_type = 1;
wand_damage = 15;
wand_aeo_radius = 80;
wand_cooldown = 90;
wand_range = 200;