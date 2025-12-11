//==================================================================
// Objeto: obj_ativador_estoque (O Armário)
// Evento: Create
//==================================================================

/// @description Define a ação e inicializa o estado do estoque

// A 'action' que o seu jogador ativa
action = function() {
    
    // 1. Se a janela já estiver aberta, não faz nada
    if (instance_exists(obj_estoque)) {
        return;
    }
    
    // 2. Cria a janela GUI
    var _janela = instance_create_layer(0, 0, "Instances_GUI", obj_estoque);
    
    // 3. (A MÁGICA) Passa a lista atual para a janela
    // 'lista_para_mostrar' é uma variável DENTRO do obj_estoque
    // 'meu_estoque_atual' é a variável DESTE armário
    _janela.lista_para_mostrar = meu_estoque_atual; 
    
    // 4. Diz à janela para recalcular o layout dela com a nova lista
    _janela.recalcular_layout();
    
    // (Opcional: Pausar o jogo)
    // if (instance_exists(obj_game_controller)) {
    //     obj_game_controller.enter_temp_mode(_janela);
    // }
}

// --- Estado do Estoque ---
// A lista de itens que este armário CONTÉM.
// Esta é a lista "persistente".
meu_estoque_atual = [];

// Guarda qual nível foi carregado pela última vez
level_carregado = -4; // (noone)