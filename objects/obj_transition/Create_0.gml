size = sprite_get_width(spr_quadrado_branco);
col = display_get_gui_width() / size;
row = ceil(display_get_gui_height() / size);
depth = -999;
img_state = 1;
img_index = 0;
img_max = sprite_get_number(spr_quadrado_branco) - 1;
img_speed = sprite_get_speed(spr_quadrado_branco) / game_get_speed(gamespeed_fps);
