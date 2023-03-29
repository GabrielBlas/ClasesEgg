//El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad
//		del programador
Algoritmo sin_titulo
	Menu()
FinAlgoritmo


SubProceso Menu()
	Definir nuMenu Como Entero
	Escribir "1. Calcular muro de ladrillo." //gabbs
	Escribir "2. Calcular viga de hormigón." //agustin
	Escribir "3. Calcular columnas de hormigón." //angel
	Escribir "4. Calcular contrapisos." //mechi
	Escribir "5. Calcular techo."  //fernando
	Escribir "6. Calcular pisos."  //ailen
	Escribir "7. Calcular pintura." // gabriel blas
	Escribir "8. Calcular iluminación."  //charly
	Escribir "9. Salir."
	Leer nuMenu
	Segun nuMenu hacer
		1:
			calcularMuro(nuMenu)
	FinSegun
	
FinSubProceso


Subproceso calcularSuperficie(sup Por Referencia, alto, largo)
	sup=alto*largo
FinFuncion

Subproceso calcularVolumen(largo Por Referencia, ancho Por Referencia, altura, volumen Por Referencia )
	volumen = largo * ancho * altura	
FinSubProceso



SubProceso calcularMuro(nuMenu)
	Definir largo, espesor, alto, sup Como Entero
	
	//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
	//m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
	//Debemos mostrar al usuario la cantidad de materiales necesaria.
	Escribir "Ingrese el espesor del muro. (20cm/30cm)"
	Leer espesor
	Escribir "Ingrese el largo del muro."
	Leer largo
	Escribir "Ingrese el alto del muro."
	Leer alto
	calcularSuperficie(sup, alto, largo)
	Escribir "La superficie del muro es de " sup "m³"
	
	
FinSubProceso