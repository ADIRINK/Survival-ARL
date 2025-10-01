/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3F09AFB4
/// @DnDArgument : "expr" "ds_list_find_index(hit_enemies, other.id) == -1"
if(ds_list_find_index(hit_enemies, other.id) == -1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 40938FF5
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "code" "ds_list_add(hit_enemies, other.id);"
	ds_list_add(hit_enemies, other.id);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BD8E198
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "expr" "damage"
	/// @DnDArgument : "var" "final_damage"
	final_damage = damage;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 620A1CC5
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "var" "random(1)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "obj_player.crit_chance"
	if(random(1) < obj_player.crit_chance){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13B8BF8C
		/// @DnDParent : 620A1CC5
		/// @DnDArgument : "expr" "damage * 2"
		/// @DnDArgument : "var" "final_damage"
		final_damage = damage * 2;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 74BC46AB
		/// @DnDParent : 620A1CC5
		/// @DnDArgument : "xpos" "other.x"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "objectid" "obj_floating_text"
		/// @DnDSaveInfo : "objectid" "obj_floating_text"
		instance_create_layer(other.x, other.y, "Instances", obj_floating_text);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08821F90
	/// @DnDInput : 3
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "expr" "other.hp - final_damage"
	/// @DnDArgument : "expr_1" "hits_left - 1"
	/// @DnDArgument : "expr_2" "5"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "hits_left"
	/// @DnDArgument : "var_2" "other.flash_timer"
	other.hp = other.hp - final_damage;
	hits_left = hits_left - 1;
	other.flash_timer = 5;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 504B543C
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "var" "obj_player.lifesteal_percent"
	/// @DnDArgument : "op" "2"
	if(obj_player.lifesteal_percent > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27D2B4B9
		/// @DnDParent : 504B543C
		/// @DnDArgument : "expr" "final_damage * obj_player.lifesteal_percent"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_player.hp"
		obj_player.hp += final_damage * obj_player.lifesteal_percent;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 508E0C4F
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "var" "obj_player.hp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_player.max_hp"
	if(obj_player.hp > obj_player.max_hp){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FB98CCC
		/// @DnDParent : 508E0C4F
		/// @DnDArgument : "expr" "obj_player.max_hp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_player.hp"
		obj_player.hp += obj_player.max_hp;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D52D1EA
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "var" "hits_left"
	/// @DnDArgument : "op" "3"
	if(hits_left <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 072C1046
		/// @DnDParent : 7D52D1EA
		/// @DnDArgument : "code" "ds_list_destroy(hit_enemies);"
		ds_list_destroy(hit_enemies);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36DDE904
		/// @DnDParent : 7D52D1EA
		instance_destroy();}}