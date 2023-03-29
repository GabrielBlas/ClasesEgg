Algoritmo Encuentro28Video
	Definir M,N,i,j Como Entero
	
	Escribir "ingrese la cardinalidad de M y N para la matriz"
	Leer M, N
	Dimension original(m,n), transpuesta(N,M)
	Definir original, transpuesta Como Real
	
	para i=0 Hasta M-1
		para J=0 Hasta N-1
			Escribir "ingrese el valor del elemento [", i, ",",j, "]" Sin Saltar
			Leer original(i,j)
		FinPara
	FinPara
	imprimeMatriz(original, M, N)
	para i=0 Hasta M-1
		Para j=0 Hasta N-1
			transpuesta(j,i) = original(i,j)
		FinPara
	FinPara
	Imprimir "tamanio: ", (M*N), ". Matriz transpuesta:"
	imprimeMatriz(transpuesta, N,M)
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
	