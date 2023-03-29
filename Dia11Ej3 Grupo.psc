Algoritmo sin_titulo
	//Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
	//		menú de opciones:
	//			o Ingresar botellas
	//			o Consultar saldo
	//			o Salir
	
	definir usr, pass, resp como caracter
	definir login Como Logico
	definir intentos, menu, cantbote, i, peso, sumapeso, saldofinal como entero
	sumapeso<-0
	intentos = 0
	pass = ""
	saldofinal=0
	
	Hacer
		Escribir" ingrese usuario"
		leer usr
	Mientras Que usr <>"a" 
	
	Mientras intentos <3 y pass <>"d" Hacer
		Escribir" ingrese la clave"
		leer pass
		intentos = intentos + 1
	FinMientras
	
	si intentos = 3
		Escribir "FUERA DE JUEGO"
	FinSi
	
	login = usr = "a" y pass ="d" 
	//	escribir login
	
	si login = Verdadero
		escribir"menu de opciones"
		repetir
			escribir"ingreso botella (1)"
			escribir"consultar saldo (2)"
			escribir"salir (3)"
			leer menu
			segun menu Hacer
				1: escribir"ingrese cantidad de botellas"
					leer cantbote
					para i<-1 hasta cantbote Hacer
						peso= aleatorio(100,3000)
						si peso<=500 Entonces
							sumapeso = sumapeso+ 50
							si peso >= 501 y peso <= 1500
								sumapeso = sumapeso + 125
							SiNo
								sumapeso = sumapeso + 200
							FinSi
						finsi
						
					FinPara
					escribir "$",sumapeso
					Hacer
						escribir"esta de acuerdo con el saldo"
						leer resp
						resp=mayusculas(resp)
						
						segun resp Hacer
							"SI":escribir"el saldo sera acreditado"
								saldofinal=saldofinal+sumapeso
							"NO": escribir "su material sera devuelto"
							de otro modo:
								escribir"su respuesta es incorrecta"
						FinSegun
					Mientras Que resp <> "SI" y resp <> "NO"
				2: escribir "calculando saldo"
					escribir "su saldo es $ ",saldofinal
			FinSegun
		Hasta Que menu = 3
		escribir"sesion finalizada"
	FinSi
FinAlgoritmo