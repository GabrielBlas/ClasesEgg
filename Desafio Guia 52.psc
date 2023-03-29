Algoritmo sin_titulo
	Definir matriz Como Caracter
	Definir posicion, i, j Como Entero
	
	Dimension matriz(9,12)
	Dimension posicion(12)
	
	Para i = 0 Hasta 11 Hacer
		posicion(i) = 0
	FinPara
	
	inicializarMatriz(matriz)
	
	agregarPalabra(matriz)
	
	imprimirMatriz(matriz)
	
	buscar(matriz, posicion)
	
	acomodar(matriz, posicion)
	
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
				posicion(j) = j	
				contador = 1 
				Escribir Sin Saltar posicion(j) ", "
			FinSi
		FinPara
	FinPara
FinSubProceso

Subproceso imprimirMatriz(matriz Por Referencia)
	Definir i , j Como entero 
	Para i = 0 Hasta 8 Con Paso 1 Hacer
		Para j = 0 Hasta 11 Con paso 1 Hacer 
			Escribir sin saltar " " , matriz(i,j) , " "
		FinPara
		Escribir " "
	FinPara
FinSubProceso

SubProceso acomodar(matriz Por Referencia posicion Por Referencia)
	Definir i, j, e Como Entero
	
	e = 0
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(1))
		matriz(1,j) = Subcadena("MATRIX",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(2))
		matriz(2,j) = Subcadena("PROGRAMA",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(3))
		matriz(3,j) = Subcadena("SUBPROGRAMA",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(4))
		matriz(4,j) = Subcadena("SUBPROCESO",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(5))
		matriz(5,j) = Subcadena("VARIABLE",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(6))
		matriz(6,j) = Subcadena("ENTERO",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(7))
		matriz(7,j) = Subcadena("PARA",e,e)
		e = e + 1
	FinPara
	
	Para j = 0 Hasta 11 Hacer
		j = j  + (posicion(0) - posicion(8))
		matriz(8,j) = Subcadena("MIENTRAS",e,e)
		e = e + 1
	FinPara
	
	Para i = 0 Hasta 8 Con Paso 1 Hacer
		Para j = 0 Hasta 11 Con paso 1 Hacer 
			Escribir sin saltar " " , matriz(i,j) , " "
		FinPara
		Escribir " "
	FinPara
	
FinSubProceso
