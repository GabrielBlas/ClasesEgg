Algoritmo Contar_digitos
    Definir numero, digitos, numero_original Como Entero
    Escribir "Ingrese un n�mero entero positivo:"
    Leer numero
    Si numero > 0 Entonces
        digitos <- 0
        numero_original <- numero
        Mientras (numero_original > 0) Hacer
            numero_original <- trunc(numero_original / 10)
            digitos <- digitos + 1
        FinMientras
        Escribir "El n�mero tiene ", digitos, " d�gitos."
    Sino
        Escribir "El n�mero ingresado no es positivo"
    FinSi
FinAlgoritmo
