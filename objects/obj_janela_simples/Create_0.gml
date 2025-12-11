// 1. Configurações da janela (DIV)
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Define o tamanho da janela (ex: 60% da tela)
var _largura_janela = _gui_w * 0.6;
var _altura_janela = _gui_h * 0.7;

// Encontra o centro
var _gui_centro_x = _gui_w / 2;
var _gui_centro_y = _gui_h / 2;

// Calcula as coordenadas do fundo
bg_x1 = _gui_centro_x - (_largura_janela / 2);
bg_y1 = _gui_centro_y - (_altura_janela / 2);
bg_x2 = _gui_centro_x + (_largura_janela / 2);
bg_y2 = _gui_centro_y + (_altura_janela / 2);

// 2. Posição e estado do botão de fechar (X)
close_button_size = 30;
var _padding_botao = 10;
close_button_x = bg_x2 - close_button_size - _padding_botao;
close_button_y = bg_y1 + _padding_botao;
close_button_hover = false;

// --- ADIÇÃO PARA FICAR NO TOPO ---
// Força esta instância a desenhar acima de todas as outras
depth = -9999;

// --- ADIÇÃO DOS TEXTOS DE EXEMPLO ---
text_padding = 40; // Espaço das bordas para o texto

// Você pode substituir estes textos pelos seus dados reais
lorem_titulo = "";
lorem_desc_tecnica = "Descrição Técnica: " + "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.";
lorem_funcao = "Função da Peça: " + "Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.";