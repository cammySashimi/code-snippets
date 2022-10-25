/// Pick random(ish) direction, apply movement, set alarm
// moves towards the nearest shrimp_nucleus, ish

nucleus = instance_nearest(x, y, obj_gasfishy_nucleus);
nuc_dir = point_direction(x, y, nucleus.x, nucleus.y);

move_dir = nuc_dir + irandom_range(-60, 60);
move_spd = random_range(0.5, 1);

// make sure we don't go out of bounds
potential_y = y+lengthdir_y(32, move_dir);
var loopcount=0;
while (potential_y < 0 || potential_y > global.oil_start-64) {
    move_dir = random(360);
    potential_y = y-lengthdir_y(32, move_dir);
    loopcount++;
    if (loopcount>=5) {
        move_dir = 90;
        break;
    }
}

// apply motion, turn sprite
image_angle = move_dir;
direction = move_dir;
speed = move_spd;

// reset move timer
alarm[0] = irandom_range(120,240);
