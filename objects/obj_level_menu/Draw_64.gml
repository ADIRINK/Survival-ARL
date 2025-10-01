/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26B4A0A6
/// @DnDInput : 2
/// @DnDArgument : "expr" "display_get_gui_width()"
/// @DnDArgument : "expr_1" "display_get_gui_height()"
/// @DnDArgument : "var" "gw"
/// @DnDArgument : "var_1" "gh"
gw = display_get_gui_width();
gh = display_get_gui_height();

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
/// @DnDArgument : "x2" "gw"
/// @DnDArgument : "y2" "gh"
draw_rectangle(0, 0, gw, gh, 1);

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
/// @DnDArgument : "x1" "gw/2-400"
/// @DnDArgument : "y1" "gh/2-300"
/// @DnDArgument : "x2" "gw/2+400"
/// @DnDArgument : "y2" "gh/2+400"
draw_rectangle(gw/2-400, gh/2-300, gw/2+400, gh/2+400, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 09BB8E3B
draw_set_colour($FFFFFFFF & $ffffff);
var l09BB8E3B_0=($FFFFFFFF >> 24);
draw_set_alpha(l09BB8E3B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6F85AE59
/// @DnDArgument : "font" "fnt_timer"
/// @DnDSaveInfo : "font" "fnt_timer"
draw_set_font(fnt_timer);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0DF3677C
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3C192938
/// @DnDArgument : "x" "camx/2"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "caption" ""LEVEL UP!""
draw_text(camx/2, 300, string("LEVEL UP!") + "");

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4630BFC5
/// @DnDArgument : "code" "// Draw three upgrade options$(13_10)var upgrade_names = [$(13_10)    "+1 Projectile",    // 0$(13_10)    "Faster Attack",    // 1$(13_10)    "Damage Up",        // 2$(13_10)    "More Range",       // 3$(13_10)    "Penetration",      // 4$(13_10)    "Crit Chance",      // 5$(13_10)    "Speed Up",         // 6$(13_10)    "Heal & HP",        // 7$(13_10)    "Knockback",        // 8$(13_10)    "Lifesteal",        // 9$(13_10)    "Projectile Size",  // 10$(13_10)    "Max HP Up",        // 11$(13_10)	"Pick-up Range",	// 12$(13_10)	"Bouce"				// 13$(13_10)];$(13_10)$(13_10)// Set te(gw/2)t alignment to center$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)// Button 1$(13_10)if (selected == 0) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle((gw/2) - 360, (gh/2) - 100, (gw/2) - 180, (gh/2) + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text((gw/2) - 270, (gh/2) + 25, upgrade_names[upgrade_1]); // Centered in button$(13_10)$(13_10)// Button 2$(13_10)if (selected == 1) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle((gw/2) - 90, (gh/2) - 100, (gw/2) + 90, (gh/2) + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text((gw/2), (gh/2) + 25, upgrade_names[upgrade_2]); // Centered in button$(13_10)$(13_10)// Button 3$(13_10)if (selected == 2) draw_set_color(c_yellow);$(13_10)else draw_set_color(c_gray);$(13_10)draw_rectangle((gw/2) + 180, (gh/2) - 100, (gw/2) + 360, (gh/2) + 150, false);$(13_10)draw_set_color(c_white);$(13_10)draw_text((gw/2) + 270, (gh/2) + 25, upgrade_names[upgrade_3]); // Centered in button$(13_10)$(13_10)// Reset alignment$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"
// Draw three upgrade options
var upgrade_names = [
    "+1 Projectile",    // 0
    "Faster Attack",    // 1
    "Damage Up",        // 2
    "More Range",       // 3
    "Penetration",      // 4
    "Crit Chance",      // 5
    "Speed Up",         // 6
    "Heal & HP",        // 7
    "Knockback",        // 8
    "Lifesteal",        // 9
    "Projectile Size",  // 10
    "Max HP Up",        // 11
	"Pick-up Range",	// 12
	"Bouce"				// 13
];

// Set te(gw/2)t alignment to center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Button 1
if (selected == 0) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle((gw/2) - 360, (gh/2) - 100, (gw/2) - 180, (gh/2) + 150, false);
draw_set_color(c_white);
draw_text((gw/2) - 270, (gh/2) + 25, upgrade_names[upgrade_1]); // Centered in button

// Button 2
if (selected == 1) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle((gw/2) - 90, (gh/2) - 100, (gw/2) + 90, (gh/2) + 150, false);
draw_set_color(c_white);
draw_text((gw/2), (gh/2) + 25, upgrade_names[upgrade_2]); // Centered in button

// Button 3
if (selected == 2) draw_set_color(c_yellow);
else draw_set_color(c_gray);
draw_rectangle((gw/2) + 180, (gh/2) - 100, (gw/2) + 360, (gh/2) + 150, false);
draw_set_color(c_white);
draw_text((gw/2) + 270, (gh/2) + 25, upgrade_names[upgrade_3]); // Centered in button

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);