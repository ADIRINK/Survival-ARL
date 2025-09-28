/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1750B946
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemy"
/// @DnDSaveInfo : "objectid" "obj_enemy"
instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 54738684
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);