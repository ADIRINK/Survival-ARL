/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BE6D2E2
/// @DnDArgument : "code" "draw_set_colour(c_white);$(13_10)draw_set_alpha(1);$(13_10)$(13_10)// Timer and Floor$(13_10)draw_set_color(c_white);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_font(fnt_timer);$(13_10)if (!obj_room_controller.boss_spawned) {$(13_10)    var seconds = obj_room_controller.boss_timer / 60;$(13_10)    var minutes = floor(seconds / 60);$(13_10)    var secs = floor(seconds mod 60);$(13_10)    draw_text_transformed(camx / 2, 30, "Boss in: " + string(minutes) + ":" + string(secs), 1, 1, 0);$(13_10)}$(13_10)$(13_10)// After Boss Timer$(13_10)if (obj_room_controller.boss_killed) {$(13_10)    var seconds2 = obj_room_controller.boss_survival_timer / 60;$(13_10)    var minutes2 = floor(seconds2 / 60);$(13_10)    var secs2 = floor(seconds2 mod 60);$(13_10)    draw_text_transformed(camx / 2, 60, "Survival: " + string(minutes2) + ":" + string(secs2), 1, 1, 0);$(13_10)}$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_font(fnt_def);$(13_10)$(13_10)// === HP BAR ===$(13_10)var hp_bar_x = 14;$(13_10)var hp_bar_y = 14;$(13_10)var hp_bar_width = 200;$(13_10)var hp_bar_height = 32;$(13_10)$(13_10)// Background (black)$(13_10)draw_set_color(c_black);$(13_10)draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_bar_width, hp_bar_y + hp_bar_height, false);$(13_10)$(13_10)// HP fill (red)$(13_10)var hp_percent = obj_player.hp / obj_player.max_hp;$(13_10)draw_set_color(c_red);$(13_10)draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + (hp_bar_width * hp_percent), hp_bar_y + hp_bar_height, false);$(13_10)$(13_10)// HP text on top$(13_10)draw_set_color(c_white);$(13_10)draw_text(hp_bar_x + 7, hp_bar_y + 2, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp));$(13_10)$(13_10)// === XP BAR ===$(13_10)var xp_bar_y = 46;$(13_10)$(13_10)// Background (black)$(13_10)draw_set_color(c_black);$(13_10)draw_rectangle(hp_bar_x, xp_bar_y, hp_bar_x + hp_bar_width, xp_bar_y + hp_bar_height, false);$(13_10)$(13_10)// XP fill (lime green)$(13_10)var xp_percent = obj_player.xp / obj_player.xp_needed;$(13_10)draw_set_color(c_green);$(13_10)draw_rectangle(hp_bar_x, xp_bar_y, hp_bar_x + (hp_bar_width * xp_percent), xp_bar_y + hp_bar_height, false);$(13_10)$(13_10)// XP text on top$(13_10)draw_set_color(c_white);$(13_10)draw_text(hp_bar_x + 7, xp_bar_y + 2, "XP: " + string(obj_player.xp) + "/" + string(obj_player.xp_needed));$(13_10)$(13_10)// === LEVEL, GOLD, FLOOR, KILL COUNT (text only) ===$(13_10)draw_set_font(fnt_timer);$(13_10)draw_text(camx-120, 30, "Level: " + string(obj_player.player_level));$(13_10)draw_set_font(fnt_def);$(13_10)draw_text(10, 130, "Gold: " + string(obj_player.gold));$(13_10)draw_text(10, 160, "Floor: " + string(obj_room_controller.floor_level));$(13_10)draw_text(10, 100, "Kills: " + string(obj_room_controller.kill_count));$(13_10)$(13_10)// === ITEMS SECTION ===$(13_10)draw_set_color(c_yellow);$(13_10)draw_text(10, 210, "== ITEMS ==");$(13_10)draw_set_color(c_white);$(13_10)$(13_10)var item_display = ds_map_create();$(13_10)var start_y = 240;$(13_10)$(13_10)// Count each item type$(13_10)for (var i = 0; i < ds_list_size(obj_player.items_collected); i++) {$(13_10)    var item = ds_list_find_value(obj_player.items_collected, i);$(13_10)    if (ds_map_exists(item_display, item)) {$(13_10)        ds_map_set(item_display, item, ds_map_find_value(item_display, item) + 1);$(13_10)    } else {$(13_10)        ds_map_add(item_display, item, 1);$(13_10)    }$(13_10)}$(13_10)$(13_10)// Display items with counts$(13_10)var key = ds_map_find_first(item_display);$(13_10)var display_y = start_y;$(13_10)while (!is_undefined(key)) {$(13_10)    var count = ds_map_find_value(item_display, key);$(13_10)    if (count > 1) {$(13_10)        draw_text(10, display_y, key + " x" + string(count));$(13_10)    } else {$(13_10)        draw_text(10, display_y, key);$(13_10)    }$(13_10)    display_y += 20;$(13_10)    key = ds_map_find_next(item_display, key);$(13_10)}$(13_10)$(13_10)// If no items$(13_10)if (ds_map_empty(item_display)) {$(13_10)    draw_text(10, start_y, "No items yet");$(13_10)    display_y = start_y + 20;$(13_10)}$(13_10)$(13_10)ds_map_destroy(item_display);$(13_10)$(13_10)// === STATS SECTION ===$(13_10)draw_set_color(c_yellow);$(13_10)draw_text(10, display_y + 10, "== STATS ==");$(13_10)draw_set_color(c_white);$(13_10)$(13_10)var stats_y = display_y + 30;$(13_10)draw_text(10, stats_y, "Damage: " + string(obj_player.current_damage));$(13_10)draw_text(10, stats_y + 25, "Attack Speed: " + string(round(60/obj_player.attack_cooldown * 10) / 10) + "/sec");$(13_10)draw_text(10, stats_y + 50, "Move Speed: " + string(obj_player.move_speed));$(13_10)draw_text(10, stats_y + 75, "Arrow Range: " + string(obj_player.current_range));$(13_10)draw_text(10, stats_y + 100, "Penetration: " + string(obj_player.arrow_penetration));$(13_10)draw_text(10, stats_y + 125, "Crit Chance: " + string(round(obj_player.crit_chance * 100)) + "%");$(13_10)draw_text(10, stats_y + 150, "Projectiles: " + string(obj_player.projectile_count));$(13_10)draw_text(10, stats_y + 175, "Knockback: " + string(obj_player.knockback));"
draw_set_colour(c_white);
draw_set_alpha(1);

