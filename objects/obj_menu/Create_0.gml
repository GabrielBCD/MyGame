taskbar_list = ds_list_create()
windows_list = ds_list_create()

menu_icons = [spr_pasta, spr_bloco_notas, spr_off]

//icones
for (var _i = 0; _i < array_length(menu_icons); _i++) {
	menu_icons[_i] = instance_create_layer(60, 80 * (_i + 1),"Instances", obj_icons, {
		sprite_index: menu_icons[_i],
		image_xscale: image_xscale * 2,
		image_yscale: image_yscale * 2,
	});
}

menu_icons[0].action = function(){ // jogar
	if (!instance_exists(obj_folder)) {
		ds_list_add(windows_list, obj_folder);
	} else {
		obj_folder.visible = true;
	}
}

menu_icons[1].action = function(){ // créditos
	room_goto(rm_creditos)
}

menu_icons[2].action = function(){ // sair
	game_end();
}




