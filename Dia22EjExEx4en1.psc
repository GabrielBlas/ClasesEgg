Algoritmo TodosLosEjercicios
	Definir opcion, M, N, i, j, suma, fila Como Entero
	Escribir "Seleccione una opción:"
	Escribir "1. Ejercicio 1"
	Escribir "2. Ejercicio 2"
	Escribir "3. Ejercicio 3"
	Escribir "4. Ejercicio 4"
	Leer opcion
	
	Segun opcion Hacer
Caso 1:
	ejercicio1
Caso 2:
	ejercicio2
Caso 3:
	ejercicio3
Caso 4:
	ejercicio4
De Lo Contrario:
	Escribir "Opción inválida"
FinSegun
FinAlgoritmo

SubProceso ejercicio1
	Escribir "ejecutando ejercicio 1..."
	Definir  frase, vector Como Cadena
	Definir contador, n, i Como Entero
	Escribir "ingrese una frase"
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
FinSubProceso

SubProceso ejercicio2
	Escribir "iniciando ejercicio 2"
		Definir nombre, apellido Como Cadena
		Escribir  Sin Saltar "Ingrese su Nombre: "
		Leer nombre
		Escribir Sin Saltar "Ingrese su Apellido: "
		Leer apellido
		nombre <- Mayusculas(Minusculas(nombre))
		apellido <- Mayusculas(Minusculas(apellido))
		nombre <- Mayusculas(Subcadena(nombre,0, 0)) + Minusculas(Subcadena(nombre,1, Longitud(nombre)))
		apellido <- Mayusculas(Subcadena(apellido,0, 0)) + Minusculas(Subcadena(apellido,1, Longitud(apellido)))
		Escribir "Su nombre es: ", nombre, " y su apellido es: ", apellido
FinSubProceso

SubProceso ejercicio3
	Escribir "iniciando ejercicio 3"
	Definir Mc,Fm,Tb,Ntb,sueldo,p1,p2,p3 Como Real
	Definir Matriz,M,N Como Entero
	Definir i,j Como Entero
	M=6;N=3
	Fm=0; Tb=0; Mc=0
	Ntb=0; sueldo=0
	Dimension Matriz[M,N]
	Para i=0 Hasta M-1 Hacer
		Para j=0 Hasta N-1 Hacer
			Matriz[i,j]=0
		FinPara
	FinPara
	Para i=0 Hasta M-1 Hacer
		Escribir "Ingrese su sexo 1)Masculino, 2)Femenino"; leer p1
		Matriz[i,0]=p1
		Escribir "ingrese si actualmente esta 1)Trabajando, 2)No tranaja"; Leer p2
		Matriz[i,1]=p2
		Escribir "Ingrese su sueldo, si no trabaja ingrese 0: "; Leer p3
		Matriz[i,2]=p3
		si (Matriz[i,0]=1) Entonces
			Mc=Mc+1
		SiNo
			Fm=Fm+1
		FinSi
		Si (Matriz[i,1]=1) Entonces
			Tb=Tb+1
			sueldo=sueldo+Matriz[i,2]
		SiNo
			Ntb=Ntb+1
		FinSi
	FinPara
	
	Escribir "el porcentaje de hombres es: ",(Mc/M)*100 
	Escribir " y mujeres es: ", (Fm/M)*100
	Escribir "el porcentaje de hombres que trabaja es: ",Tb/M*100 
	Escribir " y mujeres que trabajan es de:", ((Tb-Mc)/Fm)*100
	Escribir "el sueldo promedio de hombres es:", (sueldo/Tb) 
	Escribir " el sueldo promedio de mujeres es:", ((sueldo-sueldo/Tb)/(Tb-Mc))
FinSubProceso

SubProceso ejercicio4
	Escribir "iniciando ejercicio 4"
	Definir M,N,i,j, suma,fila Como Entero
	M=4; N=4
	Dimension original(M,N)
	Definir original Como Real
	
	para i=0 Hasta M-1
		para J=0 Hasta N-1
			original(i,j)=Aleatorio(7,68)
		FinPara
	FinPara
	imprimeMatriz(original,M,N)
	Escribir " "
	Escribir " "
	Escribir "Introduzca una fila que desea ver su suma (1 a ", M, "): "
	Leer fila
	fila=fila-1
	Escribir "la suma de la fila ",fila+1, " es: ", sumaFila(original, fila, N)
FinSubProceso

SubProceso imprimeMatriz(matriz, M,N)
	Definir i,j Como Entero
	para i=0 Hasta M-1
		Para j=0 Hasta N-1
			Escribir matriz(i,j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion  retorno=sumaFila(matriz, fila, N)
	Definir retorno,i, suma Como Entero
	suma = 0
	para i=0 Hasta N-1
		suma = suma + matriz(fila, i)
	FinPara
	retorno=suma
FinFuncion

	