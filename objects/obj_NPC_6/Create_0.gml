event_inherited();
image_index = choose(0,3,5);
f1 = "Olá, boa tarde meu jovem! Que bom que você veio.";
f2 = "Meu neto tem um computador, ele tem medo de limpar ele e estragar.";
f3 = "É um computador gamer que dei de presente para ele no aniversário, pode limpar ele para mim?";
f4 = "Ele está ansioso para jogar, sabe, e eu prometi que o PC ficaria novinho em folha.";
f5 = "Obrigada por estar cuidando disso. Você é um anjo!"

interacao1 = [f1,f2,f3];
			  
interacao2 = [f4, f5];

npc_head = spr_npc_6_head;
npc_name = "Dona Maria"

action = function(){
	if (qtd_interacoes == 0){
		criar_dialogo_npc(interacao1, npc_head, npc_name);
	} else {
		criar_dialogo_npc(interacao2, npc_head, npc_name);
	}

}