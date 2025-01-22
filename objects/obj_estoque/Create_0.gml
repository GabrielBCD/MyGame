estoque = ds_grid_create(5,2)
var _xstart = obj_player.x - 192;
var _ystart = obj_player.y - 64
xx = _xstart
yy = _ystart

show_debug_message(xx)
show_debug_message(yy)

for (var _i = 0; _i < ds_grid_height(estoque); ++_i){
	for (var _j = 0; _j < ds_grid_width(estoque); ++_j){
		instance_create_layer(_xstart, _ystart, "inventario", obj_slot)
		_xstart += 80
	}
	_xstart = xx
	_ystart += 80
}

show_debug_message("Estoque start")
