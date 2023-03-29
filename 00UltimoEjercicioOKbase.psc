Algoritmo sin_titulo
	definir matrizEjemplo, matriz Como Caracter 
	definir tamanofila, tamanocolumna , vector , R, posic, longpalabra, rpalabra  como entero
	tamanofila=9
	tamanocolumna=12

	Dimension matrizEjemplo(tamanofila, tamanocolumna)
	Dimension matriz(tamanofila, tamanocolumna)
	Dimension vector( tamanocolumna)
	Dimension R(tamanofila, tamanocolumna)
	Dimension longpalabra(tamanofila)
	Dimension rpalabra(tamanofila)
//	Dimension posicion(tamanofila)
	
	inicializarMatriz(matrizEjemplo,tamanofila, tamanocolumna)
	inicializarMatriz2(R,tamanofila, tamanocolumna)
	imprimirMatriz(matrizEjemplo,tamanofila, tamanocolumna)
	agregarPalabra(matrizEjemplo,tamanofila, tamanocolumna,longpalabra)
	imprimirMatriz(matrizEjemplo,tamanofila, tamanocolumna)
	buscarR(matrizEjemplo, tamanofila, tamanocolumna,R,rpalabra)
	acomodarPalabra(matrizEjemplo, R, tamanofila, tamanocolumna,rpalabra)
	
FinAlgoritmo

///Paso 1
SubProceso inicializarMatriz(matriz,tamanofila, tamanocolumna)
	definir i, j como entero
	para i=0 Hasta tamanofila-1
		para j=0 Hasta tamanocolumna-1
			matriz(i,j)= "*"
		FinPara
	FinPara
FinSubProceso

///Paso 1
SubProceso inicializarMatriz2(R,tamanofila, tamanocolumna)
	definir i, j como entero
	para i=0 Hasta tamanofila-1
		para j=0 Hasta tamanocolumna-1
			R(i,j)= 0
		FinPara
	FinPara
FinSubProceso


///Paso 2
SubProceso imprimirMatriz(matriz,tamanofila, tamanocolumna)
	definir i, j como entero
	para i=0 Hasta tamanofila-1
		para j=0 Hasta tamanocolumna-1
			Escribir matriz(i,j) sin saltar
			Escribir " " sin saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

///Paso 3
SubProceso  agregarPalabra(matriz,tamanofila, tamanocolumna,longpalabra)
	definir i,j como entero
	Definir palabra como cadena
	para i<- 0 hasta tamanofila -1    Hacer
		Mostrar  " ingrese la palabra"
		leer palabra 
		palabra <- Mayusculas(palabra)
		longpalabra(i) = Longitud(palabra)
		para j <-  0 hasta tamanocolumna - 1  hacer
			matriz(i,j) <- Subcadena(palabra,j,j)
		FinPara
	FinPara
Fin Subproceso

///Paso 4
///buscar letra
subproceso buscarR(matriz, tamanofila, tamanocolumna,R,rpalabra)
	definir i,j, duplica como entero 
	para i<-0 hasta tamanofila-1 Hacer
		duplica = 0
		para j<-0 hasta tamanocolumna-1 Hacer
			si matriz(i,j)= "R" y duplica = 0 Entonces
				duplica = 1
				R(i,j)=j
				escribir R(i,j), " - "  sin saltar
				rpalabra(i) = j
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso acomodarPalabra(matriz, R, tamanofila, tamanocolumna,rpalabra)
	definir i, j, x, pos, m Como Entero
	dimension pos( tamanofila, tamanocolumna)
	dimension m(tamanofila)
	escribir "*********"
	
para i<-0 hasta tamanofila-1 Hacer
	m(i) = 5-rpalabra(i)

	para j<-0 hasta tamanocolumna-1 Hacer
		si j>=m(i)
			para j<-0 hasta tamanocolumna-1 Hacer
				escribir matriz(i,j) Sin Saltar
			FinPara
		SiNo
			escribir " " sin saltar
		FinSi
	FinPara
	escribir ""
FinPara
	
FinSubProceso

//subprograma agregarPalabra --> charly y tincho
//subprograma buscarR: -> Mariana y Mechi
//subprograma acomodarPalabra:-> Matias y Male
//Algoritmo principal-> todos 


