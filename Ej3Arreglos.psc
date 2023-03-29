//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usua-
//rio. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar tam-
//bién debe ser ingresado por el usuario). El programa debe indicar la posición donde se en-
//cuentra el valor. En caso de que el número se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso de que el número a buscar no está adentro del arreglo se debe mostrar
//un mensaje.
Algoritmo sin_titulo
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
