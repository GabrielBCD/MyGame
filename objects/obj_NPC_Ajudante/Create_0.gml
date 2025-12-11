//==================================================================
// Objeto: NPC Samuel
// Evento: Create (Refatorado com Estado Global)
//==================================================================

event_inherited();
image_index = choose(0,3,5);

// --- 1. Definição das Falas (Strings) ---
// (Movemos as falas longas para cima para melhor organização)

// Tutorial Inicial
f1 = "Olá, me chamo Samuel.";
f2 = "Vou ajuda-lo a progredir nessa jornada.";
f3 = "Qualquer dúvida sobre o que fazer, venha falar comigo";

// Tutorial - Selecionar Fase
f4 = "Antes de começar você deve selecionar uma fase.";
f5 = "Vá ao computador em minha sala e selecione uma fase interagindo com o computador";
f6 = "Para interagir, utilize a tecla 'F'.";
f7 = "Minha sala fica á direita daqui";

// Lembrete Pós-Seleção
f8 = "Ótimo, agora pode acessar a mesa de trabalho ao meu lado";

// Diálogo de Interrupção (Queimou)
fonte_queimou = [
    "O depósito fica na sala logo acima desta.",
    "Procure pela estante de peças, ela fica no fundo do cômodo."
];

// Diálogos das Fases (Fases 1-4)
// (Eu criei placeholders para as fases 2-4. Edite-os!)
var _f_fase2 = "Vejo que selecionou a Fase 2. Esta é mais complexa.";
var _f_fase3 = "Fase 3! Muito bem. Vá para a mesa.";
var _f_fase4 = "Esta é a Fase 4. Mostre o que aprendeu e vá para a mesa.";


// --- 2. Montagem dos Arrays de Diálogo ---
interacao_inicial = [f1, f2, f3];
interacao_selecionar1 = [f4, f5, f6, f7];
interacao_selecionar2 = [f7]; // Lembrete (PC)
interacao_fase1 = [f8]; // (O seu interacao3 original)
interacao_fase2 = [_f_fase2, f8];
interacao_fase3 = [_f_fase3];
interacao_fase4 = [_f_fase4];

// Diálogo de Interrupção (Queimou)
dialogo_queimou = fonte_queimou;


// --- 3. Configurações do NPC ---
npc_head = spr_npc_2_head;
npc_name = "Samuel";

// --- 4. (A CORREÇÃO) Estado da Conversa Persistente ---
// Verificamos se a variável global de estado já existe.
// Se não existir, este é o primeiro "boot" do jogo, então a criamos.
if (!variable_global_exists("samuel_interacao_state")) {
    // Estados:
    // 0 = Boas-vindas (interacao_inicial)
    // 1 = Explicar o PC (interacao_selecionar1)
    // 2 = Lembrete do PC (interacao_selecionar2)
    // 3 = PC foi usado, vá para a mesa (interacao_faseX)
    global.samuel_interacao_state = 0;
}


//==================================================================
// FUNÇÃO DE AÇÃO (O Cérebro)
// (Toda a lógica foi movida para aqui)
//================================ANCTION==================================
action = function(){
	
    // Prioridade 1: O diálogo já está a decorrer?
    // (Impede o jogador de "spammar" 'F' e quebrar o diálogo)
	if (instance_exists(obj_dialogo_npc)){
		exit;
	}

    // Prioridade 2: A fonte QUEIMOU? (Interrupção Urgente)
    // (Esta verificação tem de vir ANTES da lógica de estado normal)
	if (global.queimou == true) {
		criar_dialogo_npc(dialogo_queimou, npc_head, npc_name);
		
        // Sai da função. O estado normal da conversa (ex: "vá para a mesa")
        // não é alterado, pois isto foi uma interrupção.
		exit; 
	}
	
    // Prioridade 3: Lógica Principal (Baseada no Nível e Estado)
	
    var _level = global.level_selected;
    var _state = global.samuel_interacao_state;
	
	// --- CASO A: Nenhum Nível Selecionado (Modo Tutorial) ---
	if (_level == -1) { // -1 (ou noone)
		
		switch (_state) {
			case 0: // Primeira interação de todas
				criar_dialogo_npc(interacao_inicial, npc_head, npc_name);
				global.samuel_interacao_state = 1; // Avança o estado
				break;
			case 1: // Segunda interação (explicar o PC)
				criar_dialogo_npc(interacao_selecionar1, npc_head, npc_name);
				global.samuel_interacao_state = 2; // Avança o estado
				break;
			default: // Lembrete (Estado 2 ou superior)
				criar_dialogo_npc(interacao_selecionar2, npc_head, npc_name);
				// O estado fica em 2 (não avança mais)
				break;
		}
	}
	
	// --- CASO B: Um Nível ESTÁ Selecionado (Modo de Jogo) ---
	else { // Se _level é 0, 1, 2, 3, etc.
		
		// Se o jogador selecionou um nível, o tutorial (estados 0,1,2)
        // está automaticamente completo. Avança o estado para 3 (pós-tutorial).
		if (_state < 3) {
			global.samuel_interacao_state = 3;
            // (Atualizamos o _state local para a lógica abaixo funcionar)
            _state = 3; 
		}
		
        // Agora, mostramos o diálogo específico da fase
        // (Assumindo que as suas Fases 1-4 são os níveis 0-3)
		switch (_level) {
			
			case 0: // Fase 1
				criar_dialogo_npc(interacao_fase1, npc_head, npc_name);
				break;
			case 1: // Fase 2
				criar_dialogo_npc(interacao_fase2, npc_head, npc_name);
				break;
			case 2: // Fase 3
				criar_dialogo_npc(interacao_fase3, npc_head, npc_name);
				break;
			case 3: // Fase 4
				criar_dialogo_npc(interacao_fase4, npc_head, npc_name);
				break;
				
			default:
				// (Opcional) Níveis 5+
				criar_dialogo_npc(["Não tenho mais instruções.", f8], npc_head, npc_name);
				break;
		}
        
        // (Nós NÃO resetamos o estado. Ele fica em 3 para sempre,
        // permitindo que o NPC repita a fala da fase)
	}
}