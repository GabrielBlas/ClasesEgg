Algoritmo Dia12Ej2
	Definir num Como Entero
	Definir resultado Como Logico
	Leer num
	resultado<- esImpar(num)
	Escribir " " resultado
FinAlgoritmo

Funcion retorno<- esImpar ( num )
	Definir retorno Como Logico
retorno = num MOD 2 <> 0
	
FinFuncion