visible = false
depth = -10 * ds_list_size(obj_menu.windows_list) 

ds_list_add(obj_menu.taskbar_list, obj_taskbar_play)
myanimation = layer_sequence_create(layer, room_width/2, room_height/2, seq_folder_open);

//mymove = instance_create_layer(x,y,layer,obj_folder_move)
//mymove.y = self.y - sprite_height/2
//mymove.visible = false;

myclose = instance_create_layer(x,y,layer,obj_folder_close)
myclose.y = self.y - sprite_height/2
myclose.visible = false;

myminimize = instance_create_layer(x,y,layer,obj_folder_minimize)
myminimize.y = self.y - sprite_height/2
myminimize.visible = false;

myclose.action = function(){
	instance_destroy(obj_folder)
	ds_list_delete(obj_menu.windows_list, ds_list_find_index(obj_menu.windows_list, obj_folder))
}

myminimize.action = function(){
	obj_folder.visible = false
}

mylevels = instance_create_layer(x,y,"Instances", obj_window_levels_create)