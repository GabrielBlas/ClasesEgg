package Entidades;

import java.util.Scanner;

public class Circunferencia {
    
    private float radio;
    
    public Circunferencia(float radio) {
        this.radio = radio;
    }
    public float getRadio() {
        return radio;
    }
    
    public void setRadio(float radio) {
        this.radio= radio;
    }
    public void crearCircunferencia() {
        System.out.println("Ingrese el radio");
        Scanner leer = new Scanner(System.in);
        this.setRadio(leer.nextFloat());
    }
    public void area() {
        double area = Math.PI*Math.pow(radio,2);
        System.out.println(area);
    }
    public void perimetro(){
        double perimetro = 2*Math.pow(radio, 2);
        System.out.println(perimetro);
    }
}