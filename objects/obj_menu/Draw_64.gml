if (instance_exists(obj_folder)) {	
	draw_text(100, 30, "Diretorio:")
	draw_text(200, 30, obj_folder.depth)
}

if (instance_exists(obj_credits)) {
	draw_text(100, 50, "Bloco de Notas:")
	draw_text(240, 50, obj_credits.depth)
}