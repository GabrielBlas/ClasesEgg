Algoritmo Dia26
	Definir matriz Como Caracter
	Definir posicion Como Entero
	Dimension matriz(9,12)
	Dimension posicion(9,12)
	inicializarMatriz(matriz)
	agregarPalabra(matriz)
	imprimirMatriz(matriz)
	buscar(matriz, posicion)
FinAlgoritmo

SubProceso inicializarMatriz(matriz Por Referencia)
	Definir i, j Como Entero
	
	Para i = 0 Hasta 8 Hacer
		Para j = 0 Hasta 11 Hacer
			matriz(i,j) = ""
		FinPara
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz Por Referencia)
	Definir j Como Entero
	Para j = 0 Hasta 11 Hacer
		matriz(0,j) = Subcadena("VECTOR",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(1,j) = Subcadena("MATRIX",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(2,j) = Subcadena("PROGRAMA",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(3,j) = Subcadena("SUBPROGRAMA",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(4,j) = Subcadena("SUBPROCESO",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(5,j) = Subcadena("VARIABLE",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(6,j) = Subcadena("ENTERO",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(7,j) = Subcadena("PARA",j,j)
	FinPara
	Para j = 0 Hasta 11 Hacer
		matriz(8,j) = Subcadena("MIENTRAS",j,j)
	FinPara
FinSubProceso

SubProceso buscar(matriz Por Referencia, posicion Por Referencia)
	Definir contador, repe, i, j Como Entero
	Para i = 0 Hasta 8 Hacer
		contador = 0
		Para j = 0 Hasta 11 Hacer
			Si matriz(i,j) = "R" y contador = 0 Entonces
				posicion(i,J) = j	
				contador = 1 
				Escribir Sin Saltar posicion(i,j) ", "
			FinSi
		FinPara
	FinPara
	Escribir ""
FinSubProceso

Subproceso imprimirMatriz(matriz Por Referencia)
	Definir i , j Como entero 
	Para i = 0 Hasta 8 Con Paso 1 Hacer
		Para j = 0 Hasta 11 Con paso 1 Hacer 
			Escribir sin saltar " " , matriz(i,j) , " "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso acomodar(matriz Por Referencia posicion Por Referencia)
FinSubProceso