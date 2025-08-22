// Define o estado inicial dos componentes. 
// Altere para false para simular a ausência do componente

if (global.state_pc == "GABINETE_F") {
	if (global.powered){
		if (global.hd){
			
		} else {
			
		}	
	} else {
		
	}
}	

if (global.state_pc == "GABINETE_LT") {

	// A lógica visual aqui depende apenas da presença da Placa-Mãe.
	
	if (global.board) {
		// Lógica para quando a Placa-Mãe ESTÁ instalada.
		obj_gabinete.image_index = 0
		
	} else {
		// Lógica para quando a Placa-Mãe NÃO ESTÁ instalada.
		obj_gabinete.image_index = 1
	}
}

if (global.state_pc == "GABINETE_T") {

	// A lógica visual depende da presença da Placa-Mãe, GPU e Fonte.
	
	if (global.board) {
	
		if (global.gpu) {
		
			if (global.power) {
				// Lógica para: Placa-Mãe, GPU e Fonte VISÍVEIS na traseira.
				obj_gabinete.image_index = 0;
			} else {
				// Lógica para: Placa-Mãe e GPU VISÍVEIS (sem a fonte).
				obj_gabinete.image_index = 1;
			}
			
		} else { // SEM GPU
		
			if (global.power) {
				// Lógica para: Placa-Mãe e Fonte VISÍVEIS (sem a GPU).
				obj_gabinete.image_index = 2;
			} else {
				// Lógica para: Apenas a Placa-Mãe VISÍVEL na traseira.
				obj_gabinete.image_index = 3;
			}
		}
		
	} else { // SEM PLACA MÃE
	
		if (global.gpu) {
		
			if (global.power) {
				// Lógica para: GPU e Fonte VISÍVEIS (sem a placa-mãe).
				obj_gabinete.image_index = 4;
			} else {
				// Lógica para: Apenas a GPU VISÍVEL (sem placa-mãe e fonte).
				obj_gabinete.image_index = 5;
			}
			
		} else { // SEM GPU
		
			if (global.power) {
				// Lógica para: Apenas a Fonte VISÍVEL.
				obj_gabinete.image_index = 6;
			} else {
				// Lógica para: Traseira do gabinete VAZIA.
				obj_gabinete.image_index = 7;
			}
		}
	}
}

