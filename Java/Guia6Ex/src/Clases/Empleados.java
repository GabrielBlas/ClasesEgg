package Clases;

public class Empleados {
    private String nombre;
    private int edad;
    private double salario;

    public Empleados(String nombre, int edad, double salario) {
        this.nombre = nombre;
        this.edad = edad;
        this.salario = salario;
    }

    public void calcular_aumento() {
        double aumento;
        if (edad > 30) {
            aumento = salario * 0.10;
        } else {
            aumento = salario * 0.05;
        }
        salario += aumento;
        System.out.println("El salario de " + nombre + " ha aumentado a $" + salario);
    }
}