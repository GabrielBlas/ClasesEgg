Funcion retorno<-numeroprimo( num1)
	definir retorno como real
	retorno=num1 mod 2
FinFuncion

algoritmo primo
	definir num1 Como Entero
	escribir "elija  número1"
	leer num1
	si numeroprimo( num1)=0 y num1/num1 ==1
		escribir "el número es primo"
		sino escribir "el número no es primo"
	FinSi
	
FinAlgoritmo
