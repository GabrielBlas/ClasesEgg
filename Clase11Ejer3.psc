Algoritmo Clase11Ejer3
	
	definir usr, pass como caracter
	definir login,a Como Logico
	definir intentos, op, i, cantbo, gr, sueldo, sueldoaux como entero
	
	a=Verdadero
	sueldo<-0
	
	intentos = 0
	pass = ""
	
	Hacer
		Escribir" ingrese usuario"
		leer usr
	Mientras Que usr <>"Albus_D" 
	
	Mientras intentos <3 y pass <>"caramelosDeLimon" Hacer
		Escribir" ingrese la clave"
		leer pass
		intentos = intentos + 1
	FinMientras
	
	login = usr = "Albus_D" y pass ="caramelosDeLimon" 
	escribir login
	
	Repetir	
		Escribir  "1. Ingresar botellas"
		Escribir "2. consultar saldo"
		Escribir "3. salir"
		escribir "Ingresee la opcion"
		Leer op
		Segun op hacer	
			1: sueldoaux<-0
				escribir "Ingrese la cantidad de botellas"
				Leer cantbo
				Para  i<-1 hasta cantbo con paso 1 Hacer
					gr=Aleatorio(100,3000)
					si	gr<=500 Entonces
						sueldoaux<-sueldoaux+50
					FinSi
					si	gr=501 y gr=1500 Entonces
						sueldoaux<-sueldoaux+125
					FinSi
					si	gr>1501 Entonces
						sueldoaux<-sueldoaux+200
					FinSi
				FinPara
				Escribir "Desea vender todo por: " sueldoaux "?"
				Escribir "1. Aceptar"
				Escribir "2.Denegar"
				leer op
				Segun op
					1: sueldo<-sueldoaux
						Escribir "Se agrego el dinero a la cuenta"
					2: escribir "Se devolvio el material"
						sueldoaux<-0
				FinSegun
			2: escribir"Su saldo es:" sueldo
			3:
				Escribir "Cerrando sesion"
				a=Falso
		FinSegun
		
	Mientras Que a=Verdadero

FinAlgoritmo
