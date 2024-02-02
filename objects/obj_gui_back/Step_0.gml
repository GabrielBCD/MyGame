switch(state){
	case 0: //no click
		image_index = 0;
		break;
	case 1: //clicking
		image_index = 1;
		break;
	case 2: //stop clicking
		image_index = 0;
		if (!instance_exists(obj_transition)){
			instance_create_layer(x,y,layer, obj_transition, {room_prox: rm_inicial});
		}
		
		break;
}

