Algoritmo sin_titulo
	Definir frase, pal Como Caracter
	definir i Como Entero
	Dimension frase(20)
	Escribir " Ingrese una palabra o frase"
	leer pal
	para i<-0 Hasta 19 Hacer
		frase(i) = subcadena(pal,i,i)
		si frase(i)="" Entonces
			frase(i)=" "
		FinSi
	FinPara
	Definir letra Como Caracter
	Definir ubi Como Entero
	Escribir " Indique el caracter que desea ingresar a la frase"
	Leer letra
	Escribir " Indique la posición en que desea hacerlo"
	Leer ubi
	si frase(ubi)=" " Entonces
		frase(ubi)<-letra
		Escribir " La frase con el reemplazo quedaría: "
		para i<-0 Hasta 19 Hacer
			Escribir sin saltar Mayusculas(frase(i))
		FinPara
	SiNo
		Para i<-0 Hasta (ubi-1) Hacer
			frase(i)=frase(i)
		FinPara
		Para i<-19 Hasta ubi+1 Con Paso -1 Hacer
			frase(i)=frase(i-1)
		FinPara
		Para i<-ubi Hasta ubi Hacer
			frase(ubi)=letra
		FinPara
		para i<-0 Hasta 19 Hacer
			Escribir sin saltar frase(i)
		FinPara
	FinSi
	Escribir " "
FinAlgoritmo