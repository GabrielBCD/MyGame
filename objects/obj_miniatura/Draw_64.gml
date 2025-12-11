var _v_selecionada = obj_interact_power.voltagem_select;
var _v_correta = obj_interact_power.voltagem_correta;
var _ligado = obj_interact_power.ligando;
var _queimou = global.queimou;

draw_text(10,70,$"V Selecionada: {_v_selecionada}")
draw_text(10,90,$"V Correta: {_v_correta}")
draw_text(10,110,$"V Ligado: {_ligado}")
draw_text(10,130,$"V Queimou: {_queimou}")
draw_text(10,150,$"V Qtd_queimadas: {global.qtd_queimadas}")


/// @description Desenha o tooltip acima do mouse
if (mouse_hovering == false)
{
    // Se o mouse não estiver em cima, não desenha nada
    exit;
} else {

// 1. Pega a posição do mouse na GUI (Tela)
var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);

// 2. Define a posição do texto (um pouco acima do cursor)
var _draw_x = _mouse_gui_x;
var _draw_y = _mouse_gui_y - 20; // 20 pixels acima do mouse

// 3. Configura a fonte e o alinhamento
// (Crie uma fonte chamada 'fnt_tooltip' ou mude este nome)
if (font_exists(fnt_dialog))
{
    draw_set_font(fnt_dialog);
}
draw_set_halign(fa_center); // Centralizado horizontalmente
draw_set_valign(fa_bottom); // O ponto de âncora é a base do texto

// 4. Desenha o texto (com uma sombra para legibilidade)
draw_set_color(c_black); // Sombra preta
draw_text(_draw_x + 1, _draw_y + 1, texto_tooltip);

draw_set_color(c_white); // Texto branco
draw_text(_draw_x, _draw_y, texto_tooltip);

// 5. Reseta as configurações de desenho (boa prática)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}