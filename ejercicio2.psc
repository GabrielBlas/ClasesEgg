///Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
///espacio entre cada letra. La frase se mostrar� as�: H o l a. Nota: recordar el funcionamiento
///	de la funci�n Subcadena().
///	NOTA:. En PseInt, si queremos escribir sin que haya saltos de l�nea, al final de la operaci�n
	///	"escribir" escribimos "sin saltar". Por ejemplo:
		///	Escribir sin saltar "Hola, "
			///Escribir sin saltar "c�mo est�s?"
	///Imprimir� por pantalla: Hola, c�mo est�s?
Algoritmo ejercicio2 
	definir palabra,n Como Caracter
	definir aux,i como entero
	escribir "ingrese una palabra"
	leer palabra
	i=0
	aux=Longitud(palabra)
	para i=0 hasta aux Hacer
		n =subcadena(palabra,i,i) 
		escribir sin saltar " ",n," "
	FinPara
	
	
	
FinAlgoritmo
