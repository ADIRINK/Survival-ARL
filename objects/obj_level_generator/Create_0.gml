/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47982D39
/// @DnDArgument : "code" "/// @DnDAction : YoYo Games.Common.Execute_Code$(13_10)/// @DnDVersion : 1$(13_10)/// @DnDHash : 47982D39$(13_10)/// @DnDArgument : "code"$(13_10)$(13_10)// === CONFIGURATION ===$(13_10)min_islands = 10;$(13_10)max_islands = 18;$(13_10)island_min_size = 200;$(13_10)island_max_size = 400;$(13_10)bridge_width = 80;$(13_10)min_distance_between_islands = 250;$(13_10)room_padding = 250;$(13_10)$(13_10)// === DATA STRUCTURES ===$(13_10)islands = ds_list_create();$(13_10)bridges = ds_list_create();$(13_10)grid = ds_grid_create(room_width div 32, room_height div 32);$(13_10)ds_grid_clear(grid, 0);$(13_10)$(13_10)// === FUNCTIONS ===$(13_10)$(13_10)function check_island_placement(ix, iy, iw, ih) {$(13_10)    for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)        var other_island = islands[| i];$(13_10)        var other_cx = other_island.x + other_island.width / 2;$(13_10)        var other_cy = other_island.y + other_island.height / 2;$(13_10)        $(13_10)        var dist = point_distance(ix + iw/2, iy + ih/2, other_cx, other_cy);$(13_10)        $(13_10)        if (dist < min_distance_between_islands) {$(13_10)            return false;$(13_10)        }$(13_10)    }$(13_10)    return true;$(13_10)}$(13_10)$(13_10)function create_bridge(island_a, island_b) {$(13_10)    var bridge = {$(13_10)        x1: island_a.center_x,$(13_10)        y1: island_a.center_y,$(13_10)        x2: island_b.center_x,$(13_10)        y2: island_b.center_y,$(13_10)        width: bridge_width$(13_10)    };$(13_10)    ds_list_add(bridges, bridge);$(13_10)}$(13_10)$(13_10)function connect_islands() {$(13_10)    var num_islands = ds_list_size(islands);$(13_10)    if (num_islands < 2) return;$(13_10)    $(13_10)    // === STEP 1: Minimum Spanning Tree (ensures all connected) ===$(13_10)    var connected_list = ds_list_create();$(13_10)    var unconnected_list = ds_list_create();$(13_10)    $(13_10)    // Start with first island$(13_10)    ds_list_add(connected_list, 0);$(13_10)    $(13_10)    // Add all others to unconnected$(13_10)    for (var i = 1; i < num_islands; i++) {$(13_10)        ds_list_add(unconnected_list, i);$(13_10)    }$(13_10)    $(13_10)    // Connect all islands using nearest neighbor$(13_10)    while (ds_list_size(unconnected_list) > 0) {$(13_10)        var shortest_dist = 999999;$(13_10)        var best_connected_idx = -1;$(13_10)        var best_unconnected_idx = -1;$(13_10)        var best_unconnected_list_pos = -1;$(13_10)        $(13_10)        // Find shortest connection between connected and unconnected$(13_10)        for (var i = 0; i < ds_list_size(connected_list); i++) {$(13_10)            var conn_idx = connected_list[| i];$(13_10)            var conn_island = islands[| conn_idx];$(13_10)            $(13_10)            for (var j = 0; j < ds_list_size(unconnected_list); j++) {$(13_10)                var unconn_idx = unconnected_list[| j];$(13_10)                var unconn_island = islands[| unconn_idx];$(13_10)                $(13_10)                var dist = point_distance($(13_10)                    conn_island.center_x, conn_island.center_y,$(13_10)                    unconn_island.center_x, unconn_island.center_y$(13_10)                );$(13_10)                $(13_10)                if (dist < shortest_dist) {$(13_10)                    shortest_dist = dist;$(13_10)                    best_connected_idx = conn_idx;$(13_10)                    best_unconnected_idx = unconn_idx;$(13_10)                    best_unconnected_list_pos = j;$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)        $(13_10)        // Create bridge$(13_10)        if (best_connected_idx != -1 && best_unconnected_idx != -1) {$(13_10)            var island_a = islands[| best_connected_idx];$(13_10)            var island_b = islands[| best_unconnected_idx];$(13_10)            create_bridge(island_a, island_b);$(13_10)            $(13_10)            // Move to connected list$(13_10)            ds_list_add(connected_list, best_unconnected_idx);$(13_10)            ds_list_delete(unconnected_list, best_unconnected_list_pos);$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    ds_list_destroy(connected_list);$(13_10)    ds_list_destroy(unconnected_list);$(13_10)    $(13_10)    // === STEP 2: Add extra bridges for variety ===$(13_10)    var extra_bridges = irandom_range(num_islands div 2, num_islands);  // More bridges!$(13_10)    $(13_10)    for (var k = 0; k < extra_bridges; k++) {$(13_10)        var idx_a = irandom(num_islands - 1);$(13_10)        var idx_b = irandom(num_islands - 1);$(13_10)        $(13_10)        if (idx_a != idx_b) {$(13_10)            var island_a = islands[| idx_a];$(13_10)            var island_b = islands[| idx_b];$(13_10)            $(13_10)            // Only connect if not too far$(13_10)            var dist = point_distance($(13_10)                island_a.center_x, island_a.center_y,$(13_10)                island_b.center_x, island_b.center_y$(13_10)            );$(13_10)            $(13_10)            if (dist < room_width / 2) {  // Reasonable distance$(13_10)                create_bridge(island_a, island_b);$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)function build_collision_grid() {$(13_10)    var cell_size = 32;$(13_10)    $(13_10)    // Mark islands as walkable$(13_10)    for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)        var island = islands[| i];$(13_10)        $(13_10)        var grid_x1 = floor(island.x / cell_size);$(13_10)        var grid_y1 = floor(island.y / cell_size);$(13_10)        var grid_x2 = floor((island.x + island.width) / cell_size);$(13_10)        var grid_y2 = floor((island.y + island.height) / cell_size);$(13_10)        $(13_10)        for (var gx = grid_x1; gx <= grid_x2; gx++) {$(13_10)            for (var gy = grid_y1; gy <= grid_y2; gy++) {$(13_10)                if (gx >= 0 && gx < ds_grid_width(grid) && $(13_10)                    gy >= 0 && gy < ds_grid_height(grid)) {$(13_10)                    ds_grid_set(grid, gx, gy, 1);$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Mark bridges as walkable$(13_10)    for (var i = 0; i < ds_list_size(bridges); i++) {$(13_10)        var bridge = bridges[| i];$(13_10)        var steps = max(1, point_distance(bridge.x1, bridge.y1, bridge.x2, bridge.y2) / cell_size);$(13_10)        $(13_10)        for (var step = 0; step <= steps; step++) {$(13_10)            var t = step / steps;$(13_10)            var bx = lerp(bridge.x1, bridge.x2, t);$(13_10)            var by = lerp(bridge.y1, bridge.y2, t);$(13_10)            $(13_10)            for (var ox = -bridge_width/2; ox <= bridge_width/2; ox += cell_size) {$(13_10)                for (var oy = -bridge_width/2; oy <= bridge_width/2; oy += cell_size) {$(13_10)                    var gx = floor((bx + ox) / cell_size);$(13_10)                    var gy = floor((by + oy) / cell_size);$(13_10)                    $(13_10)                    if (gx >= 0 && gx < ds_grid_width(grid) && $(13_10)                        gy >= 0 && gy < ds_grid_height(grid)) {$(13_10)                        ds_grid_set(grid, gx, gy, 1);$(13_10)                    }$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)function spawn_walls() {$(13_10)    var cell_size = 32;$(13_10)    $(13_10)    // First pass: Create floor tiles and mark walls$(13_10)    for (var gx = 0; gx < ds_grid_width(grid); gx++) {$(13_10)        for (var gy = 0; gy < ds_grid_height(grid); gy++) {$(13_10)            var current = ds_grid_get(grid, gx, gy);$(13_10)            $(13_10)            // If walkable, create floor tile$(13_10)            if (current == 1) {$(13_10)                var fx = gx * cell_size;$(13_10)                var fy = gy * cell_size;$(13_10)                instance_create_layer(fx, fy, "Instances", obj_island_floor);$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Second pass: Create walls at edges$(13_10)    for (var gx = 0; gx < ds_grid_width(grid); gx++) {$(13_10)        for (var gy = 0; gy < ds_grid_height(grid); gy++) {$(13_10)            var current = ds_grid_get(grid, gx, gy);$(13_10)            $(13_10)            if (current == 1) {$(13_10)                // Check all 8 directions$(13_10)                for (var dx = -1; dx <= 1; dx++) {$(13_10)                    for (var dy = -1; dy <= 1; dy++) {$(13_10)                        if (dx == 0 && dy == 0) continue;$(13_10)                        $(13_10)                        var check_x = gx + dx;$(13_10)                        var check_y = gy + dy;$(13_10)                        $(13_10)                        if (check_x >= 0 && check_x < ds_grid_width(grid) &&$(13_10)                            check_y >= 0 && check_y < ds_grid_height(grid)) {$(13_10)                            $(13_10)                            if (ds_grid_get(grid, check_x, check_y) == 0) {$(13_10)                                var wx = check_x * cell_size + cell_size/2;$(13_10)                                var wy = check_y * cell_size + cell_size/2;$(13_10)                                instance_create_layer(wx, wy, "Instances", obj_wall);$(13_10)                                ds_grid_set(grid, check_x, check_y, 2);$(13_10)                            }$(13_10)                        }$(13_10)                    }$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)}$(13_10)$(13_10)function generate_level() {$(13_10)    var num_islands = irandom_range(min_islands, max_islands);$(13_10)    $(13_10)    // Generate islands$(13_10)    for (var i = 0; i < num_islands; i++) {$(13_10)        var attempts = 0;$(13_10)        var success = false;$(13_10)        $(13_10)        while (!success && attempts < 50) {$(13_10)            var island_x = random_range(room_padding, room_width - room_padding);$(13_10)            var island_y = random_range(room_padding, room_height - room_padding);$(13_10)            var island_w = random_range(island_min_size, island_max_size);$(13_10)            var island_h = random_range(island_min_size, island_max_size);$(13_10)            $(13_10)            if (check_island_placement(island_x, island_y, island_w, island_h)) {$(13_10)                var island = {$(13_10)                    x: island_x,$(13_10)                    y: island_y,$(13_10)                    width: island_w,$(13_10)                    height: island_h,$(13_10)                    center_x: island_x + island_w / 2,$(13_10)                    center_y: island_y + island_h / 2$(13_10)                };$(13_10)                $(13_10)                ds_list_add(islands, island);$(13_10)                success = true;$(13_10)            }$(13_10)            attempts++;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    connect_islands();$(13_10)    build_collision_grid();$(13_10)    spawn_walls();$(13_10)    $(13_10)    // Position player$(13_10)    if (ds_list_size(islands) > 0 && instance_exists(obj_player)) {$(13_10)        var first_island = islands[| 0];$(13_10)        obj_player.x = first_island.center_x;$(13_10)        obj_player.y = first_island.center_y;$(13_10)    }$(13_10)}$(13_10)$(13_10)// === GENERATE ===$(13_10)generate_level();"
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47982D39
/// @DnDArgument : "code"

