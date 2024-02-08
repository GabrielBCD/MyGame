event_inherited();
image_index = choose(0,3,5);
f1 = "Cara, meu computador tá agindo estranho. Fica naquela tela de carregamento eternamente, sabe?";
f2 = "Depois, de repente, aparece uma tela azul dizendo que não iniciou corretamente. Fica travado aí.";
f3 = "Acho que pode ter algum arquivo corrompido ou algo assim. Não entendo muito.";
f4 = "Já tentei reiniciar um monte de vezes, mas continua na mesma. Não sei o que fazer.";
f5 = "Espero que termine logo, quero voltar a jogar."

interacao1 = [f1,f2,f3,f4];
			  
interacao2 = [f5];

npc_head = spr_npc_3_head;
npc_name = "Enzo"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}