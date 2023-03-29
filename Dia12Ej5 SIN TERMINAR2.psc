Funcion retorno <- esPrimo(num1)
	Escribir "Por favor ingrese un numero a evaluar"
	leer num1
	Para i<-1 Hasta num1 Hacer
		si num1%i=0 Entonces
			cont<-cont+1
		FinSi
	FinPara
Fin Funcion

algoritmo primo
	definir num1 como Entero
	escribir "elije un número:"
	leer num1
	si esPrimo(num1) == verdadero 
		escribir "el número es primo"
	sino
		escribir "el número no es primo"
	fin si
FinAlgoritmo