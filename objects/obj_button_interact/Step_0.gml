var _instance = instance_position(mouse_x, mouse_y, self);

if (_instance){
	var _mouse_check = mouse_check_button_pressed(mb_left) - mouse_check_button_released(mb_left);
	if (_mouse_check == 1){
		state = 1;
	}
	if (_mouse_check = -1 and state == 1){
		state = 2;
	}
} else{
	state = 0;
}


switch(state){
	case 0: //no click
		//image_index = 0;
		break;
	case 1: //clicking
		//image_index = 1;
		break;
	case 2: //stop clicking
		//image_index = 0;
		if (!instance_exists(obj_dialogo_npc)){
			action();
		}
		break;
}