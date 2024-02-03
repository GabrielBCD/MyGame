
repeat(abs(hspd)){
	if(!place_meeting(x + sign(hspd), y,obj_colisor_1)){
		x += sign(hspd);
	} else {
		hspd = 0
	}
}
repeat(abs(vspd)){
	if(!place_meeting(x, y + sign(vspd),obj_colisor_1)){
		y += sign(vspd);
	}  else {
		vspd = 0
	}
}