//==================================================================
// Objeto: obj_estoque
// Evento: Create (CORRIGIDO: 'static' trocado por 'global')
//==================================================================

/// @description Define as funções e carrega os itens do nível

// --- Variáveis de Estado ---
item_pos_x = []; 
item_pos_y = []; 
item_hover = -1;
close_button_hover = false;

// --- Variáveis de Layout (serão definidas pela função) ---
espacamento = 16;
slot_w = 0;
slot_h = 0;
sprite_draw_scale = 1;
start_x = 0;
start_y = 0;
bg_x1 = 0;
bg_y1 = 0;
bg_x2 = 0;
bg_y2 = 0;
close_button_size = 30;
close_button_x = 0;
close_button_y = 0;

//==================================================================
// A Lista de Itens (o "Estado" Persistente)
//==================================================================
// (A CORREÇÃO ESTÁ AQUI)
// Se a nossa lista global de estoque ainda não existe, nós a criamos.
if (!variable_global_exists("estoque_persistente")) {
    show_debug_message("Criando 'global.estoque_persistente' pela primeira vez.");
    global.estoque_persistente = {
        level_carregado: -4, // -4 (noone)
        itens: []
    };
}

//==================================================================
// FUNÇÃO 1: RECALCULAR_LAYOUT
//==================================================================
function recalcular_layout() {
    
    // 1. Define o Tamanho da "Div"
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    var _div_w = _gui_w * 0.7; 
    var _div_h = _gui_h * 0.8;
    
    bg_x1 = (_gui_w - _div_w) / 2;
    bg_y1 = (_gui_h - _div_h) / 2;
    bg_x2 = bg_x1 + _div_w;
    bg_y2 = bg_y1 + _div_h;
    
    // 2. Define o Layout dos Itens DENTRO da Div
    var _padding_interno = 60; 
    var _sprite_w = 32;
    var _sprite_h = 32;

    var _escala_inventario = 2.5; 
    espacamento = 16;
    slot_w = _sprite_w * _escala_inventario;
    slot_h = _sprite_h * _escala_inventario;
    sprite_draw_scale = (slot_w / _sprite_w) * 0.80; 
    
    start_x = bg_x1 + _padding_interno;
    start_y = bg_y1 + _padding_interno;

    // 3. Calcula as Posições de CADA Item
    var _num_itens = array_length(global.estoque_persistente.itens);
    
    array_delete(item_pos_x, 0, array_length(item_pos_x));
    array_delete(item_pos_y, 0, array_length(item_pos_y));
        
    var _itens_por_linha = 3;
        
    for (var _i = 0; _i < _num_itens; _i++) {
        var _linha = floor(_i / _itens_por_linha);
        var _coluna = _i % _itens_por_linha;
        var _x = start_x + (_coluna * (slot_w + espacamento));
        var _y = start_y + (_linha * (slot_h + espacamento));
        item_pos_x[_i] = _x;
        item_pos_y[_i] = _y;
    }
    
    // 4. Posição do Botão "X"
    close_button_size = 30;
    var _padding_botao = 10; 
    close_button_x = bg_x2 - close_button_size - _padding_botao;
    close_button_y = bg_y1 + _padding_botao;
}

//==================================================================
// LÓGICA DE INICIALIZAÇÃO (Executada ao Criar)
//==================================================================

// 1. Verifica se o nível mudou (desde a última vez que abrimos o estoque)
if (global.level_selected != global.estoque_persistente.level_carregado) {
    
    show_debug_message("MUDANÇA DE NÍVEL: Estoque está a ser 'resetado'.");
    
    // Atualiza o nível
    global.estoque_persistente.level_carregado = global.level_selected;
    
    // Limpa a lista antiga
    array_delete(global.estoque_persistente.itens, 0, array_length(global.estoque_persistente.itens));
    
    // Preenche a lista com os itens do nível
    switch (global.estoque_persistente.level_carregado) {
        
        case 0: // O seu Nível 0
            array_push(global.estoque_persistente.itens, {
                nome: "Fonte Reserva",
                sprite: spr_fonte, 
                action: function() { 
                    global.fonte_reserva = true
					global.power = {
						tipo: "Fonte de Alimentação (PSU)",
						modelo: "500W 80+ Bronze, 110V",
						voltagem: 110,
						pinos: [
						    3.3,  // Pino 1 (Laranja, +3.3V)
						    3.3,  // Pino 2 (Laranja, +3.3V)
						    0.0,  // Pino 3 (Preto, GND)
						    5.0,  // Pino 4 (Vermelho, +5V)
						    0.0,  // Pino 5 (Preto, GND)
						    5.0,  // Pino 6 (Vermelho, +5V)
						    0.0,  // Pino 7 (Preto, GND)
						    5.0,  // Pino 8 (Cinza, PWR_OK)
						    5.0,  // Pino 9 (Roxo, +5V VSB)
						    12.0, // Pino 10 (Amarelo, +12V)
						    12.0, // Pino 11 (Amarelo, +12V)
						    3.3,  // Pino 12 (Laranja, +3.3V)
    
						    3.3,  // Pino 13 (Laranja, +3.3V)
						    -12.0,// Pino 14 (Azul, -12V)
						    0.0,  // Pino 15 (Preto, GND)
						    0.0,  // Pino 16 (Verde, PS-ON)
						    0.0,  // Pino 17 (Preto, GND)
						    0.0,  // Pino 18 (Preto, GND)
						    0.0,  // Pino 19 (Preto, GND)
						    0.0,  // Pino 20 (Branco, NC/-5V)
						    5.0,  // Pino 21 (Vermelho, +5V)
						    5.0,  // Pino 22 (Vermelho, +5V)
						    5.0,  // Pino 23 (Vermelho, +5V)
						    0.0   // Pino 24 (Preto, GND)
						],
						state: true,
						connected: false,
						descricao: "A Fonte de Alimentação (PSU) é o 'coração' do sistema. Ela converte a energia elétrica da tomada para as voltagens corretas que cada componente precisa para funcionar. Uma fonte de boa qualidade é essencial para a estabilidade e segurança de todo o computador."

					}
                }
            });
            break;
    }
} else {
    show_debug_message("Nível não mudou. A carregar estoque 'salvo' (com itens já removidos).");
}

// 2. Finalmente, calcula o layout (com a lista correta)
recalcular_layout();