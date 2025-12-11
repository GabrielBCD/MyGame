var _back = keyboard_check_released(vk_escape)

if (_back){
	room_goto(rm_level_interact)
}

if (voltagem_select == 110){
	obj_miniatura.image_index = 1
} else if (voltagem_select == 220){
	obj_miniatura.image_index = 2
}

if (tutorial_tomada){
	criar_dialogo_npc(mensagem_tomada, spr_npc_2_head, "Samuel")
	tutorial_tomada = false
	global.dica_atual = [
		"Selecione a voltagem correta para essa ação."
	]
}

if (ligando and tutorial_teste) {
	criar_dialogo_npc(mensagem_teste, spr_npc_2_head, "Samuel")
	tutorial_teste = false
	global.dica_atual = [
	    "Utilize as 'pontas de prova' do multímetro nos pinos do cabo da fonte para medir as voltagens."
	]
}

if (global.queimou and tutorial_queimou) {
	criar_dialogo_npc(mensagem_queimou, spr_npc_2_head, "Samuel")
	tutorial_queimou = false;
	global.dica_atual = [
		"Vá ao almoxarifado pegar uma fonte reserva."
	]
}

var _perdeu = [
	"...",
	"Está demitido"
]

if (global.qtd_queimadas > 0 and global.fonte_reserva and !fim and global.queimou){
    criar_dialogo_npc(_perdeu, spr_npc_2_head, "Samuel");
	fim = true;
}

if ligando {
	global.dica_atual = [
	    "Utilize as 'pontas de prova' do multímetro nos pinos do cabo da fonte para medir as voltagens."
	]
}

if (fim and !instance_exists(obj_dialogo_npc)) {
	game_restart()
}