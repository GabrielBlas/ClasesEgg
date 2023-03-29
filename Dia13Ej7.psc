Funcion retorno <- ConvertirAEntero(numero_cadena)
	Definir retorno Como Entero
retorno = ConvertirANumero(numero_cadena)
Fin Funcion

Algoritmo principal
	Definir numero_cadena como Cadena
	Escribir "Ingrese un numero de tres digitos: "
	Leer numero_cadena
	Si Longitud(numero_cadena) <> 3 Entonces
		Escribir "Error: debe ingresar un numero de tres digitos"
	Sino
		Escribir "Numero convertido: ", ConvertirAEntero(numero_cadena)
	Fin Si
Fin Algoritmo
