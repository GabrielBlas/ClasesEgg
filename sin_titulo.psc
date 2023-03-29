Algoritmo ej_clave_codigo
	Definir codigo, pass Como Entero
	
	Hacer
		Escribir "ingrese el codigo"
		leer codigo
		codigo = 1024
		Escribir "ingrese la clave"
		leer pass
		pass = 4567
		si codigo == 1024 y pass == 4567
			Escribir "Ingresaste correctamente"
		FinSi
		
	Mientras Que codigo <> 1025 y pass <> 4567
	Escribir "Error de Ingreso"
FinAlgoritmo
