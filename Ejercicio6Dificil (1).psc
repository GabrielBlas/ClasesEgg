Algoritmo Ejercicio6Dificil
	
	
	definir correos , correosvoz , soliemergencia , soliejecutiva Como Entero
	
    correos = 11
	soliemergencia = 1
	soliejecutiva = 3
    
	Escribir "  - Iniciar Sesion como administrador: "
	Escribir " - Buscar informes de Marketing "
	Escribir " - Completar ingresos mensuales de Marketing "
	
	Si correos  <= 10 O soliemergencia =  0 Entonces
		Escribir " - Revisar correos de voz"
	
	Fin Si
	
	Si soliemergencia > 0 Entonces
		Escribir " - Responder Solicitud de Emergencia "
	FinSi
	

	Si correos > 10 Entonces
		Escribir " - Revisar Correos "
	
	Fin Si
    
	Si correos <= 10 Entonces
		Escribir " - Revisar Solicitudes Ejecutivas " 
	FinSi
	
	Si soliejecutiva >= 0 O soliemergencia >= 0 O correos >= 0 Entonces
		Escribir " - Enviar Por Email el informe de las Solicitudes "
	FinSi
	
	Escribir "  - Apagar PC "
	Escribir "  - Regar Planta "
	Escribir  "  - Hacer que duke se desmutee "
	
	
	
FinAlgoritmo
