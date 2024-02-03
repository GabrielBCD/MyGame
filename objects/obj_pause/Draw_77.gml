gpu_set_blendenable(false);

if (pause){
	
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
	else {
		pauseSurf = surface_create(xgui, ygui);
		buffer_set_surface(pauseSurfBuff, pauseSurf, 0);
	}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape)){
	if (!pause){
		pause = true;
	
		instance_deactivate_all(true);
	
		pauseSurf = surface_create(xgui, ygui);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
	
		if (buffer_exists(pauseSurfBuff)) buffer_delete(pauseSurfBuff);
		pauseSurfBuff = buffer_create(xgui * ygui * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuff, pauseSurf, 0)
	
	} else {
		pause = false
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(surface_exists(pauseSurfBuff)) buffer_delete(pauseSurfBuff);
	}
}

gpu_set_blendenable(true);