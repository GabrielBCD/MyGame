//Desmarcando todos os objetos do jogo
with (obj_move){
	selected = false
}

//Apenas o ultimo objeto clicado sera selecionado
var _instance = instance_position(mouse_x, mouse_y, obj_move)

if (instance_exists(_instance)){
	_instance.selected = true
}