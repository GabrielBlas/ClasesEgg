Algoritmo Dia7EkEx3
	Definir num1, suma, contar, promedio Como real
	escribir " escriba numeros a promediar, para promediar coloca -1"
	leer num1
	
	suma = 0
	contar = 0
	
	Mientras num1 <> (-1) Hacer
		suma = suma + num1
		contar = (contar + 1)
		
		leer num1
	FinMientras
	promedio = (suma) / (contar)
	Escribir "el promedio de tus numeros es: " promedio
FinAlgoritmo