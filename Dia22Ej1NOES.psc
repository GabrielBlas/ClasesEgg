Algoritmo Dia22Ej1NOES
	Definir Num Como Real
	Definir i,j,F, C Como Entero
	C=3; F=3
	i=0; j=0
	Dimension Num[F,C]
	Num[0,0]= Aleatorio(1,9)
	Num[1,0]= Aleatorio(1,9)
	Num[2,0]= Aleatorio(1,9)
	
	Num[0,1]= Aleatorio(1,9)
	Num[1,1]= Aleatorio(1,9)
	Num[2,1]= Aleatorio(1,9)
	
	Num[0,2]= Aleatorio(1,9)
	Num[1,2]= Aleatorio(1,9)
	Num[2,2]= Aleatorio(1,9)
	
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			Escribir Num[j,i],"  "; sin saltar
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
