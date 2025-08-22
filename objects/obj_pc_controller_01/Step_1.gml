// --- Bloco de Validação de Componentes ---

// Validação 1: Componentes que dependem da Placa-Mãe (board).
// Se não houver placa-mãe, a CPU, RAM e GPU não podem ser consideradas instaladas.
if (global.board == false) {
	global.cpu = false;
	global.ram = false;
	global.gpu = false;
}

// Validação 2: O Cooler depende da CPU.
// Se não houver CPU, o cooler não tem função e não pode ser considerado instalado.
if (global.cpu == false) {
	global.cooler = false;
}


if (global.board == false and !instance_exists(obj_placa_mae)) {
	instance_create_layer(397, 32, "Instances", obj_placa_mae);
}

if (global.cpu == false and !instance_exists(obj_cpu)) {
	instance_create_layer(351, 19, "Instances", obj_cpu);
}

if (global.cooler == false and !instance_exists(obj_cooler)) {
	instance_create_layer(350, 56, "Instances", obj_cooler);
}

if (global.hd == false and !instance_exists(obj_hd)) {
	instance_create_layer(347, 93, "Instances", obj_hd);
}

if (global.gpu == false and !instance_exists(obj_gpu)) {
	instance_create_layer(394, 85, "Instances", obj_gpu);
}

if (global.ram == false and !instance_exists(obj_ram)) {
	instance_create_layer(396, 124, "Instances", obj_ram);
}

if (global.power == false and !instance_exists(obj_power)) {
	instance_create_layer(333, 139, "Instances", obj_power);
}

show_debug_message(global.board)