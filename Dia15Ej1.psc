SubProceso intercambiarValores(A por referencia, B por referencia)
    Definir C Como Real
	C=A
	A=B
	B=C
FinSubProceso

Algoritmo Dia15Ej1
	Definir A, B Como Entero
	Escribir "Ingrese el valor de la variable A:"
	Leer A
	Escribir "Ingrese el valor de la variable B:"
	Leer B
	Escribir " "
	intercambiarValores(A,B)
	Escribir "A: ", A, " ~ ", "B: ",B
	Escribir ""
FinAlgoritmo