Funcion retorno<-  NumImpar ( num1 )
	Definir retorno Como Logico
	retorno = num1 mod 2<>0
Fin Funcion

Algoritmo ejercicio_2
    Definir num1 Como Entero
	Definir resultado Como Logico
	Escribir "Ingrese un numero : "
	Leer num1
	resultado= NumImpar(num1)
    Escribir "El numero ingresado es impar? " resultado	
	
FinAlgoritmo
