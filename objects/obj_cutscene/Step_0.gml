var _obj = obj_npc_recepcionista;
var _spd = 1;
var _player = obj_player;

switch(state){
	case 1:
		var _animation_01_f = layer_sequence_is_finished(animation_01)
		instance_activate_object(fade)
		
		if !instance_exists(fade) and layer_sequence_is_paused(animation_01) {
			layer_sequence_play(animation_01)
			layer_sequence_play(animation_02)
		}
		
		if (_animation_01_f){
			layer_sequence_destroy(animation_01)
			layer_sequence_destroy(animation_02)
			_obj.sprite_index = spr_npc_recepcao_idle
			state = 2
		}
		break;
	case 2:
		if (_obj.x == 1199){
			_obj.image_index = 2;
			_obj.image_speed = 0;
			alarm_set(0,1)
			state = 3
		}
		_obj.sprite_index = spr_npc_recepcao_right;
		_obj.x += _spd;
		break;
	case 3:
		var _animation_03_f = layer_sequence_is_finished(animation_03)
		
		if (!instance_exists(obj_dialogo_npc)){
			if (layer_sequence_is_paused(animation_03)){
				layer_sequence_headpos(animation_03, 1)
				_player.image_alpha = 0
				_obj.image_alpha = 0
			}
			
			layer_sequence_play(animation_03)
			
			if (_animation_03_f){
				
				layer_sequence_destroy(animation_03)
				if (!instance_exists(obj_fade)) instance_create_layer(x,y,"Instances", obj_fade)
				
				_player.sprite_index = spr_idle_up
				_player.x = 1063
				_player.y = 528
				_player.image_alpha = 1
				
				_obj.sprite_index = spr_npc_recepcao_idle_3
				_obj.x = 1029
				_obj.y = _player.y
				_obj.image_alpha = 1
				
				state = 4
			}
		}
		break;
	case 4:
		if (!instance_exists(obj_fade)){
			criar_dialogo_npc(msg_state_4_part_02, spr_npc_2_head, "Samuel")	
			state = 5;
		}
		break;
	case 5:
		if (!instance_exists(obj_dialogo_npc)){
			instance_create_layer(x,y, "Instances", obj_fade)
			_obj.x = 1005
			_obj.y = 798
			_obj.sprite_index = spr_npc_recepcao_sent;
			state = "acabou dsgç"
			instance_destroy()	
		}
		break;
}