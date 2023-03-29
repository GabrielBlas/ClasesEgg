algoritmo Dia20EjEx2
	
Definir  N, i como Entero
Definir  vector como Real
Definir  suma, promedio como Real
	Escribir "Ingrese el tamaño del vector: "
	Leer N
	Dimension vector[N]
	suma = 0
	Para i <- 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir "Ingrese un valor para el vector en la posición ", i, ": "
		Leer vector[i]
		suma <- suma + vector[i]
	Fin Para
	promedio <- suma / N
	Escribir "El promedio de la suma de los valores ingresados es: ", promedio
	
FinAlgoritmo
