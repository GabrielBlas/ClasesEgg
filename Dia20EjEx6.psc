Funcion resta <- diferenciaArreglo(vector Por Referencia)
	Definir i, min, max, diferencia Como Entero
	min <- vector[0]
	max <- vector[0]
	Para i <- 1 Hasta 3 Hacer
		Si vector[i] < min Entonces
			min <- vector[i]
		SiNo Si vector[i] > max Entonces
				max <- vector[i]
//				Escribir vector Sin Saltar
			FinSi
		FinSi
	FinPara
		diferencia <- max - min
		Escribir  diferencia
	Fin Funcion
	
     Algoritmo Dia20EjEx6
			Definir n, vector, i Como Entero
			Dimension vector[4]
			vector[0] = Aleatorio(1,100)
			vector[1] = Aleatorio(1,100)
			vector[2] = Aleatorio(1,100)
			vector[3] = Aleatorio(1,100)
			
			Para i <- 0 Hasta 3 Hacer
				Escribir " " vector[i] Sin Saltar
			FinPara
			Escribir ""
			Escribir "La diferencia entre el valores es: "
			Escribir diferenciaArreglo(vector)
FinAlgoritmo