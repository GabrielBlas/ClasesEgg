Algoritmo Dia19Ej7
	definir v1, v2, i, n Como Entero
	Escribir "ingrese un numero para determinar el largo del vector"
	leer n
	Dimension v1[n],v2[n]
	llenarNum(v1,v2,n)
//	Escribir validarNum(v1,v2) 
FinAlgoritmo
SubProceso llenarNum(v1 Por Referencia, v2 Por Referencia,n)
	Definir i Como Entero
	para i<-0 hasta n-1 Hacer
		v1[i]=Aleatorio(1,100)
		v2[i]=Aleatorio(1,100)
	FinPara
	Para i<-0 Hasta n-1 Hacer
		Escribir Sin Saltar v1[i] " " v2[i]
	FinPara
	Escribir ""
FinSubProceso

SubProceso validarNum(v1 Por Referencia, v2 Por Referencia, n)
	Definir i Como Entero
	para i<-0 Hasta n-1 Hacer
		si v1[i] <> v2[i] Entonces
			Escribir "No se encontraron coincidencias"
		SiNo
			Escribir "Se encontraron coincidencias"
		FinSi
	FinPara
FinSubProceso