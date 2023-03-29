Algoritmo suma_numeros
	Definir numero, acumulador como entero
	Definir respuesta como Caracter
	acumulador <- 0
	respuesta <- "s"
	
	Escribir "Ingrese un numero entero:"
	Leer numero
	acumulador <- acumulador + numero
	
	Mientras (respuesta = "s" o respuesta = "S") Hacer
		Escribir "Desea ingresar otro numero? (s/n)"
		Leer respuesta
		Si (respuesta = "s") o (respuesta = "S") Entonces
			Escribir "Ingrese otro numero entero:"
			Leer numero
			acumulador <- acumulador + numero
		FinSi
	FinMientras
	
	Escribir "La suma de los numeros ingresados es: ", acumulador
FinAlgoritmo