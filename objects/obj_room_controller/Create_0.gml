/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 1527BE09
randomize();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C1BC1B0
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "game_paused"
game_paused = false;

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