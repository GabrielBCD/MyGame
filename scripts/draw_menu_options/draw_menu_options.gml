// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_menu_options(_matriz, _linha, _i){
	
switch (menu){
	case "Principal":
		if (instance_exists(obj_submenu)) instance_destroy(obj_submenu);
		
		if (_linha == 0){
			if (mouse_check_button_pressed(mb_left)){
				switch _matriz[_linha, _i]{
					case _matriz[_linha,0]: //Jogar
						transition(rm_level_select)
						break;
					case _matriz[_linha,1]: //Opções
						break;
					case _matriz[_linha,2]: //Créditos
						break;
					case _matriz[_linha,3]: //Sair
						game_end();
						break;
				}
			}
		}
	break;
	//case "Sub-Menu":
	//	if (_linha == 1){
	//		if (mouse_check_button_pressed(mb_left)){
	//			switch _matriz[_linha, _i]{
	//				case _matriz[_linha,0]: //Som
	//					if (!instance_exists(obj_submenu)){
	//						instance_create_layer(display_get_width() / 4, display_get_height() / 4, layer, obj_submenu)		
	//					}
	//					break;
	//				case _matriz[_linha,1]: //Gráficos
	//					if (!instance_exists(obj_submenu)){
	//						instance_create_layer(display_get_width() / 4, display_get_height() / 4, layer, obj_submenu)		
	//					}
	//					break;
	//				case _matriz[_linha,2]: //Voltar
	//					menu = "Principal"
	//					break;
	//			}
	//		}
	//	}		
	//break;
}
}