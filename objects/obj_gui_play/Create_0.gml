event_inherited();

action = function(){
	global.level_selected = obj_confirm_level.level;
	show_debug_message("Nível selecionado")
	show_debug_message(obj_confirm_level.level)
	instance_destroy(obj_confirm_level)
	room_goto(rm_level_map)
}