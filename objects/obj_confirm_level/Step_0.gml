_x = room_width/2;
_y = room_height/2;

show_debug_message($"X:{_x}");
show_debug_message($"Y:{_y}");

show_debug_message(_x);
show_debug_message(_y);

acabou = layer_sequence_is_finished(animation);
if (acabou){
	draw_desc = true;
	layer_sequence_destroy(animation);
	instance_create_layer(912, 152, "Instances2", obj_gui_x)
	instance_create_layer(645, 524, "Instances2", obj_gui_play, {
		room_prox: level	
	});
	instance_create_layer(_x, _y, "Instances2", obj_level_desc);
}
