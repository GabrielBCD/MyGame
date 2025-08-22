event_inherited();
image_index = choose(0,3,5);

f1 = "Olá, me chamo Samuel.";
f2 = "Vou ajuda-lo a progredir nessa jornada.";
f3 = "Qualquer dúvida sobre o que fazer, venha falar comigo";

f4 = "Antes de começar você deve selecionar uma fase.";
f5 = "Vá ao computador em minha sala e selecione uma fase interagindo com o computador";
f6 = "Para interagir, utilize a tecla 'F'.";
f7 = "Minha sala fica á direita daqui";

f8= "Agora pode acessar a mesa de trabalho ao meu lado";


interacao_inicial = [f1,f2,f3];
interacao_selecionar1 = [f4,f5,f6,f7];
interacao_selecionar2 = [f7];

interacao3 = [f8];


npc_head = spr_npc_2_head;
npc_name = "Samuel"

action = function(){
	if global.level_selected == -1 {
		if (qtd_interacoes == 0){
			criar_dialogo_npc(interacao_inicial, npc_head, npc_name);
			qtd_interacoes = 1;
		} else if (qtd_interacoes == 1){
			criar_dialogo_npc(interacao_selecionar1, npc_head, npc_name);
			qtd_interacoes = 2;
		} else {
			criar_dialogo_npc(interacao_selecionar2, npc_head, npc_name);
		}
	}
	
	if global.level_selected > -1{
		qtd_interacoes = 0;
		criar_dialogo_npc(interacao3, npc_head, npc_name);
	}
}
