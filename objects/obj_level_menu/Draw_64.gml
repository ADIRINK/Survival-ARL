/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2B6E420C
/// @DnDArgument : "color" "$C29B9B9B"
draw_set_colour($C29B9B9B & $ffffff);
var l2B6E420C_0=($C29B9B9B >> 24);
draw_set_alpha(l2B6E420C_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 0EE6235C
/// @DnDArgument : "x2" "room_width"
/// @DnDArgument : "y2" "room_height"
draw_rectangle(0, 0, room_width, room_height, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 70484F70
/// @DnDArgument : "color" "$FF424242"
draw_set_colour($FF424242 & $ffffff);
var l70484F70_0=($FF424242 >> 24);
draw_set_alpha(l70484F70_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4E7A82DC
/// @DnDArgument : "x1" "x-300"
/// @DnDArgument : "y1" "y-200"
/// @DnDArgument : "x2" "x+300"
/// @DnDArgument : "y2" "y+300"
draw_rectangle(x-300, y-200, x+300, y+300, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 09BB8E3B
draw_set_colour($FFFFFFFF & $ffffff);
var l09BB8E3B_0=($FFFFFFFF >> 24);
draw_set_alpha(l09BB8E3B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3C192938
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "y-180"
/// @DnDArgument : "caption" ""LEVEL UP!""
draw_text(room_width/2, y-180, string("LEVEL UP!") + "");

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4630BFC5
/// @DnDArgument : "code" "// Draw three upgrade options$(13_10)var upgrade_names = ["+1 Projectile", "Faster Attack", "Damage Up", "More Range", "Penetration", "Crit Chance", "Speed Up", "Heal & HP"];$(13_10)$(13_10)// Set text alignment to center$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)// Button 1$(13_10)if (selected == 0) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle(x - 220, y - 100, x - 40, y + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text(x - 130, y + 25, upgrade_names[upgrade_1]); // Centered in button$(13_10)$(13_10)// Button 2$(13_10)if (selected == 1) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle(x - 90, y - 100, x + 90, y + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text(x, y + 25, upgrade_names[upgrade_2]); // Centered in button$(13_10)$(13_10)// Button 3$(13_10)if (selected == 2) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle(x + 40, y - 100, x + 220, y + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text(x + 130, y + 25, upgrade_names[upgrade_3]); // Centered in button$(13_10)$(13_10)// Reset alignment$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"
// Draw three upgrade options
var upgrade_names = ["+1 Projectile", "Faster Attack", "Damage Up", "More Range", "Penetration", "Crit Chance", "Speed Up", "Heal & HP"];

// Set text alignment to center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Button 1
if (selected == 0) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle(x - 220, y - 100, x - 40, y + 150, false);
draw_set_color(c_white);
draw_text(x - 130, y + 25, upgrade_names[upgrade_1]); // Centered in button

// Button 2
if (selected == 1) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle(x - 90, y - 100, x + 90, y + 150, false);
draw_set_color(c_white);
draw_text(x, y + 25, upgrade_names[upgrade_2]); // Centered in button

// Button 3
if (selected == 2) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle(x + 40, y - 100, x + 220, y + 150, false);
draw_set_color(c_white);
draw_text(x + 130, y + 25, upgrade_names[upgrade_3]); // Centered in button

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);