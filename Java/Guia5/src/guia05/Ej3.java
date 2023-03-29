package guia05;

import java.util.Scanner;

public class Ej3 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el tamanio del vector: ");
        int tamano = scanner.nextInt();
        int[] vector = new int[tamano];
        for (int i = 0; i < tamano; i++) {
            System.out.println("Ingrese el elemento " + (i + 1) + ": ");
            vector[i] = scanner.nextInt();
        }
        int[] digitos = new int[6];
        for (int i = 0; i < tamano; i++) {
            int numerosDigitos = contarDigitos(vector[i]);
            digitos[numerosDigitos]++;
        }
        for (int i = 1; i <= 5; i++) {
            if (digitos[i] > 0) {
                System.out.println("hay " + digitos[i] + " numeros de " + i + " digitos.");
            }
        }
    }
    public static int contarDigitos(int numero) {
        int numeroDigitos = 0;
        while (numero > 0) {
            numeroDigitos++;
            numero /= 10;
        }
        return numeroDigitos;
    }
}
