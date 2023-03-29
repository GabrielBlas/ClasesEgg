//Escribir un programa que calcule la suma de los N primeros números naturales. El valor de
//N se leerá por teclado.

algoritmo Dia9Ej5
    Definir n, i, suma Como Entero
    Escribir "Ingrese un numero"
    Leer n
    suma <- 0
    para i <- 0 Hasta n Hacer
        suma <- suma + i
    FinPara
    Escribir "La suma de los ", n, " primeros números naturales es: ", suma
FinAlgoritmo
