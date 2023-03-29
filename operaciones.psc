Algoritmo sin_titulo
	definir num1,num2 Como entero
	definir operacion como caracter
	escribir "ingrese dos numeros"
	leer num1,num2
	escribir "que opeacion desea hacer con sus numeros?"
	escribir "S = sumar"
	Escribir "R = restar"
	Escribir "M = multiplicar"
	Escribir "D = dividir"
	
	leer operacion
	operacion = Mayusculas(operacion)
	Segun operacion hacer
		"S":
			escribir "la suma entre los numeros ingresados es: ", num1 + num2
		"R":
			escribir "la resta es: ", num1 - num2
		"M":
			escribir "la multiplicacion es: ", num1 * num2
		"D":
			escribir "la division es: ", num1 / num2
	FinSegun
	
FinAlgoritmo
