// Instancias
if (global.cutscene && room == rm_level_map){
	instance_create_layer(x,y,"Instances", obj_cutscene)
	global.cutscene = false;
}

var _move = collision_point(mouse_x, mouse_y, obj_move_pai,0,1);
var _botoes = collision_point(mouse_x, mouse_y, obj_button_interact,0,1);

if (_move){
	cursor_sprite = mouse_cursor[1];
} else if _botoes {
	cursor_sprite = mouse_cursor[0];
} else {
	cursor_sprite = mouse_cursor[0];
}

var _esq = keyboard_check(vk_escape)

if (room == rm_level_interact && _esq){
	transition(rm_level_map)
}

if (room != rm_level_map){
	obj_player.image_alpha = 0;
} else {
	obj_player.image_alpha = 1;
}