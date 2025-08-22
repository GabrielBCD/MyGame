var _control = keyboard_check_pressed(ord("F"));
var _obj = instance_place(x, y, obj_interagir);

//Caso colidir com o objeto que pode interagir e clicar
if (_control and _obj){
	_obj.action();
	//_obj.qtd_interacoes++;
}
