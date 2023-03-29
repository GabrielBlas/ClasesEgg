//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al arre-
//glo.

Algoritmo Ej2Arreglos
	definir i Como Entero
	definir vector, suma, mult, resta Como Real
	dimension vector[10]
	mult<- 1
	resta <- 0
	suma <- 0
	para i <- 1 hasta 10 Hacer
		leer vector(i)
	FinPara
	
	para i <-1 hasta 10 hacer 
		suma <- suma + vector(i)
		resta <- resta - vector(i)
		mult <- mult * vector(i)
	FinPara
	
	escribir "La suma de los elementos del arreglo es: ", suma
	escribir "La resta de los elementos del arreglo es: ", resta
	escribir "La multiplicacion de los elementos del arreglo es: ", mult
FinAlgoritmo
