for (var _i = 0; _i < row; _i++){
	for(var _j = 0; _j < col; _j++){
		var _img = min(max(0, img_index - _j), img_max);
		draw_sprite_ext(spr_transition, _img, _j * size, _i * size, image_xscale, image_yscale, 0, c_white, image_alpha);
	}
}