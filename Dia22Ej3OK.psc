Algoritmo Dia22Ej3
	Definir M,N,i,j, suma Como Entero
	Escribir "ingrese la cardinalidad de M y N para la matriz"
	Leer M, N
	Dimension original(M,N)
	Definir original Como Real
	
	para i=0 Hasta M-1
		para J=0 Hasta N-1
			original(i,j)=Aleatorio(1,100)
		FinPara
	FinPara
	suma=0
	Para i=0 hasta M-1 Con Paso 1 Hacer
		para j=0 Hasta N-1 Con Paso 1 Hacer
			suma = suma + original(i,j)
		FinPara
	FinPara
	imprimeMatriz(original,M,N)
	Escribir " "
	Escribir "La suma de los elementos de la matriz es: ", suma
FinAlgoritmo

SubProceso imprimeMatriz(matriz, M,N)
	Definir i,j Como Entero
	para i=0 Hasta M-1
		Para j=0 Hasta N-1
			Escribir matriz(i,j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso