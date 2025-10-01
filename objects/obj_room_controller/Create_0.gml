/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 1527BE09
randomize();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0F383553
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "var" "shadow_surface"
global.shadow_surface = -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C1BC1B0
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "game_paused"
game_paused = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25F18094
/// @DnDInput : 6
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "7200"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "floor_level"
/// @DnDArgument : "var_1" "boss_timer"
/// @DnDArgument : "var_2" "boss_spawned"
/// @DnDArgument : "var_3" "boss_killed"
/// @DnDArgument : "var_4" "kill_count"
/// @DnDArgument : "var_5" "boss_survival_timer"
floor_level = 1;
boss_timer = 7200;
boss_spawned = false;
boss_killed = false;
kill_count = 0;
boss_survival_timer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77050EE9
/// @DnDInput : 2
/// @DnDArgument : "expr" "irandom_range(3, 5)"
/// @DnDArgument : "expr_1" "25"
/// @DnDArgument : "var" "num_chests"
/// @DnDArgument : "var_1" "last_chest_cost"
num_chests = irandom_range(3, 5);
last_chest_cost = 25;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 053C9B63
/// @DnDArgument : "cond" "i < num_chests"
for(i = 0; i < num_chests; i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AD69FD1
	/// @DnDInput : 3
	/// @DnDParent : 053C9B63
	/// @DnDArgument : "expr" "random_range(200, room_width - 200)"
	/// @DnDArgument : "expr_1" "random_range(200, room_height - 200)"
	/// @DnDArgument : "expr_2" "instance_create_layer(chest_x, chest_y, "Instances", obj_chest)"
	/// @DnDArgument : "var" "chest_x"
	/// @DnDArgument : "var_1" "chest_y"
	/// @DnDArgument : "var_2" "new_chest"
	chest_x = random_range(200, room_width - 200);
	chest_y = random_range(200, room_height - 200);
	new_chest = instance_create_layer(chest_x, chest_y, "Instances", obj_chest);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3614F9
	/// @DnDInput : 2
	/// @DnDParent : 053C9B63
	/// @DnDArgument : "expr" "last_chest_cost"
	/// @DnDArgument : "expr_1" "last_chest_cost * 2.2"
	/// @DnDArgument : "var" "new_chest.cost"
	/// @DnDArgument : "var_1" "last_chest_cost"
	new_chest.cost = last_chest_cost;
	last_chest_cost = last_chest_cost * 2.2;}