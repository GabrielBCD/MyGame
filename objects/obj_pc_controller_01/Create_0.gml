level = global.level;
global.state_pc = "PC";

global.hd = true
global.power = true
global.board = true
global.cooler = true
global.cpu = true
global.gpu = true
global.ram = true

global.selected = noone
global.tornon = false;
global.powered = false;

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

// --- Variáveis para a FASE 01 com Descrições Técnicas ---

// ## Processador (CPU) ##
global.cpu_desc = {
    modelo: "Intel Core i5-12400F",
    nucleos: 6,
    threads: 12,
    frequencia_ghz: 2.5,
    descricao_tecnica: "O processador (CPU) é o cérebro do computador, executando cálculos e instruções. Este modelo possui 6 núcleos e 12 threads, o que o torna excelente para multitarefa e jogos. A frequência de 2.5 GHz indica a velocidade base de suas operações, podendo atingir valores mais altos (boost) quando necessário."
};

global.cooler_desc = {
    modelo: "Cooler Master Hyper 212",
    tipo: "Air Cooler",
    tdp_suportado_watts: 180,
    descricao_tecnica: "O Cooler é responsável por dissipar o calor gerado pelo processador. Este modelo a ar (Air Cooler) usa um dissipador de alumínio e uma ventoinha para manter a CPU em temperaturas seguras, prevenindo a perda de desempenho por superaquecimento (thermal throttling) e garantindo a longevidade do componente."
};

// ## Memória RAM ##
global.ram_desc = {
	quantidade: 2,
    capacidade_gb: 16,
    tipo: "DDR4",
    velocidade_mhz: 3200,
    descricao_tecnica: "A RAM é a memória de acesso rápido do sistema, funcionando como uma 'mesa de trabalho' para o processador. Com 16 GB, há espaço suficiente para jogos modernos e vários programas abertos. A velocidade de 3200 MHz (tipo DDR4) garante que os dados sejam transferidos rapidamente para a CPU, evitando gargalos."
};

// ## Placa de Vídeo (GPU) ##
global.gpu_desc = {
    modelo: "NVIDIA GeForce RTX 3060",
    vram_gb: 12,
    descricao_tecnica: "A placa de vídeo (GPU) é responsável por renderizar tudo que você vê na tela. Este modelo RTX 3060 é poderoso para jogos em Full HD e Quad HD, e seus 12 GB de VRAM são essenciais para carregar texturas de alta qualidade. Também possui suporte a tecnologias como Ray Tracing para iluminação realista."
};

// ## Armazenamento (SSD/HDD) ##
global.hd_desc = {
    modelo: "Seagate Barracuda",
    tipo: "HDD (Hard Disk Drive)",
    capacidade_tb: 2,
    velocidade_rpm: 7200,
    descricao_tecnica: "O HD é uma unidade de armazenamento mecânica, ideal para guardar grandes volumes de dados, como jogos, vídeos e backups. Embora mais lento que um SSD, seu custo por gigabyte é menor. A velocidade de 7200 RPM (rotações por minuto) é o padrão para HDDs de desktop, influenciando o tempo de acesso aos arquivos."
};

// ## Placa-Mãe ##
global.board_desc = {
    modelo: "ASUS TUF Gaming B660M-PLUS",
    chipset: "Intel B660",
    descricao_tecnica: "A placa-mãe é a espinha dorsal do PC, conectando todos os componentes para que possam se comunicar. O chipset B660 define a compatibilidade com o processador, a velocidade máxima da memória RAM e os tipos de conexões disponíveis. Ela é a fundação sobre a qual todo o sistema é construído."
};

//Fonte de Alimentação (PSU)
global.fonte_desc = {
    potencia_watts: 650,
    certificacao: "80 Plus Bronze",
    descricao_tecnica: "A fonte de alimentação (PSU) converte a energia da tomada para alimentar todos os componentes. Seus 650W de potência são suficientes para suprir a demanda da CPU e GPU. A certificação '80 Plus Bronze' garante uma boa eficiência energética, desperdiçando menos energia como calor."
};