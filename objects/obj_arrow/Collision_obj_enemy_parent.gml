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
	/// @DnDHash : 08821F90
	/// @DnDInput : 3
	/// @DnDParent : 3F09AFB4
	/// @DnDArgument : "expr" "other.hp - damage"
	/// @DnDArgument : "expr_1" "hits_left - 1"
	/// @DnDArgument : "expr_2" "5"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "hits_left"
	/// @DnDArgument : "var_2" "other.flash_timer"
	other.hp = other.hp - damage;
	hits_left = hits_left - 1;
	other.flash_timer = 5;

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