level = global.level;
global.state_pc = "PC";

monitor = instance_create_layer(room_width/2 - 30 , room_height/2, "Instances", obj_monitor);
gabinete = instance_create_layer(room_width/2 + 50, room_height/2, "Instances", obj_gabinete);

click_01 = instance_create_layer(room_width/2, room_height/2 - 64, "Instances", obj_pc_click);
click_02 = instance_create_layer(room_width/2 - 64, room_height/2, "Instances", obj_pc_click);
click_03 = instance_create_layer(room_width/2 + 64, room_height/2, "Instances", obj_pc_click);
click_04 = instance_create_layer(room_width/2, room_height/2 + 64, "Instances", obj_pc_click);

click_back = instance_create_layer(room_width/2 - 64, room_height/2, "Instances", obj_pc_click);

click_04.action = function () {
	global.state_pc = "PC";
}