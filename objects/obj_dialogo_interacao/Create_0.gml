// Inherit the parent event
event_inherited();

draw_image = function(){
	draw_sprite(spr_dialog_corpo, 0, 640, 610);
}

dialog_draw = function(_fala, _size){
	draw_set_font(fnt_dialog);
	draw_text_ext_transformed(384, 570, _fala, 22, 520, _size, _size, 0)
}
