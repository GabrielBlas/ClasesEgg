Algoritmo MostrarNombreApellido
	Definir nombre, apellido Como Cadena
	Escribir  Sin Saltar "Ingrese su Nombre: "
	Leer nombre
	Escribir Sin Saltar "Ingrese su Apellido: "
	Leer apellido
	nombre <- Mayusculas(Minusculas(nombre))
	apellido <- Mayusculas(Minusculas(apellido))
	nombre <- Mayusculas(Subcadena(nombre,0, 0)) + Minusculas(Subcadena(nombre,1, Longitud(nombre)))
	apellido <- Mayusculas(Subcadena(apellido,0, 0)) + Minusculas(Subcadena(apellido,1, Longitud(apellido)))
	Escribir "Su nombre es: ", nombre, " y su apellido es: ", apellido
FinAlgoritmo