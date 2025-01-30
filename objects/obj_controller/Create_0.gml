global.level = 5;
global.level_rooms = [rm_level_map];
instance_create_layer(x,y,layer, obj_depth)

desc_1 = $"    // Sem Descrição\n    // no fichario...";
desc_2 = "    //Sem Descrição";
desc_3 = "    //Sem Descrição";
desc_4 = "    //Sem Descrição";
desc_5 = "    //Sem Descrição";
desc_6 = "    //Sem Descrição";

global.desc_levels = [desc_1, desc_2, desc_3, desc_4, desc_5, desc_6]

mouse_cursor = [spr_mouse_default, spr_mouse_move];
window_set_cursor(cr_none)

cutscene = true;