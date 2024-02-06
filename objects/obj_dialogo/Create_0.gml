mensagens = [		"Mensagem 1: Uma lista DS é uma estrutura de dados que armazena informações sequencialmente à medida que são adicionadas (muito parecido com um  array )."
					,"Mensagem 2: Uma lista DS é uma estrutura de dados que armazena informações sequencialmente à medida que são adicionadas (muito parecido com um  array )."
					,"Mensagem 3: Uma lista DS é uma estrutura de dados que armazena informações sequencialmente à medida que são adicionadas (muito parecido com um  array )."
					,"Mensagem 4: Uma lista DS é uma estrutura de dados que armazena informações sequencialmente à medida que são adicionadas (muito parecido com um  array )."];
i = 0;
char_prox = 0;
fala = "";

char_extras = 0;
char_limit = 45;
char_limit_up = 45;

function reset(){
	fala = "";
	char_extras = 0;
	char_prox = 0;
	char_limit = char_limit_up;
}

function draw_image(){
	draw_sprite(spr_dialogo, 0, 640, 520)	
}

function dialog_draw(_fala){
	draw_set_font(fnt_dialog);	
	draw_text(455, 600, _fala)
}	

function space_draw(){
	draw_set_font(fnt_sub_dialog);	
	draw_text(700, 650, "PRECIONE 'ESPAÇO' PARA SEGUIR...")	
}

function set_config_text(){
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
}

function reset_config_text(){
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);	
}	