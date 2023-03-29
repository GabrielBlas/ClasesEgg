// Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
// Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
// representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que		
// dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
// dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
Algoritmo _Ej_8_
	Definir D , M , A Como Real
	Escribir "Ingrese una fecha."
	Escribir "Año :"
	Leer A
	Escribir "Mes :"
	Hacer
		Leer M
	Mientras Que M >= 13 O M <= 0
	Escribir "Día :"
	Hacer
		Leer D
	Mientras Que (D <= 0 O D >= 32) O ()  
	Escribir "                    " D " / " M " / " A
	Dia(D,M,A)
	Escribir "                La fecha anterior fué"
	Escribir "                    " D " / " M " / " A 
FinAlgoritmo
SubProceso Dia(D Por Referencia ,M Por Referencia ,A Por Referencia)
	Segun M Hacer
		1 , 3 , 5 , 7 , 8 , 10 , 12 :
			Si D = 1 Y M = 1 Entonces
				D = 31 
				M = 12
				A = A - 1
			SiNo
				si (A % 4 = 0 Y A % 100 <> 0) Y M = 3 Entonces
					D = 29
					M = 2
				SiNo
					si (A % 4 = 0 Y A % 400 = 0 Y A % 100 = 0) Y M = 3 Entonces
						D = 29 
						M = 2
					SiNo
						si D = 1 Y M = 3 Entonces
							D = 28
							M = 2
						SiNo
							Si D = 1 Y (M = 5 O M = 7 O M = 10 O M = 12) Entonces
								D = 30
								M = M - 1
							SiNo
								D = D - 1
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		2 : 
			Si D = 1 Entonces
				D = 31 
				M = 1
			SiNo
				D = D - 1
			FinSi
		4 , 6 , 9 , 11 :
			Si D = 1 Entonces
				D = 31 
				M = M - 1
			SiNo
				D = D - 1
			FinSi
	FinSegun

FinSubProceso	