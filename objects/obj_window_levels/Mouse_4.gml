if (!instance_exists(obj_confirm_level)){
	instance_create_layer(x,y,"Instances", obj_confirm_level, {
		level: level
	});	
}