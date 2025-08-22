event_inherited();
//Aura
instance_create_layer(x,y,layer,obj_player_aura)

//Movimentação
vel = 0;
max_vel = 3.5;

hspd = 0;
vspd = 0;
move_direction = 270;

state = "idle";

//sprites
ft = 0;
spr_walking = [spr_walking_left, spr_walking_right, spr_walking_up, spr_walking_down];
spr_idle = [spr_idle_left, spr_idle_right, spr_idle_up, spr_idle_down];
sprite_index = spr_idle[ft];

function move(_rig,_lef, _up, _down){
	max_vel = 3
	var _controls = (_rig or _lef or _up or _down);
	hspd = lengthdir_x(vel, move_direction);
	vspd = lengthdir_y(vel, move_direction);
	
	if (_controls){
		move_direction = point_direction(0, 0,(_rig - _lef), (_down - _up))
		vel = lerp(vel, max_vel, 1);
	} else {
		vel = lerp(vel, 0, .8);
	}
}

function no_move(){
	max_vel = 0;
	vel = 0;
	hspd = 0;
	vspd = 0;
}