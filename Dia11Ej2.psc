Algoritmo contar_digitos
    Definir num, i como Entero
    Escribir "Ingrese un número entero: "
    Leer num
	i = 0
	Hacer
		num = trunc(num/10)
		i = i+1
	Mientras Que num <> 0
	Escribir "cantidad de digitos: " ,i
	
FinAlgoritmo

