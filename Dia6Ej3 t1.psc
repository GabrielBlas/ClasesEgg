Algoritmo Dia6_Ej2_T1
Definir desayuno,con_que,tipo Como Caracter
Escribir 'hoy, ¿que queres desayunar Te o Cafe? '
Leer desayuno
Si desayuno=='cafe' Entonces
	Escribir '¿solo o cortado?'
	Leer con_que
	Si con_que=='cortado' Entonces
		Escribir 'prefieres leche vegetal'
		Leer tipo
		Si tipo=='si' Entonces
			Escribir 'ok, un cafe cortado con leche vegetal'
		FinSi
	FinSi
SiNo
	Escribir 'Usted eligio te, que lo disfrutes'
FinSi
FinAlgoritmo
