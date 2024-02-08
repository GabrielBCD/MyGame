event_inherited();
image_index = choose(0,3,5);
f1 = "Olá Senhor, estou com um problema aqui. O computador simplesmente se recusa a ligar desde ontem.";
f2 = "Ontem, durante a limpeza, as meninas desconectaram os cabos da tomada.";
f3 = "Depois que voltamos, conectamos o computador de volta, mas ele não liga.";
f4 = "E o pior é que fez um barulho de estalo qauando tentamos ligá-lo.";
f5 = "Preciso voltar a trabalhar."

interacao1 = [f1,f2,f3,f4];
			  
interacao2 = [f5];

npc_head = spr_npc_2_head;
npc_name = "Robson"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}