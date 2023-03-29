Algoritmo Dia16Ej6
    Definir letra Como Caracter
    Escribir "ingrese una letra"
    Leer letra
    letra=Mayusculas(letra)
    checkLetra(letra)
FinAlgoritmo

SubProceso checkLetra(letra)
    si "M" <= letra y "T" >= letra Entonces
        Escribir "su letra esta entre la M y la T"
    SiNo
        Escribir "Su letra no esta entre la M y la T"
    FinSi
FinSubProceso