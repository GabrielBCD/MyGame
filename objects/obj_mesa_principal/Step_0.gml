if global.level_selected == -1 {
	action = function(){
		criar_dialogo_interacao(["Não há nada aqui agora..."])
	}	
} else {
	action = function(){
	transition(rm_level_interact);
}	
}



if (place_meeting(x,y,obj_player_aura)){
	image_index = 1
} else {
	image_index = 0
}	