Funcion retorno <- suma_divisores(num)
    definir i, retorno como Entero
    definir suma como Entero
    suma <- 0
    para i <- 1 hasta num-1
        si num mod i == 0
             suma <- suma + i
        fin si
    fin para
    retorno <- suma
FinFuncion

Algoritmo principal
    definir num como Entero
    escribir "Ingrese un número:"
    leer num
    escribir "La suma de los divisores es:", suma_divisores(num)
FinAlgoritmo
