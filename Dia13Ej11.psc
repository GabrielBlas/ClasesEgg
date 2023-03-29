Funcion retorno <- EsImpar(numero)
	Definir retorno como logico
	retorno <- Verdadero
	Mientras numero > 0 hacer
		Si (numero Mod 2) = 0 entonces
			retorno <- Falso
		FinSi
		numero <- Trunc(numero / 10)
	FinMientras
	retorno <- retorno
Fin Funcion

Algoritmo Dia13Ej11
	Definir numero como Entero
	Escribir "Ingrese un numero: "
	Leer numero
	Si EsImpar(numero) entonces
		Escribir "Todos los digitos son impares"
	Sino
		Escribir "No todos los digitos son impares"
	FinSi
Fin Algoritmo