// Verifica se o estado atual é o gabinete de ladinho
if global.state_pc == "GABINETE_LF" {
	
	// --- CENÁRIO 1: Placa-mãe ESTÁ no gabinete ---
	if (global.board == true) {
		
		// A validação começa pela CPU, pois o Cooler depende dela.
		if (global.cpu) {
			
			if (global.cooler) {
				// --- CPU e COOLER presentes ---
				if (global.ram) {
					if (global.gpu) {
						if (global.power and global.hd) { 
							/* Lógica para: MB, CPU, Cooler, RAM, GPU, Fonte, HD (COMPLETO) */
							obj_gabinete.image_index = 8
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) { 
							/* Lógica para: MB, CPU, Cooler, RAM, GPU, Fonte */
							obj_gabinete.image_index = 8
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) {
							/* Lógica para: MB, CPU, Cooler, RAM, GPU, HD */
							obj_gabinete.image_index = 8
							obj_gabinete_aux.image_index = 5
							}
						else { 
							/* Lógica para: MB, CPU, Cooler, RAM, GPU */
							obj_gabinete.image_index = 8
							obj_gabinete_aux.image_index = 0
							}
					} else { // SEM GPU
						if (global.power and global.hd) { 
							/* Lógica para: MB, CPU, Cooler, RAM, Fonte, HD */
							obj_gabinete.image_index = 7
							obj_gabinete_aux.image_index = 1							
							}
						else if (global.power) { 
							/* Lógica para: MB, CPU, Cooler, RAM, Fonte */
							obj_gabinete.image_index = 7
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) {
							/* Lógica para: MB, CPU, Cooler, RAM, HD */
							obj_gabinete.image_index = 7
							obj_gabinete_aux.image_index = 5
							}
						else {
							/* Lógica para: MB, CPU, Cooler, RAM */
							obj_gabinete.image_index = 7
							obj_gabinete_aux.image_index = 0
							}
					}
				} else { // SEM RAM
					// (Lógica anterior para CPU, Cooler, etc. se encaixa aqui)
					if (global.gpu) {
						if (global.power and global.hd) {
							/* Lógica para: MB, CPU, Cooler, GPU, Fonte, HD */
							obj_gabinete.image_index = 6
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) {
							/* Lógica para: MB, CPU, Cooler, GPU, Fonte */
							obj_gabinete.image_index = 6
							obj_gabinete_aux.image_index = 2 
							}
						else if (global.hd) { 
							/* Lógica para: MB, CPU, Cooler, GPU, HD */ 
							obj_gabinete.image_index = 6
							obj_gabinete_aux.image_index = 5
							}
						else {
							/* Lógica para: MB, CPU, Cooler, GPU */
							obj_gabinete.image_index = 6
							obj_gabinete_aux.image_index = 0
							}
					} else { // SEM GPU
						if (global.power and global.hd) {
							/* Lógica para: MB, CPU, Cooler, Fonte, HD */
							obj_gabinete.image_index = 9
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) {
							/* Lógica para: MB, CPU, Cooler, Fonte */
							obj_gabinete.image_index = 9
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) {
							/* Lógica para: MB, CPU, Cooler, HD */
							obj_gabinete.image_index = 9
							obj_gabinete_aux.image_index = 5
							}
						else {
							/* Lógica para: MB, CPU, Cooler */
							obj_gabinete.image_index = 9
							obj_gabinete_aux.image_index = 0
							}
					}
				}
			} else { // SEM COOLER
				if (global.ram) {
					if (global.gpu) {
						if (global.power and global.hd) {
							/* Lógica para: MB, CPU, RAM, GPU, Fonte, HD */
							obj_gabinete.image_index = 2
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) {
							/* Lógica para: MB, CPU, RAM, GPU, Fonte */
							obj_gabinete.image_index = 2
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) {
							/* Lógica para: MB, CPU, RAM, GPU, HD */
							obj_gabinete.image_index = 2
							obj_gabinete_aux.image_index = 5
							}
						else {
							/* Lógica para: MB, CPU, RAM, GPU */
							obj_gabinete.image_index = 2
							obj_gabinete_aux.image_index = 0
							}
					} else { // SEM GPU
						if (global.power and global.hd) {
							/* Lógica para: MB, CPU, RAM, Fonte, HD */
							obj_gabinete.image_index = 5
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) {/* Lógica para: MB, CPU, RAM, Fonte */
							obj_gabinete.image_index = 5
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) {
							/* Lógica para: MB, CPU, RAM, HD */
							obj_gabinete.image_index = 5
							obj_gabinete_aux.image_index = 5
							}
						else {
							/* Lógica para: MB, CPU, RAM */
							obj_gabinete.image_index = 5
							obj_gabinete_aux.image_index = 0
							}
					}
				} else { // SEM RAM
					// (Lógica anterior para CPU, sem Cooler, etc. se encaixa aqui)
					if (global.gpu) {
						if (global.power and global.hd) {
							/* Lógica para: MB, CPU, GPU, Fonte, HD */
							obj_gabinete.image_index = 4
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) { 
							/* Lógica para: MB, CPU, GPU, Fonte */
							obj_gabinete.image_index = 4
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) { 
							/* Lógica para: MB, CPU, GPU, HD */
							obj_gabinete.image_index = 4
							obj_gabinete_aux.image_index = 5
							}
						else { 
							/* Lógica para: MB, CPU, GPU */
							obj_gabinete.image_index = 4
							obj_gabinete_aux.image_index = 0
							}
					} else { // SEM GPU
						if (global.power and global.hd) { 
							/* Lógica para: MB, CPU, Fonte, HD */
							obj_gabinete.image_index = 3
							obj_gabinete_aux.image_index = 1
							}
						else if (global.power) { 
							/* Lógica para: MB, CPU, Fonte */
							obj_gabinete.image_index = 3
							obj_gabinete_aux.image_index = 2
							}
						else if (global.hd) { 
							/* Lógica para: MB, CPU, HD */
							obj_gabinete.image_index = 3
							obj_gabinete_aux.image_index = 5
							}
						else { 
							/* Lógica para: MB, CPU */
							obj_gabinete.image_index = 3
							obj_gabinete_aux.image_index = 0
							}
					}
				}
			}
			
		} else { // SEM CPU (e, consequentemente, sem Cooler)
			if (global.ram) {
				if (global.gpu) {
					if (global.power and global.hd) {
						/* Lógica para: MB, RAM, GPU, Fonte, HD */
						obj_gabinete.image_index = 11
						obj_gabinete_aux.image_index = 1
						}
					else if (global.power) {
						/* Lógica para: MB, RAM, GPU, Fonte */
						obj_gabinete.image_index = 11
						obj_gabinete_aux.image_index = 2
						}
					else if (global.hd) {
						/* Lógica para: MB, RAM, GPU, HD */
						obj_gabinete.image_index = 11
						obj_gabinete_aux.image_index = 5
						}
					else {
						/* Lógica para: MB, RAM, GPU */
						obj_gabinete.image_index = 11
						obj_gabinete_aux.image_index = 0
						}
				} else { // SEM GPU
					if (global.power and global.hd) {
						/* Lógica para: MB, RAM, Fonte, HD */
						obj_gabinete.image_index = 12
						obj_gabinete_aux.image_index = 1
						}
					else if (global.power) {
						/* Lógica para: MB, RAM, Fonte */
						obj_gabinete.image_index = 12
						obj_gabinete_aux.image_index = 2
						}
					else if (global.hd) {
						/* Lógica para: MB, RAM, HD */
						obj_gabinete.image_index = 12
						obj_gabinete_aux.image_index = 5
						}
					else { 
						/* Lógica para: MB, RAM */
						obj_gabinete.image_index = 12
						obj_gabinete_aux.image_index = 0
						}
				}
			} else { // SEM RAM
				// (Lógica anterior para Placa-mãe sem CPU, etc. se encaixa aqui)
				if (global.gpu) {
					if (global.power and global.hd) {
						/* Lógica para: MB, GPU, Fonte, HD */ 
						obj_gabinete.image_index = 10
						obj_gabinete_aux.image_index = 1
						}
					else if (global.power) {
						/* Lógica para: MB, GPU, Fonte */ 
						obj_gabinete.image_index = 10
						obj_gabinete_aux.image_index = 2
						}
					else if (global.hd) {
						/* Lógica para: MB, GPU, HD */ 
						obj_gabinete.image_index = 10
						obj_gabinete_aux.image_index = 5
						}
					else {
						/* Lógica para: MB, GPU */ 
						obj_gabinete.image_index = 10
						obj_gabinete_aux.image_index = 0
						}
				} else { // SEM GPU
					if (global.power and global.hd) { 
						/* Lógica para: MB, Fonte, HD */
						obj_gabinete.image_index = 1
						obj_gabinete_aux.image_index = 1
						}
					else if (global.power) { 
						/* Lógica para: MB, Fonte */ 
						obj_gabinete.image_index = 1
						obj_gabinete_aux.image_index = 2
						}
					else if (global.hd) { 
						/* Lógica para: MB, HD */
						obj_gabinete.image_index = 1
						obj_gabinete_aux.image_index = 5
						}
					else { 
						/* Lógica para: Apenas a Placa-mãe */ 
						obj_gabinete.image_index = 1
						obj_gabinete_aux.image_index = 0
						}
				}
			}
		}
		
	// --- CENÁRIO 2: Placa-mãe NÃO está no gabinete ---
	} else {
		// Sem placa-mãe, apenas componentes soltos.
		if (global.power and global.hd and global.gpu and global.ram) {
			/* Lógica para: Fonte, HD, GPU e RAM soltos */
			
			
			}
		else if (global.power and global.hd and global.gpu) { 
			/* Lógica para: Fonte, HD e GPU soltos */ 
			
			
			}
		else if (global.power and global.hd and global.ram) { 
			/* Lógica para: Fonte, HD e RAM soltos */ 
			
			
			}
		else if (global.power and global.gpu and global.ram) {
			/* Lógica para: Fonte, GPU e RAM soltos */ 
			
			
			}
		else if (global.hd and global.gpu and global.ram) { 
			/* Lógica para: HD, GPU e RAM soltos */ 
			
			
			}
		else if (global.power and global.hd) { 
			/* Lógica para: Fonte e HD soltos */
			obj_gabinete.image_index = 0
			obj_gabinete_aux.image_index = 8
			}
		else if (global.power and global.gpu) { 
			/* Lógica para: Fonte e GPU soltas */
			
			
			}
		else if (global.power and global.ram) { 
			/* Lógica para: Fonte e RAM soltas */ 
			
			
			}
		else if (global.hd and global.gpu) { 
			/* Lógica para: HD e GPU soltos */
			
			
			}
		else if (global.hd and global.ram) { 
			/* Lógica para: HD e RAM soltos */
			
			
			}
		else if (global.gpu and global.ram) { 
			/* Lógica para: GPU e RAM soltas */ 
			
			
			}
		else if (global.power) { 
			/* Lógica para: Apenas a Fonte solta */ 
			obj_gabinete.image_index = 0
			obj_gabinete_aux.image_index = 3

			}
		else if (global.hd) { 
			/* Lógica para: Apenas o HD solto */ 
			obj_gabinete.image_index = 0
			obj_gabinete_aux.image_index = 7
			}
		else if (global.gpu) {
			/* Lógica para: Apenas a GPU solta */
			
			
			}
		else if (global.ram) {
			/* Lógica para: Apenas a RAM solta */
			
			
			}
		else {
			/* Lógica para: Gabinete vazio */
			obj_gabinete.image_index = 0
			obj_gabinete_aux.image_index = 0
			}
	}
}
