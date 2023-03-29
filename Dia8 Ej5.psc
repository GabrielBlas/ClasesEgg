Algoritmo media_numeros
	Definir numero, contador, suma_pares, suma_impares como entero
	contador <- 0
	suma_pares <- 0
	suma_impares <- 0
	Mientras (contador < 10) Hacer
		Escribir "Ingrese un numero entero:"
		Leer numero
		Si (numero mod 2 = 0) Entonces
			suma_pares <- suma_pares + numero
		Sino
			suma_impares <- suma_impares + numero
		FinSi
		contador <- contador + 1
	FinMientras
	
	Escribir "La media de los números pares es: ", suma_pares / contador
	Escribir "La media de los números impares es: ", suma_impares / contador
FinAlgoritmo