if (other.selected == 3){
	selected = 3;
	depth = other.depth - 1;
	x = lerp(x, other.x, 0.8);
	y = lerp(y, other.y, 0.8);
}