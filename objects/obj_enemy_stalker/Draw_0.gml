/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3713C3BD
/// @DnDArgument : "code" "if(flash_timer > 0) {$(13_10)    var pulse = 1 + (flash_timer / 10);$(13_10)    $(13_10)    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);$(13_10)    $(13_10)    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_white, 1);$(13_10)} else {$(13_10)    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);$(13_10)    $(13_10)    draw_self();$(13_10)}"
if(flash_timer > 0) {
    var pulse = 1 + (flash_timer / 10);
    
    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);
    
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_white, 1);
} else {
    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);
    
    draw_self();
}