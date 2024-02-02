var _rig = keyboard_check(ord("D"));
var _lef = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _vel = 2;

hspd = (_rig - _lef) * _vel;
vspd = (_down - _up) * _vel;

repeat(abs(hspd)){
	if(!place_meeting(x + sign(hspd), y,obj_colisor_1)){
		x += hspd;
	} else {
		hspd = 0
	}
}

repeat(abs(vspd)){
	if(!place_meeting(x, y + sign(vspd),obj_colisor_1)){
	y += vspd;
	}  else {
		vspd = 0
	}
}


