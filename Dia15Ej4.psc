Algoritmo sin_titulo
    Definir txto, letra, auxfrase, vcales como caracter
    Definir cntrol, i, j como entero
    vcales <- 'aeiou'
    auxfrase <- ""
	Escribir 'Ingrese una secuencia de caracteres: ' sin saltar
    Leer txto
    txto <- Minusculas(txto)
    Para i <- 0 hasta Longitud(txto) hacer
        cntrol <- 1
        letra <- Subcadena(txto, i, i)
        Para j <- 0 hasta Longitud(vcales) hacer
            Si letra = Subcadena(vcales, j, j) Entonces
                cntrol <- 0
                Segun Subcadena(vcales, j, j) hacer
                    'a':auxfrase <- Concatenar(auxfrase, '@')
                    'e':auxfrase <- Concatenar(auxfrase, '#')
                    'i':auxfrase <- Concatenar(auxfrase, '$')
                    'o':auxfrase <- Concatenar(auxfrase, '%')
                    'u':auxfrase <- Concatenar(auxfrase, '*')
                FinSegun
            FinSi
        FinPara
        Si cntrol = 1 Entonces
            auxfrase <- Concatenar(auxfrase, letra)
        FinSi
    FinPara
    Escribir 'Frase o palabra codificada: ', auxfrase
FinAlgoritmo