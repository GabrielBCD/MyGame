set_config_text();

var _mensagem = mensagens[i];
var _space = keyboard_check_pressed(vk_space);
var _string_limit = string_length(fala) >= char_limit;
var _digitando = string_length(fala) != string_length(_mensagem) + char_extras;
var _prox_mesage = i < array_length(mensagens) - 1;

if (!_string_limit){
	char_prox ++;
	fala += string_char_at(_mensagem, char_prox);
} else {
	fala += "-\n";
	char_extras += 2;
	char_limit += char_limit_up
}

draw_image();
dialog_draw(fala);

switch (_digitando){
	case 0:
		if (_prox_mesage){
			space_draw();
			if (_space){
				i++;
				reset();
			}
		} else {
			space_draw();
			if (_space){
				instance_destroy();
			}	
		}
		break;
	case 1:
		if (_space) {
			reset()
			for (var _i = 0; _i < string_length(_mensagem); _i++){
				var _string_limit_for = (string_length(fala) >= char_limit);
				if (!_string_limit_for){
					char_prox ++;
					fala += string_char_at(_mensagem, char_prox);
				} else {
					show_debug_message("Pssou 50 letras")
					fala += "-\n";
					char_extras += 2;
					char_limit += char_limit_up;
				}
			}
		break;
	}
}
reset_config_text()


















/*else if (_space) {
	char_extras = 0;
	fala = "";
	char_limit = char_limit_up;
	for (var _i = 0; _i < string_length(mensagem); _i++){
		if (string_length(fala) > char_limit){
			fala += "-\n";
			char_extras += 2;
			char_limit += char_limit_up
		} else {
			aux ++;
			fala += string_char_at(mensagem, aux);
		}
	}
}*/




















