draw_text(10,10,$"Estado: {obj_player.state}")
if (instance_exists(obj_pc_controller_01)){
	draw_text(10,30,$"Estado: {global.state_pc}")
	
	if (global.selected == noone) {
		// Não desenha nada se nenhum objeto estiver selecionado
	}
	else if (global.selected.object_index == obj_placa_mae) {
		draw_text(10, 60, $"Objeto Clicado: Placa-Mãe");
	}
	else if (global.selected.object_index == obj_cpu) {
		draw_text(10, 60, $"Objeto Clicado: CPU");
	}
	else if (global.selected.object_index == obj_cooler) {
		draw_text(10, 60, $"Objeto Clicado: Cooler");
	}
	else if (global.selected.object_index == obj_gpu) {
		draw_text(10, 60, $"Objeto Clicado: GPU");
	}
	else if (global.selected.object_index == obj_ram) {
		draw_text(10, 60, $"Objeto Clicado: Memória RAM");
	}
	else if (global.selected.object_index == obj_hd) {
		draw_text(10, 60, $"Objeto Clicado: HD");
	}
	else if (global.selected.object_index == obj_power) { // Assumindo que o objeto da fonte se chama obj_power
		draw_text(10, 60, $"Objeto Clicado: Fonte de Energia");
	}

}
