var _grid = global.grid_depth;
var _obj = instance_number(obj_visible);

ds_grid_resize(_grid, 2, _obj);

var _i = 0;
with(obj_visible){
	_grid[# 0, _i] = id;
	_grid[# 1, _i] = y;
	_i++;
}

ds_grid_sort(_grid, 1, true);

for (var _j = 0; _j < ds_grid_height(_grid); _j++){
	var _inst = _grid[# 0, _j];
	with(_inst){
		draw_self();
	}
}
