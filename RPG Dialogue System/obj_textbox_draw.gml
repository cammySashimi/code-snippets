// draw outline
draw_set_colour(bc);
draw_rectangle (
    view_xview+xx,
    view_yview+yy,
    view_xview+xx+width-1,
    view_yview+yy+height-1,
    false
);

// draw background
draw_set_colour(ic);
draw_rectangle (
    view_xview+xx+bw,
    view_yview+yy+bw,
    view_xview+xx+width-(bw+1),
    view_yview+yy+height-(bw+1),
    false
);

// draw text
if (spd <= 0) {
    draw_set_font(font);
    draw_set_colour(tc);
    draw_text_ext (
        view_xview+xx+bw+2,
        view_yview+yy+bw,
        text,
        8,
        width-bw-2,
    );
} else {
    time++;
    printed_chars = floor(time*spd);
    printed_chars = clamp(printed_chars, 1, text_length);
    var text_part = string_copy(text, 1, printed_chars+1);
    draw_set_font(font);
    draw_set_colour(tc);
    draw_text_ext (
        view_xview+xx+bw+2,
        view_yview+yy+bw,
        text_part,
        8,
        width-bw-2,
    );
}
