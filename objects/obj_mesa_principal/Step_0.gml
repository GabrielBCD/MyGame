if global.level == -1 {
	action = function(){
		criar_dialogo_interacao(["Não há nada aqui agora..."])
	}	
} else {
	action = function(){
	transition(rm_level_interact);
}	
}