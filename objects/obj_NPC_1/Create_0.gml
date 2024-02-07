event_inherited();

mensagens = ["Olá, finalmente você chegou,\nachei que não viria. Por favor \nconserte meu computador o mais rápido possível!",
			  "Como eu já disse, depois que houve uma repentina queda de energia, ele não quis mais ligar, será por quê?",
			  "O Computador fica na sala, você já pode ir..."];
			  
mensagens2 = ["O que está esperando? Pode ir."]
			  
action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(mensagens, spr_npc_1_head1);
	} else {
		criar_dialogo_npc(mensagens2, spr_npc_1_head1);
	}

}