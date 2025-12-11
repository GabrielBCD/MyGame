/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

interacao = 0;

action = function(){
	// Se a janela já existe, fecha-a. Se não, cria-a.
    if (instance_exists(obj_estoque)) {
        instance_destroy(obj_estoque);
    } else {
        instance_create_layer(0, 0, "Instances", obj_estoque);
    }
}

