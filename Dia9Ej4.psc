//Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
//comprendidos entre 1 y 100.

Algoritmo Dia9Ej4
	Definir cont1, i, n Como Entero
	cont1<-0
	escribir "seleccione un numero para ver sus multiplos de 1 a 100"
	leer n
	para i<- 1 hasta 100 Hacer
		si(i MOD n =0) Entonces
			cont1 <- cont1 +1
		FinSi
	FinPara
	Escribir "los multiplos de su numero ", n " son: ", cont1
FinAlgoritmo