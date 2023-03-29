Algoritmo CalcularFactorial
	Definir numero, factorial, temp, i como Entero
	factorial <- 1
	temp <- 1
	Para numero = 1 Hasta 5 Hacer
		Para i = 1 hasta numero hacer
			temp <- temp * i
		FinPara
		Escribir "! " numero " = " temp " = " 
		temp <- 1
		Para i = 1 hasta numero -1 hacer
			Escribir factorial "*" (numero-i) " "
			factorial <- factorial * (numero-i)
		FinPara
		Escribir factorial
	FinPara
FinAlgoritmo
