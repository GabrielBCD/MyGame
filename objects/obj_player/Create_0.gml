event_inherited();
//Moovimentação
vel = 0;
max_vel = 3;

hspd = 0;
vspd = 0;
move_direction = 0;

state = "";


//sprites
ft = 0;
spr_walking = [spr_walking_left, spr_walking_right, spr_walking_up, spr_walking_down];
spr_idle = [spr_idle_left, spr_idle_right, spr_idle_up, spr_idle_down];

sprite_index = spr_idle_down;