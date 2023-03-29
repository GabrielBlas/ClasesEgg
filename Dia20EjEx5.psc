Algoritmo Dia20EjEx5
	Definir vector, frase, letra Como Cadena
	Definir lugar, i, espacio Como Entero
	Dimension vector[20]
	espacio <- -1
	Escribir "ingrese una frase"
	Leer frase
	Para i=0 Hasta 19 Hacer
		vector[i] = Subcadena(frase,i,i)
		si vector[i]="" Entonces
			vector[i]=" "			
		FinSi
	FinPara
	Escribir "ingrese un caracter"
	leer letra
	Escribir "ingrese una posicion"
	Leer lugar
	lugar = lugar -1
	si vector(lugar) = " " entonces
		vector(lugar)<- letra
		Escribir "se ingreso correctamente"
SiNo
	si espacio= -1 Entonces
		Escribir "no hay espacio disponible"
	SiNo
		si lugar < espacio Entonces
			Para i <- espacio -1 hasta lugar con paso -1 Hacer
				vector[i+1] <- vector[i]
			FinPara
		SiNo
			para i <- espacio +1 hasta lugar Con Paso 1 Hacer
				vector[i+1] <- vector[i]
			FinPara
		FinSi
		vector[lugar] <- letra
		Escribir "se ingreso correctamente"
	FinSi
FinSi
para i<-0 hasta 19 Hacer
	Escribir Sin Saltar vector[i]
FinPara
Escribir " "
FinAlgoritmo