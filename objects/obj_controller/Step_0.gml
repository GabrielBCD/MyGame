var _move = collision_point(mouse_x, mouse_y, obj_move_pai,0,1);
var _botoes = collision_point(mouse_x, mouse_y, obj_gui_back,0,1);

if (_move){
	cursor_sprite = mouse_cursor[1];
} else if _botoes {
	cursor_sprite = mouse_cursor[0];
} else {
	cursor_sprite = mouse_cursor[0]
}

var _esq = keyboard_check(vk_escape)

if (room == rm_level_interact && _esq){
	transition(rm_level_map)
}


//Inicio da Cutscene

show_debug_message(room)
show_debug_message(rm_level_map)
if (cutscene && room == rm_level_map){
	instance_create_layer(x,y,"Instances", obj_cutscene)
	cutscene = false;
}
