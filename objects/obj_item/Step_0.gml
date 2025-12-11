if (global.state_pc == "PC"){
	visible = false	
} else {
	visible = true
}

if (obj_pc_controller_01.tutorial_pecas == true) {
	visible = false
} else {
	visible = true	
}

switch (global.selected)
{
    case "board":
	image_index = 1
    break;
	
	case "cpu":
	image_index = 2
    break;
	
	case "cooler":
	image_index = 3
    break;
	
	case "gpu":
	image_index = 4
    break;
	
	case "ram":
	image_index = 5
    break;
	
	case "hd":
	image_index = 6
    break;
	
	case "power":
	image_index = 7
    break;

    default:
        break;
}