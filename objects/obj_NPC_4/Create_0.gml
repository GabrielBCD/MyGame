event_inherited();
image_index = choose(0,3,5);
f1 = "Meu computador atualizou para o Windows 11 sozinho! Está está uma lesma.";
f2 = "Não carrega nada, trava em tudo que é canto. Se fosse um micro-ondas, nem rodava o prato, saca?";
f3 = "Esse sistema novo é HORRIVEL! Não quero mais.";
f4 = "Acredito que meu hardware não está aguentando esse sistema novo.";
f5 = "Já instalou o Windows 10 pra mim?";

interacao1 = [f1,f2,f3];
			  
interacao2 = [f4, f5];

npc_head = spr_npc_4_head;
npc_name = "Kleber"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}