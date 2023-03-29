Algoritmo Dia7EjEx2
	// Definir e inicializar variables
	Definir suma,limite,num Como Entero
	Escribir "ingrese el valor limite"
	Leer limite
	Escribir "ingrese otro valor"
	leer suma
	
	Mientras suma < limite Hacer
		Escribir "ingrese otro numero"
		Leer num
		suma = suma + num
		
	FinMientras
	Escribir "la suma total es: " suma
	Escribir "Superaste el limite por: " suma - limite
	
FinAlgoritmo