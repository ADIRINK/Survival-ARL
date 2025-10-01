/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3713C3BD
/// @DnDArgument : "code" "// Draw shadow (simple oval under character)$(13_10)var shadow_x = x;$(13_10)var shadow_y = y;$(13_10)var shadow_width = sprite_width * 1.1;$(13_10)var shadow_height = sprite_height * 0.5;$(13_10)$(13_10)draw_set_alpha(0.3);$(13_10)draw_set_color(c_black);$(13_10)draw_ellipse(shadow_x - shadow_width/2, shadow_y - shadow_height/2,$(13_10)             shadow_x + shadow_width/2, shadow_y + shadow_height/2, false);$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Draw character with flash effect if damaged$(13_10)if(flash_timer > 0) {$(13_10)    var pulse = 1 + (flash_timer / 20);$(13_10)    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_red, 1);$(13_10)} else {$(13_10)    draw_self();$(13_10)}"
// Draw shadow (simple oval under character)
var shadow_x = x;
var shadow_y = y;
var shadow_width = sprite_width * 1.1;
var shadow_height = sprite_height * 0.5;

draw_set_alpha(0.3);
draw_set_color(c_black);
draw_ellipse(shadow_x - shadow_width/2, shadow_y - shadow_height/2,
             shadow_x + shadow_width/2, shadow_y + shadow_height/2, false);
draw_set_alpha(1);
draw_set_color(c_white);

// Draw character with flash effect if damaged
if(flash_timer > 0) {
    var pulse = 1 + (flash_timer / 20);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * pulse, image_yscale * pulse, image_angle, c_red, 1);
} else {
    draw_self();
}