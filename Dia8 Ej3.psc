Algoritmo Acceso
	Definir codigo, contrasena como Entero
	codigo <- 0
	contrasena <- 0
	
	Mientras (codigo <> 1024) o (contrasena <> 4567) Hacer
		Escribir "Ingrese su c�digo de usuario (un n�mero entero mayor que cero): "
		Leer codigo
		Si (codigo <= 0) Entonces
			Escribir "Ingrese un c�digo v�lido (mayor que cero)"
		FinSi
		Escribir "Ingrese su contrase�a num�rica (otro n�mero entero positivo): "
		Leer contrasena
		Si (contrasena <= 0) Entonces
			Escribir "Ingrese una contrase�a v�lida (mayor que cero)"
		FinSi
	FinMientras
	Escribir "Acceso permitido"
FinAlgoritmo