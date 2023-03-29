Algoritmo Final
	Definir calculadora Como Entero
	Definir cadena1, cadena2 Como Caracter
	Definir diagonal3D1, diagonal3D2 Como Entero
	Dimension calculadora(3, 3, 3)
	cadena1 = "789090362"
	cadena2 = "484529837"
	inicializarMatriz(calculadora)
	llenarMatriz_Z0(calculadora, cadena1)
	llenarMatriz_Z1(calculadora, cadena2)
	llenarMatriz_Z2(calculadora)
	imprimirMatriz(calculadora)
	diagonal3D1 = calculadora(0, 2, 0)*calculadora(1, 1,1)*calculadora(2, 0, 2)
	diagonal3D2 = calculadora(0, 0, 0)*calculadora(1, 1,1)*calculadora(2, 2, 2)
	Escribir "La multiplicación de los elementos de la diagonal 3D 1 es ", diagonal3D1
	Escribir "La multiplicación de los elementos de la diagonal 3D 2 es ",	diagonal3D2
FinAlgoritmo

Funcion llenarMatriz_Z0(matriz, cadena)
	Definir i,j,contador Como Entero
	contador=0
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			matriz[0,i,j]= ConvertirANumero(Subcadena(cadena,contador,contador))
			contador=contador+1
		FinPara
	FinPara
FinFuncion

Funcion  llenarMatriz_Z1(matriz, cadena)
	Definir i,j,contador Como Entero
	contador=0
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Hacer
			matriz[1,i,j]= ConvertirANumero(Subcadena(cadena,contador,contador))
			contador=contador+1
		FinPara
	FinPara
FinFuncion

Funcion  llenarMatriz_Z2(matriz)
	Definir i,j,contador Como Entero
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			matriz[2,i,j]=matriz[0,i,j] * matriz[1,i,j]
		FinPara
	FinPara
FinFuncion

Funcion  inicializarMatriz(matriz)
	Definir k,i,j,contador Como Entero
	Para k=0 Hasta 2 Hacer
		Para i=0 Hasta 2 Hacer
			Para j=0 Hasta 2 Hacer
				matriz[k,i,j]=0
			FinPara
		FinPara
	FinPara
FinFuncion

Funcion imprimirMatriz(matriz)
	Definir k,i,j,contador Como Entero
	Para k=0 Hasta 2 Hacer
		Para i=0 Hasta 2 Hacer
			Para j=0 Hasta 2 Hacer
				Escribir Sin Saltar matriz[k,i,j] " ";
			FinPara
			Escribir "";
		FinPara
		Escribir "";
		Escribir "";
	FinPara
FinFuncion