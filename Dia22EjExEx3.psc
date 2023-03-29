Algoritmo Dia22EjExEx3
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
	Escribir " y mujeres que trabajan es de:", Tb/Fm*100
	Escribir "el sueldo promedio de hombres es:", (sueldo/Tb) 
	Escribir " el sueldo promedio de mujeres es:", ((sueldo-sueldo/Tb)/(Tb-Mc))
FinAlgoritmo