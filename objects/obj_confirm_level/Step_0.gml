_x = room_width/2;
_y = room_height/2;
var _esq = keyboard_check(vk_escape);

var _acabou = layer_sequence_is_finished(animation);

if (_acabou){
	draw_desc = true;
	layer_sequence_destroy(animation);
	instance_create_layer(912, 152, "Instances2", obj_gui_x);
	instance_create_layer(645, 524, "Instances2", obj_gui_play, {
		level: level
	});
	instance_create_layer(_x, _y, "Instances2", obj_level_desc);
}

if (_esq) instance_destroy()