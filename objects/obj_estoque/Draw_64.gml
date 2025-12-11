//==================================================================
// Objeto: obj_estoque (A Janela GUI)
// Evento: Draw GUI (CORRIGIDO o erro de 'estoque_post')
//==================================================================
/// @description Desenha o fundo, slots, itens e tooltips

// --- 1. Desenha a "Div" de Fundo ---
draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, false);
draw_set_alpha(1.0);
draw_set_color(c_ltgray);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, true);

// --- 2. Desenha os Slots e Itens ---
var _num_itens = array_length(global.estoque_persistente.itens); 
if (_num_itens > 0) {
    for (var _i = 0; _i < _num_itens; _i++) {
        
        // ***** A CORREÇÃO ESTÁ AQUI *****
        var _item = global.estoque_persistente.itens[_i]; // Era 'estoque_post'
        // ***** FIM DA CORREÇÃO *****

        var _x = item_pos_x[_i];
        var _y = item_pos_y[_i];
        
        var _cor_fundo = c_dkgray;
        var _cor_borda = c_gray;
        var _cor_sprite = c_white;
        var _escala_sprite = sprite_draw_scale;
        
        if (item_hover == _i) {
            _cor_fundo = c_silver;
            _cor_borda = c_white;
            _escala_sprite *= 1.1; 
        }
        
        draw_set_color(_cor_fundo);
        draw_rectangle(_x, _y, _x + slot_w, _y + slot_h, false);
        draw_set_color(_cor_borda);
        draw_rectangle(_x, _y, _x + slot_w, _y + slot_h, true);
        
        var _sprite_draw_x = _x + (slot_w / 2);
        var _sprite_draw_y = _y + (slot_h / 2);
        
        draw_sprite_ext(
            _item.sprite, 0, 
            _sprite_draw_x, _sprite_draw_y,
            _escala_sprite, _escala_sprite, 
            0, _cor_sprite, 1
        );
    }
}

// --- 3. Desenha o Botão de Fechar (X) ---
var _cb_x = close_button_x;
var _cb_y = close_button_y;
var _cb_s = close_button_size;
var _cb_cor = c_red;
if (close_button_hover) {
    _cb_cor = c_maroon;
}
draw_set_color(_cb_cor);
draw_rectangle(_cb_x, _cb_y, _cb_x + _cb_s, _cb_y + _cb_s, false);
var _p = 8;
draw_set_color(c_white);
draw_line_width(_cb_x + _p, _cb_y + _p, _cb_x + _cb_s - _p, _cb_y + _cb_s - _p, 4);
draw_line_width(_cb_x + _cb_s - _p, _cb_y + _p, _cb_x + _p, _cb_y + _cb_s - _p, 4);

// --- 4. Desenha o Tooltip (Nome do Item) ---
if (item_hover != -1 && item_hover < array_length(global.estoque_persistente.itens)) {
    var _item_hover = global.estoque_persistente.itens[item_hover]; 
    var _nome_item = _item_hover.nome;
    
    var _mouse_gui_x = device_mouse_x_to_gui(0);
    var _mouse_gui_y = device_mouse_y_to_gui(0);
    
    if (font_exists(fnt_dialog)) {
        draw_set_font(fnt_dialog);
    }

    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    draw_set_color(c_black);
    draw_text(_mouse_gui_x + 1, _mouse_gui_y - 18, _nome_item);
    draw_set_color(c_white);
    draw_text(_mouse_gui_x, _mouse_gui_y - 20, _nome_item);
}

// --- 5. Reseta as configurações de desenho ---
draw_set_font(-1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1.0);