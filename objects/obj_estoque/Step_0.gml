//==================================================================
// Objeto: obj_estoque
// Evento: Step (CORRIGIDO: usa 'global.estoque_persistente')
//==================================================================
/// @description Detecta cliques e hover

// Usa a lista 'global' para obter o número de itens
var _num_itens = array_length(global.estoque_persistente.itens);
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

// Reseta o hover
item_hover = -1;
close_button_hover = false;

// 1. Checar Hover no Botão de Fechar
var _cb_x1 = close_button_x;
var _cb_y1 = close_button_y;
var _cb_x2 = _cb_x1 + close_button_size;
var _cb_y2 = _cb_y1 + close_button_size;

if (point_in_rectangle(_mouse_x, _mouse_y, _cb_x1, _cb_y1, _cb_x2, _cb_y2)) {
    close_button_hover = true;
}

// 2. Checar Hover e Clique nos Itens
if (!close_button_hover && _num_itens > 0) {
    
    for (var _i = 0; _i < _num_itens; _i++) {
        
        var _x1 = item_pos_x[_i];
        var _y1 = item_pos_y[_i];
        var _x2 = _x1 + slot_w;
        var _y2 = _y1 + slot_h;
        
        if (point_in_rectangle(_mouse_x, _mouse_y, _x1, _y1, _x2, _y2)) {
            item_hover = _i;
            
            if (mouse_check_button_pressed(mb_left)) {
                
                // Pega o item clicado ANTES de o remover
                var _item_clicado = global.estoque_persistente.itens[_i];
                
                // 1. Executa a ação personalizada do item
                if (is_method(_item_clicado.action)) {
                    _item_clicado.action();
                }
                
                // 2. Remove o item DA LISTA GLOBAL
                array_delete(global.estoque_persistente.itens, _i, 1);
                
                // 3. Recalcula o layout desta janela
                recalcular_layout();
                
                break; 
            }
            break; 
        }
    }
}

// 3. Checar Clique no Botão de Fechar
if (mouse_check_button_pressed(mb_left) && close_button_hover) {
    instance_destroy();
}