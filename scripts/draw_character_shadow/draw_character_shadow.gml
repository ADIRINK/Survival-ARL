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
	/// @DnDInput : 5
	/// @DnDParent : 7DC03C42
	/// @DnDArgument : "expr" "8 * sun_intensity"
	/// @DnDArgument : "expr_1" "lengthdir_x(shadow_distance, sun_angle)"
	/// @DnDArgument : "expr_2" "lengthdir_y(shadow_distance, sun_angle)"
	/// @DnDArgument : "expr_3" "0.3 * sun_intensity"
	/// @DnDArgument : "expr_4" "yscale * 1.6"
	/// @DnDArgument : "var" "shadow_distance"
	/// @DnDArgument : "var_1" "shadow_x_offset"
	/// @DnDArgument : "var_2" "shadow_y_offset"
	/// @DnDArgument : "var_3" "shadow_alpha"
	/// @DnDArgument : "var_4" "shadow_yscale"
	shadow_distance = 8 * sun_intensity;
	shadow_x_offset = lengthdir_x(shadow_distance, sun_angle);
	shadow_y_offset = lengthdir_y(shadow_distance, sun_angle);
	shadow_alpha = 0.3 * sun_intensity;
	shadow_yscale = yscale * 1.6;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 48E09FAC
	/// @DnDParent : 7DC03C42
	/// @DnDArgument : "code" "gpu_set_fog(true, c_black, 0, 0);$(13_10)    draw_sprite_ext($(13_10)        spr, $(13_10)        img, $(13_10)        xx + shadow_x_offset, $(13_10)        yy + shadow_y_offset + 4,$(13_10)        xscale, $(13_10)        shadow_yscale, $(13_10)        15, $(13_10)        c_black, $(13_10)        shadow_alpha$(13_10)    );$(13_10)    gpu_set_fog(false, c_black, 0, 0);"
	gpu_set_fog(true, c_black, 0, 0);
	    draw_sprite_ext(
	        spr, 
	        img, 
	        xx + shadow_x_offset, 
	        yy + shadow_y_offset + 4,
	        xscale, 
	        shadow_yscale, 
	        15, 
	        c_black, 
	        shadow_alpha
	    );
	    gpu_set_fog(false, c_black, 0, 0);}