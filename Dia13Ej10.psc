Funcion retorno <- SumarDigitos(numero)
	Definir retorno como Entero
	retorno <- 0
	Mientras numero > 0 hacer
		retorno <- retorno + (numero Mod 10)
		numero <- Trunc(numero / 10)
	FinMientras 
	retorno <- retorno
Fin Funcion

Algoritmo Dia13Ej10
	Definir numero como Entero
	Escribir "Ingrese un numero: "
	Leer numero
	Escribir "La suma de los digitos del numero es: ", SumarDigitos(numero)
Fin Algoritmo
