//Instancias
instance_create_layer(x,y,layer, obj_depth)

//Informações globais e Arquivos
global.level = -1;
global.cutscene = true; //true para começar a cutscene pela primeira vez
global.level_selected = -1;

global.queimou = false


//fase 1
global.power = false

desc_1 = $"  Fase 01 - Queda de energia\n  Cliente alega que o computador\n  não liga mais após queda\n  de energia...";
desc_2 = "    //Sem Descrição";
desc_3 = "    //Sem Descrição";
desc_4 = "    //Sem Descrição";
desc_5 = "    //Sem Descrição";
desc_6 = "    //Sem Descrição";

global.desc_levels = [desc_1, desc_2, desc_3, desc_4, desc_5, desc_6]

mouse_cursor = [spr_mouse_default, spr_mouse_move];
window_set_cursor(cr_none)