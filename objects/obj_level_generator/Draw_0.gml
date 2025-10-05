/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61A8FA82
/// @DnDArgument : "code" "// Draw islands (floor tiles)$(13_10)draw_set_color(c_dkgray);$(13_10)for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)    var island = islands[| i];$(13_10)    draw_rectangle(island.x, island.y, $(13_10)                   island.x + island.width, $(13_10)                   island.y + island.height, false);$(13_10)}$(13_10)$(13_10)// Draw bridges (pathways)$(13_10)draw_set_color(c_gray);$(13_10)for (var i = 0; i < ds_list_size(bridges); i++) {$(13_10)    var bridge = bridges[| i];$(13_10)    draw_line_width(bridge.x1, bridge.y1, bridge.x2, bridge.y2, bridge.width);$(13_10)}$(13_10)$(13_10)// Optional: Draw island borders$(13_10)draw_set_color(c_white);$(13_10)for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)    var island = islands[| i];$(13_10)    draw_rectangle(island.x, island.y, $(13_10)                   island.x + island.width, $(13_10)                   island.y + island.height, true);$(13_10)}$(13_10)$(13_10)draw_set_color(c_white);"
// Draw islands (floor tiles)
draw_set_color(c_dkgray);
for (var i = 0; i < ds_list_size(islands); i++) {
    var island = islands[| i];
    draw_rectangle(island.x, island.y, 
                   island.x + island.width, 
                   island.y + island.height, false);
}

// Draw bridges (pathways)
draw_set_color(c_gray);
for (var i = 0; i < ds_list_size(bridges); i++) {
    var bridge = bridges[| i];
    draw_line_width(bridge.x1, bridge.y1, bridge.x2, bridge.y2, bridge.width);
}

// Optional: Draw island borders
draw_set_color(c_white);
for (var i = 0; i < ds_list_size(islands); i++) {
    var island = islands[| i];
    draw_rectangle(island.x, island.y, 
                   island.x + island.width, 
                   island.y + island.height, true);
}

draw_set_color(c_white);