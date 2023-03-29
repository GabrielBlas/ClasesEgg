Algoritmo oficina
	
    Definir cantidadEmails, solicitudesEjecutivos Como Entero
    Definir opciones,usuario Como Caracter
    Escribir "Iniciar sesion con usuario de administrador"
	Escribir "Ingrese usuario: "
	leer usuario
	si usuario > administrador escribir "Bienvenido"
	 sino escribir "Usuario Incorrecto"
    Escribir "Buscando los ultimos ingresos publicitarios en los informes de marketing"
    Escribir "Completar hoja de calculo"
    Escribir "Revisar correo electronico"
    escribir "Ingrese cantidadEmails"
    Leer cantidadEmails
FinSi

    Si cantidadEmails < 10 Entonces
        Escribir "Hay solicutudes de emergencia?"
        Leer opciones
        Si opciones = "si" Entonces
            Escribir "Hacer solicitudes de emergencia"
		FinSi
        Escribir "Revisar correo de voz por alguna solicitud de los ejecutivos"
    
    Escribir "Enviar correo electronico de actualizacion"
    Escribir "Apagar la computadora"
    Escribir "Regar la planta"
FinSi
FinAlgoritmo