Algoritmo sin_titulo
	definir num, unidad, decena, centena como entero
	escribir "ingrese su numero de 3 cifras"
	leer num
	
	unidad = num%10
	decena = trunc (num%100/100)
	centena = trunc (num/100)
	
	si 99 > num o num > 999 escribir "el numero no es valido"
		
	siNo 
		si unidad == centena entonces escribir "tu numero es capicua"
		siNo escribir "tu numero es normalito.."
	FinSi
FinSi

FinAlgoritmo
