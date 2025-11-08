#region //Setas e srites

if (global.state_pc != "PC") {
	instance_activate_object(click_04)
}

switch (global.state_pc){
	case "PC":
		instance_activate_object(monitor);
		instance_activate_object(gabinete);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(click_04);
		instance_deactivate_object(click_back);
		instance_deactivate_object(gabinete_aux);
		
		monitor.sprite_index = spr_monitor;
		gabinete.sprite_index = spr_gabinete;
		
		gabinete.x = room_width/2 + 50;
		gabinete.y = room_height/2;
		
		monitor.x = room_width/2 - 30
		monitor.y = room_height/2
		break;
	case "MONITOR":
		instance_activate_object(monitor);
		instance_activate_object(click_01);
	
		instance_deactivate_object(gabinete);
		instance_deactivate_object(click_back);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
	
		click_01.action = function(){
			global.state_pc = "MONITOR_T";
		}
		
		monitor.sprite_index = spr_monitor_frontal;
		break;
	case "MONITOR_T":
		instance_activate_object(click_back);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		click_back.action = function(){
			global.state_pc = "MONITOR";
		}
		
		monitor.sprite_index = spr_monitor_traseiro;	
		break;
	case "GABINETE_LF":
		instance_activate_object(gabinete);
		instance_activate_object(gabinete_aux);
		instance_activate_object(click_01);
		instance_activate_object(click_02);
		instance_activate_object(click_03);
		
		instance_deactivate_object(monitor);
		instance_deactivate_object(click_back);
		
		click_01.action = function(){
			global.state_pc = "GABINETE_LT";
		}
		click_02.action = function(){
			global.state_pc = "GABINETE_T";
		}
		click_03.action = function(){
			global.state_pc = "GABINETE_F";
		}
		
		gabinete.sprite_index = spr_lateral_frontal;
		
		break;
	case "GABINETE_T":
		instance_activate_object(click_back);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_traseira;
		break;
	case "GABINETE_F":
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		instance_activate_object(click_back);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_frontal;
		break;
	case "GABINETE_LT":
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);

		instance_activate_object(click_back);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_lateral_traseira;
		break;
}

#endregion


#region Etapas dos dialogos do tutorial e Dicas

if (primeira_dica = true) {
	primeira_dica = false
	global.dica_atual = [
		"Clique no Gabinete"
	]
}

var _tutorial_gabinete_msg = [
	"Ótimo. Agora estamos vendo o interior do gabinete.",
	"Para encontrar o botão de ligar, precisaremos de um ângulo melhor.",
	"Use as setas de navegação para girar a câmera ao redor do gabinete.",
	"Continue girando até encontrar a parte frontal e clique no botão. Nosso objetivo é tentar ligá-lo.",
	"Qualquer dúvida que tiver estarei sempre disponível"
]

if (tutorial_gabinete and global.state_pc == "GABINETE_LF") {
	criar_dialogo_npc(_tutorial_gabinete_msg, spr_npc_2_head, "Samuel")
	tutorial_gabinete = false
	global.dica_atual = [
		"Use as setas de navegação para girar a câmera. O botão de ligar deve estar na parte da frente.",
	]
}


var _tutorial_setas_msg = [
	"Você apertou o botão e... nada. Exatamente como o esperado.",
	"Este é um sintoma clássico de que a energia não está chegando aos componentes.",
	
	"Ok, vamos começar o diagnóstico de verdade.",
	"Gire a câmera de volta para a lateral aberta do gabinete, onde vemos as peças.",

	"Quando um computador não dá nenhum sinal de vida, o suspeito número um é sempre o mesmo.",
	"Estamos falando da Fonte de Alimentação, responsável por distribuir a energia.",
]

if (tutorial_setas and obj_gabinete_button.click_tutorial = true) {
	criar_dialogo_npc(_tutorial_setas_msg, spr_npc_2_head, "Samuel")
	tutorial_setas = false
	global.dica_atual = [
		"O computador não deu sinal. Gire a câmera para o lado e vamos checar o suspeito principal: a Fonte de Alimentação.",
	]
}


var _tutorial_pecas_msg = [
	"Agora, vamos focar na lista de peças à sua esquerda.",
	"Este é o seu Menu de Controle. É por ele que você gerencia os componentes.",

	"Para desmontar uma peça usando o menu, o processo é bem simples.",
	"Clique no nome de um componente que esteja Montado para removê-lo do gabinete.",
	
]

if (tutorial_pecas and !tutorial_setas and global.state_pc == "GABINETE_LF") {
	criar_dialogo_npc(_tutorial_pecas_msg, spr_npc_2_head, "Samuel")
	tutorial_pecas = false
	global.dica_atual = [
		"Vamos fazer uma vistoria na fonte.",
	]
}

var _tutorial_inspecao = [
	"Agora que a peça está fora, podemos fazer uma vistoria detalhada.",
	"Clique nela novamente na lista para abrir a janela de manutenção.",
]

if (tutorial_inspecao == true and global.power.connected == false){
	criar_dialogo_npc(_tutorial_inspecao, spr_npc_2_head, "Samuel")
	tutorial_inspecao = false
	global.dica_atual = [
		"Selecione a peça correta para essa ação."
	]
}

#endregion