Algoritmo Dia22Ej5
	Definir frase Como Cadena
	Definir matriz Como Cadena
	Definir i, j, contador Como Entero
	contador = 0
	Dimension matriz[3,3]
	
	Escribir "Ingrese una palabra de 9 caracteres:"
	Leer frase
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			matriz(i,j) = Subcadena(frase, contador, contador)
			contador = contador + 1
		FinPara
	FinPara
	
	Escribir "La matriz resultante es:"
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo