Algoritmo Dia10Ej3
	Definir altura, cnum,i ,j Como Entero
	Escribir "Ingrese la altura de la escalera invertida: "
	Leer altura
	cnum=altura
	Para i <- 1 hasta altura Con Paso 1 Hacer
		Para j<-1 Hasta cnum Con Paso 1 Hacer
			Escribir Sin Saltar "*"
		FinPara
		cnum=cnum-1
		Escribir " "
	FinPara
FinAlgoritmo