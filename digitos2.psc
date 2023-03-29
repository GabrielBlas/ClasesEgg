Algoritmo Contar_digitos
    Definir numero, digitos Como Entero
    Escribir "Ingrese un número entero positivo:"
    Leer numero
    digitos <- 0
    Mientras (numero > 0) Hacer
        numero <- trunc(numero / 10)
        digitos <- digitos + 1
    FinMientras
    Escribir "El número tiene ", digitos, " dígitos."
FinAlgoritmo

