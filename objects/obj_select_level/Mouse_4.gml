if (global.level == level){
	transition(room_levels[level]);
} else {
	animation = true;
}

if (animation){
	//Se o alarme NÃO estiver em execução ou falanto 1 FRAME para acabar
	if (alarm[0] == -1 or alarm[0] == 0){
		seq = layer_sequence_create("Assets",x,y,seq_block);
		alarm[0] = 60/3;	
	}
}