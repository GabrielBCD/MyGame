if (global.state_pc == "GABINETE_F") { // Assumindo "F" para Frontal
    visible = true;
} else {
    visible = false;
}

if (instance_exists(obj_gabinete)){
	depth = obj_gabinete.depth - 1;
	x = obj_gabinete.x
	y = obj_gabinete.y
}