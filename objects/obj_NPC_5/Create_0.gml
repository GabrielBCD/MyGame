event_inherited();
image_index = choose(0,3,5);
f1 = "Comprei essa impressora, ela é WI-FI. Você poderia instalar e configurar para mim?";
f2 = "A Impressora fica na sala, o computador está no quarto.";
f3 = "Nunca vou ficar esperando na fila da papelaria para imprimir meus papeis.";

interacao1 = [f1,f2];
			  
interacao2 = [f3];

npc_head = spr_npc_5_head;
npc_name = "Carlos"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}