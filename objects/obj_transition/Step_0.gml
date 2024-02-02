switch (img_state){
	case 1: //Inicio
		img_index += img_speed;
		if (img_index - img_max > col){
			room_goto(room_prox);
			img_state = 0;
		}
		break;
	case 0: //Meio
		img_index -= img_speed;
		if (img_index < 0){
			img_state = 2
		}
		break;
	case 2: //Fim
		instance_destroy(id);
		break;
}
