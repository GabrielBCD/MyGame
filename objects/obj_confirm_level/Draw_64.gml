draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

desc =	global.desc_levels[level];
if (draw_desc){
	draw_text(display_get_gui_width()/3.5, 230, ""+ $"{desc}")
}	
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);