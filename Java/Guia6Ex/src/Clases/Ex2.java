package Clases;

import java.util.Scanner;

public class Ex2 {
    private double x1;
    private double y1;
    private double x2;
    private double y2;

    public Ex2() {
        this.x1 = 0;
        this.y1 = 0;
        this.x2 = 0;
        this.y2 = 0;
    }

    public Ex2(double x1, double y1, double x2, double y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
    }

    public void crearEx2() {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Ingrese la coordenada x1: ");
        this.x1 = sc.nextDouble();
        System.out.print("Ingrese la coordenada y1: ");
        this.y1 = sc.nextDouble();
        System.out.print("Ingrese la coordenada x2: ");
        this.x2 = sc.nextDouble();
        System.out.print("Ingrese la coordenada y2: ");
        this.y2 = sc.nextDouble();
    }

    public double calcularDistancia() {
        return (Math.sqrt(Math.pow((x2-x1), 2) + Math.pow((y2-y1), 2)));
    }
}