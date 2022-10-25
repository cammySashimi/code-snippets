text_length = string_length(text);

if (freeze) {
    global.player_freeze = true;
}

if _control_pressed("a") {
    if (printed_chars < text_length) {
        time = text_length/spd;
    } else {
        with self instance_destroy();
    }
}
