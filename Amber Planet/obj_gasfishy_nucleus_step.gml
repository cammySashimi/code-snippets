/// If we hit shrimp nucleus, move outwards a bit
// simulates school swooping through with multiple attacks

if (position_meeting(x, y, obj_shrimp_nucleus)) {
    x += irandom_range(-100, 100);
    y += irandom_range(-100, 100);
    
    // keep in oil layer
    x = clamp(x, 0, room_width);
    y = clamp(y, 0, global.oil_start);
}

/// Wrap around screen if we go too far
if (x < 0) { x = room_width-1; }
if (x > room_width) { x = 1; }
