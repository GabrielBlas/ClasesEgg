package main;

import Clases.Ex2;

public class Extra2 {
    public static void main(String[] args) {
        Ex2 puntos = new Ex2();
        puntos.crearEx2(); // Llamada al método para pedir al usuario las coordenadas
        System.out.println("La distancia entre los puntos es: " + puntos.calcularDistancia());
    }
}