set_config_text();

mensagem = mensagens[i];
text_complete = (string_length(fala) >= string_length(mensagem));

var _space = keyboard_check_pressed(vk_space);
var _prox_mesage = i < array_length(mensagens) - 1;

char_atual = string_char_at(mensagem, char_prox);

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
		} else {
			if (_space){
				skip();
			} else {
				char_prox_delay();
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


