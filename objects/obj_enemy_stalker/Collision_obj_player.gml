/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2332C1BF
/// @DnDArgument : "var" "attack_timer"
/// @DnDArgument : "op" "3"
if(attack_timer <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B5663FD
	/// @DnDInput : 3
	/// @DnDParent : 2332C1BF
	/// @DnDArgument : "expr" "obj_player.hp - damage"
	/// @DnDArgument : "expr_1" "attack_cooldown"
	/// @DnDArgument : "expr_2" "10"
	/// @DnDArgument : "var" "obj_player.hp"
	/// @DnDArgument : "var_1" "attack_timer"
	/// @DnDArgument : "var_2" "obj_player.flash_timer"
	obj_player.hp = obj_player.hp - damage;
	attack_timer = attack_cooldown;
	obj_player.flash_timer = 10;}