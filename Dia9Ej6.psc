//Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
//pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
//deberemos mostrar a l o H.

algoritmo Dia9Ej6
    Definir frase, n Como Caracter
	Definir long, i Como Entero
    Escribir "Ingrese una frase: "
    Leer frase
	long=Longitud(frase)
	i=0
	Para i=0 Hasta long Hacer
		n=Subcadena(frase,long-i,long-i)
		Escribir Sin Saltar" ",n " "
	FinPara
FinAlgoritmo

