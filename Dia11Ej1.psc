Algoritmo Ejercicio_Asteriscos
	Definir num, i, j Como Entero
	para i <- 1 hasta 5 Hacer
		Escribir "Ingrese un número comprendido entre 1 y 20: "
		Leer num
		Mientras num<1 o num>20 Hacer
			Escribir "Ingrese un número comprendido entre 1 y 20: "
			Leer num
		FinMientras
		para j<-1 hasta num Hacer
			Escribir Sin Saltar "*"
		FinPara
		Escribir " "
	FinPara
	Escribir " "
FinAlgoritmo
