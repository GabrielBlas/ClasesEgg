SubProceso dividir(dividendo, divisor)
	Definir cociente, resto Como Entero
	cociente = 0
	resto = dividendo
	Mientras resto >= divisor Hacer
		resto = resto - divisor
		cociente = cociente + 1
	FinMientras
	Escribir "Cociente: ", cociente
	Escribir "Resto: ", resto
FinSubProceso

Algoritmo Dia15Ej3
	Definir dividendo, divisor Como Entero
	Escribir Sin Saltar "ingrese el valor del dividendo: "; Leer dividendo
	Escribir Sin Saltar "ingrese el valor del divisor: "; Leer divisor
	dividir(dividendo, divisor)
FinAlgoritmo
	