// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_instance(_x, _y, _instance, _obj){
	if !(instance_exists(_obj)){
		instance_create_layer(_x, _y, _instance, _obj)	
	}
}