fade_alpha += fade_speed * sign(fade_room+1);
fade_alpha = clamp(fade_alpha, 0 ,1)

if (fade_alpha == 1 and fade_room != -4) {
	room_goto(fade_room)
}	

draw_set_alpha(fade_alpha);

if fade_alpha > 0 {
	draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), fade_color,
	fade_color, fade_color, fade_color, 0)
}
		
draw_set_alpha(1)

if alarm_state == false {
	alarm[0] = 60 * 4;
	alarm_state = true;
}