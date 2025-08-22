if (myobj.visible == false and alarm[0] == -1){
	myobj.visible = true;
	alarm[0] = 1
}

if (myobj.visible == true and alarm[0] == -1){
	myobj.visible = false;
	alarm[0] = 1
}