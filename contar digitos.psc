Algoritmo Contar_digitos
    Definir numero, digitos Como Real
    Escribir "Ingrese un n�mero entero positivo:"
    Leer numero
    digitos <- 0
    Mientras (numero > 0) Hacer
        numero <- numero / 10
        digitos <- digitos + 1
    FinMientras
    Escribir "El n�mero tiene ", digitos, " d�gitos."
FinAlgoritmo

