///_draw_textbox(text, [x, y, width, height, freezePlayer, speed, borderWidth, innerColour, borderColour, textColour, font]);

var tbox = instance_create(0, 0, obj_textbox);

tbox.text = argument[0];
tbox.text_length = string_length(tbox.text);
tbox.time = 0;

// default size: 31 x 7 characters in default font
tbox.xx = global.default_box_x;
tbox.yy = global.default_box_y;
tbox.width = global.default_box_width;
tbox.height = global.default_box_height;
tbox.freeze = global.default_freeze;
tbox.spd = global.default_text_speed;
tbox.bw = global.default_box_border_width;
tbox.ic = global.default_box_inner_colour;
tbox.bc = global.default_box_border_colour;
tbox.tc = global.default_text_colour;
tbox.font = global.default_text_font;
 
switch argument_count {
    case 12:
        tbox.font = argument[11];
    case 11:
        tbox.tc = argument[10];
    case 10:
        tbox.bc = argument[9];
    case 9:
        tbox.ic = argument[8];
    case 8:
        tbox.bw = argument[7];
    case 7:
        tbox.spd = argument[6];
    case 6:
        tbox.freeze = argument[5];
    case 5:
        tbox.height = argument[4];
    case 4:
        tbox.width = argument[3];
    case 3:
        tbox.yy = argument[2];
    case 2:
        tbox.xx = argument[1];
        break;
}

return tbox;