// === CONFIGURATION ===
min_islands = 10;
max_islands = 18;
island_min_size = 200;
island_max_size = 400;
bridge_width = 80;
min_distance_between_islands = 250;
room_padding = 250;

// === DATA STRUCTURES ===
islands = ds_list_create();
bridges = ds_list_create();
grid = ds_grid_create(room_width div 32, room_height div 32);
ds_grid_clear(grid, 0);

// === FUNCTIONS ===

function check_island_placement(ix, iy, iw, ih) {
    for (var i = 0; i < ds_list_size(islands); i++) {
        var other_island = islands[| i];
        var other_cx = other_island.x + other_island.width / 2;
        var other_cy = other_island.y + other_island.height / 2;
        
        var dist = point_distance(ix + iw/2, iy + ih/2, other_cx, other_cy);
        
        if (dist < min_distance_between_islands) {
            return false;
        }
    }
    return true;
}

function create_bridge(island_a, island_b) {
    var bridge = {
        x1: island_a.center_x,
        y1: island_a.center_y,
        x2: island_b.center_x,
        y2: island_b.center_y,
        width: bridge_width
    };
    ds_list_add(bridges, bridge);
}

function connect_islands() {
    var num_islands = ds_list_size(islands);
    if (num_islands < 2) return;
    
    // === STEP 1: Minimum Spanning Tree (ensures all connected) ===
    var connected_list = ds_list_create();
    var unconnected_list = ds_list_create();
    
    // Start with first island
    ds_list_add(connected_list, 0);
    
    // Add all others to unconnected
    for (var i = 1; i < num_islands; i++) {
        ds_list_add(unconnected_list, i);
    }
    
    // Connect all islands using nearest neighbor
    while (ds_list_size(unconnected_list) > 0) {
        var shortest_dist = 999999;
        var best_connected_idx = -1;
        var best_unconnected_idx = -1;
        var best_unconnected_list_pos = -1;
        
        // Find shortest connection between connected and unconnected
        for (var i = 0; i < ds_list_size(connected_list); i++) {
            var conn_idx = connected_list[| i];
            var conn_island = islands[| conn_idx];
            
            for (var j = 0; j < ds_list_size(unconnected_list); j++) {
                var unconn_idx = unconnected_list[| j];
                var unconn_island = islands[| unconn_idx];
                
                var dist = point_distance(
                    conn_island.center_x, conn_island.center_y,
                    unconn_island.center_x, unconn_island.center_y
                );
                
                if (dist < shortest_dist) {
                    shortest_dist = dist;
                    best_connected_idx = conn_idx;
                    best_unconnected_idx = unconn_idx;
                    best_unconnected_list_pos = j;
                }
            }
        }
        
        // Create bridge
        if (best_connected_idx != -1 && best_unconnected_idx != -1) {
            var island_a = islands[| best_connected_idx];
            var island_b = islands[| best_unconnected_idx];
            create_bridge(island_a, island_b);
            
            // Move to connected list
            ds_list_add(connected_list, best_unconnected_idx);
            ds_list_delete(unconnected_list, best_unconnected_list_pos);
        }
    }
    
    ds_list_destroy(connected_list);
    ds_list_destroy(unconnected_list);
    
    // === STEP 2: Add extra bridges for variety ===
    var extra_bridges = irandom_range(num_islands div 2, num_islands);  // More bridges!
    
    for (var k = 0; k < extra_bridges; k++) {
        var idx_a = irandom(num_islands - 1);
        var idx_b = irandom(num_islands - 1);
        
        if (idx_a != idx_b) {
            var island_a = islands[| idx_a];
            var island_b = islands[| idx_b];
            
            // Only connect if not too far
            var dist = point_distance(
                island_a.center_x, island_a.center_y,
                island_b.center_x, island_b.center_y
            );
            
            if (dist < room_width / 2) {  // Reasonable distance
                create_bridge(island_a, island_b);
            }
        }
    }
}

