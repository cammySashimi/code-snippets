///_draw_choicebox(text, x, y, width, height, choice1, [choice2 ... choice10]);

var choice_count = argument_count-5;
var cbox = instance_create(0, 0, obj_choicebox);

cbox.text = argument[0];

cbox.xx = argument[1];
cbox.yy = argument[2];
cbox.width = argument[3];
cbox.height = argument[4];
cbox.freeze = global.default_freeze;
cbox.spd = global.default_text_speed;
cbox.bw = global.default_box_border_width;
cbox.ic = global.default_box_inner_colour;
cbox.bc = global.default_box_border_colour;
cbox.tc = global.default_text_colour;
cbox.font = global.default_text_font;

cbox.choice = array_create(choice_count);

for (var i=0; i<choice_count; i++) {
    var j = i+5;
    cbox.choice[i] = argument[j];
}

return cbox;
