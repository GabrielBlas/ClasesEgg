Algoritmo Dia22Ej2
	Definir f,c,n,x,matriz, contador Como Entero
	dimension matriz[5,5]
	contador=0
	para f=0 Hasta 4 Con Paso 1 Hacer
		para c=0 Hasta 4 Con Paso 1 Hacer
			matriz(f,c) = azar(9)
		FinPara
	FinPara
	Para f=0 Hasta 4 Con Paso 1 Hacer
		Para c=0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz(f,c)," " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir Sin Saltar "ingrese un numero"; Leer n
	para f=0 Hasta 4 Con Paso 1 Hacer
		para c=0 Hasta 4 Con Paso 1 Hacer
			si matriz(f,c) == n Entonces
				Escribir "el numero ",n," se encuentra en la fila ",f," columna ",c
				contador=contador+1
			FinSi
		FinPara
	FinPara
	si contador == 0 Entonces
		Escribir "el numero ",n," no se encuentra"
	FinSi
	
FinAlgoritmo
