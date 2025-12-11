//==================================================================
// Objeto: obj_ativador_estoque (O Armário)
// Evento: Step
//==================================================================

/// @description Verifica se o nível mudou, para "resetar" o estoque

// Se o jogador mudou de nível...
if (global.level_selected != level_carregado) {
    
    show_debug_message("MUDANÇA DE NÍVEL DETETADA: Resetando estoque.");
    
    // 1. Atualiza o nível
    level_carregado = global.level_selected;
    
    // 2. Limpa a lista antiga
    array_delete(meu_estoque_atual, 0, array_length(meu_estoque_atual));
    
    // 3. Preenche a lista com os itens "novos" daquele nível
    switch (level_carregado) {
        
        case 0: // Nivel 1
            array_push(meu_estoque_atual, {
                nome: "Fonte Reserva",
                sprite: spr_fonte, 
                action: function() { 
                    global.fonte_reserva = true
					global.power = {
						tipo: "Fonte de Alimentação (PSU)",
						modelo: "500W 80+ Bronze, 110V",
						voltagem: 110,
						pinos: [
						    3.3,  // Pino 1 (Laranja, +3.3V)
						    3.3,  // Pino 2 (Laranja, +3.3V)
						    0.0,  // Pino 3 (Preto, GND)
						    5.0,  // Pino 4 (Vermelho, +5V)
						    0.0,  // Pino 5 (Preto, GND)
						    5.0,  // Pino 6 (Vermelho, +5V)
						    0.0,  // Pino 7 (Preto, GND)
						    5.0,  // Pino 8 (Cinza, PWR_OK)
						    5.0,  // Pino 9 (Roxo, +5V VSB)
						    12.0, // Pino 10 (Amarelo, +12V)
						    12.0, // Pino 11 (Amarelo, +12V)
						    3.3,  // Pino 12 (Laranja, +3.3V)
    
						    3.3,  // Pino 13 (Laranja, +3.3V)
						    -12.0,// Pino 14 (Azul, -12V)
						    0.0,  // Pino 15 (Preto, GND)
						    0.0,  // Pino 16 (Verde, PS-ON)
						    0.0,  // Pino 17 (Preto, GND)
						    0.0,  // Pino 18 (Preto, GND)
						    0.0,  // Pino 19 (Preto, GND)
						    0.0,  // Pino 20 (Branco, NC/-5V)
						    5.0,  // Pino 21 (Vermelho, +5V)
						    5.0,  // Pino 22 (Vermelho, +5V)
						    5.0,  // Pino 23 (Vermelho, +5V)
						    0.0   // Pino 24 (Preto, GND)
						],
						state: true,
						connected: false,
						descricao: "A Fonte de Alimentação (PSU) é o 'coração' do sistema. Ela converte a energia elétrica da tomada para as voltagens corretas que cada componente precisa para funcionar. Uma fonte de boa qualidade é essencial para a estabilidade e segurança de todo o computador."

					}
                }
            });
            break;
    }
}