package guia05;

import java.util.Scanner;

public class Ej6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[][] cuadrado = new int[3][3];
        int sumaFila1 = 0, sumaFila2 = 0, sumaFila3 = 0, sumaCol1 = 0, sumaCol2 = 0, sumaCol3 = 0, sumaDiagonal1 = 0, sumaDiagonal2 = 0;
        boolean valido = true;

        // Introducir los números del cuadrado por teclado
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print("Introduce un número del 1 al 9 para la posición [" + i + "][" + j + "]: ");
                int num = sc.nextInt();
                if (num < 1 || num > 9) {
                    System.out.println("Número no válido. Introduce un número del 1 al 9.");
                    valido = false;
                    break;
                }
                cuadrado[i][j] = num;
            }
        }

        if (valido) {
            // Comprobar las sumas de filas, columnas y diagonales
            sumaFila1 = cuadrado[0][0] + cuadrado[0][1] + cuadrado[0][2];
            sumaFila2 = cuadrado[1][0] + cuadrado[1][1] + cuadrado[1][2];
            sumaFila3 = cuadrado[2][0] + cuadrado[2][1] + cuadrado[2][2];
            sumaCol1 = cuadrado[0][0] + cuadrado[1][0] + cuadrado[2][0];
            sumaCol2 = cuadrado[0][1] + cuadrado[1][1] + cuadrado[2][1];
            sumaCol3 = cuadrado[0][2] + cuadrado[1][2] + cuadrado[2][2];
            sumaDiagonal1 = cuadrado[0][0] + cuadrado[1][1] + cuadrado[2][2];
            sumaDiagonal2 = cuadrado[0][2] + cuadrado[1][1] + cuadrado[2][0];

            if (sumaFila1 == sumaFila2 && sumaFila2 == sumaFila3 && sumaFila3 == sumaCol1 && sumaCol1 == sumaCol2
                    && sumaCol2 == sumaCol3 && sumaCol3 == sumaDiagonal1 && sumaDiagonal1 == sumaDiagonal2) {
                System.out.println("El cuadrado es mágico.");
            } else {
                System.out.println("El cuadrado no es mágico.");
            }
        }
    }
}