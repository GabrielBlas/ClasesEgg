Algoritmo sin_titulo
	Definir tablero como Cadena
	Dimension tablero[9,12]
	inicializarMatriz(tablero, 9, 12)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero, 9, 12)
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

SubProceso  inicializarMatriz(tablero, 9, 12)
	Definir i,j Como Entero;
	
	Para i = 0 Hasta 8 Hacer
		Para j = 0 Hasta 11 Hacer
			tablero[i,j] = "[*]"
		FinPara
	FinPara
FinSubProceso 

SubProceso  imprimirMatriz(tablero, 9, 12)
	Definir i,j Como Entero
	Para i = 0 Hasta 8 Hacer
		Para j = 0 Hasta 11 Hacer
			Imprimir Sin Saltar tablero[i,j]
		FinPara
		Escribir ""
	FinPara
FinSubProceso


SubProceso agregarPalabra(tablero, palabra, fila)
	Definir j Como Entero
	Para j = 0 Hasta 11 Hacer
			tablero[fila,j] = Subcadena(palabra,j,j)
	FinPara	
FinSubProceso

SubProceso aux = buscarR (tablero, filas, columnas)
	Definir aux,i,j Como Entero
	Para i = 0 Hasta filas Hacer
		aux = 0;
		Para j = 0 Hasta 11 Hacer
			Si tablero(i,j) == "r" Entonces
				Si aux == 0 Entonces
					aux = j
				FinSi
			FinSi
		FinPara
		FinPara
FinSubProceso

SubProceso acomodarPalabras(tablero,filas,columnas)
	Definir i,j,k,auxDistancia Como Entero
	Definir vectorAuxiliar Como Caracter
	Dimension vectorAuxiliar[12]
	 vectorAuxiliar[j] = tablero[i,k]
	Para i = 0 Hasta 8 Hacer
		vectorAuxiliar[j] = tablero[i,k]
		auxDistancia = buscarR(tablero,i,11)
		auxDistancia = 5 - auxDistancia
		Para k = 0 Hasta 10 Hacer
			vectorAuxiliar[j] = tablero[i,k]	
		FinPara
         Escribir vectorAuxiliar[i]
	FinPara
FinSubProceso	