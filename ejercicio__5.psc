Funcion retorno<-numeroprimo( num1)
	definir retorno, i , z como entero
	i=0
	z=0
	Para i <- 1 Hasta num1 Hacer
		si num1 % i=0 Entonces
			z=z+1
		FinSi
	FinPara
	Si z=2 Entonces
		Escribir num1," Es un numero primo!"
	SiNo
		Escribir num1," No es un numero primo."
	FinSi
FinFuncion
//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
algoritmo Numeros_Primos
	definir num1, retorno Como Entero
	escribir "Ingrese un numero: "
	leer num1
	retorno=numeroprimo(num1)
	
FinAlgoritmo
