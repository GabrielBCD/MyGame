var _desabilitadores = instance_exists(obj_dialogo_npc) or instance_exists(obj_mochila) or instance_exists(obj_janela_simples)

if (!_desabilitadores) {
  visible = true	
} else {
  visible = false	
}