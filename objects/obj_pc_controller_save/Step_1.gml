#region Visualização das peças

// Validação 1: Componentes que dependem da Placa-Mãe (board).
// Se não houver placa-mãe, a CPU, RAM e GPU não podem ser consideradas instaladas.
if (global.board.connected == false) {
	global.cpu.connected = false;
	global.ram.connected = false;
	global.gpu.connected = false;
}

// Validação 2: O Cooler depende da CPU.
// Se não houver CPU, o cooler não tem função e não pode ser considerado instalado.
if (global.cpu.connected == false) {
	global.cooler.connected = false;
}


if (global.board.connected == false and !instance_exists(obj_placa_mae)) {
	instance_create_layer(397, 32, "Instances", obj_placa_mae);
}

if (global.cpu.connected == false and !instance_exists(obj_cpu)) {
	instance_create_layer(351, 19, "Instances", obj_cpu);
}

if (global.cooler.connected == false and !instance_exists(obj_cooler)) {
	instance_create_layer(350, 56, "Instances", obj_cooler);
}

if (global.hd.connected == false and !instance_exists(obj_hd)) {
	instance_create_layer(347, 93, "Instances", obj_hd);
}

if (global.gpu.connected == false and !instance_exists(obj_gpu)) {
	instance_create_layer(394, 85, "Instances", obj_gpu);
}

if (global.ram.connected == false and !instance_exists(obj_ram)) {
	instance_create_layer(396, 124, "Instances", obj_ram);
}

if (global.power.connected == false and !instance_exists(obj_power)) {
	instance_create_layer(333, 139, "Instances", obj_power);
}

show_debug_message(global.board.connected)

#endregion

#region Verificação do computador ligado e animações
 
 //Verifica a todo momento se o pc pode ligar de forma correta
 global.tornon = verificar_sistema();
 
 
 //Mudanças do computador ligado e funcionando
	//Monitor ligado
	//Bloquear Interações de cabos do monitor
	//bloquear remoção de peças e etc
	
	
	//Bloquear controles em outros estados
	if (global.state_pc == "PC" or global.state_pc == "MONITOR" or global.state_pc == "MONITOR_T") {
		if (instance_exists(obj_placa_mae)) { obj_placa_mae.visible = false; }
		if (instance_exists(obj_cpu)) { obj_cpu.visible = false; }
		if (instance_exists(obj_cooler)) { obj_cooler.visible = false; }
		if (instance_exists(obj_gpu)) { obj_gpu.visible = false; }
		if (instance_exists(obj_ram)) { obj_ram.visible = false; }
		if (instance_exists(obj_hd)) { obj_hd.visible = false; }
		if (instance_exists(obj_power)) { obj_power.visible = false; }
	} else {
		if (instance_exists(obj_placa_mae)) { obj_placa_mae.visible = true; }
		if (instance_exists(obj_cpu)) { obj_cpu.visible = true; }
		if (instance_exists(obj_cooler)) { obj_cooler.visible = true; }
		if (instance_exists(obj_gpu)) { obj_gpu.visible = true; }
		if (instance_exists(obj_ram)) { obj_ram.visible = true; }
		if (instance_exists(obj_hd)) { obj_hd.visible = true; }
		if (instance_exists(obj_power)) { obj_power.visible = true; }
	}
 
 //Animãções das peças
	//Cooler do computador girando
 
 //Sons do computador
	//Sons de computador ligando normalmente
 
#endregion

#region //Comportamentos de defeitos

var _pecas_com_problema = encontrar_pecas_defeituosas();

if (array_length(_pecas_com_problema) > 0) {
    
    var _mensagem_diagnostico = "Diagnóstico: Foram encontradas as seguintes peças com defeito:\n\n"; // \n pula uma linha
    
    for (var _i = 0; _i < array_length(_pecas_com_problema); _i++) {
        _mensagem_diagnostico += "- " + _pecas_com_problema[_i] + "\n";
    }
    
	//Dependendo da peça com defeito organizar o diagnostico e/ou dica do npc baseado nas interações dele
	
	//
	//
	//
	//
}
  
#endregion