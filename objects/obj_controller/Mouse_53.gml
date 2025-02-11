//Seleção de objetos para mover
var _instance = instance_position_top(mouse_x, mouse_y, self)
if (instance_exists(_instance) and _instance.state != 3){
	_instance.state = 1
}
