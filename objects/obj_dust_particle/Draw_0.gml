/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 1D5D55BF
/// @DnDArgument : "alpha" "alpha"
draw_set_alpha(alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7241D693
/// @DnDArgument : "color" "color_variance"
draw_set_colour(color_variance & $ffffff);
var l7241D693_0=(color_variance >> 24);
draw_set_alpha(l7241D693_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Ellipse
/// @DnDVersion : 1
/// @DnDHash : 45BA3762
/// @DnDArgument : "x1" "x - size"
/// @DnDArgument : "y1" "y - size"
/// @DnDArgument : "x2" "x + size"
/// @DnDArgument : "y2" "y + size"
draw_ellipse(x - size, y - size, x + size, y + size, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 70AF5229
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 76A60089
draw_set_colour($FFFFFFFF & $ffffff);
var l76A60089_0=($FFFFFFFF >> 24);
draw_set_alpha(l76A60089_0 / $ff);