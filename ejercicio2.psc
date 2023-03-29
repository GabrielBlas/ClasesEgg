///Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
///espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el funcionamiento
///	de la función Subcadena().
///	NOTA:. En PseInt, si queremos escribir sin que haya saltos de línea, al final de la operación
	///	"escribir" escribimos "sin saltar". Por ejemplo:
		///	Escribir sin saltar "Hola, "
			///Escribir sin saltar "cómo estás?"
	///Imprimirá por pantalla: Hola, cómo estás?
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
