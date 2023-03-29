Algoritmo guia_extra8
	
	//Primero le preguntamos al usuario bajo que modalidad de salario se encuentra, 
	//para eso usamos la funcion Segun - Hacer y De otro Modo en caso de que no entienda la modalidad que eligio
	
	Definir modalidad Como Caracter
	
	Escribir 'Ingrese la modalidad de sueldo:' 
	Escribir 'A. comision, B. salario fijo y comision, C. salario fijo'
	Leer modalidad
	
	modalidad = Minusculas(modalidad)
	
	Segun modalidad Hacer
		'comision', 'a': //en la primer opcion solo nos pide ingresar el monto total de las ventas
			Definir montoVentas Como Real
			Escribir 'Ingresar el monto total de las ventas realizadas en la semana'
			Leer montoVentas
			
			Imprimir 'El salario correspondiente es de: $' montoVentas*0.4 // el salario bajo esta modalidad es el 40% de las ventas que realizo el usuario
			
		'salario fijo y comision', 'b': //La segunda modalidad debemos preguntar cuantas horas trabajo (y que esas horas no superen las 40horas) y cuanto se le paga por hora
			
			Definir pagoPorHora, cantidadDeHoras, montoVentas Como Real
			
			Escribir 'Ingrese la cantidad de horas trabajadas, teniendo en cuenta que la cantidad de horas extras no estan contempladas'
			Leer cantidadDeHoras
			Escribir 'Ingrese el valor que se le paga por hora'
			Leer pagoPorHora
			Escribir 'Ingresar el monto total de las ventas realizadas en la semana'
			Leer montoVentas
			SI cantidadDeHoras <40 y cantidadDeHoras>0 Entonces //Esto es porque no puede superar las 40 horas
				Imprimir 'El salario correspondiente es de: $' (montoVentas*0.25)+(pagoPorHora*cantidadDeHoras) //se le cobra 25% por las ventas realizadas + la cantidad de horas que trabajo
			SiNo
				SI cantidadDeHoras >= 40 Entonces
					Imprimir 'La cantidad de horas trabajadas no deben superar las 40 horas.'
				SiNo
					Imprimir 'Con que no trabajaste nada, tu salario es de $' montoVentas*0.25 // si trabajo cero horas, solo le corresponde la comision
				FinSi
				
			FinSi
			
		'salario fijo', 'c': //se divide en dos opciones, si supera las 40 horas trabajadas o no.
			Definir pagoPorHora, cantidadDeHoras Como Real
			Escribir 'Ingrese la cantidad de horas trabajadas'
			Leer cantidadDeHoras
			Escribir 'Ingrese el valor que se le paga por hora'
			Leer pagoPorHora
			
			SI cantidadDeHoras > 40  Entonces  
				Definir horaExtra, pagoExtra Como Real
				horaExtra = (cantidadDeHoras - 40) 
				pagoExtra = (pagoPorHora*0.5)+pagoPorHora
				Imprimir 'El salario correspondiente es de: $' (40*pagoPorHora)+(horaExtra*pagoExtra)
				
			SiNo
				SI cantidadDeHoras<=40 y cantidadDeHoras>0 Entonces
					
					Imprimir 'El salario correspondiente es de: $' (pagoPorHora*cantidadDeHoras)
					
				SiNo
					Imprimir 'A sos gracioso bobo' 
				FinSi
				
			FinSi
		De Otro Modo:
			Imprimir 'La opcion de modalidad no es valida'
	FinSegun
	
FinAlgoritmo
