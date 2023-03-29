Algoritmo sin_titulo
	Definir clave Como Cadena
	Definir ingreso Como Cadena
	Definir intentos Como Entero
	
	clave <- "eureka"
	intentos <- 0
	
	Escribir "Ingrese la clave"
	
	Mientras (intentos < 3) Hacer
		Leer ingreso
		Si ingreso = clave Entonces
			Escribir "Se ha ingresado al sistema correctamente."
			intentos <- 3
		Sino
			intentos <- intentos + 1
			Si intentos = 3 Entonces
				Escribir "Ha agotado los 3 intentos."
			Sino
				Escribir "Clave incorrecta. Le quedan ", 3 - intentos, " intentos."
			FinSi
		FinSi
	FinMientras

FinAlgoritmo
