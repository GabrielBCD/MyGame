// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function instance_position_top(_x,_y, _object){
var _top_instance = noone;

	var _list = ds_list_create();
	var _num = collision_point_list(_x, _y, _object, false, true, _list, false);
	if (_num > 0) 
	{
		for (var _i = 0; _i < _num; ++_i)
		{
			_top_instance = _list[| ds_list_size(_list)-1];
		}
	}
	
	ds_list_destroy(_list);
	
	return _top_instance;
}