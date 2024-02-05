room_levels = [rm_level1, rm_level2, rm_level3, rm_level4, rm_level5, rm_level6];

sprite_levels = [spr_select_level1];
sprite_levels_block = [spr_select_level_block];
animation = false;
seq = 0;

switch (level){
	case 0:
		if (global.level == level) sprite_index = sprite_levels[level]
		break;
	case 1:
		if (global.level == level) sprite_index = sprite_levels[level]
		else sprite_index =  sprite_levels_block[0]
		break;
	case 2:
		if (global.level == level) sprite_index = sprite_levels[level]
		else sprite_index =  sprite_levels_block[0]
		break;
	case 3:
		if (global.level == level) sprite_index = sprite_levels[level]
		else sprite_index =  sprite_levels_block[0]
		break;
	case 4:
		if (global.level == level) sprite_index = sprite_levels[level]
		else sprite_index =  sprite_levels_block[0]
		break;
	case 5:
		if (global.level == level) sprite_index = sprite_levels[level]
		else sprite_index =  sprite_levels_block[0]
		break;
}