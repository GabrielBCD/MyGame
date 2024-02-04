var _rig =	keyboard_check(ord("D"));
var _lef =	keyboard_check(ord("A"));
var _up =	keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _check = _rig or _lef or _up	or _down;

if (_check){
	move_direction = point_direction(0, 0,(_rig - _lef), (_down - _up))
	vel = lerp(vel, max_vel, .2);
} else {
	vel = lerp(vel, 0, .8);
}	

if (hspd != 0 or vspd != 0){
	state = "walking";
} else {
	state = "idle";	
}

hspd = lengthdir_x(vel, move_direction);
vspd = lengthdir_y(vel, move_direction);

var _mv = 0;
switch (state){
	case "idle":
		sprite_index = spr_idle[ft]
		if (_lef)	ft = 0
		if (_rig)	ft = 1
		if (_up)	ft = 2
		if (_down)	ft = 3
		break;
	case "walking":
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
}
