Algoritmo Dia21EjEx3
	Definir n, i Como Entero
	Definir vector, suma, promedio Como Real
	
	Escribir "Ingrese el tamanio del Vector:"
	Leer n
	
	Dimension vector[n]
	
	suma = 0
	
	Para i <- 0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese un valor para el vector"
		Leer vector[i]
		suma<-suma+vector[i]
	FinPara
	
	promedio<-suma/n
	
	Escribir "El Promedio es de: ", promedio
FinAlgoritmo