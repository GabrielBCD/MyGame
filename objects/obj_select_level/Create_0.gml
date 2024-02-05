sprite_levels = [spr_select_level1, spr_select_level2, spr_select_level3, spr_select_level4, spr_select_level5, spr_select_level6];
sprite_index = sprite_levels[level]

if (global.level < level){
	instance_create_layer(x,y,layer, obj_select_level_block);
}
