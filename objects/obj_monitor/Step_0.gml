/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (global.state_pc == "MONITOR") {
	x = room_width/2;
	y = room_height/2;
}

if (global.state_pc == "PC") {
	action = function(){
		global.state_pc = "MONITOR"
	}
} else {
	action = function(){
		//
	}
}