Funcion retorno <- Login(usuario, contrasena)
	Definir retorno Como Logico
	Definir intentos como Entero
	intentos <- 0
	retorno <- Falso
	Mientras intentos < 3 y retorno == Falso Hacer
		Si (usuario == "usuario1" y contrasena == "asdasd") Entonces
			retorno <- Verdadero
		Fin Si
		intentos <- intentos + 1
		Si intentos == 3 Entonces
			retorno <- Falso
		Fin Si
	FinMientras
	retorno <- retorno
Fin Funcion

Algoritmo principal
	Definir usuario, contrasena como Cadena
	Escribir "Ingrese el nombre de usuario: "
	Leer usuario
	Escribir "Ingrese la contraseña: "
	Leer contrasena
	Escribir "Resultado del login: ", Login(usuario, contrasena)
Fin Algoritmo