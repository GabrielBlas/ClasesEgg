package guia05;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        String[] palabras = new String[5];
        
        for (int i = 0; i < palabras.length; i++) {
            System.out.print("Ingrese palabra " + (i+1) + ": ");
            palabras[i] = sc.next();
            
            while (palabras[i].length() < 3 || palabras[i].length() > 5) {
                System.out.print("Palabra no válida. Ingrese una palabra entre 3 y 5 caracteres: ");
                palabras[i] = sc.next();
            }
        }
        
        char[][] sopaDeLetras = new char[20][20];
        
        int filaAleatoria = (int)(Math.random() * 20);
        int columnaInicialAleatoria = (int)(Math.random() * 16);
        
        for (int i = 0; i < palabras.length; i++) {
            for (int j = 0; j < palabras[i].length(); j++) {
                sopaDeLetras[filaAleatoria][columnaInicialAleatoria + j] = palabras[i].charAt(j);
            }
            columnaInicialAleatoria += palabras[i].length() + 1;
        }
        
        for (int i = 0; i < sopaDeLetras.length; i++) {
            for (int j = 0; j < sopaDeLetras[i].length; j++) {
                if (sopaDeLetras[i][j] == 0) {
                    sopaDeLetras[i][j] = (char)((int)(Math.random() * 10) + 48);
                }
                System.out.print(sopaDeLetras[i][j] + " ");
            }
            System.out.println();
        }
        
    }

}