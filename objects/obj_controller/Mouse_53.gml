//Desmarcando todos os objetos do jogo
/*with (obj_move){
	selected = false
}*/

//Apenas o objeto no topo sera selecionado
var _instance = instance_position_top(mouse_x, mouse_y, obj_move)
if (instance_exists(_instance) and _instance.selected != 3){
	_instance.selected = true
} 