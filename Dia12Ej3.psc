Funcion retorno<- esMultiplo ( num1, num2 )
	Definir retorno Como Logico
	retorno <- num1 MOD num2 = 0
	FinFuncion

Algoritmo Dia12Ej3
	Definir num1, num2 Como Entero
	Definir resultado Como Logico
	Escribir "ingrese el 1er numero, este tiene que ser mayor que el segundo"
	Leer num1
	Escribir "Ingrese el 2do numero"
	leer num2
	resultado<- esMultiplo(num1,num2)
	Escribir " " resultado
FinAlgoritmo