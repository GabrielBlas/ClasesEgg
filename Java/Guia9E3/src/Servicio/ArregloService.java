package Servicio;

import java.util.Arrays;
import java.util.Random;

public class ArregloService {
    // Método para inicializar un arreglo con números aleatorios
    public static void inicializarA(int[] arreglo) {
        Random random = new Random();
        for (int i = 0; i < arreglo.length; i++) {
            arreglo[i] = random.nextInt(100); // Números aleatorios entre 0 y 99
        }
    }

    // Método para mostrar un arreglo
    public static void mostrar(int[] arreglo) {
        System.out.println(Arrays.toString(arreglo));
    }

    // Método para ordenar un arreglo de mayor a menor
    public static void ordenar(int[] arreglo) {
        Arrays.sort(arreglo);
        // Invertir el arreglo para ordenarlo de mayor a menor
        for (int i = 0; i < arreglo.length / 2; i++) {
            int temp = arreglo[i];
            arreglo[i] = arreglo[arreglo.length - 1 - i];
            arreglo[arreglo.length - 1 - i] = temp;
        }
    }

    // Método para inicializar el arreglo B con los primeros 10 números del arreglo A y 0.5 en las últimas 10 posiciones
    public static void inicializarB(int[] arregloA, int[] arregloB) {
        for (int i = 0; i < 10; i++) {
            arregloB[i] = arregloA[i];
        }
        for (int i = 10; i < arregloB.length; i++) {
            arregloB[i] = (int) 0.5;
        }
    }

    // Método para ordenar el arreglo B de mayor a menor
    public static void ordenarB(int[] arregloB) {
        Arrays.sort(arregloB);
        // Invertir el arreglo para ordenarlo de mayor a menor
        for (int i = 0; i < arregloB.length / 2; i++) {
            int temp = arregloB[i];
            arregloB[i] = arregloB[arregloB.length - 1 - i];
            arregloB[arregloB.length - 1 - i] = temp;
        }
    }
}
