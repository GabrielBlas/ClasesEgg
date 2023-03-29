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
Algoritmo notas_docente
	definir nota1,nota2,nota3, nota_mayor, nota_final,nota_promedio,porcentaje_int Como real
	definir aprobados, reprobados, aprobatoria como real
	definir alumnos,i,contador, contador_reprobados Como Entero
	aprobatoria = 6.5
	aprobados = 0
	reprobados = 0
	
	escribir " ingrese la cantidad de alumnos"
	leer alumnos
	
	para i=1 hasta alumnos Hacer
		escribir "ingrese nota de Integrador:"
		leer nota1
		
		escribir "ingrese nota de exposicion:"
		leer nota2
		
		escribir "ingrese nota de Parcial:"
		leer nota3
		
		nota_final=(nota1*0.35)+(nota2*0.25)+(nota3*0.40)/3
	    Escribir " La nota promedio es:" nota_final
		
		SI nota_final >= aprobatoria Entonces
			aprobados = aprobados + 1
		SiNo
			reprobados = reprobados + 1
			
		FinSi
				
	    FinPara
		Escribir "Los aprobados son:" aprobados
		Escribir "Los reprobados son:" reprobados
	
FinAlgoritmo
