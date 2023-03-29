//Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//que ingrese la opción Salir:
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
//vez.

Algoritmo Ej4Arreglos
	definir N como entero
	escribir "Ingrese cantidad de datos"
	leer N
	dimension vectorA[N]
	dimension vectorB[N]
	dimension vectorResta[N]
	dimension vectorSuma[N]
	Menu
	
FinAlgoritmo
Subproceso Menu
Definir num Como Entero
escribir "1. Llenar vector A"
escribir "2. Llenar vector B"
escribir "3. Llenar vector C con la suma de A y B"
escribir "4. Llenar vector C con la resta de B y A"
escribir "5. Elegir vector a mostrar A, B o C"
escribir "6. Salir"
Escribir "Ingrese Opción"
Leer num
Segun num Hacer
	1: LlenarA
	2: LlenarB
	3: LlenarVectorSuma
	4: LlenarVectorResta
		5:
FinSegun
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
SubProceso LlenarA(N, vectorA Por Referencia)
	definir i como entero 
	para i <- 1 hasta N Hacer
	vectorA(i)<- aleatorio(-100,100)
	FinPara
FinSubProceso
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
SubProceso LlenarB(N, vectorB Por Referencia)
	definir i Como Entero
	para i <- 1 hasta N Hacer
		vectorB(i) <- Aleatorio(-100,100)
	FinPara
FinSubProceso
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
SubProceso LlenarVectorSuma(N, vectorA, vectorB, vectorSuma Por Referencia)
	definir i como entero 
	para i <- 1 hasta N Hacer
		vectorSuma<- vectorA(i) + vectorB(i)
	FinPara
FinSubProceso
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
SubProceso LlenarVectorResta(N, vectorA, vectorB, vectorResta Por Referencia)
	definir i como entero
	para i <- 1 hasta N Hacer
		vectorResta <- vectorB(i) - vectorA(i)
	FinPara
FinSubProceso
//E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
Subproceso MsotrarVector(N,vectorA, vectorB, vectorResta, vectorSuma)
	definir op Como Caracter
	Escribir "Ingrese el vector que desea ver"
	leer op
	segun op Hacer
		A: para i <- 1 hasta N hacer 
				escribir vectorA(i) Sin Saltar, ", "
			FinPara
		B: para i <- 1 hasta N hacer 
				escribir vectorB(i) Sin Saltar, ", "
			FinPara
	FinSegun
FinSubProceso
	