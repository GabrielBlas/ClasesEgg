Algoritmo sin_titulo
//	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
	//	su valor más grande.
	
	Definir vector, N, valores, i, vectorG, vectorC Como Entero
	
	Escribir "Ingrese cuantos valores desea ingresar"
	Leer N
	Dimension vector[N]
	
	Escribir "Ingrese los valores"
	
	Para i<-0 Hasta N-1
		
		Leer vector[i]
		
	FinPara
	vectorGrande(vector, n)
FinAlgoritmo

SubProceso vectorGrande (vector, N)
	
	Definir i, vectorG, vectorC Como Entero
	
	Para i<-0 Hasta N-1
		
		Si i=0 Entonces
			vectorG=vector(i)
		FinSi
		
		Si vector(i)>vectorG Entonces
			vectorG=vector(i)
		SiNo
			vectorG=vectorG
		FinSi
	FinPara
	Escribir "El valor mas grande del vector es: " "[",vectorG,"]"
	
	Para i<-0 Hasta N-1
		
		Si i=0 Entonces
			vectorC=vector(i)
		FinSi
		
		Si vector(i)<vectorC Entonces
			vectorC=vector(i)
		SiNo
			vectorC=vectorC
		FinSi
	FinPara
	Escribir "El valor mas chico del vector es: " "[",vectorC,"]"
	
	Escribir "La diferencia entre los 2 valores es: " vectorG-vectorC
	
FinSubProceso


