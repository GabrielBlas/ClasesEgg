Algoritmo verificar_capicua
	Definir numero, numero_invertido, residuo, i como entero
	Escribir "Ingrese un numero para verificar si es capicua: "
	Leer numero
	numero_invertido <- 0
	i <- numero
	Mientras i > 0 hacer
		residuo <- i MOD 10
		numero_invertido <- numero_invertido * 10 + residuo
		i <- Trunc(i / 10)
	FinMientras
	Si numero_invertido = numero entonces
		Escribir "El numero ingresado es capicua"
	Sino
		Escribir "El numero ingresado no es capicua"
	FinSi
FinAlgoritmo