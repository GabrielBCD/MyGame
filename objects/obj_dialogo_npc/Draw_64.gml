set_config_text();

var _mensagem = mensagens[i];
text_complete = (string_length(fala) >= string_length(_mensagem));
var _space = keyboard_check_pressed(vk_space);
var _prox_mesage = i < array_length(mensagens) - 1;

var _char_atual = string_char_at(_mensagem, char_prox)
var _char_pause = [".", ",", "!", "?", ":", ";", "/"]

draw_image();
dialog_draw(fala, 1);

switch (pause){
	case 0:
		if (text_complete){
			if (_space){
				if (_prox_mesage){
					i++;
					reset();
				} else {
					instance_destroy();	
				}
			}
		} 
		else {
			char_prox++;
			pause_draw(_char_atual, _char_pause);
			if (_space){
				skip();
			} else {			
				fala += string_char_at(_mensagem, char_prox);
			}
		}
		break;
	case 1:
		if (text_complete){
			if (_space){
				if (_prox_mesage){
					pause = 0;
					i++;
					reset();
				} else {
					instance_destroy();	
				}
			}
		} else {
			if (_space){
				skip();
			}
		}
		fala = fala;
		break;
}

reset_config_text();
















