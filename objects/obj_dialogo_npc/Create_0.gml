i = 0;

char_prox = 0;
pause = 0;
fala = "";
text_complete = 0
indice_spr = 0;
indice_spr_max = sprite_get_number(sprite_header);

reset = function(){
	fala = "";
	char_prox = 0;
}

skip = function(){
	fala = mensagens[i];
}

draw_image = function(){
	draw_sprite(sprite_header, indice_spr, 332, 610);
	draw_sprite(spr_dialog_corpo, 0, 711, 610);
}

dialog_draw = function(_fala, _size){
	draw_set_font(fnt_dialog);
	draw_text_ext_transformed(455, 560, _fala, 22, 520, _size, _size, 0)
}

pause_draw = function(_char_atual, _char_pause){
	for (var _i = 0; _i < array_length(_char_pause); _i ++){
		if (_char_atual == _char_pause[_i]){
			pause = 1;
			if (alarm[0] == -1 or alarm[0] == 0){
				alarm[0] = 60;
			}
		}		
	}
}

set_config_text = function(){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

reset_config_text = function(){
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);	
}	