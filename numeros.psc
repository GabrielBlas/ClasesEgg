Algoritmo sin_titulo
	definir num, cen, dec, uni, aux Como Entero
	escribir "ingrese su numero de 3 cifras: "
	leer num
	cen = trunc (num/100)
	aux = num - cen *100
	dec = trunc (aux/10)
	uni = aux - dec *10
	
	escribir "tu numero de centena es: " cen, " Tu numero de decena es: " dec, " Tu numero unitario es: " uni
FinAlgoritmo
