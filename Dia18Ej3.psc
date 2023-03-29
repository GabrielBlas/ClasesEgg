Algoritmo Dia18Ej3
	Definir vector, vectoraux, n,c, num, i Como Entero
	escribir "Ingrese cuantos datos va a ingresar"
	Leer n
	dimension vector(n)
	dimension vectoraux(n)
	Escribir "Ingrese los numeros"
	para i<-0 hasta n-1 Hacer
		leer vector(i)
	FinPara
	Escribir "Ingrese numero que desea buscar"
	Leer num
	c=0
	para i<-0 hasta n-1 hacer
		si vector(i)=num
			entonces 
			c<-c+1
			vectoraux(c)<-i
		FinSi
	FinPara
	
	si c <> 0  Entonces
		Escribir "La posicion del dato buscado es:"
		para i<-1 hasta c hacer
			escribir vectoraux(i)+1
		FinPara
	SiNo
		Escribir "el numero no se encuentra dentro del arreglo"
	FinSi
FinAlgoritmo