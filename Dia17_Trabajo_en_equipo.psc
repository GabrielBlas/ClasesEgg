//El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad
//		del programador
Algoritmo sin_titulo
	Menu()
FinAlgoritmo

SubProceso Menu()
	Definir nuMenu Como Entero
	Escribir "1. Calcular muro de ladrillo." //gabbs
	Escribir "2. Calcular viga de hormigón." //agustin
	Escribir "3. Calcular columnas de hormigón." //angel
	Escribir "4. Calcular contrapisos." //mechi
	Escribir "5. Calcular techo."  //fernando
	Escribir "6. Calcular pisos."  //ailen
	Escribir "7. Calcular pintura." // gabriel blas
	Escribir "8. Calcular iluminación."  //charly
	Escribir "9. Salir."
	
	Leer nuMenu
	Segun nuMenu hacer
		1: calcularMuro()
		2: calcularViga()
		3: columnasdehormigon()
		4: calcularContraPisos()
		5: calcularTecho()
		6: CalcularPisos()
		7: CalculoPintura()
		8: calcularIluminacion()
		9: Escribir "CHAU"
		De Otro Modo:
			Escribir "Ingrese opción valida"
	FinSegun
	
FinSubProceso


Subproceso calcularSuperficie(sup Por Referencia, alto, largo)
	sup=alto*largo
FinFuncion

Subproceso calcularVolumen(largo Por Referencia, ancho Por Referencia, altura, volumen Por Referencia)
	volumen = largo * ancho * altura	
FinSubProceso

//4.Calcular contrapisos
SubProceso calcularContraPisos()
	definir base, espesor, ancho, largo como real
	Escribir "ingrese espesor, ancho y largo"
	leer espesor, ancho , largo
	Mientras espesor < 0 Hacer
		Escribir "dato incorrecto, ingrese uno valido"
		Leer espesor
	FinMientras
	Mientras ancho < 0 Hacer
		Escribir "dato incorrecto, ingrese uno valido"
		Leer ancho
	FinMientras
	Mientras largo < 0 Hacer
		Escribir "dato incorrecto, ingrese uno valido"
		Leer largo
	FinMientras
FinSubProceso

//2. calcular viga
subproceso calcularViga
	//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
	//	m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
	//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	escribir "ingrese el largo de la viga (en metros)"
	definir largovi Como Real
	leer largovi
	escribir "Para una viga de " largovi " metros necesitará:"
	Escribir largovi*9 " kg de cemento"
	Escribir largovi*0.02 " m3 de arena"
	escribir largovi*0.02 " m2 de piedra"
	escribir largovi*4 " metros de hierro del 8"
	escribir "y " largovi*3 " metros de hierro del 4"
FinSubProceso

// calcular ilumnacion
subproceso calcularIluminacion()
	definir alto, largo, superficie, cantMinima como real
	escribir "Se precisa la superficie, ingrese alto y largo:"
	leer alto, largo
	calcularSuperficie(superficie, alto, largo)
	cantMinima = superficie * 0.20
	escribir "La cantidad mínima de superficie de iluminación natural es de ", cantMinima, " metros cuadrados."
FinSubProceso

//calcular pintura
SubProceso CalculoPintura()
	Definir altura, ancho, superficie, litros_pintura Como Real
	Escribir "Ingrese la altura del muro en metros:"
	Leer altura
	Escribir "Ingrese el ancho del muro en metros:"
	Leer ancho
	superficie <- altura * ancho
	litros_pintura <- superficie / 6
	Escribir "La superficie del muro es de " , superficie, " metros cuadrados."
	Escribir "Se necesitarán " , litros_pintura, " litros de pintura."
FinSubProceso

//Calcular muro
SubProceso calcularMuro()
	Definir largo, espesor, alto, sup Como Entero
	definir cem,arena, ladrillos Como Real
	
	//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
	//m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
	//Debemos mostrar al usuario la cantidad de materiales necesaria.
	///Nos debe pedir primero si el muro será de 20 o 30 cm de espesor

		Repetir
			
			Escribir "¿El muro será de 20 o 30 cm de espesor? :"
			Leer espesor
		Mientras Que espesor <> 20 Y espesor <> 30
		
	
	///Luego el largo y el alto
	Escribir "Ingrese el largo y alto del muro."
	Leer largo, alto
	///a partir de estos datos se debe mostrar al usuario la superficie del muro
	calcularSuperficie(sup, alto, largo)
	Escribir "La superficie del muro es de " sup "m³"
	///Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
	///Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
	si espesor = 30 Entonces
		cem= sup * 15.2
		arena = sup * 0.115
		ladrillos = sup * 120
		escribir "la cantidad de materiales necesarios son " " cemento: " cem " kg" "," " arena: " arena " m3" ","  " ladrillos: " ladrillos
	SiNo
		si espesor = 20 Entonces
			cem = sup * 10.9
			arena = sup * 0.09
			ladrillos = sup * 90
			escribir "la cantidad de materiales necesarios son " " cemento: " cem " kg" "," " arena: " arena " m3" ","  " ladrillos: " ladrillos
		FinSi
	FinSi
	
FinSubProceso

//Clacular pisos
Subproceso CalcularPisos()
	Definir ancho, alto, largo Como Real 
	Escribir "Ingresar el ancho y el largo del piso a colocar. " 
	Leer ancho, largo
	rec = 0.10
	sup = ( ( ancho * largo ) * rec ) / 100
	Escribir " La sueperficie del piso es ", sup, "m2."
FinFuncion

//Columnas de hormigon
subproceso columnasdehormigon()
	Definir largo,arena,piedra,hierro,hierro4,cemento Como Real
	cemento=0
	arena=0
	piedra=0
	hierro=0
	hierro4=0
	largo=0
	escribir"ingrese largo de columna"
	leer largo
	mientras largo <= 0 Hacer
		escribir "dato incorrecto"
		escribir"ingrese largo"
		leer largo
	FinMientras
	cemento=7.5*largo
	escribir"se necesitan " cemento," kg de cemento "
	arena=0.016*largo
	escribir"se necesitan " arena, " m3 de arena"
	piedra=0.016*largo
	escribir"se necesitan " piedra " m2 de piedra"
	hierro=6*largo
	escribir"se necesitan " hierro, " mts de hierro del 10 "
	hierro4=4*largo
	escribir "se necesitan " hierro4, " mts de hieroo del 4"
FinSubProceso


SubProceso calcularTecho()
	
	definir espesor, ancho, altura, base Como Real
	Escribir "Ingrese el espesor del techo."
	leer espesor
	Escribir "Ingrese el ancho del techo."
	leer ancho
	Escribir "Ingrese el largo del techo."
	leer altura
	base = ancho * altura * espesor
	Escribir "De cemento se necesita: ", 33 * base
	Escribir "De arena se necesita: ", 0.072 * base
	Escribir "De piedra se necesita: ", 0.072 * base
	Escribir "De hierro del 8 se necesita: " 7* base
	Escribir "De hierro del 6 se necesita: " 4* base
	
FinSubProceso