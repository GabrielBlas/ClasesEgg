Algoritmo sin_titulo
	definir defectuosos, tornillos  como entero
	Escribir "ingrese la cantidad de tornillos defectuosos y sin defectos (en ese orden)"
	leer defectuosos, tornillos
	si defectuosos <= 200 y tornillos >= 10000
		escribir "grado 8"
	SiNo
		si defectuosos <= 200 entonces
			Escribir "grado 6"
		SiNo
			si tornillos >= 10000 entonces
				escribir "grado 7"
			SiNo
				escribir "grado 5"
			finsi
			
		FinSi
		
	FinSi
	
FinAlgoritmo
