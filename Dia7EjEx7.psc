Algoritmo Dia7EjEx7
	Definir nombre Como Caracter
	Definir n1,n2,n3,final Como Real
	Escribir "ingrese nombre del alumno"
	Leer nombre
	
	Mientras nombre <> "" Hacer
	Escribir "ingrese la primer nota"
	leer n1
	Escribir "ingrese la segunda nota"
	leer n2
	Escribir "ingrese la tercer nota"
	leer n3
	si n1 <= 10 y n1 >= 0 y n2 <= 10 y n2 >= 0 y n3 <= 10 y n3 >= 0
		final = (n1 * 0.1)+(n2*0.5)+(n3*0.4)
		Escribir "su nota final es :" final
	SiNo
		Escribir "Error. Una o mas variables no estan ingresadas correctamente"
	FinSi
	Escribir "nombre del alumno: "
	leer nombre
FinMientras
Escribir "ah cerrado el programa, muchas gracias"
FinAlgoritmo
