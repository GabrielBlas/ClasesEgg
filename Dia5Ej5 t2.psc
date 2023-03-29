Algoritmo sin_titulo
	definir nota,nota1,nota2 Como Entero
	Definir final Como Logico
	Escribir "Dime tus notas"
	Leer nota
	Leer nota1
	Leer nota2
	si (nota<=10) y (nota>=1) y (nota1<=10) y (nota1>=1) y (nota2<=10) y (nota2>=1) Entonces
		final=Verdadero
	SiNo
		final = Falso
	FinSi
	si final== Verdadero Entonces
		Escribir "Es correcto"
	SiNo
		Escribir "Es Incorrecto"
	FinSi
FinAlgoritmo
