function transition(_room){
	if (!instance_exists(obj_transition)){
		if (room_exists(_room)) instance_create_layer(x,x,layer, obj_transition, {
			room_prox: _room
		});
	}
}