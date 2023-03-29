Algoritmo Dia19Ej5
	Definir vector, n, i, vectorMayor Como Entero
	Escribir "Ingrese un numero para definir la longitud del vector"
	leer n
    Dimension vector[n]	
	Escribir "ingrese ", n " numeros"
	Para i = 0 Hasta n-1 Hacer
		leer vector[i]
	FinPara
	vectorMayor=0
	para i = 0 hasta n-1 Hacer
		si vector[i]>vectorMayor Entonces
			vectorMayor=vector[i]
		FinSi
	FinPara
	Escribir vectorMayor " " 
FinAlgoritmo