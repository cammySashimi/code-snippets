/// Steer towards shrimp nucleus, apply movement, set alarm

near_sn = instance_nearest(x, y, obj_shrimp_nucleus);
shrimp_dir = point_direction(x, y, near_sn.x, near_sn.y);

move_dir = shrimp_dir + irandom_range(-30, 30);
move_spd = random_range(0.1, 0.2);

// make sure we don't go out of bounds
potential_y = y-lengthdir_y(32, move_dir);
var loopcount = 0;
while (potential_y < 0 || potential_y > global.oil_start-64) {
    move_dir = random(360);
    potential_y = y+lengthdir_y(32, move_dir);
    loopcount++;
    if (loopcount>=5) {
        move_dir = 90;
        break;
    }
}

// apply motion
direction = move_dir;
speed = move_spd;

// reset move timer
alarm[0] = irandom_range(240,1200);
