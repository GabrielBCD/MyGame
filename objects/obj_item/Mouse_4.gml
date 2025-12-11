// No Evento Mouse > Left Pressed do obj_item

// 1. Destrói qualquer janela antiga que esteja aberta
if (instance_exists(obj_janela_simples)) {
    instance_destroy(obj_janela_simples);
}

// 2. Cria a nova janela simples
instance_create_layer(0, 0, "Instances", obj_janela_simples);
