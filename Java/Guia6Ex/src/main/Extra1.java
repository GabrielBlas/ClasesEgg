package main;

import java.util.Scanner;

import Clases.Ex1;

public class Extra1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("¿Cuántas canciones deseas ingresar? ");
        int n = sc.nextInt();
        sc.nextLine(); // Consumir el salto de línea

        Ex1[] canciones = new Ex1[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Ingrese la información de la canción " + (i+1) + ":");
            System.out.print("Título: ");
            String titulo = sc.nextLine();
            System.out.print("Autor: ");
            String autor = sc.nextLine();

            canciones[i] = new Ex1(titulo, autor);
        }

        System.out.println("Las canciones ingresadas son: ");
        for (int i = 0; i < n; i++) {
            System.out.println(canciones[i].getTitulo() + " de " + canciones[i].getAutor());
        }
    }
}