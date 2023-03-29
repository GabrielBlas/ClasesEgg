Algoritmo Dia9Ej2
	Definir num, maximo, minimo, acumulador, contador Como Entero
	maximo <- 0
	minimo <- 9999999
	acumulador <- 0
	contador <- 0
	
	Escribir "Inrese numeros enteros, para terminar precione 0 "
	
	Leer num
	
	Mientras (num <> 0) Hacer
		si (num mod 1 = 0) Entonces
			acumulador <- acumulador + num
			contador <- contador + 1
			si num > maximo Entonces
				maximo <- num
			FinSi
			si num < minimo Entonces
				minimo <- num
			FinSi
		SiNo
			Escribir "el numero no es entero"
		FinSi
		leer num
	FinMientras
	
	si contador <> 0 Entonces
		Escribir "el numero maximo es: ", maximo
		Escribir "el numero minimo es: ", minimo
		Escribir "el promedio es de: ', acumulador / contador
	SiNo
		Escribir "no se ingresaron numeros"
	FinSi
	
FinAlgoritmo
