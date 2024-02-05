switch (img_state){
	case 1: //Inicio
		img_index += img_speed;
		show_debug_message("INICIO");
		if (img_index - img_max > col){
			room_goto(room_prox);
			img_state = 0;
		}
		break;
	case 0: //Meio
		show_debug_message("MEIO");
		img_index -= img_speed;
		if (img_index < 0){
			img_state = 2
		}
		break;
	case 2: //Fim
		show_debug_message("FIM");
		instance_destroy(id);
		break;
}
