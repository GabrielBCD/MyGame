if (!instance_exists(obj_controller)){
	instance_create_layer(0,0,"Instances",obj_controller);		
}

if (!instance_exists(obj_cutscene) and (global.cutscene == true)) {
	instance_create_depth(0,0,1000, obj_cutscene)
}