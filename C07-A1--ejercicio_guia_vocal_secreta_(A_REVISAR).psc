Algoritmo VocalSecreta
	
	Definir vocal Como Caracter
	Escribir "Ingrese una vocal"
	Leer vocal
	
	Mientras vocal <> "a" O vocal <> "e" O vocal <> "i" O vocal <> "o" O vocal <> "u"
		Escribir "La letra insertada no es una vocal"
		Leer vocal
		
		Mientras vocal <> "u"
			Escribir "Ingrese otra vocal"
			Leer vocal
		FinMientras
				
	FinMientras
	
	Escribir "Usted ingresó la vocal correcta"
	
FinAlgoritmo
