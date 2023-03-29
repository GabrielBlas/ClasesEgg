Algoritmo Dia19Ej6
	Definir vector, frase, letra Como Cadena
	Definir lugar, i Como Entero
	Dimension vector[20]
Escribir "Ingrese una frase"
leer frase
//	frase="Hola mundo cruel!!"
	Para i=0 Hasta 19 Hacer
		vector[i] = Subcadena(frase,i,i)
	FinPara
	
	Escribir "ingrese un caracter"
	leer letra
	Escribir "ingrese una posicion"
	leer lugar
	lugar=lugar-1
	Si vector[lugar] = " " Entonces
		vector[lugar] = letra
		Escribir "Se ingreso correctamente"
		Para i=0 Hasta 19 Hacer
			Escribir Sin Saltar vector(i)
		FinPara
		Escribir " "
	SiNo
		Escribir "Posicion ocupada"
	FinSi
FinAlgoritmo