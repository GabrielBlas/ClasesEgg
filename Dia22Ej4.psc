Algoritmo Dia22Ej4
	Definir Num Como Real
	Definir i,j,F, C Como Entero
	C=5; F=5
	i=0; j=0
	Dimension Num[F,C]
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			si i=j Entonces
				Num[i,j] = 0 
			SiNo
				num[i,j]=Aleatorio(1,100)
			FinSi
		FinPara
	FinPara
	
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			Escribir Num[j,i],"  "; sin saltar
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
