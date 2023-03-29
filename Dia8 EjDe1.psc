Algoritmo Correccion_HacerMientras
	Definir num Como Entero
	Escribir "Ingrese un número PAR"
	Leer num
	Mientras (num MOD 2 <> 0) Hacer
		Escribir "El número ingresado no es PAR. Intente de nuevo"
		Leer num
	FinMientras
	Escribir "El número ingresado es PAR"
FinAlgoritmo