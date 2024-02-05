draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (pause){
	draw_sprite(spr_pause, 0, 1,1);
	
	//Configurando texto
	draw_text(xgui / 2, ygui / 4, "GAME PAUSE");
	
	for (var _i = 0; _i < array_length(rm); _i++){
		if (room = rm[_i]){
			draw_text(xgui / 2, ygui / 3.5 , $"Level {_i + 1}");
		}
	}
	
	draw_text(xgui / 2, ygui / 2 , "Texto aleatório para complementar a tela \n Cada Fase tem seu Texto");
	draw_text(xgui / 2, ygui/1.2 , "Pressione Q para voltar ao Menu Principal\nPressione ESQ para Sair");
	
	if (keyboard_check_pressed(ord("Q"))){
		transition(rm_inicial);	
	}
	
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);