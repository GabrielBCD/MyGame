#region //Setas e srites

if (global.state_pc != "PC") {
	instance_activate_object(click_04)
}

switch (global.state_pc){
	case "PC":
		instance_activate_object(monitor);
		instance_activate_object(gabinete);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(click_04);
		instance_deactivate_object(click_back);
		instance_deactivate_object(gabinete_aux);
		
		monitor.sprite_index = spr_monitor;
		gabinete.sprite_index = spr_gabinete;
		
		gabinete.x = room_width/2 + 50;
		gabinete.y = room_height/2;
		
		monitor.x = room_width/2 - 30
		monitor.y = room_height/2
		break;
	case "MONITOR":
		instance_activate_object(monitor);
		instance_activate_object(click_01);
	
		instance_deactivate_object(gabinete);
		instance_deactivate_object(click_back);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
	
		click_01.action = function(){
			global.state_pc = "MONITOR_T";
		}
		
		monitor.sprite_index = spr_monitor_frontal;
		break;
	case "MONITOR_T":
		instance_activate_object(click_back);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		click_back.action = function(){
			global.state_pc = "MONITOR";
		}
		
		monitor.sprite_index = spr_monitor_traseiro;	
		break;
	case "GABINETE_LF":
		instance_activate_object(gabinete);
		instance_activate_object(gabinete_aux);
		instance_activate_object(click_01);
		instance_activate_object(click_02);
		instance_activate_object(click_03);
		
		instance_deactivate_object(monitor);
		instance_deactivate_object(click_back);
		
		click_01.action = function(){
			global.state_pc = "GABINETE_LT";
		}
		click_02.action = function(){
			global.state_pc = "GABINETE_T";
		}
		click_03.action = function(){
			global.state_pc = "GABINETE_F";
		}
		
		gabinete.sprite_index = spr_lateral_frontal;
		
		break;
	case "GABINETE_T":
		instance_activate_object(click_back);
		
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_traseira;
		break;
	case "GABINETE_F":
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);
		
		instance_activate_object(click_back);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_frontal;
		break;
	case "GABINETE_LT":
		instance_deactivate_object(click_01);
		instance_deactivate_object(click_02);
		instance_deactivate_object(click_03);
		instance_deactivate_object(gabinete_aux);

		instance_activate_object(click_back);
		
		click_back.action = function(){
			global.state_pc = "GABINETE_LF";
		}
		
		gabinete.sprite_index = spr_lateral_traseira;
		break;
}

#endregion

#region //Condições de Funcionamento das peças

//condição de ligar temporária
global.tornon = (global.board == true and global.cpu == true and global.cooler == true and global.ram == true and global.gpu == true and global.power == true and global.hd == true);

//bloquear controle de peças enquanto ligado

//Bloquear controles em outros estados
if (global.state_pc == "PC" or global.state_pc == "MONITOR" or global.state_pc == "MONITOR_T") {
	if (instance_exists(obj_placa_mae)) { obj_placa_mae.visible = false; }
	if (instance_exists(obj_cpu)) { obj_cpu.visible = false; }
	if (instance_exists(obj_cooler)) { obj_cooler.visible = false; }
	if (instance_exists(obj_gpu)) { obj_gpu.visible = false; }
	if (instance_exists(obj_ram)) { obj_ram.visible = false; }
	if (instance_exists(obj_hd)) { obj_hd.visible = false; }
	if (instance_exists(obj_power)) { obj_power.visible = false; }
	
} else {
	if (instance_exists(obj_placa_mae)) { obj_placa_mae.visible = true; }
	if (instance_exists(obj_cpu)) { obj_cpu.visible = true; }
	if (instance_exists(obj_cooler)) { obj_cooler.visible = true; }
	if (instance_exists(obj_gpu)) { obj_gpu.visible = true; }
	if (instance_exists(obj_ram)) { obj_ram.visible = true; }
	if (instance_exists(obj_hd)) { obj_hd.visible = true; }
	if (instance_exists(obj_power)) { obj_power.visible = true; }
}
	
#endregion
