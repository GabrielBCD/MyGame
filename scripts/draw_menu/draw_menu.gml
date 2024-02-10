// Os recursos de sscript mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_menu(_matriz, _linha){
	
	draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	text_escale[array_length(_matriz[0])] = 0;
	text_color = c_white;
	
	//Posição dos textos
	var _xgui = display_get_gui_width() / 10;
	var _ygui = display_get_gui_height() / 1.7;

	//Posição do mouse na GUI
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	for (var _i = 0; _i < array_length(_matriz[_linha]); _i++){
		
		//tamanho das strings
		var _str_size_y = string_height("I");
		var _str_size_x = string_width(_matriz[0, _i]);
		
		//posição do retangudo dos textos
		var _x1 = (_xgui + (_str_size_x / 2)) - (_str_size_x / 2);
		var _y1 = _ygui - (_str_size_y / 2) + (_str_size_y + 2) * _i;
	
		var _x2 = (_xgui + (_str_size_x / 2)) + (_str_size_x / 2);
		var _y2 = _ygui + (_str_size_y / 2) + (_str_size_y + 2) * _i;
	
		//hover no texto
		if (point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2)){
			text_escale[_i] = lerp(text_escale[_i], 1.4, 0.1);
			text_color = c_yellow;
			
			draw_menu_options(_matriz, _linha, _i);

		} else {
			text_escale[_i] = lerp(text_escale[_i], 1, 0.8);
			text_color = c_white;
		}
		draw_text_transformed_color(_xgui, _ygui + ((_str_size_y + 2) * _i), _matriz[_linha,_i], text_escale[_i] , text_escale[_i], image_angle, text_color, text_color , text_color , text_color,image_alpha);
	}
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}