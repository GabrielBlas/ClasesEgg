Algoritmo Dia22Ej1
	Definir Num Como Real
	Definir i,j,F, C Como Entero
	Definir n1,n2,n3,n4,n5,n6,n7,n8,n9 Como Entero
	Escribir "Ingrese los 9 digitos para armar el cubo: "; sin saltar
	Leer n1,n2,n3,n4,n5,n6,n7,n8,n9
	C=3; F=3
	i=0; j=0
	Dimension Num[F,C]
	Num[0,0]= n1
	Num[1,0]= n2
	Num[2,0]= n3
	
	Num[0,1]= n4
	Num[1,1]= n5
	Num[2,1]= n6
	
	Num[0,2]= n7
	Num[1,2]= n8
	Num[2,2]= n9
	
	Para i=0 Hasta F-1 Con Paso 1 Hacer
		Para j=0 Hasta C-1 Con Paso 1 Hacer
			Escribir Num[j,i],"  "; sin saltar
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
