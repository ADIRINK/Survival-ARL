/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47982D39
/// @DnDArgument : "code" "function generate_level() {$(13_10)    // 1. Generate islands$(13_10)    var num_islands = irandom_range(min_islands, max_islands);$(13_10)    $(13_10)    for (var i = 0; i < num_islands; i++) {$(13_10)        var attempts = 0;$(13_10)        var success = false;$(13_10)        $(13_10)        while (!success && attempts < 50) {$(13_10)            var island_x = random_range(room_padding, room_width - room_padding);$(13_10)            var island_y = random_range(room_padding, room_height - room_padding);$(13_10)            var island_w = random_range(island_min_size, island_max_size);$(13_10)            var island_h = random_range(island_min_size, island_max_size);$(13_10)            $(13_10)            // Check if this island overlaps with existing islands$(13_10)            if (check_island_placement(island_x, island_y, island_w, island_h)) {$(13_10)                // Create island data$(13_10)                var island = {$(13_10)                    x: island_x,$(13_10)                    y: island_y,$(13_10)                    width: island_w,$(13_10)                    height: island_h,$(13_10)                    center_x: island_x + island_w / 2,$(13_10)                    center_y: island_y + island_h / 2,$(13_10)                    connected: false$(13_10)                };$(13_10)                $(13_10)                ds_list_add(islands, island);$(13_10)                success = true;$(13_10)            }$(13_10)            $(13_10)            attempts++;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // 2. Connect islands with bridges$(13_10)    connect_islands();$(13_10)    $(13_10)    // 3. Create collision grid$(13_10)    build_collision_grid();$(13_10)    $(13_10)    // 4. Spawn walls$(13_10)    spawn_walls();$(13_10)    $(13_10)    // 5. Position player on first island$(13_10)    if (ds_list_size(islands) > 0) {$(13_10)        var first_island = ds_list_find_value(islands, 0);$(13_10)        obj_player.x = first_island.center_x;$(13_10)        obj_player.y = first_island.center_y;$(13_10)    }$(13_10)}"
function generate_level() {
    // 1. Generate islands
    var num_islands = irandom_range(min_islands, max_islands);
    
    for (var i = 0; i < num_islands; i++) {
        var attempts = 0;
        var success = false;
        
        while (!success && attempts < 50) {
            var island_x = random_range(room_padding, room_width - room_padding);
            var island_y = random_range(room_padding, room_height - room_padding);
            var island_w = random_range(island_min_size, island_max_size);
            var island_h = random_range(island_min_size, island_max_size);
            
            // Check if this island overlaps with existing islands
            if (check_island_placement(island_x, island_y, island_w, island_h)) {
                // Create island data
                var island = {
                    x: island_x,
                    y: island_y,
                    width: island_w,
                    height: island_h,
                    center_x: island_x + island_w / 2,
                    center_y: island_y + island_h / 2,
                    connected: false
                };
                
                ds_list_add(islands, island);
                success = true;
            }
            
            attempts++;
        }
    }
    
    // 2. Connect islands with bridges
    connect_islands();
    
    // 3. Create collision grid
    build_collision_grid();
    
    // 4. Spawn walls
    spawn_walls();
    
    // 5. Position player on first island
    if (ds_list_size(islands) > 0) {
        var first_island = ds_list_find_value(islands, 0);
        obj_player.x = first_island.center_x;
        obj_player.y = first_island.center_y;
    }
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79074448
/// @DnDArgument : "code" "// === CONFIGURATION ===$(13_10)min_islands = 8;$(13_10)max_islands = 15;$(13_10)island_min_size = 150;$(13_10)island_max_size = 300;$(13_10)bridge_width = 64;$(13_10)min_distance_between_islands = 200;$(13_10)$(13_10)// Room padding (keep islands away from edges)$(13_10)room_padding = 200;$(13_10)$(13_10)// === DATA STRUCTURES ===$(13_10)islands = ds_list_create();  // Stores island data$(13_10)bridges = ds_list_create();  // Stores bridge data$(13_10)grid = ds_grid_create(room_width div 32, room_height div 32);  // Collision grid$(13_10)ds_grid_clear(grid, 0);  // 0 = empty, 1 = walkable, 2 = wall$(13_10)$(13_10)// === GENERATION ===$(13_10)generate_level();"
// === CONFIGURATION ===
min_islands = 8;
max_islands = 15;
island_min_size = 150;
island_max_size = 300;
bridge_width = 64;
min_distance_between_islands = 200;

// Room padding (keep islands away from edges)
room_padding = 200;

// === DATA STRUCTURES ===
islands = ds_list_create();  // Stores island data
bridges = ds_list_create();  // Stores bridge data
grid = ds_grid_create(room_width div 32, room_height div 32);  // Collision grid
ds_grid_clear(grid, 0);  // 0 = empty, 1 = walkable, 2 = wall

// === GENERATION ===
generate_level();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D8D7FC7
/// @DnDArgument : "code" "function check_island_placement(ix, iy, iw, ih) {$(13_10)    // Check against all existing islands$(13_10)    for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)        var other = ds_list_find_value(islands, i);$(13_10)        $(13_10)        // Calculate distance between centers$(13_10)        var dist = point_distance($(13_10)            ix + iw/2, iy + ih/2,$(13_10)            other.center_x, other.center_y$(13_10)        );$(13_10)        $(13_10)        // Too close?$(13_10)        if (dist < min_distance_between_islands) {$(13_10)            return false;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    return true;$(13_10)}"
function check_island_placement(ix, iy, iw, ih) {
    // Check against all existing islands
    for (var i = 0; i < ds_list_size(islands); i++) {
        var other = ds_list_find_value(islands, i);
        
        // Calculate distance between centers
        var dist = point_distance(
            ix + iw/2, iy + ih/2,
            other.center_x, other.center_y
        );
        
        // Too close?
        if (dist < min_distance_between_islands) {
            return false;
        }
    }
    
    return true;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EAD2F85
/// @DnDArgument : "code" "function connect_islands() {$(13_10)    if (ds_list_size(islands) < 2) return;$(13_10)    $(13_10)    // Mark first island as connected$(13_10)    var first_island = ds_list_find_value(islands, 0);$(13_10)    first_island.connected = true;$(13_10)    $(13_10)    // Connect remaining islands$(13_10)    for (var i = 1; i < ds_list_size(islands); i++) {$(13_10)        var current_island = ds_list_find_value(islands, i);$(13_10)        $(13_10)        // Find nearest connected island$(13_10)        var nearest_dist = 999999;$(13_10)        var nearest_island = undefined;$(13_10)        $(13_10)        for (var j = 0; j < i; j++) {$(13_10)            var other = ds_list_find_value(islands, j);$(13_10)            if (!other.connected) continue;$(13_10)            $(13_10)            var dist = point_distance($(13_10)                current_island.center_x, current_island.center_y,$(13_10)                other.center_x, other.center_y$(13_10)            );$(13_10)            $(13_10)            if (dist < nearest_dist) {$(13_10)                nearest_dist = dist;$(13_10)                nearest_island = other;$(13_10)            }$(13_10)        }$(13_10)        $(13_10)        // Create bridge to nearest connected island$(13_10)        if (nearest_island != undefined) {$(13_10)            create_bridge(current_island, nearest_island);$(13_10)            current_island.connected = true;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Add some extra random connections for variety$(13_10)    var extra_bridges = irandom_range(2, 5);$(13_10)    for (var i = 0; i < extra_bridges; i++) {$(13_10)        var island_a = ds_list_find_value(islands, irandom(ds_list_size(islands) - 1));$(13_10)        var island_b = ds_list_find_value(islands, irandom(ds_list_size(islands) - 1));$(13_10)        $(13_10)        if (island_a != island_b) {$(13_10)            create_bridge(island_a, island_b);$(13_10)        }$(13_10)    }$(13_10)}"
function connect_islands() {
    if (ds_list_size(islands) < 2) return;
    
    // Mark first island as connected
    var first_island = ds_list_find_value(islands, 0);
    first_island.connected = true;
    
    // Connect remaining islands
    for (var i = 1; i < ds_list_size(islands); i++) {
        var current_island = ds_list_find_value(islands, i);
        
        // Find nearest connected island
        var nearest_dist = 999999;
        var nearest_island = undefined;
        
        for (var j = 0; j < i; j++) {
            var other = ds_list_find_value(islands, j);
            if (!other.connected) continue;
            
            var dist = point_distance(
                current_island.center_x, current_island.center_y,
                other.center_x, other.center_y
            );
            
            if (dist < nearest_dist) {
                nearest_dist = dist;
                nearest_island = other;
            }
        }
        
        // Create bridge to nearest connected island
        if (nearest_island != undefined) {
            create_bridge(current_island, nearest_island);
            current_island.connected = true;
        }
    }
    
    // Add some extra random connections for variety
    var extra_bridges = irandom_range(2, 5);
    for (var i = 0; i < extra_bridges; i++) {
        var island_a = ds_list_find_value(islands, irandom(ds_list_size(islands) - 1));
        var island_b = ds_list_find_value(islands, irandom(ds_list_size(islands) - 1));
        
        if (island_a != island_b) {
            create_bridge(island_a, island_b);
        }
    }
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3FB58638
/// @DnDArgument : "code" "function create_bridge(island_a, island_b) {$(13_10)    // Simple straight bridge$(13_10)    var bridge = {$(13_10)        x1: island_a.center_x,$(13_10)        y1: island_a.center_y,$(13_10)        x2: island_b.center_x,$(13_10)        y2: island_b.center_y,$(13_10)        width: bridge_width$(13_10)    };$(13_10)    $(13_10)    ds_list_add(bridges, bridge);$(13_10)}"
function create_bridge(island_a, island_b) {
    // Simple straight bridge
    var bridge = {
        x1: island_a.center_x,
        y1: island_a.center_y,
        x2: island_b.center_x,
        y2: island_b.center_y,
        width: bridge_width
    };
    
    ds_list_add(bridges, bridge);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F938B93
/// @DnDArgument : "code" "function build_collision_grid() {$(13_10)    var cell_size = 32;$(13_10)    $(13_10)    // Mark islands as walkable$(13_10)    for (var i = 0; i < ds_list_size(islands); i++) {$(13_10)        var island = ds_list_find_value(islands, i);$(13_10)        $(13_10)        var grid_x1 = island.x div cell_size;$(13_10)        var grid_y1 = island.y div cell_size;$(13_10)        var grid_x2 = (island.x + island.width) div cell_size;$(13_10)        var grid_y2 = (island.y + island.height) div cell_size;$(13_10)        $(13_10)        for (var gx = grid_x1; gx <= grid_x2; gx++) {$(13_10)            for (var gy = grid_y1; gy <= grid_y2; gy++) {$(13_10)                if (gx >= 0 && gx < ds_grid_width(grid) && $(13_10)                    gy >= 0 && gy < ds_grid_height(grid)) {$(13_10)                    ds_grid_set(grid, gx, gy, 1);$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Mark bridges as walkable$(13_10)    for (var i = 0; i < ds_list_size(bridges); i++) {$(13_10)        var bridge = ds_list_find_value(bridges, i);$(13_10)        $(13_10)        // Draw line between bridge points$(13_10)        var steps = point_distance(bridge.x1, bridge.y1, bridge.x2, bridge.y2) / cell_size;$(13_10)        $(13_10)        for (var step = 0; step <= steps; step++) {$(13_10)            var t = step / steps;$(13_10)            var bx = lerp(bridge.x1, bridge.x2, t);$(13_10)            var by = lerp(bridge.y1, bridge.y2, t);$(13_10)            $(13_10)            // Mark area around bridge point as walkable$(13_10)            for (var ox = -bridge_width/2; ox <= bridge_width/2; ox += cell_size) {$(13_10)                for (var oy = -bridge_width/2; oy <= bridge_width/2; oy += cell_size) {$(13_10)                    var gx = (bx + ox) div cell_size;$(13_10)                    var gy = (by + oy) div cell_size;$(13_10)                    $(13_10)                    if (gx >= 0 && gx < ds_grid_width(grid) && $(13_10)                        gy >= 0 && gy < ds_grid_height(grid)) {$(13_10)                        ds_grid_set(grid, gx, gy, 1);$(13_10)                    }$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}"
function build_collision_grid() {
    var cell_size = 32;
    
    // Mark islands as walkable
    for (var i = 0; i < ds_list_size(islands); i++) {
        var island = ds_list_find_value(islands, i);
        
        var grid_x1 = island.x div cell_size;
        var grid_y1 = island.y div cell_size;
        var grid_x2 = (island.x + island.width) div cell_size;
        var grid_y2 = (island.y + island.height) div cell_size;
        
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
        var bridge = ds_list_find_value(bridges, i);
        
        // Draw line between bridge points
        var steps = point_distance(bridge.x1, bridge.y1, bridge.x2, bridge.y2) / cell_size;
        
        for (var step = 0; step <= steps; step++) {
            var t = step / steps;
            var bx = lerp(bridge.x1, bridge.x2, t);
            var by = lerp(bridge.y1, bridge.y2, t);
            
            // Mark area around bridge point as walkable
            for (var ox = -bridge_width/2; ox <= bridge_width/2; ox += cell_size) {
                for (var oy = -bridge_width/2; oy <= bridge_width/2; oy += cell_size) {
                    var gx = (bx + ox) div cell_size;
                    var gy = (by + oy) div cell_size;
                    
                    if (gx >= 0 && gx < ds_grid_width(grid) && 
                        gy >= 0 && gy < ds_grid_height(grid)) {
                        ds_grid_set(grid, gx, gy, 1);
                    }
                }
            }
        }
    }
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3FA7F441
/// @DnDArgument : "code" "function spawn_walls() {$(13_10)    var cell_size = 32;$(13_10)    $(13_10)    // Create wall objects at grid edges$(13_10)    for (var gx = 0; gx < ds_grid_width(grid); gx++) {$(13_10)        for (var gy = 0; gy < ds_grid_height(grid); gy++) {$(13_10)            var current = ds_grid_get(grid, gx, gy);$(13_10)            $(13_10)            // If this cell is walkable, check neighbors$(13_10)            if (current == 1) {$(13_10)                // Check all 8 directions$(13_10)                for (var dx = -1; dx <= 1; dx++) {$(13_10)                    for (var dy = -1; dy <= 1; dy++) {$(13_10)                        if (dx == 0 && dy == 0) continue;$(13_10)                        $(13_10)                        var check_x = gx + dx;$(13_10)                        var check_y = gy + dy;$(13_10)                        $(13_10)                        // If neighbor is empty, place wall$(13_10)                        if (check_x >= 0 && check_x < ds_grid_width(grid) &&$(13_10)                            check_y >= 0 && check_y < ds_grid_height(grid)) {$(13_10)                            $(13_10)                            if (ds_grid_get(grid, check_x, check_y) == 0) {$(13_10)                                // Create wall at neighbor position$(13_10)                                var wx = check_x * cell_size + cell_size/2;$(13_10)                                var wy = check_y * cell_size + cell_size/2;$(13_10)                                instance_create_layer(wx, wy, "Instances", obj_wall);$(13_10)                                ds_grid_set(grid, check_x, check_y, 2); // Mark as wall$(13_10)                            }$(13_10)                        }$(13_10)                    }$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}"
function spawn_walls() {
    var cell_size = 32;
    
    // Create wall objects at grid edges
    for (var gx = 0; gx < ds_grid_width(grid); gx++) {
        for (var gy = 0; gy < ds_grid_height(grid); gy++) {
            var current = ds_grid_get(grid, gx, gy);
            
            // If this cell is walkable, check neighbors
            if (current == 1) {
                // Check all 8 directions
                for (var dx = -1; dx <= 1; dx++) {
                    for (var dy = -1; dy <= 1; dy++) {
                        if (dx == 0 && dy == 0) continue;
                        
                        var check_x = gx + dx;
                        var check_y = gy + dy;
                        
                        // If neighbor is empty, place wall
                        if (check_x >= 0 && check_x < ds_grid_width(grid) &&
                            check_y >= 0 && check_y < ds_grid_height(grid)) {
                            
                            if (ds_grid_get(grid, check_x, check_y) == 0) {
                                // Create wall at neighbor position
                                var wx = check_x * cell_size + cell_size/2;
                                var wy = check_y * cell_size + cell_size/2;
                                instance_create_layer(wx, wy, "Instances", obj_wall);
                                ds_grid_set(grid, check_x, check_y, 2); // Mark as wall
                            }
                        }
                    }
                }
            }
        }
    }
}