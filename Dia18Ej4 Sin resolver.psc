Algoritmo Dia18Ej4
	Definir vA, vB, vC, n, i Como Entero
//	Definir n, vectorA, vectorB, vectorC, i Como Entero
	Definir letra Como Caracter
	Escribir "Ingrese el tamanio del vector"
	leer n
	Dimension vA(n),vB(n),vC(n)
//	Dimension vectorA(n),vectorB(n),vectorC(n)
	Hacer
		Escribir " "
		Escribir "Menú de Opciones: "
		Escribir "A. Llenar Vector A"
		Escribir "B. Llenar Vector B"
		Escribir "C. Sumar Vectores A y B"
		Escribir "D. Restar Vectores B y A"
		Escribir "E. Mostrar Vector"
		Escribir "F. Salir"
		Leer letra
	Segun letra Hacer
		"A": VectorA(vA, n)
		"B": VectorB(vB, n)
		"C": SumarVectores(vA, vB, vC, n)
		"D": RestarVectores(vA, vB, vC, n)
		"E": Escribir "Que vector desea ver: A, B, o C?"
			Leer letra
			segun letra Hacer
				"A":
					Escribir "los valores del vector A son:"
					para i=0 Hasta n-1 Hacer
						Escribir Sin Saltar vA[i] " "
					FinPara
				"B":
					Escribir "los valores del vector B son:"
					para i=0 Hasta n-1 Hacer
						Escribir Sin Saltar vB[i] " "
					FinPara					
				"C":
					Escribir "los valores del vector C son:"
					para i=0 Hasta n-1 Hacer
						Escribir Sin Saltar vC[i] " "
					FinPara
			FinSegun
	FinSegun
	mientras que letra <> "F"
FinAlgoritmo

Subproceso VectorA(vA, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vA(i)=Aleatorio(-100, 100)
		Escribir Sin Saltar vA(i) " "
	FinPara
FinSubproceso

Subproceso VectorB(vB, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vB(i) <- Aleatorio(-100, 100)
		Escribir Sin Saltar vB(i) " "
	FinPara
FinSubproceso

Subproceso SumarVectores(vA, vB, vC, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vC(i) = vA(i) + vB(i)
		Escribir Sin Saltar vC(i) " "
	FinPara
FinSubproceso

Subproceso RestarVectores(vA, vB, vC, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vC(i) = vB(i) - vA(i)
		Escribir Sin Saltar vC(i) " "
	FinPara
FinSubproceso

Subproceso MostrarVector(vA, vB, vC, n)
	Definir opcion, i Como Entero
	Escribir "¿Qué vector desea mostrar?"
FinSubProceso
