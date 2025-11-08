level = global.level;
global.state_pc = "PC";

global.dica_atual = ""

#region Componentes e Estado de Inicialização

global.hd = {
	tipo: "HD",
	modelo: "HD 240 GB",
	state: true,
	connected: true,
	descricao_tecnica: "O Disco Rígido (HD ou SSD) é o 'armário' do computador. É o armazenamento permanente, onde o sistema operacional, os programas e seus arquivos ficam guardados mesmo quando o PC está desligado. A velocidade dele define o quão rápido o computador liga e carrega os aplicativos."
};
global.power = {
	tipo: "Fonte de Energia",
	modelo: "500W 80+ Bronze",
	state: false,
	connected: true,
	descricao_tecnica: "A Fonte de Alimentação (PSU) é o 'coração' do sistema. Ela converte a energia elétrica da tomada para as voltagens corretas que cada componente precisa para funcionar. Uma fonte de boa qualidade é essencial para a estabilidade e segurança de todo o computador."
};
global.board = {
	tipo: "Placa-Mãe",
	modelo: "MASUS H410 Chipset Mintel LGA1200",
	state: true,
	connected: true,
	descricao_tecnica: "A Placa-Mãe é o 'sistema nervoso central' do PC. É a placa principal que conecta todos os componentes — CPU, RAM, GPU, armazenamento — permitindo que eles se comuniquem entre si e trabalhem em conjunto. Ela é a base sobre a qual todo o sistema é construído."
};
global.cooler = {
	tipo: "Cooler Box",
	modelo: "Cooler Box",
	state: true,
	connected: true,
	descricao_tecnica: "O Cooler é o sistema de ventilação que impede o superaquecimento do processador. Ele usa um dissipador de metal e uma ventoinha para remover o calor gerado pela CPU, garantindo que ela opere com máximo desempenho e segurança."
};
global.cpu = {
	tipo: "Processador (CPU)",
	modelo: "Nintel Kore i5-10400",
	state: true,
	connected: true,
	desc: "A CPU (Unidade Central de Processamento), ou processador, é o 'cérebro' do computador. Sua função é interpretar e executar a maioria dos comandos, realizando os cálculos que fazem o sistema operacional e os programas funcionarem. Sua velocidade afeta diretamente a agilidade geral do PC."
};
global.gpu = {
	tipo: "Placa de Vídeo (GPU)",
	modelo: "MVIDIA ZTX 1650",
	state: true,
	connected: true,
	descricao_tecnica: "A GPU (Unidade de Processamento Gráfico), ou Placa de Vídeo, é a responsável por criar tudo o que você vê na tela. Ela processa dados gráficos para gerar imagens, vídeos e as cenas 3D dos jogos, aliviando a carga de trabalho da CPU para essas tarefas visuais."
};
global.ram = {
	tipo: "Memória RAM",
	modelo: "8 GB DDR4",
	state: false,
	connected: true,
	descricao_tecnica: "A Memória RAM é a 'mesa de trabalho' do computador. É uma memória ultrarrápida que guarda temporariamente os dados dos programas em uso. Mais RAM permite executar mais tarefas ao mesmo tempo sem lentidão, mas seu conteúdo é apagado quando o PC desliga."
};

global.parts = [global.hd, global.power, global.board,global.cpu, global.cooler, global.gpu, global.ram]

function verificar_sistema() {

    for (var _i = 0; _i < array_length(global.parts); _i++) {
        
        var _peca_atual = global.parts[_i];
        if (_peca_atual.connected == false || _peca_atual.state == false) {
            
            //show_debug_message("Verificação falhou! Problema na peça: " + string(_peca_atual.tipo));
            return false;
        }
    }

    show_debug_message("Verificação completa! O sistema pode ligar.");
    return true;
}

function encontrar_pecas_defeituosas() {
    var _lista_defeituosas = []

    for (var _i = 0; _i < array_length(global.parts); _i++) {
        
        var _peca_atual = global.parts[_i];

        if (!is_struct(_peca_atual)) {
            continue;
        }

        if (_peca_atual.state == false) {
            
            array_push(_lista_defeituosas, _peca_atual.tipo);
        }
    }

    return _lista_defeituosas;
}

global.tornon = false;
global.selected = noone
global.powered = false;


global.interact = noone //interação das peças

#endregion

#region Instancias do Computador e controles

monitor = instance_create_layer(room_width/2 - 30 , room_height/2, "Instances", obj_monitor);
gabinete = instance_create_layer(room_width/2 + 50, room_height/2, "Instances", obj_gabinete);
gabinete_aux = instance_create_layer(room_width/2, room_height/2, "Instances", obj_gabinete_aux);
gabinete_frontal_button = instance_create_layer(room_width/2 + 50, room_height/2, "Instances", obj_gabinete_button);

click_01 = instance_create_layer(room_width/2, room_height/2 - 64, "Instances", obj_pc_click);
click_02 = instance_create_layer(room_width/2 - 64, room_height/2, "Instances", obj_pc_click, {
	image_angle: 90
});
click_03 = instance_create_layer(room_width/2 + 64, room_height/2, "Instances", obj_pc_click, {
	image_angle: 270
});
click_04 = instance_create_layer(room_width/2, room_height/2 + 64, "Instances", obj_pc_click, {
	image_angle: 180
});

click_back = instance_create_layer(room_width/2 - 64, room_height/2, "Instances", obj_pc_click, {
	image_angle: 90
});

click_04.action = function () {
	global.state_pc = "PC";
}


#endregion

#region Diálogo inicial do tutorial e variaveis

primeira_dica = true
tutorial_gabinete = true;
tutorial_setas = true;
tutorial_pecas = true;
tutorial_inspecao = true;

mensagem = [
	// Parte 1: Introdução ao problema
	"Recebemos este computador com um problema sério.",
	"O cliente disse que ele parou de funcionar após uma queda de energia.",
	"Parece que a máquina foi afetada por alguma oscilação elétrica.",
	"Nosso trabalho é descobrir o que está errado e consertar.",

	// Parte 2: Ensinando a interagir com o Computador e o Gabinete
	"Para começar, vamos examinar o Computador.",
	"Oberserve o Gabinete, a caixa metálica que protege os componentes internos.",
	"Clique nele para abrirmos e dar uma olhada por dentro.",
]
criar_dialogo_npc(mensagem, spr_npc_2_head, "Samuel")



#endregion
