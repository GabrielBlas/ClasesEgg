Algoritmo Dia22Ej1
	Definir Num Como Real
	Definir i,j,F,n,C Como Entero
	C=3; F=3
	Dimension Num[F,C]
	n = 0
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			n = n + 1
			Escribir Sin Saltar "Ingrese el ", n , " número: ";	Leer Num[i,j]
		FinPara
	FinPara
	Escribir "La matriz ingresada es:"
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			Escribir Num[i,j]," "; sin saltar
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo