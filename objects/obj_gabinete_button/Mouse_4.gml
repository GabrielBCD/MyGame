if (visible) {
	if global.tornon == false and alarm_get(0) == -1 {
		global.powered = true
		alarm[0] = 120
	}
	
	if global.tornon == true and alarm_get(0) == -1{
		global.powered = false
		alarm[0] = 120
	}	
}

if (obj_pc_controller_01.tutorial_setas == true){
	click_tutorial = true
}