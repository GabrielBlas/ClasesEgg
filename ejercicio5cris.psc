Funcion retorno<-numeroprimo( num1)
	definir retorno como real
	retorno=num1 mod 2
FinFuncion

algoritmo primo
	definir num1 Como Entero
	escribir "elija  n�mero1"
	leer num1
	si numeroprimo( num1)=0 y num1+1/num1<>0 y num1<>2
		escribir "el n�mero no es"
	sino escribir "el n�mero es primo"
	FinSi
	
FinAlgoritmo