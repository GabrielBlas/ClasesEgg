Funcion retorno <- lupa (frase,frase1)
	Definir retorno, i, z Como Entero
	retorno=0
	i=0
	z= Longitud(frase)
	Mientras i<z Hacer
		si frase1=Subcadena(frase,i,i) Entonces
			retorno = retorno + 1
		FinSi
		i = i + 1
	Fin Mientras
Fin Funcion

Algoritmo Ejercicio_4
	//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La funci�n 
	//debe devolver la cantidad de veces que encontr� la letra. Nota: recordar el uso de la fun-
	//ci�n Subcadena().
	Definir frase1, letra Como Caracter
	Definir cantidad Como Entero
	Escribir "Ingrese una frase: "
	Leer frase1
	Escribir "Ingrese una letra, que quiera buscar: "
	Leer letra
	cantidad=lupa(frase1,letra)
	Escribir "La letra elegida se repite " , cantidad, " veces."
FinAlgoritmo
