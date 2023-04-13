package main;

import Clases.Rectangulo;

public class MainRectangulo {
    public static void main(String[] args) {
        Rectangulo rectangulo1 = new Rectangulo();
        double area = rectangulo1.calcularArea();
        System.out.println("El área del rectángulo es: " + area);
    }
}
