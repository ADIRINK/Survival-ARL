/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D1AA85E
/// @DnDComment : Dust particle system
/// @DnDInput : 2
/// @DnDArgument : "var" "dust_timer"
/// @DnDArgument : "var_1" "dust_frequency"
dust_timer = 0;
dust_frequency = 0;

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
/// @DnDHash : 551C0522
/// @DnDComment : Weapon system
/// @DnDInput : 5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "expr_3" "0.03"
/// @DnDArgument : "expr_4" "20"
/// @DnDArgument : "var" "weapon_type"
/// @DnDArgument : "var_1" "attack_timer"
/// @DnDArgument : "var_2" "projectile_count"
/// @DnDArgument : "var_3" "crit_chance"
/// @DnDArgument : "var_4" "knockback"
weapon_type = 1;
attack_timer = 0;
projectile_count = 1;
crit_chance = 0.03;
knockback = 20;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 205553B6
/// @DnDComment : Arrow stats
/// @DnDInput : 4
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_1" "200"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "expr_3" "60"
/// @DnDArgument : "var" "arrow_damage"
/// @DnDArgument : "var_1" "arrow_range"
/// @DnDArgument : "var_2" "arrow_penetration"
/// @DnDArgument : "var_3" "arrow_cooldown"
arrow_damage = 10;
arrow_range = 200;
arrow_penetration = 1;
arrow_cooldown = 60;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20B22F01
/// @DnDComment : Wand stats
/// @DnDInput : 5
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_1" "200"
/// @DnDArgument : "expr_2" "60"
/// @DnDArgument : "expr_3" "90"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "var" "wand_damage"
/// @DnDArgument : "var_1" "wand_range"
/// @DnDArgument : "var_2" "wand_aeo_radius"
/// @DnDArgument : "var_3" "wand_cooldown"
/// @DnDArgument : "var_4" "wand_penetration"
wand_damage = 10;
wand_range = 200;
wand_aeo_radius = 60;
wand_cooldown = 90;
wand_penetration = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A9CB4D9
/// @DnDArgument : "var" "weapon_type"
if(weapon_type == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29EE94BE
	/// @DnDInput : 4
	/// @DnDParent : 4A9CB4D9
	/// @DnDArgument : "expr" "arrow_cooldown"
	/// @DnDArgument : "expr_1" "arrow_damage"
	/// @DnDArgument : "expr_2" "arrow_range"
	/// @DnDArgument : "expr_3" "arrow_penetration"
	/// @DnDArgument : "var" "attack_cooldown"
	/// @DnDArgument : "var_1" "current_damage"
	/// @DnDArgument : "var_2" "current_range"
	/// @DnDArgument : "var_3" "current_penetration"
	attack_cooldown = arrow_cooldown;
	current_damage = arrow_damage;
	current_range = arrow_range;
	current_penetration = arrow_penetration;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36657888
/// @DnDArgument : "var" "weapon_type"
/// @DnDArgument : "value" "1"
if(weapon_type == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 671A0289
	/// @DnDInput : 4
	/// @DnDParent : 36657888
	/// @DnDArgument : "expr" "wand_cooldown"
	/// @DnDArgument : "expr_1" "wand_damage"
	/// @DnDArgument : "expr_2" "wand_range"
	/// @DnDArgument : "expr_3" "wand_penetration"
	/// @DnDArgument : "var" "attack_cooldown"
	/// @DnDArgument : "var_1" "current_damage"
	/// @DnDArgument : "var_2" "current_range"
	/// @DnDArgument : "var_3" "current_penetration"
	attack_cooldown = wand_cooldown;
	current_damage = wand_damage;
	current_range = wand_range;
	current_penetration = wand_penetration;}