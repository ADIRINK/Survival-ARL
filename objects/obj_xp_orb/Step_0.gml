/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33E2DFD1
/// @DnDArgument : "code" "// Push away from ALL nearby enemies$(13_10)with (obj_xp_orb) {$(13_10)    if (id != other.id) {  // Don't check self$(13_10)        var dist = point_distance(x, y, other.x, other.y);$(13_10)        if (dist < 2 && dist > 0) {  // If too close$(13_10)            var push_strength = (25 - dist) / 5;  // Stronger push when closer$(13_10)            var push_dir = point_direction(other.x, other.y, x, y);$(13_10)            x += lengthdir_x(push_strength * 3, push_dir);$(13_10)            y += lengthdir_y(push_strength * 3, push_dir);$(13_10)        }$(13_10)    }$(13_10)}"
// Push away from ALL nearby enemies
with (obj_xp_orb) {
    if (id != other.id) {  // Don't check self
        var dist = point_distance(x, y, other.x, other.y);
        if (dist < 2 && dist > 0) {  // If too close
            var push_strength = (25 - dist) / 5;  // Stronger push when closer
            var push_dir = point_direction(other.x, other.y, x, y);
            x += lengthdir_x(push_strength * 3, push_dir);
            y += lengthdir_y(push_strength * 3, push_dir);
        }
    }
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3B0E571A
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l3B0E571A_0 = false;l3B0E571A_0 = instance_exists(obj_player);if(l3B0E571A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09E11764
	/// @DnDParent : 3B0E571A
	/// @DnDArgument : "var" "distance_to_object(obj_player)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "obj_player.pickup_range"
	if(distance_to_object(obj_player) <= obj_player.pickup_range){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0F6D2474
		/// @DnDParent : 09E11764
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0F6464E6
		/// @DnDParent : 09E11764
		/// @DnDArgument : "speed" "obj_player.move_speed * 1.3"
		speed = obj_player.move_speed * 1.3;}}