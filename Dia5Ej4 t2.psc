Algoritmo sin_titulo
	definir lett,lett1,lett2 Como caracter;
	Escribir "Ingrese una palabra"
	leer lett
	lett1="!"
	lett2="?"
	si Longitud(lett)=4 Entonces
		Escribir Concatenar(lett,lett1)
	SiNo
		Escribir Concatenar(lett,lett2)
	FinSi
FinAlgoritmo