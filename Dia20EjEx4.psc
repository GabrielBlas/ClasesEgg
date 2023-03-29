Algoritmo Dia20EjEx4
	Definir n, i, deficientes, regulares, buenos, excelentes Como Entero
	Definir vector Como Real
	n<-100
	Dimension vector[n]
	
	deficientes<-0
	regulares<-0
	buenos<-0
	excelentes<-0
	
	para i<-0 Hasta n-1 Con Paso 1 Hacer
		vector[i] <- Aleatorio(0, 20)
		Si (vector[i] >= 0) Y (vector[i] <= 5) Entonces
			deficientes<-deficientes+1
		SiNo
			si (vector[i] >=6) y (vector[i] <=10) Entonces
				regulares<-regulares+1
			SiNo
				si (vector[i]>=11) y (vector[i] <=15) Entonces
				buenos<-buenos+1
			SiNo
				si (vector[i] >= 16) y (vector[i] <=20) Entonces
					excelentes<-excelentes+1
				FinSi
			FinSi
		FinSi
		FinSi
	FinPara
	Escribir "los estudiantes deficientes son: ", deficientes
	Escribir "los estudiantes regulares son: ", regulares
	Escribir "los estudiantes buenos son: ", buenos
	Escribir "los estudiantes excelentes son: ", excelentes
FinAlgoritmo
