// Evento Draw de obj_Interacoes

// --- DESENHAR LISTA DE COMPONENTES INSTALADOS ---
// Lista os componentes que não estão na tela (global.variavel == true).

// Pega a posição do mouse na camada da GUI.
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Verifica se o botão esquerdo do mouse foi pressionado nesta frame
var _clicked = mouse_check_button_pressed(mb_left);

// Verifica se o jogador pode interagir com a peça (desmonte)
if global.state_pc == "PC" or global.state_pc == "MONITOR" {
	var _state_dismount = false	
} else {
	var _state_dismount = true
}


// Define a aparência do texto
draw_set_font(fnt_menu); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Define a posição inicial da lista de texto.
var _list_x = 8;
var _list_y = 220;
var _line_height = 25; // Espaçamento entre os nomes

// Desenha o título (sem efeito de hover)
draw_set_color(c_white);
draw_text(_list_x, _list_y, "Componentes Instalados:");
_list_y += _line_height * 1.2;


// Verifica cada global, desenha o item e verifica o clique
// A lógica foi movida para dentro de cada 'if' para evitar problemas de escopo com funções.
if (global.power) {
    var _text = "- Fonte de Alimentação";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.power = false; }
    _list_y += _line_height;
}
if (global.board) {
    var _text = "- Placa-Mãe";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.board = false; }
    _list_y += _line_height;
}
if (global.cpu) {
    var _text = "- CPU";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.cpu = false; }
    _list_y += _line_height;
}
if (global.cooler) {
    var _text = "- Cooler";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.cooler = false; }
    _list_y += _line_height;
}
if (global.ram) {
    var _text = "- Memória RAM";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.ram = false; }
    _list_y += _line_height;
}
if (global.gpu) {
    var _text = "- Placa de Vídeo (GPU)";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.gpu = false; }
    _list_y += _line_height;
}
if (global.hd) {
    var _text = "- Armazenamento (HD/SSD)";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_red : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked && _state_dismount) { global.hd = false; }
    _list_y += _line_height;
}


// --- DESENHAR LISTA DE COMPONENTES DESINSTALADOS ---
_list_y += _line_height; // Espaço extra entre as listas
draw_set_color(c_white);
draw_text(_list_x, _list_y, "Componentes Desinstalados:");
_list_y += _line_height * 1.2;

// Verifica cada global (condição 'false'), desenha o item e verifica o clique
if (global.power == false) {
    var _text = "- Fonte de Alimentação";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.board == false) {
    var _text = "- Placa-Mãe";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.cpu == false) {
    var _text = "- CPU";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.cooler == false) {
    var _text = "- Cooler";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.ram == false) {
    var _text = "- Memória RAM";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.gpu == false) {
    var _text = "- Placa de Vídeo (GPU)";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}
if (global.hd == false) {
    var _text = "- Armazenamento (HD/SSD)";
    var _text_width = string_width(_text);
    var _hovered = point_in_rectangle(_mx, _my, _list_x, _list_y, _list_x + _text_width, _list_y + _line_height);
    draw_set_color(_hovered ? c_green : c_white);
    draw_text(_list_x, _list_y, _text);
    if (_hovered && _clicked) { /* Sua lógica aqui */ }
    _list_y += _line_height;
}

// Reseta a cor para o padrão para não afetar outros objetos
draw_set_color(c_white);

draw_set_font(-1)