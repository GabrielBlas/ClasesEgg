Algoritmo Dia7EjEx5
	Definir max, min, num, contar Como Real
	Escribir "ingrese un numero maximo"
	Leer max
	Escribir "ingrese un numero minimo"
	leer min
	escribir " ingrese un numero en medio de sus maximos y minimos"
	leer num
	contar = 0
	Mientras num > min y num < max Hacer
		contar = (contar +1)
		escribir "ingrese otro numero"
		leer num
	FinMientras
	Escribir "la cantidad de numeros es de :", contar
FinAlgoritmo
