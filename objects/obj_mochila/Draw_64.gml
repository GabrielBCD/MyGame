// --- DESENHA A "DIV" DE FUNDO DO INVENTÁRIO ---
var _bg_cor_fundo = c_black;
var _bg_cor_borda = c_ltgray;
var _bg_alfa = 0.95; // 95% de transparência (para "tapar" o fundo)

draw_set_color(_bg_cor_fundo);
draw_set_alpha(_bg_alfa);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, false); // Fundo preenchido
draw_set_alpha(1.0); // Restaura o alfa para 100%

draw_set_color(_bg_cor_borda);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, true); // Borda

// 1. Loop para desenhar cada item (OS SLOTS)
var _num_itens = array_length(item_sprites);

for (var _i = 0; _i < _num_itens; _i++) {
    var _x = item_pos_x[_i];
    var _y = item_pos_y[_i];
    var _spr = item_sprites[_i];
    
    // --- DESENHA O FUNDO DO SLOT (QUADRADO CINZA) ---
    var _slot_cor_fundo = c_dkgray; // Cor cinza escuro para o fundo
    var _slot_cor_borda = c_gray;    // Cor cinza claro para a borda
    
    // Se o mouse estiver sobre o item, mude as cores do slot para destaque
    if (_i == item_hover) {
        _slot_cor_fundo = c_silver; // Um cinza mais claro quando em hover
        _slot_cor_borda = c_white;  // Borda branca para destaque
    }
    
    draw_set_color(_slot_cor_fundo);
    draw_rectangle(_x, _y, _x + slot_w, _y + slot_h, false); // false = preenchido
    
    draw_set_color(_slot_cor_borda);
    draw_rectangle(_x, _y, _x + slot_w, _y + slot_h, true);  // true = apenas borda

    // --- DESENHA O SPRITE DO ITEM ---
    // Centraliza o sprite dentro do slot
    var _sprite_draw_x = _x + (slot_w / 2);
    var _sprite_draw_y = _y + (slot_h / 2);

    // Desenha o sprite do item
    draw_sprite_ext(_spr, 0, _sprite_draw_x, _sprite_draw_y, sprite_draw_scale, sprite_draw_scale, 0, c_white, 1);
}

// --- DESENHA O BOTÃO DE FECHAR (X) ---
var _cb_x = close_button_x;
var _cb_y = close_button_y;
var _cb_s = close_button_size;
var _cb_cor = c_red; // Vermelho padrão

if (close_button_hover) {
    _cb_cor = c_maroon; // Vermelho escuro quando em hover
}

// Fundo do botão
draw_set_color(_cb_cor);
draw_rectangle(_cb_x, _cb_y, _cb_x + _cb_s, _cb_y + _cb_s, false);

// O "X" branco (desenhado com duas linhas)
var _p = 8; // Um pequeno preenchimento (padding)
draw_set_color(c_white);
draw_line_width(_cb_x + _p, _cb_y + _p, _cb_x + _cb_s - _p, _cb_y + _cb_s - _p, 4);
draw_line_width(_cb_x + _cb_s - _p, _cb_y + _p, _cb_x + _p, _cb_y + _cb_s - _p, 4);


// Restaura a cor de desenho para o padrão (importante!)
draw_set_color(c_white);
