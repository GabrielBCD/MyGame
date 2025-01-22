fade_alpha = 1;
fade_color = c_black;
fade_speed = 0.005;
fade_room = noone;
depth = 1002;

alarme = false;
npc = obj_NPC_recepcionista;

animation_01 = layer_sequence_create("Instances", npc.x, npc.y -30, seq_interroga)
layer_sequence_pause(animation_01);

animation_02 = layer_sequence_create("Instances", npc.x, npc.y, seq_pulo)
layer_sequence_pause(animation_02);

state = 0;
msg_state_0 = ["Hoje é o seu primeiro dia como estagiário não faça besteira..."];
msg_state_2 = [
	"Olá!",
	"Você é o escr digo ESTÁGIADO novo, não é?",
	"Venha, vou leva-lo até a casa do krl seu merda"]

criar_dialogo_interacao(msg_state_0)