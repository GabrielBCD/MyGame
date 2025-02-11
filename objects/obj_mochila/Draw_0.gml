draw_sprite_stretched(
	
	spr_box_inventory,
	0,
	x-6,
	y-6,
	12+row_length*36,
	12+(((inventory_slots-1) div row_length)+1)*36
);

for (var _i = 0; _i < inventory_slots; _i += 1) {
	var _xx = x + (_i mod row_length) * 36 + 2
	var _yy = y + (_i div row_length) * 36 + 2
	draw_sprite(spr_slot_inventory, 0, _xx, _yy)
	if (inventory[_i] != -1) {
		draw_sprite(spr_item, inventory[_i], _xx, _yy)
	}
}