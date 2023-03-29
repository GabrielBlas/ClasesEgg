Algoritmo ejercicio_4
	Definir frase , letra Como Caracter
	Escribir "Ingrese una palabra o frase."
	Leer frase
	Codigo(frase)
FinAlgoritmo

SubProceso Codigo(frase)
	Definir contador , i , j Como Entero
	Definir letra , vocales , frase_final Como Caracter
	frase = Minusculas(frase)
	vocales = "aeiou"
	frase_final=""
	Para i = 0 Hasta longitud(frase) Hacer
		contador <- 1
		letra <- Subcadena(frase,i,i)
		Para j <- 0 Hasta longitud(vocales) Hacer
			Si letra = subcadena(vocales,j,j) Entonces
				contador <- 0
				Segun Subcadena(vocales,j,j) Hacer
					"a":
						frase_final = Concatenar(frase_final,"@")
					"e":
						frase_final = Concatenar(frase_final,"*")
					"i":
						frase_final = Concatenar(frase_final,"&")
					"o":
						frase_final = Concatenar(frase_final,"#")
					"u":
						frase_final = Concatenar(frase_final,"$")
				Fin Segun
			FinSi
		Fin Para
		Si contador=1 Entonces
			frase_final <- Concatenar(frase_final,letra)
		FinSi
	Fin Para
	Escribir "la frase codificada es: " frase_final
FinSubProceso