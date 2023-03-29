Funcion val<-fibonacci(termino)
	Definir anterior1,anterior2,val,i Como Entero
	anterior1=1
	anterior2=0
	si termino=0 Entonces
		val=0
	SiNo
		si termino=1 Entonces
			val=1
		SiNo
			Para i=1 hasta termino Hacer
				val=anterior1+anterior2
				anterior1=anterior2
				anterior2=val
			FinPara
		FinSi
	FinSi
	
FinFuncion

Algoritmo sin_titulo
	Definir termino,val Como Entero
	Escribir "ingrese el termino que desea conocer de la serie de Fibonacci"
	leer termino
	val=fibonacci(termino)
	Escribir "Fibonacci (",termino,") = ",val
FinAlgoritmo