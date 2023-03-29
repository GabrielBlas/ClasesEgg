Algoritmo Dia22Ej3
	Definir M,N,i,j, suma,fila Como Entero
	M=4; N=4
	Dimension original(M,N)
	Definir original Como Real
	
	para i=0 Hasta M-1
		para J=0 Hasta N-1
			original(i,j)=Aleatorio(7,68)
		FinPara
	FinPara
	imprimeMatriz(original,M,N)
	Escribir " "
	Escribir " "
	Escribir "Introduzca una fila que desea ver su suma (1 a ", M, "): "
	Leer fila
	fila=fila-1
	Escribir "la suma de la fila ",fila+1, " es: ", sumaFila(original, fila, N)
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

Funcion  retorno=sumaFila(matriz, fila, N)
	Definir retorno,i, suma Como Entero
	suma = 0
	para i=0 Hasta N-1
		suma = suma + matriz(fila, i)
	FinPara
	retorno=suma
FinFuncion
