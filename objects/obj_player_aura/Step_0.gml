var _control = keyboard_check_pressed(ord("E"));
var _obj = place_meeting(x,y,obj_interagir);

//Caso colidir com o objeto que pode interagir e 
if (_control and _obj){
	if (!instance_exists(obj_dialogo)){
		instance_create_layer(x,y,layer, obj_dialogo);
	}
}