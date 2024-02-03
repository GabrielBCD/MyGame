instance_create_layer(0,0,"Instances",obj_menu);
instance_create_layer(0,0,"Instances",obj_controller);
if (instance_exists(obj_pause)){
	instance_destroy(obj_pause);
}