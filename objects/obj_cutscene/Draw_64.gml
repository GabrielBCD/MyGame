switch (state){
	case 0:
		draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), c_black,
		c_black, c_black, c_black, 0)
		alarm_set(0,0)
		if (!instance_exists(obj_dialogo_interacao)) state = 1; 
		break;
}
