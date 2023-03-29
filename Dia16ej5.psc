SubProceso convertirEspaciado(texto)
	Definir i, n como entero
	n <- Longitud(texto)
	Para i <- 0 hasta n hacer
		Escribir Sin Saltar Subcadena(texto, i, i), " "
	FinPara
FinSubProceso

Algoritmo Dia16Ej5
	Definir texto como cadena
	Escribir "Ingrese una frase o palabra: "
	Leer texto
	convertirEspaciado(texto)
FinAlgoritmo