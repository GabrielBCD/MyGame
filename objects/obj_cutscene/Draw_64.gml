switch (state){
	case 0:
		draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), fade_color,
		fade_color, fade_color, fade_color, 0)
		alarm_set(0,0)
		if (!instance_exists(obj_dialogo_interacao)) state = 1; 
		break;
	case 1:
		
		var _acabou = layer_sequence_is_finished(animation_01)
		fade_alpha += fade_speed * sign(fade_room+1);
		fade_alpha = clamp(fade_alpha, 0 ,1)
		
		draw_set_alpha(fade_alpha);
		if fade_alpha > 0 {
			draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), fade_color,
			fade_color, fade_color, fade_color, 0)	
		} else{
			if (layer_sequence_is_paused(animation_01)){
				layer_sequence_play(animation_01)
				layer_sequence_play(animation_02)
			}
			
			if (_acabou){
				layer_sequence_destroy(animation_01)
				layer_sequence_destroy(animation_02)
				npc.sprite_index = spr_npc_recepcao_idle
				state = 2
			}
		}
		
		
		draw_set_alpha(1)
		break;	
}






