Algoritmo Acceso
	Definir codigo, contrasena como Entero
	codigo <- 0
	contrasena <- 0
	
	Mientras (codigo <> 1024) o (contrasena <> 4567) Hacer
		Escribir "Ingrese su código de usuario (un número entero mayor que cero): "
		Leer codigo
		Si (codigo <= 0) Entonces
			Escribir "Ingrese un código válido (mayor que cero)"
		FinSi
		Escribir "Ingrese su contraseña numérica (otro número entero positivo): "
		Leer contrasena
		Si (contrasena <= 0) Entonces
			Escribir "Ingrese una contraseña válida (mayor que cero)"
		FinSi
	FinMientras
	Escribir "Acceso permitido"
FinAlgoritmo