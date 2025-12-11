//==================================================================
// Objeto: obj_cabo_atx
// Evento: Create
//==================================================================
/// @description Cria os 24 pinos do cabo ATX na ordem correta

// --- 1. Função Auxiliar: Converte String de Cor para Cor GML ---
// (Necessário porque os seus dados usam "Laranja", etc.)
function get_color_from_string(_color_string) {
    switch (_color_string) {
        case "Laranja": return c_orange;
        case "Vermelho": return c_red;
        case "Preto": return c_black;
        case "Cinza": return c_gray;
        case "Roxo": return c_purple;
        case "Amarelo": return c_yellow;
        case "Azul": return c_blue;
        case "Verde": return c_green;
        case "Branco": return c_white;
        default: return c_white; // Cor padrão (branco)
    }
}

// --- 2. Referência para os dados dos pinos ---
// (Verifica se os dados existem antes de tentar usá-los)
if (!variable_global_exists("power") || !is_struct(global.power) || !variable_struct_exists(global.power, "pinos") || !is_array(global.power.pinos)) {
    show_debug_message("ERRO: global.power.pinos não está definido ou não é um array de structs!");
    instance_destroy(); // Destrói o cabo para evitar crash
    exit; // Para a execução deste evento
}
var _pin_data_array = global.power.pinos;

// --- 3. Configuração do Layout ---
var _pin_width = sprite_get_width(spr_pino);   // Largura do sprite do pino
var _pin_height = sprite_get_height(spr_pino);  // Altura do sprite do pino
var _h_spacing = 4;    // Espaçamento horizontal entre pinos
var _v_spacing = 4;    // Espaçamento vertical entre fileiras

var _start_x = x; // Posição X inicial (baseada no obj_cabo_atx)
var _start_y = y; // Posição Y inicial

var _pins_por_fileira = 12;

// --- 4. Loop para Fileira 1 (Pinos 12 -> 1) ---
// (Leva em consideração que arrays são 0-indexados, pino 1 = array[0])
for (var i = 0; i < _pins_por_fileira; i++) {
    
    // Ordem desejada: 12, 11, 10... 1
    // Índice do Array: 11, 10, 9... 0
    var _data_index = (_pins_por_fileira - 1) - i;
    
    // Pega os dados do struct
    var _pino_struct = _pin_data_array[_data_index];
    var _voltagem = _pino_struct.voltagem;
    var _cor_string = _pino_struct.cor;
    var _cor_gml = get_color_from_string(_cor_string);
    
    // Calcula a posição de spawn
    var _spawn_x = _start_x + i * (_pin_width + _h_spacing);
    var _spawn_y = _start_y;
    
    // Cria a instância do pino
    var _pino_inst = instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_pino);
    
    // Passa as variáveis para o pino
    with (_pino_inst) {
        pin_id = _pino_struct.pino; // Passa o ID (1-24)
        voltagem = _voltagem;
        cor = _cor_gml;
        image_blend = cor; // Aplica a cor ao sprite branco
    }
}

// --- 5. Loop para Fileira 2 (Pinos 24 -> 13) ---
for (var i = 0; i < _pins_por_fileira; i++) {
    
    // Ordem desejada: 24, 23, 22... 13
    // Índice do Array: 23, 22, 21... 12
    var _data_index = (_pins_por_fileira * 2 - 1) - i;
    
    // Pega os dados do struct
    var _pino_struct = _pin_data_array[_data_index];
    var _voltagem = _pino_struct.voltagem;
    var _cor_string = _pino_struct.cor;
    var _cor_gml = get_color_from_string(_cor_string);
    
    // Calcula a posição de spawn
    var _spawn_x = _start_x + i * (_pin_width + _h_spacing);
    var _spawn_y = _start_y + (_pin_height + _v_spacing); // Y da segunda fileira
    
    // Cria a instância do pino
    var _pino_inst = instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_pino);
    
    // Passa as variáveis para o pino
    with (_pino_inst) {
        pin_id = _pino_struct.pino; // Passa o ID (1-24)
        voltagem = _voltagem;
        cor = _cor_gml;
        image_blend = cor; // Aplica a cor ao sprite branco
    }
}