switch(state){
	case 2:
		var _obj = obj_NPC_recepcionista;
		var _spd = 1;
		var _alarm = false;
		
		if (_obj.x == 1195){
			_obj.x += 0;
			_obj.image_index = 2;
			_obj.image_speed = 0;
			state = 3
			alarm_set(0,0)
		} else {
			_obj.sprite_index = spr_npc_recepcao_right;
			_obj.x += 1.5;
		}
	
		break;
	case 3:	
		if alarme == false {
			alarme = true;
			alarm_set(0,5)
		}
		break;	
	
}