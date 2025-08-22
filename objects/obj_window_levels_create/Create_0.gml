//Este objeto cria as colunas e linhas de seleção de fase
cow = 3;
row = 1;
var _xgui = (obj_folder).x - 260
var _ygui = (obj_folder).y + 100

var _obj_size_x = sprite_get_width(spr_level_1);
var _obj_size_y = sprite_get_height(spr_level_1);

for (var _i = 0; _i < cow; _i++){
	instance_create_layer(_xgui + ((_obj_size_x) * _i), _ygui, layer, obj_window_levels, {
		level: (_i), //atribuindo o número da fase desse bloco
		});
	for (var _j = 0; _j < row; _j++){
		instance_create_layer(_xgui + ((_obj_size_x)  * _i), _ygui + _obj_size_y, layer, obj_window_levels, {
			level: (_i + cow),
		});
	}
}