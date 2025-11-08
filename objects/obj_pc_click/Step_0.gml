var _desabilitadores = instance_exists(obj_dialogo_npc) or instance_exists(obj_mochila)

if (!_desabilitadores) {
  visible = true	
} else {
  visible = false	
}