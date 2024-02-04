// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_menu_options(_matriz, _linha, _i){
	
	if (_linha == 0){
		if (mouse_check_button_pressed(mb_left)){
			switch _matriz[_linha, _i]{
				case _matriz[_linha,0]:
					transition(rm_levels)
					break;
				case _matriz[_linha,1]:
					menu = "Sub-Menu"
					break;
				case _matriz[_linha,2]:
					break;
				case _matriz[_linha,3]:
					game_end();
					break;
			}
		}
	}
	
	if (_linha == 1){
		if (mouse_check_button_pressed(mb_left)){
			switch _matriz[_linha, _i]{
				case _matriz[_linha,0]:
					break;
				case _matriz[_linha,1]:
					break;
				case _matriz[_linha,2]:
					menu = "Principal"
					break;
			}
		}
	}		
}