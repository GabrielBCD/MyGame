var _rig =	keyboard_check(ord("D"));
var _lef =	keyboard_check(ord("A"));
var _up =	keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _menu = keyboard_check(ord("M"));

if _menu {
	room_goto(rm_inicial)	
}

var _talk = instance_exists(obj_dialogo_npc) or instance_exists(obj_dialogo_interacao);
var _move = hspd != 0 or vspd != 0;

if (_talk) state = "talking";
if (instance_exists(obj_cutscene)) state = "cutscene"
if (room != rm_level_map) state = "menu"

var _mv = 0;
switch (state){
	case "idle":
		if _move state = "move"
		move(_rig, _lef, _up, _down)
		
		if (_lef)	ft = 0
		if (_rig)	ft = 1
		if (_up)	ft = 2
		if (_down)	ft = 3
		sprite_index = spr_idle[ft]
		break;
	case "move":
		if !_move state = "idle"
		move(_rig, _lef, _up, _down)
		
		if (move_direction == 0)	{_mv = 1; ft = 1}	
		if (move_direction == 45)	{_mv = 1; ft = 1}	
		if (move_direction == 90)	{_mv = 2; ft = 2}	
		if (move_direction == 135)	{_mv = 0; ft = 0}	
		if (move_direction == 180)	{_mv = 0; ft = 0}	
		if (move_direction == 225)	{_mv = 0; ft = 0}	
		if (move_direction == 270)	{_mv = 3; ft = 3}	
		if (move_direction == 315)	{_mv = 1; ft = 1}
		sprite_index = spr_walking[_mv]
		break;
	case "talking":
		if (instance_exists(obj_cutscene)) state = "cutscene"
		if (!instance_exists(obj_dialogo_npc)) state = "idle"
		no_move();
		sprite_index = spr_idle[ft];
		break;
	case "menu":
		no_move()
		if (room == rm_level_map) state = "idle"
		break
	case "cutscene":
		no_move()
		if (!instance_exists(obj_cutscene)) state = "idle"
		break;
}

if (vel == max_vel){
	image_speed = 1.2;
} else {
	image_speed = 1;
}
