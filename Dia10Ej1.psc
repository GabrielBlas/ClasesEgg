algoritmo Dia10Ej1
	
	definir sueldo2, comision, total_ventas Como Real
	Definir num_vendedores, ventas,sueldo1, dias_trabajados, precio, i, j Como Entero
	Definir nombre,producto Como Cadena
	Escribir Sin Saltar"ingrese la cantidad de vendedores: "
	leer num_vendedores
	i=0
	Para i<- 1 Hasta num_vendedores Con Paso 1 Hacer
		escribir Sin Saltar"ingrese el nombre del vendedor: "
		leer nombre
		escribir "ingrese el sueldo basico: "
		leer sueldo1
		escribir "ingrese el numero de ventas: "
		leer ventas
		Escribir "ingrese la cantidad de dias de la semana que trabajo: "
		leer dias_trabajados
		total_ventas = 0
		Para j<- 1 Hasta ventas Con Paso 1 Hacer
			Escribir Sin Saltar "Ingresa el nombre del producto "
			leer producto
			Escribir Sin Saltar "ingrese el precio: "
			leer precio
			total_ventas = total_ventas + precio
		Fin Para
		comision = total_ventas * 0.1
		sueldo2 = sueldo1 + comision
		Escribir "la cantidad de ventas totales es: ", ventas
		Escribir "la cantidad de comisiones es: ", comision
		Escribir "la cantidad de dias trabajados es: ", dias_trabajados
		Escribir "el sueldo total es: ", sueldo2
	Fin Para
FinAlgoritmo