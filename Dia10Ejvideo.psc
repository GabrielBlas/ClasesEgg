Algoritmo Dia10Ejvideo
	Definir num, suma, i, j Como Entero
	Definir confirma Como Caracter
	
	Hacer
		Escribir "ingrese un numero"
		Leer num
		confirma = "s"
		si num > 1000 Entonces
			Escribir "este programa puede demorar demasiado, desea continuar s/n?"
			Leer confirma
		FinSi
		
	Mientras Que num <= 0 o confirma <> "s"
	
	Para i = 2 hasta num Con Paso 2 Hacer
		suma = 0
		Para j=1 Hasta i Hacer
			suma = suma + j
		FinPara
		Escribir "la suma de los ", i, " numeros naturales es: ", suma
	FinPara
FinAlgoritmo
