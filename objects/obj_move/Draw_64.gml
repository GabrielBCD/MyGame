if (selected_draw){
	draw_text(10,10, $"Nome: {name}");
	draw_text(10,30, $"Description: {desc}");		
}

draw_text(10,50, "X: " + string(x));
draw_text(10,70, "Y: " + string(y));
draw_text(10,90, "State: " + string(state));