function build_collision_grid() {
    var cell_size = 32;
    
    // Mark islands as walkable
    for (var i = 0; i < ds_list_size(islands); i++) {
        var island = islands[| i];
        
        var grid_x1 = floor(island.x / cell_size);
        var grid_y1 = floor(island.y / cell_size);
        var grid_x2 = floor((island.x + island.width) / cell_size);
        var grid_y2 = floor((island.y + island.height) / cell_size);
        
        for (var gx = grid_x1; gx <= grid_x2; gx++) {
            for (var gy = grid_y1; gy <= grid_y2; gy++) {
                if (gx >= 0 && gx < ds_grid_width(grid) && 
                    gy >= 0 && gy < ds_grid_height(grid)) {
                    ds_grid_set(grid, gx, gy, 1);
                }
            }
        }
    }
    
    // Mark bridges as walkable
    for (var i = 0; i < ds_list_size(bridges); i++) {
        var bridge = bridges[| i];
        var steps = max(1, point_distance(bridge.x1, bridge.y1, bridge.x2, bridge.y2) / cell_size);
        
        for (var step = 0; step <= steps; step++) {
            var t = step / steps;
            var bx = lerp(bridge.x1, bridge.x2, t);
            var by = lerp(bridge.y1, bridge.y2, t);
            
            for (var ox = -bridge_width/2; ox <= bridge_width/2; ox += cell_size) {
                for (var oy = -bridge_width/2; oy <= bridge_width/2; oy += cell_size) {
                    var gx = floor((bx + ox) / cell_size);
                    var gy = floor((by + oy) / cell_size);
                    
                    if (gx >= 0 && gx < ds_grid_width(grid) && 
                        gy >= 0 && gy < ds_grid_height(grid)) {
                        ds_grid_set(grid, gx, gy, 1);
                    }
                }
            }
        }
    }
}

