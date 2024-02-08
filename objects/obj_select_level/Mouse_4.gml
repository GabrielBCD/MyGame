if (global.level >= level){
	if (!instance_exists(obj_confirm_level)){
		instance_create_layer(x,y,layer, obj_confirm_level, {
			level: level
		});	
	}
}