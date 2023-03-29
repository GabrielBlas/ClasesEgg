Algoritmo Dia18Ej2
	definir i Como Entero
	definir vector, suma, mult, resta Como Real
	dimension vector[10]
	mult<- 1
	resta <- 0
	suma <- 0
	para i <- 0 hasta 9 Hacer
		leer vector(i)
	FinPara
	
	para i <-0 hasta 9 hacer 
		suma <- suma + vector(i)
		resta <- resta - vector(i)
		mult <- mult * vector(i)
	FinPara
	
	escribir "La suma de los elementos del arreglo es: ", suma
	escribir "La resta de los elementos del arreglo es: ", resta
	escribir "La multiplicacion de los elementos del arreglo es: ", mult
FinAlgoritmo