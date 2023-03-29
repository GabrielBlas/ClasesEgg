SubProceso CalcularTemp(max,min)
	Definir media Como Real
	media <- (max + min) / 2
	Escribir "la temperatura promedio es: " ,media
FinSubProceso

Algoritmo Dia15Ej2
	Definir n, max, min, i Como Entero
	Escribir "ingresa los dias que deseas promediar"
	Leer n
	Para i <- 1 hasta n Hacer
		Escribir Sin Saltar "Temperatura Maxima del dia: ",i, ":"; Leer max
		Escribir Sin Saltar "Temperatura Minima del dia: ",i, ":"; Leer min
        CalcularTemp(max,min)
		Escribir " "
	FinPara
FinAlgoritmo
	