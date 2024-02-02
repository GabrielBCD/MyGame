instance = instance_position(mouse_x, mouse_y, obj_gui_back);

if (instance){
	mouse_check = mouse_check_button_pressed(mb_left) -  mouse_check_button_released(mb_left);
	if (mouse_check == 1){
		state = 1;
	}
	if (mouse_check = -1 and state == 1){
		state = 2;
	}
} else{
	state = 0;
}


