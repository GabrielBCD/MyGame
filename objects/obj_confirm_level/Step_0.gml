_x = room_width/2;
_y = room_height/2;

var _acabou = layer_sequence_is_finished(animation);

if (_acabou){
	draw_desc = true;
	layer_sequence_destroy(animation);
	instance_create_layer(_x, _y, layer, obj_gui_x, {
		depth: -15
	});
	instance_create_layer(_x, _y, layer, obj_gui_play, {
		level: level,
		depth: -15
	});
	instance_create_layer(_x, _y, layer, obj_level_desc,{
		depth: -15
	});
}
