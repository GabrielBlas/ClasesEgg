Algoritmo Dia22Ej6
	Definir cuadrado,f,c,i,j,k Como Entero
	Definir Sf1, Sf2, Sf3 Como Entero
	Definir Sc1, Sc2, Sc3 Como Entero
	Definir Sd1, Sd2, Sd3 Como Entero
	Dimension cuadrado[3,3]
	Sf1=0; Sc1=0; Sd1=0
	Sf2=0; Sc2=0; Sd2=0
	Sf3=0; Sc3=0; Sd3=0
	Para f<-0 hasta 2 Con Paso 1 Hacer
		para c<-0 Hasta 2 Con Paso 1 Hacer
			cuadrado[f,c]=Aleatorio(1,9)
			Escribir cuadrado[f,c], " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	para c<-0 Hasta 2 Con Paso 1 Hacer
		Sf1 = Sf1 + cuadrado[0,c]
		Sf2 = Sf2 + cuadrado[1,c]
		Sf3 = Sf3 + cuadrado[2,c]
	FinPara
	para f<-0 Hasta 2 Con Paso 1 Hacer
		Sc1 = Sc1 + cuadrado[f,0]
		Sc2 = Sc2 + cuadrado[f,1]
		Sc3 = Sc3 + cuadrado[f,1]
	FinPara
	para i<-0 Hasta 2 con paso 2 Hacer
		Sd1=Sd1 + cuadrado [i,i]
	FinPara
	k=2
	Para j<-0 Hasta 2 Con Paso 1 Hacer
		Sd2=Sd1+cuadrado[j,k]
		k=k-1
	FinPara
	si Sf1==15 & Sf2==15 & Sf3==15 & Sc1==15 & Sc2==15 & Sc3==15 & Sd1==15 & Sd2==15 & Sd3==15 Entonces
		Escribir "! ! ! es un cuadrado magico ! ! !"
	SiNo
		Escribir "no es un cuadrado magico"
	FinSi
FinAlgoritmo