// Timer and Floor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_timer);
if (!obj_room_controller.boss_spawned) {
    var seconds = obj_room_controller.boss_timer / 60;
    var minutes = floor(seconds / 60);
    var secs = floor(seconds mod 60);
    draw_text_transformed(camx / 2, 30, "Boss in: " + string(minutes) + ":" + string(secs), 1, 1, 0);
}

// After Boss Timer
if (obj_room_controller.boss_killed) {
    var seconds2 = obj_room_controller.boss_survival_timer / 60;
    var minutes2 = floor(seconds2 / 60);
    var secs2 = floor(seconds2 mod 60);
    draw_text_transformed(camx / 2, 60, "Survival: " + string(minutes2) + ":" + string(secs2), 1, 1, 0);
}

draw_set_halign(fa_left);
draw_set_font(fnt_def);

// === HP BAR ===
var hp_bar_x = 14;
var hp_bar_y = 14;
var hp_bar_width = 200;
var hp_bar_height = 32;

// Background (black)
draw_set_color(c_black);
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_bar_width, hp_bar_y + hp_bar_height, false);

// HP fill (red)
var hp_percent = obj_player.hp / obj_player.max_hp;
draw_set_color(c_red);
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + (hp_bar_width * hp_percent), hp_bar_y + hp_bar_height, false);

// HP text on top
draw_set_color(c_white);
draw_text(hp_bar_x + 7, hp_bar_y + 2, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp));

// === XP BAR ===
var xp_bar_y = 46;

// Background (black)
draw_set_color(c_black);
draw_rectangle(hp_bar_x, xp_bar_y, hp_bar_x + hp_bar_width, xp_bar_y + hp_bar_height, false);

// XP fill (lime green)
var xp_percent = obj_player.xp / obj_player.xp_needed;
draw_set_color(c_green);
draw_rectangle(hp_bar_x, xp_bar_y, hp_bar_x + (hp_bar_width * xp_percent), xp_bar_y + hp_bar_height, false);

// XP text on top
draw_set_color(c_white);
draw_text(hp_bar_x + 7, xp_bar_y + 2, "XP: " + string(obj_player.xp) + "/" + string(obj_player.xp_needed));

// === LEVEL, GOLD, FLOOR, KILL COUNT (text only) ===
draw_set_font(fnt_timer);
draw_text(camx-120, 30, "Level: " + string(obj_player.player_level));
draw_set_font(fnt_def);
draw_text(10, 130, "Gold: " + string(obj_player.gold));
draw_text(10, 160, "Floor: " + string(obj_room_controller.floor_level));
draw_text(10, 100, "Kills: " + string(obj_room_controller.kill_count));

// === ITEMS SECTION ===
draw_set_color(c_yellow);
draw_text(10, 210, "== ITEMS ==");
draw_set_color(c_white);

var item_display = ds_map_create();
var start_y = 240;

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

// === STATS SECTION ===
draw_set_color(c_yellow);
draw_text(10, display_y + 10, "== STATS ==");
draw_set_color(c_white);

var stats_y = display_y + 30;
draw_text(10, stats_y, "Damage: " + string(obj_player.current_damage));
draw_text(10, stats_y + 25, "Attack Speed: " + string(round(60/obj_player.attack_cooldown * 10) / 10) + "/sec");
draw_text(10, stats_y + 50, "Move Speed: " + string(obj_player.move_speed));
draw_text(10, stats_y + 75, "Arrow Range: " + string(obj_player.current_range));
draw_text(10, stats_y + 100, "Penetration: " + string(obj_player.arrow_penetration));
draw_text(10, stats_y + 125, "Crit Chance: " + string(round(obj_player.crit_chance * 100)) + "%");
draw_text(10, stats_y + 150, "Projectiles: " + string(obj_player.projectile_count));
draw_text(10, stats_y + 175, "Knockback: " + string(obj_player.knockback));