// 1. Obter a posição do mouse na camada GUI
//    Usamos a camada GUI para que o mouse funcione independente da câmera no jogo
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

// 2. Reiniciar o item em hover
item_hover = -1;
close_button_hover = false;

// 2.5 Verificar hover no botão de fechar
var _cb_x1 = close_button_x;
var _cb_y1 = close_button_y;
var _cb_x2 = _cb_x1 + close_button_size;
var _cb_y2 = _cb_y1 + close_button_size;

if (point_in_rectangle(_mouse_x, _mouse_y, _cb_x1, _cb_y1, _cb_x2, _cb_y2)) {
    close_button_hover = true;
}

// 3. Verificar se o mouse está sobre algum item
//    Só faça isso se não estivermos sobre o botão de fechar
if (!close_button_hover) {
    var _num_itens = array_length(item_sprites);
    for (var _i = 0; _i < _num_itens; _i++) {
        // Criar uma "bounding box" (caixa delimitadora) para este item
        var _x1 = item_pos_x[_i];
        var _y1 = item_pos_y[_i];
        var _x2 = _x1 + slot_w;
        var _y2 = _y1 + slot_h;
            
        // Verificar se o mouse está dentro desta caixa
        if (point_in_rectangle(_mouse_x, _mouse_y, _x1, _y1, _x2, _y2)) {
            item_hover = _i;
            break; // Encontramos o item, não precisa continuar o loop
        }
    }
}

// 4. Verificar se o mouse foi clicado
if (mouse_check_button_pressed(mb_left)) {
    
    // 5. Se clicamos no botão de fechar
    if (close_button_hover) {
        // Ação para fechar o inventário
        show_debug_message("Mochila fechada!");
        instance_destroy(); // Destrói a instância da mochila
    }
    // 5.5 Se clicamos E estamos sobre um item
    else if (item_hover != -1) {
        
        // --- AQUI A AÇÃO ACONTECE ---
        // Use um switch para definir o que cada item faz
        
        show_debug_message("Clicou no item: " + string(item_hover));
        
        switch (item_hover) {
            case 0:
                show_debug_message("Usou Item 1!");
				criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
                break;
                
            case 1:
                // Ação para o item 2
                show_debug_message("Usou Item 2!");
				criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
                break;

            case 2:
                // Ação para o item 3
                show_debug_message("Usou Item 3!");
                if (global.interact == "power"){
					room_goto(rm_level_interact_power)
				} else {
					criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
				}
            case 3:
                // Ação para o item 4
                show_debug_message("Usou Item 4!");
				criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
                break;

            case 4:
                // Ação para o item 5
                show_debug_message("Usou Item 5!");
				criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
                break;
                
            case 5:
                // Ação para o item 6
                show_debug_message("Usou Item 6!");
				criar_dialogo_npc(mensagem_padrao, spr_npc_2_head, "Samuel")
                break;
        }
    }
}