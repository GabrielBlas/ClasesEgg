SubProceso codificar(nCadena)
	Definir aux, fraseAux Como Cadena
	Definir i, x Como Entero
	x = Longitud(txto)
	Para i=0 hasta x-1 Con Paso 1 Hacer
		Segun Subcadena(txto,i,i) Hacer
			'a' o 'A':aux = + "@"
			"e" o "E":aux = + "#"
			"i" o "I":aux = + "$"
			"o" o "O":aux = + "%"
			"u" o "U":aux = + "*"
		FinSegun
	FinPara
	Escribir fraseAux
FinSubProceso

Algoritmo Dia15Ej4
	Definir txto como cadena
	Escribir Sin Saltar "Ingrese una frase o palabra: "; Leer txto
	codificar(txto)
	Escribir "La frase codificada es: " txto
FinAlgoritmo