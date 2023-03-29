Algoritmo adivina_numero
	Definir numero, numero_adivinado como Entero
	numero <- Aleatorio(1, 10)
	Escribir "Adivina el numero que estoy pensando entre 1 y 10"
	Leer numero_adivinado
	Mientras numero_adivinado <> numero Hacer
		Si numero_adivinado < numero entonces
			Escribir "El numero es mayor"
		Sino
			Escribir "El numero es menor"
		FinSi
		Leer numero_adivinado
	FinMientras
	Escribir "Adivinaste el numero!"
FinAlgoritmo
