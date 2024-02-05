animation = true;

if (animation){
	//Se o alarme NÃO estiver em execução ou falanto 1 FRAME para acabar
	if (alarm[0] == -1 or alarm[0] == 0){
		seq = layer_sequence_create("Assets",x,y,seq_select_block);
		alarm[0] = 60/1.5;	
	}
}