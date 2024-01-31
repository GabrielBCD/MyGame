image_index = selected

if(selected){
	x = lerp(x, mouse_x, .5) 
	y = lerp(y, mouse_y, .5) 
	depth = -1;
} else {
	x = lerp(x, spawn_x, .5)	
	y = lerp(y, spawn_y, .5)	
	depth = 0;
}

show_debug_message(depth)