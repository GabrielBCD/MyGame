switch selected{
	case 0: //não selecionado
		x = lerp(x, spawn_x, .5)	
		y = lerp(y, spawn_y, .5)	
		image_index = 0;
		depth = 0;
		break;
	case 1: //selecionado
		x = lerp(x, mouse_x, .5) 
		y = lerp(y, mouse_y, .5)
		image_index = 1;
		depth = -1;
		break;
	case 3: //encaixado
		x = x;
		y = y;
		image_index = 0;
		depth = 0;
		break;
}