//Centro da câmera
var _xgui = display_get_gui_width() / 2;
var _ygui = display_get_gui_height() / 2;

//Posição do mouse na GUI
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

//Configurando texto
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Menu
for (var _i = 0; _i < array_length(menu_text); _i++){
	
	//tamanho das strings
	var _str_size_x = string_width(menu_text[_i]);
	var _str_size_y = string_height("I");
	
	//posição do retangudo dos textos
	var _x1 = _xgui - _str_size_x / 2;
	var _y1 = _ygui - _str_size_y / 2 + _str_size_y * _i;
	
	var _x2 = _xgui + _str_size_x / 2;
	var _y2 = _ygui + _str_size_y / 2 + _str_size_y * _i;
	
	//hover no texto
	if (point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2)){
		text_escale[_i] = lerp(text_escale[_i], 1.4, 0.1);
		text_color = c_fuchsia;
		
		if (mouse_check_button_pressed(mb_left)){
			switch menu_text[_i]{
				case menu_text[0]:
					instance_create_layer(1,1,"Instances", obj_transition)
					break;
				case menu_text[1]:
					show_message("NÃO TEM OPÇÕES");
					break;
				case menu_text[2]:
					show_message("NÃO TEM CRÉDITOS");
					break;
				case menu_text[3]:
					game_end();
					break;
			}
		}
	} else {
		text_escale[_i] = lerp(text_escale[_i], 1, 0.8);
		text_color = c_white;
	}

		
	draw_text_transformed_color(_xgui, _ygui + (_str_size_y * _i), menu_text[_i], text_escale[_i] , text_escale[_i], image_angle, text_color, text_color , c_white , c_white,image_alpha);
}

//Resetando configurações de texto
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(fnt_menu);