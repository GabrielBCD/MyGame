// --- No evento de interação (ex: Mouse Left Pressed no botão) ---

// 1. Obter o estado atual do objeto
var _v_selecionada = obj_interact_power.voltagem_select;
var _v_correta = obj_interact_power.voltagem_correta;
var _ligado = obj_interact_power.ligando;
var _queimou = global.queimou;

// Prioridade 1: O dispositivo está queimado?
// Se estiver, nada mais pode ser feito. A interação falha.
if (_queimou == true) {
    
    // Não faz nada. O dispositivo está permanentemente quebrado.
    // (Opcional: você pode tocar um som de "faísca" aqui)
    
} else if (_ligado == true) {
    
    // Desliga o dispositivo
    obj_interact_power.ligando = false;
    // (Opcional: tocar som de "clique desligando")
    
}
// Prioridade 3: O dispositivo está DESLIGADO (e não queimado).
// A ação é tentar LIGAR.
else if (_queimou == false and _ligado == false) {
    
    if (_v_selecionada == noone) {
        // Primeiro, checamos se nada foi selecionado.
        // Não acontece nada.
    }
    else if (_v_selecionada == _v_correta) {
        // Se algo foi selecionado E é o correto:
        // Pode ligar!
        obj_interact_power.ligando = true;
        // (Opcional: tocar som de "ligando" + "ventoinha")
    }
    else {
        // Se algo foi selecionado E não é o correto:
        // Queimou!
        obj_interact_power.ligando = false; // Garante que continua desligado
		global.queimou = true
        // (Opcional: tocar som de "explosão/curto-circuito")
    }   
}