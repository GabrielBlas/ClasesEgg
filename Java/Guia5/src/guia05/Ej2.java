package guia05;

import java.util.Arrays;
import java.util.Scanner;

public class Ej2 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese un numero");
        int size = scanner.nextInt();
        int [] vector = new int[size];
        for (int i = 0; i < size; i++) {
            vector[i] = (int)(Math.random() * 10) + 1;
        }
        System.out.println("Vector: " + Arrays.toString(vector));
        System.out.println("Ingrese un numero a buscar: ");
        int num = scanner.nextInt();
        int index = -1;
        boolean estaRepetido = false;
        
       for (int i = 0; i < size; i++) {
    if (vector[i] == num) {
        estaRepetido = index != -1;
        index = i;
    }
}
if (index != -1) {
    System.out.println(num + " se encuentra en el indice " + index);
    if (estaRepetido) {
        System.out.println(num + " esta repetido en el vector");
    } else {
        System.out.println(num + " no esta repetido en el vector");
    }
} else {
    System.out.println(num + " no se encuentra en el vector");
}

    }
}
