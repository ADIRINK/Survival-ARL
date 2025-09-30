/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33783E4F
/// @DnDInput : 6
/// @DnDArgument : "expr" "obj_player.current_damage + damage_bonus"
/// @DnDArgument : "expr_1" "obj_player.move_speed + speed_bonus"
/// @DnDArgument : "expr_2" "obj_player.max_hp + hp_bonus"
/// @DnDArgument : "expr_3" "obj_player.hp + hp_bonus"
/// @DnDArgument : "expr_4" "obj_player.current_range + range_bonus"
/// @DnDArgument : "expr_5" "obj_player.crit_chance + crit_bonus"
/// @DnDArgument : "var" "obj_player.current_damage"
/// @DnDArgument : "var_1" "obj_player.move_speed"
/// @DnDArgument : "var_2" "obj_player.max_hp"
/// @DnDArgument : "var_3" "obj_player.hp"
/// @DnDArgument : "var_4" "obj_player.current_range"
/// @DnDArgument : "var_5" "obj_player.crit_chance"
obj_player.current_damage = obj_player.current_damage + damage_bonus;
obj_player.move_speed = obj_player.move_speed + speed_bonus;
obj_player.max_hp = obj_player.max_hp + hp_bonus;
obj_player.hp = obj_player.hp + hp_bonus;
obj_player.current_range = obj_player.current_range + range_bonus;
obj_player.crit_chance = obj_player.crit_chance + crit_bonus;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E9E0B68
/// @DnDArgument : "code" "ds_list_add(obj_player.items_collected, item_name);"
ds_list_add(obj_player.items_collected, item_name);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A95C403
instance_destroy();