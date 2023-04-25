package Entidad;

public class Persona {

    public String nombre;
    public int edad;
    public String genero;
    public double peso;
    public double altura;

    // Constructor
    public Persona() {
    }

    public Persona(String nombre, int edad, String genero, double peso, double altura) {
        this.nombre = nombre;
        this.edad = edad;
        this.genero = genero;
        this.peso = peso;
        this.altura = altura;
    }

    // Getters
    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public String getGenero() {
        return genero;
    }

    public double getPeso() {
        return peso;
    }

    public double getAltura() {
        return altura;
    }
}
