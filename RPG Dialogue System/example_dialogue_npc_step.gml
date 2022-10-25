/// Textboxes

/*
//
// Some explinations:
//   _control_pressed: script that maps various keyboard / gamepad inputs to simple controls
//   _talk_check: script that checks if the player is facing the npc and interacting with them in a legal way
//   global.player_freeze: variable tracking if the player can move or not, eg: in dialogue or a cutscene
//   tc: textbox counter, initialised at -1 on create step
//   t: textbox instance id   
//
*/ 

if (_control_pressed("a") && tc<0 && !global.player_freeze && !instance_exists(t) && _talk_check(obj_player, self)) {
    tc++;
}

if (tc>=0 && !instance_exists(t)) {
if (talked==0) {
    switch tc {
        case 0:
            t = _draw_textbox (
                "Hello everyone, and welcome to my " +
                "computer game entertainment product!"
            );
            tc++;
            break;
        case 1:
            t = _draw_textbox (
                "I hope that you enjoy said product, " +
                "and can extract as much value as possible " +
                "out of it during your reasonably long " +
                "gaming session experience thing."
            );
            tc++;
            break;
        case 2:
            t = _draw_textbox("H");
            tc++;
            break;
        case 3:
            t = _draw_textbox (
                "1234567890123456789012345678901 " +
                "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDE " +
                "abcdefghijklmnopqrstuvwxyzabcde " +
                "1234567890123456789012345678901 " +
                "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDE " +
                "abcdefghijklmnopqrstuvwxyzabcde " +
                "`~!@\#$%^&*()-_=+[{]}\|;:',<>/?"
            );
            tc++;
            break;
        case 4:
            t = _draw_textbox (
                "This box is very slow. It crawls by at a meagre pace. The slow brown fox jumps over the lazy dog. The slow brown fox jumps over the lazy dog.",
                global.default_box_x, global.default_box_y,
                global.default_box_width, global.default_box_height,
                global.default_freeze, global.default_text_speed*0.25
            );
            tc++;
            break;
        case 5:
            t = _draw_textbox (
                "This box is very fast. It jumps past you faster than you can read it. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog.",
                global.default_box_x, global.default_box_y,
                global.default_box_width, global.default_box_height,
                global.default_freeze, global.default_text_speed*8
            );
            tc++;
            break;
        case 6:
            t = _draw_textbox (
                "This box is printed in odd colours. Lorem ipsum dolor sit my eyes hurt.",
                global.default_box_x, global.default_box_y,
                global.default_box_width, global.default_box_height,
                global.default_freeze, global.default_text_speed,
                global.default_box_border_width,
                zxc_blue, zxc_green, zxc_pink
            );
            tc++;
            break;
        case 7:
            t = _draw_textbox (
                "This box is printed in a BOLD and ANGRY font. Raaaaaar!",
                global.default_box_x, global.default_box_y,
                global.default_box_width, global.default_box_height,
                global.default_freeze, global.default_text_speed,
                global.default_box_border_width,
                global.default_box_inner_colour, global.default_box_border_colour,
                global.default_text_colour,
                fnt_zx_bold
            );
            tc++;
            break;
        case 8:
            t = _draw_textbox (
                "This box is an odd size and in a weird place. That can cause some unexpected formatting bugs, so it helps to##hardcode#in#your#formatting.",
                32, 16,
                128, 128
            );
            tc++;
            break;
        case 9:
            t = _draw_choicebox (
                "What is your favourite colour?#",
                16, 16,
                224, 48,
                "Red", "Green", "Blue"
            );
            tc++;
            break;
        case 10:
            switch (global.selected_box_option) {
                case 0:
                    t = _draw_textbox (
                        "I see! This box is now red, for your viewing pleasure.",
                        global.default_box_x, global.default_box_y,
                        global.default_box_width, global.default_box_height,
                        global.default_freeze, global.default_text_speed,
                        global.default_box_border_width,
                        zxc_red, zxc_white, zxc_white
                    );
                    tc++;
                    break;
                case 1:
                    t = _draw_textbox (
                        "I see! This box is now green, for your viewing pleasure.",
                        global.default_box_x, global.default_box_y,
                        global.default_box_width, global.default_box_height,
                        global.default_freeze, global.default_text_speed,
                        global.default_box_border_width,
                        zxc_green, zxc_white, zxc_white
                    );
                    tc++;
                    break;
                case 2:
                    t = _draw_textbox (
                        "I see! This box is now blue, for your viewing pleasure.",
                        global.default_box_x, global.default_box_y,
                        global.default_box_width, global.default_box_height,
                        global.default_freeze, global.default_text_speed,
                        global.default_box_border_width,
                        zxc_blue, zxc_white, zxc_white
                    );
                    tc++;
                    break;
            }
            break;
        case 11:
            t = _draw_textbox(
                "This is the last box in the dialogue. To mark it as so, " +
                "you need to set some variables."
            )
            t.last = true;
            tc = -2;
            talked = 1;
            break;
     }
} else {
    t = _draw_textbox(
        "You've already heard everything I have to say!"
    )
    t.last = true;
    tc = -2;
}
}
