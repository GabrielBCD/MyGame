// Este evento desenha o fundo, o botão e os textos de exemplo.

// 1. DESENHA A "DIV" DE FUNDO
var _bg_cor_fundo = c_black;
var _bg_cor_borda = c_ltgray;
var _bg_alfa = 0.95; // Bem opaco

draw_set_color(_bg_cor_fundo);
draw_set_alpha(_bg_alfa);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, false); // Fundo
draw_set_alpha(1.0);
draw_set_color(_bg_cor_borda);
draw_rectangle(bg_x1, bg_y1, bg_x2, bg_y2, true); // Borda

// 2. DESENHA O BOTÃO DE FECHAR (X)
var _cb_x = close_button_x;
var _cb_y = close_button_y;
var _cb_s = close_button_size;
var _cb_cor = c_red;

if (close_button_hover) {
    _cb_cor = c_maroon;
}

// Fundo do botão
draw_set_color(_cb_cor);
draw_rectangle(_cb_x, _cb_y, _cb_x + _cb_s, _cb_y + _cb_s, false);

// O "X" branco
var _p = 8;
draw_set_color(c_white);
draw_line_width(_cb_x + _p, _cb_y + _p, _cb_x + _cb_s - _p, _cb_y + _cb_s - _p, 4);
draw_line_width(_cb_x + _cb_s - _p, _cb_y + _p, _cb_x + _p, _cb_y + _cb_s - _p, 4);

// 3. DESENHA OS TEXTOS DE EXEMPLO

// Configurações de fonte
if (font_exists(fnt_dialog)) {
    draw_set_font(fnt_dialog);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Posição Y inicial
var _current_y = bg_y1 + text_padding;
var _text_x = bg_x1 + text_padding;
var _text_largura = (bg_x2 - bg_x1) - (text_padding * 2);

// --- CORREÇÃO BRUTA ---
// Vamos usar um valor fixo para a altura da linha, em vez de string_height()
var _line_height = 24; 

// Desenha o Título
draw_text(_text_x, _current_y, lorem_titulo);
_current_y += 60; // Pula um espaço maior

// Se a fonte existir, desenhamos os textos
if (font_exists(fnt_dialog))
{
    // --- CORREÇÃO BRUTA ---
    // Não vamos mais usar o valor de retorno de draw_text_ext.
    // Vamos apenas desenhar e pular um valor fixo.
    
    // Desenha a Descrição Técnica
    draw_text_ext(_text_x, _current_y, lorem_desc_tecnica, _line_height, _text_largura);
    
    // Pula um valor fixo (ex: 120 pixels). Ajuste este valor se o texto for maior.
    _current_y += 120; 

    // Desenha a "Função da Peça"
    draw_text_ext(_text_x, _current_y, lorem_funcao, _line_height, _text_largura);
}
else
{
    // Se a fonte NÃO existe, desenhe um aviso de erro
    draw_set_color(c_red);
    draw_text(_text_x, _current_y, "ERRO:\n\nPara o texto 'lorem' aparecer,\ncrie uma Fonte (Font) no seu projeto\ne chame-a de 'fnt_default'");
}

// Restaura a cor
draw_set_color(c_white);