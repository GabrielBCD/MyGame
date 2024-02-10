switch state{
	case 0: //não selecionado
		x = lerp(x, spawn_x, lerp_)	
		y = lerp(y, spawn_y, lerp_)	
		image_index = 0;
		selected_draw = false;
		depth = 0;
		break;
	case 1: //selecionado
		x = mouse_x
		y = mouse_y
		selected_draw = true;
		cursor_sprite = spr_mouse_move;
		image_index = 1;
		depth = -1;
		break;
	case 2: //Logo após ser solto pelo mouse
		if (instance_place(x,y,colisor)){
			x = colisor.x;
			y = colisor.y;
			state = 3;
		} else {
			state = 0;
		}
		break;
	case 3: //encaixado
		x = x;
		y = y;
		image_index = 0;
		depth = 0;
		break;
}

