Funcion retorno <- CalcularJornal(nombre, dia, turno, horas, feriado)
	Definir retorno, tarifa, jornal como Real
	tarifa <- 0
	jornal <- 0
	Si turno == "diurno" Entonces
		tarifa <- 90
	Sino
		tarifa <- 125
	Fin Si
	Si feriado == "si" Entonces
		Si turno == "diurno" Entonces
			tarifa <- tarifa + (tarifa * 0.1)
		Sino
			tarifa <- tarifa + (tarifa * 0.15)
		Fin Si
	Fin Si
	jornal <- horas * tarifa
	retorno <- jornal
Fin Funcion

Algoritmo principal
	Definir nombre, dia, turno, feriado como Cadena
	Definir jornal como Real
	Definir horas Como Entero
	Escribir "Ingrese el nombre del trabajador: "
	Leer nombre
	Escribir "Ingrese el dia de la semana: "
	Leer dia
	Escribir "Ingrese el turno (diurno o nocturno): "
	Leer turno
	Escribir "Ingrese la cantidad de horas trabajadas: "
	Leer horas
	Escribir "El dia es feriado? (si o no): "
	Leer feriado
	jornal <- CalcularJornal(nombre, dia, turno, horas, feriado)
	Escribir "El jornal diario de", nombre, "es: $", jornal
Fin Algoritmo