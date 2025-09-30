/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 433DB67B
/// @DnDArgument : "code" "if(flash_timer > 0) {$(13_10)    var pulse = 1 + (flash_timer / 20);$(13_10)    $(13_10)    // Draw shadow first$(13_10)    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);$(13_10)    $(13_10)    // Draw character with flash$(13_10)    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_red, 1);$(13_10)} else {$(13_10)    // Draw shadow first$(13_10)    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);$(13_10)    $(13_10)    // Draw character normally$(13_10)    draw_self();$(13_10)}"
if(flash_timer > 0) {
    var pulse = 1 + (flash_timer / 20);
    
    // Draw shadow first
    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);
    
    // Draw character with flash
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_red, 1);
} else {
    // Draw shadow first
    draw_character_shadow(sprite_index, image_index, x, y, image_xscale, image_yscale, 135, 0.8);
    
    // Draw character normally
    draw_self();
}