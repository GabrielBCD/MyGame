if (layer_sequence_exists(layer,myanimation)) {
	visible = false;	
}

if (layer_sequence_is_finished(myanimation)){
	layer_sequence_destroy(myanimation)
	visible = true;
}

//x = mymove.x
//y = mymove.y
//mymove.depth = self.depth

myclose.x = x
myclose.y = y
//myclose.depth = self.depth

myminimize.x = x
myminimize.y = y
myminimize.depth = self.depth

//mymove.visible = obj_folder.visible;
myclose.visible = obj_folder.visible;
myminimize.visible = obj_folder.visible;