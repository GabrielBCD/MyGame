// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function criar_dialogo_npc(_mensagens, _spr, _name){
	if (!instance_exists(obj_dialogo_npc)){
		instance_create_layer(x,y,"Instances", obj_dialogo_npc, {
			mensagens: _mensagens,
			sprite_header: _spr,
			npc_name: _name
		})
	}
}