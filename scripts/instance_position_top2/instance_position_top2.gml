function instance_position_top2(_x,_y, _object){
	var _instance_list = ds_list_create();
	
	var _instance = instance_position(_x, _y, _object);
	
	var _top_instance = _instance;
	
	while instance_exists(_instance){
		ds_list_add(_instance_list, _instance);
		instance_deactivate_object(_instance);
		
		if _instance.depth < _top_instance.depth {
			_top_instance = _instance;
		}
		_instance = instance_position(_x, _y, _object);
	}
	
	while ds_list_size(_instance_list){
		instance_activate_object(_instance_list[| 0]);	
		ds_list_delete(_instance_list, 0);
	}
	
	ds_list_destroy(_instance_list);
	
	return _top_instance;
}