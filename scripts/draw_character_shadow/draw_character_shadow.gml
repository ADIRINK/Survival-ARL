/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7DC03C42
/// @DnDComment : 
/// @DnDInput : 8
/// @DnDArgument : "funcName" "draw_character_shadow"
/// @DnDArgument : "arg" "spr"
/// @DnDArgument : "arg_1" "img"
/// @DnDArgument : "arg_2" "xx"
/// @DnDArgument : "arg_3" "yy"
/// @DnDArgument : "arg_4" "xscale"
/// @DnDArgument : "arg_5" "yscale"
/// @DnDArgument : "arg_6" "sun_angle"
/// @DnDArgument : "arg_7" "sun_intensity"
function draw_character_shadow(spr, img, xx, yy, xscale, yscale, sun_angle, sun_intensity) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23AD7463
	/// @DnDInput : 4
	/// @DnDParent : 7DC03C42
	/// @DnDArgument : "expr" "12 * sun_intensity"
	/// @DnDArgument : "expr_1" "lengthdir_x(shadow_length, sun_angle)"
	/// @DnDArgument : "expr_2" "lengthdir_y(shadow_length, sun_angle)"
	/// @DnDArgument : "expr_3" "0.4 * sun_intensity"
	/// @DnDArgument : "var" "shadow_length"
	/// @DnDArgument : "var_1" "shadow_x_offset"
	/// @DnDArgument : "var_2" "shadow_y_offset"
	/// @DnDArgument : "var_3" "shadow_alpha"
	shadow_length = 12 * sun_intensity;
	shadow_x_offset = lengthdir_x(shadow_length, sun_angle);
	shadow_y_offset = lengthdir_y(shadow_length, sun_angle);
	shadow_alpha = 0.4 * sun_intensity;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 48E09FAC
	/// @DnDParent : 7DC03C42
	/// @DnDArgument : "code" "// Create real shadow using surface$(13_10)if (!surface_exists(global.shadow_surface)) {$(13_10)    global.shadow_surface = surface_create(room_width, room_height);$(13_10)}$(13_10)$(13_10)// Draw to shadow surface$(13_10)surface_set_target(global.shadow_surface);$(13_10)draw_clear_alpha(c_black, 0);$(13_10)$(13_10)// Draw character silhouette$(13_10)gpu_set_blendmode(bm_add);$(13_10)draw_sprite_ext(spr, img, xx + shadow_offset_x, yy + shadow_offset_y, $(13_10)                xscale, yscale * 0.5, 0, c_black, shadow_alpha);$(13_10)gpu_set_blendmode(bm_normal);$(13_10)$(13_10)surface_reset_target();$(13_10)$(13_10)// Draw the shadow surface$(13_10)draw_surface(global.shadow_surface, 0, 0);"
	// Create real shadow using surface
	if (!surface_exists(global.shadow_surface)) {
	    global.shadow_surface = surface_create(room_width, room_height);
	}
	
	// Draw to shadow surface
	surface_set_target(global.shadow_surface);
	draw_clear_alpha(c_black, 0);
	
	// Draw character silhouette
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr, img, xx + shadow_offset_x, yy + shadow_offset_y, 
	                xscale, yscale * 0.5, 0, c_black, shadow_alpha);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	
	// Draw the shadow surface
	draw_surface(global.shadow_surface, 0, 0);}