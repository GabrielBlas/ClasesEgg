///Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
///que ingrese la opción Salir:
///		A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
///usando la función Aleatorio(valorMin, valorMax) de PseInt.
///		B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
///		C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
///a elemento. Ejemplo: C = A + B
///		D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
///elemento. Ejemplo: C = B - A
///		E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector A, B, o C.
///		F. Salir.
///NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
///para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una vez.

Algoritmo e18_e4_rellenar_vectores_menu
	Definir vectora,vectorb,vectorc,n,i Como Entero
	Definir letra Como Caracter
	Escribir "ingrese el tamaño de su vector"
	leer n
	Dimension vectora(n),vectorb(n),vectorc(n)
	hacer
	Escribir " "
	Escribir "A. Llenar Vector A."
	Escribir "B. Llenar Vector B."
	Escribir "C. Llenar Vector C (suma A + B)"
	Escribir "D. Llenar Vector C (resta B - A)"
	Escribir "E. Mostrar."
	Escribir "F. Salir."
	leer letra
	Segun letra Hacer
		"a":
			a(vectora,n)
			
		"b":
			b(vectorb,n)
		"c":
			c(vectorc,vectorb,vectora,n)
		"d":
			d(vectorc,vectorb,vectora,n)
		"e":
			Escribir "que vector desea ver a, b o c"
			leer letra
			Segun letra hacer
				"a":
					Escribir " Los valores del vector a son"
					para i=0 hasta n-1 Hacer
						Escribir " [" i "]=" vectora(i) Sin Saltar
					FinPara
					 
				"b":
					Escribir " Los valores del vector b son"
					para i=0 hasta n-1 Hacer
						Escribir " [" i "]=" vectorb(i) Sin Saltar
					FinPara
				"c":
					Escribir " Los valores del vector c son"
					para i=0 hasta n-1 Hacer
						Escribir " [" i "]=" vectorc(i) Sin Saltar
					FinPara
			FinSegun
			Escribir " "
			Escribir "-----------------------------------------"
	FinSegun
Mientras Que letra<>"f"
FinAlgoritmo

SubProceso a(vectora por referencia,n)
	Definir i Como Entero
	para i=0 hasta n-1 Hacer
		vectora(i)=Aleatorio(-100,100)
		//Escribir Sin Saltar vectora(i) " "
	FinPara
FinSubProceso

SubProceso b(vectorb por referencia,n)
	Definir i Como Entero
	para i=0 hasta n-1 Hacer
		vectorb(i)=Aleatorio(-100,100)
		//Escribir Sin Saltar vectorb(i) " "
	FinPara
FinSubProceso

SubProceso c(vectorc por referencia,vectora,vectorb,n)
	Definir i Como Entero
	para i=0 hasta n-1 Hacer
		vectorc(i)=vectora(i)+vectorb(i)
		//Escribir Sin Saltar vectorc(i) " "
	FinPara
FinSubProceso

SubProceso d(vectorc por referencia,vectora,vectorb,n)
	Definir i Como Entero
	para i=0 hasta n-1 Hacer
		vectorc(i)=vectorb(i)-vectora(i)
		//Escribir Sin Saltar vectorc(i) " "
	FinPara
FinSubProceso