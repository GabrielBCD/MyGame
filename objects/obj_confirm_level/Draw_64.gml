draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

text1 = $"    PRINTF('LEVEL {level+1}');";
text2 =  "    RETURN 0;"
desc =	global.desc_levels[level];
if (draw_desc){
	draw_text(display_get_gui_width()/3, 260, "INT MAIN(){\n\n"+ $"{text1}\n\n" + $"{desc}\n\n"+$"{text2}\n"+"}")
}	
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);