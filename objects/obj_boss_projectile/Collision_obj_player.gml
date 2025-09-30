/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 754A31CB
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.hp - damage"
/// @DnDArgument : "expr_1" "10"
/// @DnDArgument : "var" "obj_player.hp"
/// @DnDArgument : "var_1" "obj_player.flash_timer"
obj_player.hp = obj_player.hp - damage;
obj_player.flash_timer = 10;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 38B2AC12
instance_destroy();