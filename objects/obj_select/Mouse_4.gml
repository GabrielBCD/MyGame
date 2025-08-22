var _mylist = obj_menu.windows_list;
for (var _i = 0; _i < ds_list_size(_mylist); _i++){
	var _myobj = ds_list_find_value(_mylist, _i);
	
	_myobj.depth = -1
}

depth = -10 * ds_list_size(obj_menu.windows_list)
