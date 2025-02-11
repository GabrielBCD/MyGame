depth = 1002
npc = obj_npc_recepcionista;
start = true;

animation_01 = layer_sequence_create("Instances", npc.x, npc.y -30, seq_interroga);
layer_sequence_pause(animation_01);

animation_02 = layer_sequence_create("Instances", npc.x, npc.y, seq_pulo);
layer_sequence_pause(animation_02);

animation_03 = layer_sequence_create("Instances", obj_player.x, obj_player.y, seq_animacao);
layer_sequence_pause(animation_03);

fade = instance_create_layer(x,y,"Instances", obj_fade)
instance_deactivate_object(fade)

state = 0;
msg_state_0 = ["Hoje é o seu primeiro dia como estagiário não faça besteira..."];
msg_state_2 = [
	"Olá!",
	"Você é o escr digo ESTÁGIADO novo, não é?",
	"Venha, vou leva-lo até a o Samuel"]
	
msg_state_4_part_01 = [
	"Oi, Tudo Bem? Então esse aqui é o estagiário novo...",
	"Ensina as parada aí pra ele blz?"]
	
msg_state_4_part_02 = [
	"Eai meu man, suave?",
	"É o seguinte patrão, tu vai acessar o PC lá na salinha ali do lado e escolher um trabalho",
	"Aí dps tu que se vira"
]

criar_dialogo_interacao(msg_state_0)