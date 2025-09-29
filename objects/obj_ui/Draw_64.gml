/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BE6D2E2
/// @DnDArgument : "code" "/// @DnDAction : YoYo Games.Drawing.Set_Color$(13_10)/// @DnDVersion : 1$(13_10)draw_set_colour($FFFFFFFF & $ffffff);$(13_10)draw_set_alpha(1);$(13_10)$(13_10)// Basic Info$(13_10)draw_text(10, 10, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp));$(13_10)draw_text(10, 30, "Level: " + string(obj_player.player_level));$(13_10)draw_text(10, 50, "XP: " + string(obj_player.xp) + "/" + string(obj_player.xp_needed));$(13_10)draw_text(10, 70, "Gold: " + string(obj_player.gold));$(13_10)$(13_10)// Draw a separator line$(13_10)draw_set_color(c_yellow);$(13_10)draw_text(10, 100, "== ITEMS ==");$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Count and display items$(13_10)var item_display = ds_map_create();$(13_10)var start_y = 120;$(13_10)$(13_10)// Count each item type$(13_10)for (var i = 0; i < ds_list_size(obj_player.items_collected); i++) {$(13_10)    var item = ds_list_find_value(obj_player.items_collected, i);$(13_10)    if (ds_map_exists(item_display, item)) {$(13_10)        ds_map_set(item_display, item, ds_map_find_value(item_display, item) + 1);$(13_10)    } else {$(13_10)        ds_map_add(item_display, item, 1);$(13_10)    }$(13_10)}$(13_10)$(13_10)// Display items with counts$(13_10)var key = ds_map_find_first(item_display);$(13_10)var display_y = start_y;$(13_10)while (!is_undefined(key)) {$(13_10)    var count = ds_map_find_value(item_display, key);$(13_10)    if (count > 1) {$(13_10)        draw_text(10, display_y, key + " x" + string(count));$(13_10)    } else {$(13_10)        draw_text(10, display_y, key);$(13_10)    }$(13_10)    display_y += 20;$(13_10)    key = ds_map_find_next(item_display, key);$(13_10)}$(13_10)$(13_10)// If no items$(13_10)if (ds_map_empty(item_display)) {$(13_10)    draw_text(10, start_y, "No items yet");$(13_10)    display_y = start_y + 20;$(13_10)}$(13_10)$(13_10)ds_map_destroy(item_display);$(13_10)$(13_10)// Draw stats separator$(13_10)draw_set_color(c_yellow);$(13_10)draw_text(10, display_y + 10, "== STATS ==");$(13_10)draw_set_color(c_white);$(13_10)$(13_10)// Player Stats$(13_10)var stats_y = display_y + 30;$(13_10)draw_text(10, stats_y, "Damage: " + string(obj_player.arrow_damage));$(13_10)draw_text(10, stats_y + 20, "Attack Speed: " + string(60/obj_player.attack_cooldown) + "/sec");$(13_10)draw_text(10, stats_y + 40, "Move Speed: " + string(obj_player.move_speed));$(13_10)draw_text(10, stats_y + 60, "Arrow Range: " + string(obj_player.arrow_range));$(13_10)draw_text(10, stats_y + 80, "Penetration: " + string(obj_player.arrow_penetration));$(13_10)draw_text(10, stats_y + 100, "Crit Chance: " + string(obj_player.crit_chance * 100) + "%");$(13_10)draw_text(10, stats_y + 120, "Projectiles: " + string(obj_player.projectile_count));"
/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(1);

// Basic Info
draw_text(10, 10, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp));
draw_text(10, 30, "Level: " + string(obj_player.player_level));
draw_text(10, 50, "XP: " + string(obj_player.xp) + "/" + string(obj_player.xp_needed));
draw_text(10, 70, "Gold: " + string(obj_player.gold));

// Draw a separator line
draw_set_color(c_yellow);
draw_text(10, 100, "== ITEMS ==");
draw_set_color(c_white);

// Count and display items
var item_display = ds_map_create();
var start_y = 120;

// Count each item type
for (var i = 0; i < ds_list_size(obj_player.items_collected); i++) {
    var item = ds_list_find_value(obj_player.items_collected, i);
    if (ds_map_exists(item_display, item)) {
        ds_map_set(item_display, item, ds_map_find_value(item_display, item) + 1);
    } else {
        ds_map_add(item_display, item, 1);
    }
}

// Display items with counts
var key = ds_map_find_first(item_display);
var display_y = start_y;
while (!is_undefined(key)) {
    var count = ds_map_find_value(item_display, key);
    if (count > 1) {
        draw_text(10, display_y, key + " x" + string(count));
    } else {
        draw_text(10, display_y, key);
    }
    display_y += 20;
    key = ds_map_find_next(item_display, key);
}

// If no items
if (ds_map_empty(item_display)) {
    draw_text(10, start_y, "No items yet");
    display_y = start_y + 20;
}

ds_map_destroy(item_display);

// Draw stats separator
draw_set_color(c_yellow);
draw_text(10, display_y + 10, "== STATS ==");
draw_set_color(c_white);

// Player Stats
var stats_y = display_y + 30;
draw_text(10, stats_y, "Damage: " + string(obj_player.arrow_damage));
draw_text(10, stats_y + 20, "Attack Speed: " + string(60/obj_player.attack_cooldown) + "/sec");
draw_text(10, stats_y + 40, "Move Speed: " + string(obj_player.move_speed));
draw_text(10, stats_y + 60, "Arrow Range: " + string(obj_player.arrow_range));
draw_text(10, stats_y + 80, "Penetration: " + string(obj_player.arrow_penetration));
draw_text(10, stats_y + 100, "Crit Chance: " + string(obj_player.crit_chance * 100) + "%");
draw_text(10, stats_y + 120, "Projectiles: " + string(obj_player.projectile_count));