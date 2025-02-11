if (!(state == "menu")){
	var _x = camera_get_view_width(view_camera[0])
	var _y = camera_get_view_height(view_camera[0])
	camera_set_view_pos(view_camera[0],x - _x /2,y - _y/2);	
}

