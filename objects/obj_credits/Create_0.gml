myclose = instance_create_layer(996,240,"Instances",obj_credits_close)
myclose.visible = true;
myclose.depth = self.depth - 10

myclose.action = function(){
	room_goto(rm_inicial)
	show_debug_message("click close credits")
}