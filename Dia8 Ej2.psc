Algoritmo sin_titulo
	Definir numero, maximo, minimo, acumulador, contador Como Entero
	maximo <- 0
	minimo <- 9999999
	acumulador <- 0
	contador <- 0
	
	Escribir "Ingrese números enteros. Para finalizar ingrese 0 (cero)"
	Leer numero
	
	Mientras (numero <> 0) Hacer
		Si (numero MOD 1 = 0) Entonces
			acumulador <- acumulador + numero
			contador <- contador + 1
			Si numero > maximo Entonces
				maximo <- numero
			FinSi
			Si numero < minimo Entonces
				minimo <- numero
			FinSi
		Sino
			Escribir "Ingrese un numero entero"
		Fin Si
		Leer numero
	FinMientras
	
	Si contador <> 0 Entonces
		Escribir "El número máximo es: ", maximo
		Escribir "El número mínimo es: ", minimo
		Escribir "El promedio es: ", acumulador / contador
	Sino
		Escribir "No se ingresaron números"
	FinSi
FinAlgoritmo
