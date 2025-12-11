voltagem_correta = global.power.voltagem;
voltagem_select = noone
ligando = false

fim = false

tutorial_tomada = true;

mensagem_tomada = [
    "Agora, vamos conectar a fonte de energia.",
    "Selecione a tomada com a voltagem correta e, em seguida, clique na fonte para energizá-la."
]

tutorial_queimou = true

mensagem_queimou = [
	"Não acredito nisso! Você queimou a fonte do cliente.",
	"Agora não tem jeito, vamos ter que trocar",
	"Por sorte temos uma fonte reserva no armazém, vá até lá buscar."
]

tutorial_teste = true;

mensagem_teste = [
    "Ok, vamos lá! Para a fonte ligar fora do computador, nós precisamos 'enganar' ela.",
    "Eu já fiz isso: usei um clipe para conectar o pino VERDE a um pino PRETO. É o que dá a 'partida' nela.",
    "Com ela ligada, eu também já configurei o multímetro para 20V em Tensão Contínua, que é o modo certo para ler as voltagens.",
    "Agora é com você. A ponta preta é o nosso 'Terra' (GND). Encoste-a em qualquer pino preto e pode mantê-la aí.",
    "Depois, use a ponta vermelha para medir os outros pinos, um de cada vez, para vermos se as voltagens estão corretas.",
	"Caso não saiba sobre as voltagens, verifique no meu bloco de anotações"
]