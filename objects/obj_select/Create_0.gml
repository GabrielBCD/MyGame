visible = false
depth = -10 * ds_list_size(obj_menu.windows_list)
depth = -40

ds_list_add(obj_menu.taskbar_list, obj_taskbar_select)
myanimation = layer_sequence_create(layer, room_width/2, room_height/2, seq_select_open);

myclose = instance_create_layer(x,y,layer,obj_select_close)
myclose.y = self.y - sprite_height/2
myclose.visible = false;

myminimize = instance_create_layer(x,y,layer,obj_select_minimize)
myminimize.y = self.y - sprite_height/2
myminimize.visible = false;

myclose.action = function(){
	instance_destroy(obj_select)	
		ds_list_delete(obj_menu.windows_list, ds_list_find_index(obj_menu.windows_list, obj_select))
}

myminimize.action = function(){
	obj_select.visible = false
}