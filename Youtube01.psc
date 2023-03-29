Algoritmo Youtube01
	Definir Nom Como Cadena
	Definir Tiempos Como Entero
	Definir selfil, llencol Como Entero
	Definir llenom Como Entero
	Dimension Nom[5]
	Dimension Tiempos[5,4]
	para llenom = 0 Hasta 4 Hacer
		Escribir "ingrese nombre del corredor #", llenom
		Leer Nom[llenom]
	FinPara
	Para selfil =0 Hasta 4 Hacer
		Para llencol = 0 Hasta 2 Hacer
			Escribir "ingrese el tiempo #", llencol
			Leer Tiempos[selfil, llencol]
		FinPara
	FinPara
	
	Definir mostrarFilas, mostrarColumnas Como Entero
	Para mostrarFilas = 0 Hasta 4 Hacer
		Escribir "tiempos del corredor: " Nom[mostrarFilas]
		Para mostrarColumnas = 0 Hasta 2 Hacer
			Escribir "tiempo #", mostrarColumnas, " = ", Tiempos[mostrarFilas, mostrarColumnas]
		FinPara
	FinPara
FinAlgoritmo
