package guia05;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese tamaño del vector");
        int tamanoVector = leer.nextInt();
        int sumando = 0;
         int[] vector = new int[tamanoVector];
        
        for (int i=0; i < tamanoVector; i++) {
            System.out.print("Ingrese el numero en la posicion " + (i+1) +": ");
            vector[i]= leer.nextInt();
            sumando += vector[i];
        }
        System.out.println("La suma de los elementos del vector es: " + sumando);
    }
    
}