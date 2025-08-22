if (keyboard_check_pressed(vk_escape)){
	room_goto(rm_level_map)	
}

for (var _i = 0; _i < ds_list_size(taskbar_list); _i++){
	
	var _myicon = ds_list_find_value(taskbar_list, _i)
	var _pos = ds_list_find_index(taskbar_list, _myicon) + 1
	
	if (!instance_exists(_myicon)) {
		instance_create_layer(68 * _i, room_height, layer, _myicon)
	} else {
		_myicon.x = 68 * _pos
	}
}

//janelas
for (var _i = 0; _i < ds_list_size(windows_list); _i++) {
	var _mywindow = ds_list_find_value(windows_list, _i)
	
	if (!instance_exists(_mywindow)){
		instance_create_layer(640, 136, layer, _mywindow);
	}
}
