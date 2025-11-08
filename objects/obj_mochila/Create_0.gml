// MENSAGENS E AÇÕES

mensagem_padrao = "Você não pode usar isso agora."

// --- CONFIGURAÇÃO DA MOCHILA ---

// 1. Defina os sprites para cada item
//    Certifique-se de que todos os sprites tenham o mesmo tamanho!
item_sprites = [
    spr_item_1, // Índice 0
    spr_item_2, // Índice 1
    spr_item_3, // Índice 2
    spr_item_4, // Índice 3
    spr_item_5, // Índice 4
    spr_item_6  // Índice 5
];

// 2. Layout da grade
items_por_linha = 3;
espacamento = 36; // Aumentei o espaçamento para caber os quadrados maiores

// 3. Variável para rastrear o item sob o mouse
item_hover = -1; // -1 significa "nenhum"

// --- CÁLCULOS DE POSIÇÃO (NÃO PRECISA MUDAR) ---

// 4. Obter o tamanho dos nossos sprites (assumindo que todos são iguais)
//    Vamos aumentar um pouco o tamanho base que usamos para calcular
var _base_sprite_w = 32; // Tamanho padrão se o sprite não existir
var _base_sprite_h = 32; // Tamanho padrão se o sprite não existir
var _escala_inventario = 2.0; // Fator de escala (1.5 + 1/3 = 2.0)

if (sprite_exists(item_sprites[0])) {
    _base_sprite_w = sprite_get_width(item_sprites[0]);
    _base_sprite_h = sprite_get_height(item_sprites[0]);
} else {
    show_debug_message("AVISO: Sprite " + sprite_get_name(item_sprites[0]) + " não encontrado. Usando tamanho 32x32.");
}

// Estes serão os tamanhos que usaremos para o SLOT e para o desenho do sprite
slot_w = _base_sprite_w * _escala_inventario;
slot_h = _base_sprite_h * _escala_inventario;

sprite_draw_scale = _escala_inventario; // Fator de escala para desenhar os sprites dos itens


// 5. Calcular o número de linhas e o tamanho total da grade
var _num_itens = array_length(item_sprites);
var _num_linhas = ceil(_num_itens / items_por_linha);

var _grid_total_w = (items_por_linha * slot_w) + ((items_por_linha - 1) * espacamento);
var _grid_total_h = (_num_linhas * slot_h) + ((_num_linhas - 1) * espacamento);

// 6. Encontrar o centro da tela (GUI)
var _gui_centro_x = display_get_gui_width() / 2;
var _gui_centro_y = display_get_gui_height() / 2;

// 7. Encontrar a posição inicial (canto superior esquerdo) da grade
var _grid_start_x = _gui_centro_x - (_grid_total_w / 2);
var _grid_start_y = _gui_centro_y - (_grid_total_h / 2);

// 8. Calcular e armazenar a Posição X e Y de cada slot de item
//    Fazemos isso agora para não ter que calcular a cada frame
item_pos_x = array_create(_num_itens);
item_pos_y = array_create(_num_itens);

for (var _i = 0; _i < _num_itens; _i++) {
    var _col = _i % items_por_linha;
    var _row = _i div items_por_linha;
    
    item_pos_x[_i] = _grid_start_x + (_col * (slot_w + espacamento));
    item_pos_y[_i] = _grid_start_y + (_row * (slot_h + espacamento));
}

// 9. Calcular a posição da "div" de fundo
var _padding = 48; // Espaçamento entre a grade de itens e a borda do fundo
bg_x1 = _grid_start_x - _padding;
bg_y1 = _grid_start_y - _padding;
bg_x2 = _grid_start_x + _grid_total_w + _padding;
bg_y2 = _grid_start_y + _grid_total_h + _padding;

// 10. Posição e estado do botão de fechar
close_button_size = 30; // Tamanho do botão (quadrado)
var _padding_botao = 10; // Espaçamento do botão até a borda
close_button_x = bg_x2 - close_button_size - _padding_botao; // Canto superior direito (interno)
close_button_y = bg_y1 + _padding_botao; // Canto superior direito (interno)
close_button_hover = false;
