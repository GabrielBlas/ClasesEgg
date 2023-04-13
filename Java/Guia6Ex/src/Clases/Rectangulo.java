package Clases;

import java.util.Scanner;

public class Rectangulo {
    private double lado1;
    private double lado2;

    public double calcularArea() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la medida del lado 1: ");
        lado1 = sc.nextDouble();
        System.out.print("Ingrese la medida del lado 2: ");
        lado2 = sc.nextDouble();
        double area = lado1 * lado2;
        return area;
    }
}
