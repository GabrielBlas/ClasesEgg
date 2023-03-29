algoritmo Dia10Ej2
    definir n,nn,cant,i Como Entero
	Definir forma Como Caracter
	leer n
	
	cant = 0
	nn = n - 2
	forma = " * "
	
	Para i = 1 Hasta n
		Escribir Sin Saltar forma
	FinPara
	Escribir " "
	Hacer
		Escribir Sin Saltar forma
		Para i = 1 hasta nn
			Escribir Sin Saltar Concatenar(Subcadena(forma, 3, 3), "   ")
		FinPara
		Escribir Sin Saltar forma
		cant = cant + 1
		Escribir " "
	Mientras Que cant < nn
	
	Para i = 1 Hasta n
		Escribir Sin Saltar forma 
		
	FinPara
	Escribir " " 
FinAlgoritmo
