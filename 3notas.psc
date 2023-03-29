///Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
///N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
///Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
///sus estudiantes:
///	§ Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
///	reprueba el curso si tiene una nota final inferior a 6.5
///		§ Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
///		§ La mayor nota obtenida en las exposiciones.
///		§ Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
///		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
///		las 3 notas y calculará todos informes claves que requiere el docente.
Algoritmo 3_notas_docente
	definir notas_integrador,nota_exposicion,nota_parcial, nota_mayor, nota_final,nota_promedio,porcentaje_int Como real
	definir suma_reprobados  Como Real
	definir alumnos,i,contador, contador_reprobados Como Entero
	
	escribir " ingrese la cantidad de alumnos"
	leer alumnos
	nota_final=0
	para i=1 hasta alumnos Hacer
		escribir "ingrese nota de Integrador:"
		leer notas_integrador
		escribir "ingrese nota de exposicion:"
		leer nota_exposicion
		escribir "ingrese nota de Parcial:"
		leer nota_parcial
		nota_final=(notas_integrador*0.35)+(nota_exposicion*0.25)+(nota_parcial*0.40)
		nota_promedio=nota_final/alumnos
		segun nota_promedio  Hacer
				nota_promedio<6.5:
				suma_reprobados=suma_reprobados+nota_promedio
				contador_reprobados=contador_reprobados+1
			nota_promedio>7.5:
				
				
				
				
		
	FinPara
	Escribir "el promedio de los reprobados es:", suma_reprobados/contador_reprobados
	
	
FinAlgoritmo
//si nota_promedio<6.5 Entonces
	//			escribir " reprobado"
	//		sino
	//			si nota_promedio>7.5 entonces
	//				
	//			FinSi