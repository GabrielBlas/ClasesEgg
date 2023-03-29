///Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
///trando la manera de que la frase se muestre de manera continua en la matriz.
Algoritmo _rellenar_con_palabras
	definir matri,p,p2,p3 como cadena
	definir i,e,u,a,r ,m,n,y1,y2,cont como entero
	Dimension matri(3,3)
	Mostrar  "ingrese palabra de un maximo de 9  caracateres: "
	leer p
	a<- Longitud(p)
	si a <= 9  Entonces
		cont<- 0
		
		para i <- 0 Hasta  2 Hacer
			para e<- 0 Hasta 2 Hacer			
					
					matri(i,e)<- Subcadena(p,cont,cont)
					cont<- cont +1			
					
				
				
			FinPara
		FinPara
		
		para r<- 0 Hasta  2 Hacer
			para u<- 0 Hasta 2 Hacer			
				Imprimir   Sin Saltar"   " matri(r,u),"   "				
			FinPara
			Imprimir"  "
			
		FinPara
		
	sino 
		Mostrar " excede el numero permitido!!"
	FinSi
	
	
	
FinAlgoritmo
