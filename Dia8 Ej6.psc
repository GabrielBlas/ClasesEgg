Algoritmo suma_numeros_pares
	Definir N, contador, acumulador como Entero
	acumulador <- 0
	contador <- 0
	Escribir "Ingrese el valor de N:"
	Leer N
	Mientras (contador < N) Hacer
		Si (contador mod 2 = 0) Entonces
			acumulador <- acumulador + (contador*2)
		FinSi
		contador <- contador + 1
	FinMientras
	
	Escribir "La suma de los ", N, " primeros números pares es: ", acumulador
FinAlgoritmo