Funcion productoArreglo <- productoArreglo(vector Por Referencia )
	Definir i, resultado Como Entero
	resultado <- 1
	Para i <- 0 Hasta 3 Hacer
		resultado<-resultado*vector[i]
		
	FinPara
	Escribir resultado
Fin Funcion

Algoritmo Dia20EjEx7
	Definir n, vector, i Como Entero
	Dimension vector[4]
	vector[0] = Aleatorio(1,100)
	vector[1] = Aleatorio(1,100)
	vector[2] = Aleatorio(1,100)
	vector[3] = Aleatorio(1,100)
	Para i<-0 Hasta 3 Hacer
		Escribir vector[i], " " Sin Saltar
	FinPara
	Escribir ""
	Escribir productoArreglo[vector]
	Escribir ""
FinAlgoritmo