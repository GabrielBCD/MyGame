if (visible) {
	if global.tornon == false and alarm_get(0) == -1 {
		global.powered = true
		alarm[0] = 120
	}
	
	if global.tornon == true and alarm_get(0) == -1{
		global.powered = false
		alarm[0] = 120
	}	
}

if (obj_pc_controller_01.tutorial_setas == true) {
	
    click_tutorial = true;
    
    // Sai do evento. Não executa a lógica de ligar/desligar
    // enquanto o tutorial de setas estiver ativo.
    exit; 
} else {

	// --- Prioridade 2: Lógica de Ligar/Desligar ---
	// (Isto só é executado se o tutorial NÃO estiver ativo)

	if (global.powered == true) {
    
	    // ----- ESTADO: LIGADO -----
	    // Se o PC já está ligado, a única ação possível é DESLIGAR.
	    global.powered = false;
    
	    // (Opcional: Se 'tornon' for o *pedido* para ligar,
	    //  talvez queira redefini-lo aqui também)
	    // global.tornon = false; 
    
	}
	else {
    
	    // ----- ESTADO: DESLIGADO -----
	    // Se o PC está desligado, tentamos LIGAR.
    
	    // Mantemos a sua verificação 'global.tornon' como uma
	    // condição de segurança (Ex: O cabo está ligado à tomada?)
	    if (global.tornon == true) {
        
	        // Condições satisfeitas: LIGA
	        global.powered = true;
        
	    }
	    else {
        
	        // (Opcional) O jogador clicou, mas não pode ligar.
	        // (Ex: Tocar um som de "clique falhado" ou mostrar uma dica
	        //  "Ligue o cabo da fonte na tomada primeiro")
	        show_debug_message("Não é possível ligar. 'global.tornon' está false.");
        
	    }
	}
}