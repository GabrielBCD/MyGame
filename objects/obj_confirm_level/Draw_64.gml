draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
_text1 = $"    PRINTF('LEVEL {level+1}');";
_desc =	 $"    // Por algum motivo ele\n    // não quer ligar...";
_text2 =  "    RETURN 0;"

if (desc) {
	draw_text(display_get_gui_width()/3, 260, "INT MAIN(){\n\n"+ $"{_text1}\n\n" + $"{_desc}\n\n"+$"{_text2}\n"+"}")
}	

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);