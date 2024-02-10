event_inherited();

image_index = choose(0,3,5);
f1 = "Olá, finalmente você chegou, achei que não viria. Conserte meu o meu computador mais rápido possível!";
f2 = "Como eu já disse, depois que houve uma repentina queda de energia, ele não quis mais ligar, será por quê?";
f3 = "O Computador fica na sala, você já pode ir...";
f4 = "O que está esperando? Pode ir.";

interacao1 = [f1,f2,f3];

interacao2 = [f4];
			  
npc_name = "Marianna";
npc_head = spr_npc_1_head1;
action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}