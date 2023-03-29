Algoritmo ContarPalabras
	Definir  frase, vector Como Cadena
	Definir contador, n, i Como Entero
	Leer frase
	n=Longitud(frase)
	Dimension vector(n)
	contador<-0
	Para i=0 Hasta n -1 Hacer
		vector(i)=Subcadena(frase,i,i)
	FinPara
	Para i=0 hasta n-1 Hacer
		si vector(i)= " " Entonces
			contador=contador+1
		FinSi
	FinPara

	Escribir "La frase contiene palabra(s). ", contador+1
FinAlgoritmo