instance_create_layer(16,16,layer, obj_gui_back, {room_prox: rm_inicial, sprite_index: spr_gui_arrow_left});
cow = 3;
row = 1;
var _xgui = display_get_gui_width() / 5.4;
var _ygui = display_get_gui_height();

var _obj_size_x = sprite_get_width(spr_select_level);
var _obj_size_y = sprite_get_height(spr_select_level)

for (var _i = 0; _i < cow; _i++){
	instance_create_layer(_xgui + (_obj_size_x + 20) * _i, 104, layer, obj_select_level, {level: (_i)});
	for (var _j = 0; _j < row; _j++){
		instance_create_layer(_xgui + (_obj_size_x + 20) * _i, 380, layer, obj_select_level, {level: (_i + 3)});
	}
}