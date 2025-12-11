// 1. Obter a posição do mouse na camada GUI
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

// 2. Reiniciar o hover do botão
close_button_hover = false;

// 3. Verificar hover no botão de fechar
var _cb_x1 = close_button_x;
var _cb_y1 = close_button_y;
var _cb_x2 = _cb_x1 + close_button_size;
var _cb_y2 = _cb_y1 + close_button_size;

if (point_in_rectangle(_mouse_x, _mouse_y, _cb_x1, _cb_y1, _cb_x2, _cb_y2)) {
    close_button_hover = true;
}

// 4. Verificar clique
if (mouse_check_button_pressed(mb_left)) {
    
    // 5. Se clicamos no botão de fechar
    if (close_button_hover) {
        // Apenas se destrói.
        instance_destroy();
    }
}


switch (global.selected)
{
    case "board":
        lorem_titulo = global.board.tipo
		lorem_desc_tecnica = global.board.modelo
		lorem_funcao = global.board.descricao
    break;
	
	case "cpu":
        lorem_titulo = global.cpu.tipo
		lorem_desc_tecnica = global.cpu.modelo
		lorem_funcao = global.cpu.descricao
    break;
	
	case "cooler":
        lorem_titulo = global.cooler.tipo
		lorem_desc_tecnica = global.cooler.modelo
		lorem_funcao = global.cooler.descricao
    break;
	
	case "gpu":
        lorem_titulo = global.gpu.tipo
		lorem_desc_tecnica = global.gpu.modelo
		lorem_funcao = global.gpu.descricao
    break;
	
	case "ram":
        lorem_titulo = global.ram.tipo
		lorem_desc_tecnica = global.ram.modelo
		lorem_funcao = global.ram.descricao
    break;
	
	case "hd":
        lorem_titulo = global.hd.tipo
		lorem_desc_tecnica = global.hd.modelo
		lorem_funcao = global.hd.descricao
    break;
	
	case "power":
        lorem_titulo = global.power.tipo
		lorem_desc_tecnica = global.power.modelo
		lorem_funcao = global.power.descricao
    break;

    default:
        break;
}