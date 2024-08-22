event_inherited();
image_index = choose(0,3,5);
f1 = "Olá.";
f2 = "Não tenho nenhuma coisa para falar!"

interacao1 = [f1];
			  
interacao2 = [f2];

npc_head = spr_npc_2_head;
npc_name = "Samuel"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}
}
