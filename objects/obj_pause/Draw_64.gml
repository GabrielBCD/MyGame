if (pause){
	//Configurando texto
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xgui / 2, ygui / 2, "GAME PAUSE")
} else {
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}	