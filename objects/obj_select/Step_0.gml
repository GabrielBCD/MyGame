if (layer_sequence_exists(layer,myanimation)) {
	visible = false;	
}

if (layer_sequence_is_finished(myanimation)){
	layer_sequence_destroy(myanimation)
	visible = true;
}

x = mymove.x
y = mymove.y
mymove.depth = self.depth

myclose.x = mymove.x
myclose.y = mymove.y
myclose.depth = self.depth

myminimize.x = mymove.x
myminimize.y = mymove.y
myminimize.depth = self.depth

mymove.visible = obj_credits.visible;
myclose.visible = obj_credits.visible;
myminimize.visible = obj_credits.visible;