function spawn_walls() {
    var cell_size = 32;
    
    // First pass: Create floor tiles and mark walls
    for (var gx = 0; gx < ds_grid_width(grid); gx++) {
        for (var gy = 0; gy < ds_grid_height(grid); gy++) {
            var current = ds_grid_get(grid, gx, gy);
            
            // If walkable, create floor tile
            if (current == 1) {
                var fx = gx * cell_size;
                var fy = gy * cell_size;
                instance_create_layer(fx, fy, "Instances", obj_island_floor);
            }
        }
    }
    
    // Second pass: Create walls at edges
    for (var gx = 0; gx < ds_grid_width(grid); gx++) {
        for (var gy = 0; gy < ds_grid_height(grid); gy++) {
            var current = ds_grid_get(grid, gx, gy);
            
            if (current == 1) {
                // Check all 8 directions
                for (var dx = -1; dx <= 1; dx++) {
                    for (var dy = -1; dy <= 1; dy++) {
                        if (dx == 0 && dy == 0) continue;
                        
                        var check_x = gx + dx;
                        var check_y = gy + dy;
                        
                        if (check_x >= 0 && check_x < ds_grid_width(grid) &&
                            check_y >= 0 && check_y < ds_grid_height(grid)) {
                            
                            if (ds_grid_get(grid, check_x, check_y) == 0) {
                                var wx = check_x * cell_size + cell_size/2;
                                var wy = check_y * cell_size + cell_size/2;
                                instance_create_layer(wx, wy, "Instances", obj_wall);
                                ds_grid_set(grid, check_x, check_y, 2);
                            }
                        }
                    }
                }
            }
        }
    }
}
}

function generate_level() {
    var num_islands = irandom_range(min_islands, max_islands);
    
    // Generate islands
    for (var i = 0; i < num_islands; i++) {
        var attempts = 0;
        var success = false;
        
        while (!success && attempts < 50) {
            var island_x = random_range(room_padding, room_width - room_padding);
            var island_y = random_range(room_padding, room_height - room_padding);
            var island_w = random_range(island_min_size, island_max_size);
            var island_h = random_range(island_min_size, island_max_size);
            
            if (check_island_placement(island_x, island_y, island_w, island_h)) {
                var island = {
                    x: island_x,
                    y: island_y,
                    width: island_w,
                    height: island_h,
                    center_x: island_x + island_w / 2,
                    center_y: island_y + island_h / 2
                };
                
                ds_list_add(islands, island);
                success = true;
            }
            attempts++;
        }
    }
    
    connect_islands();
    build_collision_grid();
    spawn_walls();
    
    // Position player
    if (ds_list_size(islands) > 0 && instance_exists(obj_player)) {
        var first_island = islands[| 0];
        obj_player.x = first_island.center_x;
        obj_player.y = first_island.center_y;
    }
}

// === GENERATE ===
generate_level();