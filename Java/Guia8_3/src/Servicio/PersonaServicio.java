package servicio;

import java.util.Scanner;
import Entidad.Persona;

public class PersonaServicio {

    Scanner scanner = new Scanner(System.in).useDelimiter("\n");

    public Persona crearPersona() {

        System.out.print("Nombre: ");
        String nombre = scanner.nextLine();
        boolean seguir = true;
        String genero = "";
        System.out.print("Edad: ");
        int edad = scanner.nextInt();
        scanner.nextLine(); // Limpiar el buffer del scanner
        do {
            System.out.print("Género (M/F/O): ");
            genero = scanner.next();

            if (!(genero.equalsIgnoreCase("M") || genero.equalsIgnoreCase("F") || genero.equalsIgnoreCase("O"))) {
                System.out.println("Caracter no valido");
            } else {
                seguir = false;
            }
        } while (seguir);

        scanner.nextLine(); // Limpia el buffer del scanner

        System.out.print("Peso (kg): ");
        double peso = scanner.nextDouble();

        System.out.print("Altura (m): ");
        double altura = scanner.nextDouble();

        return new Persona(nombre, edad, genero, peso, altura); // borrar new (solo new) y crear objeto Persona arriba linea 9
    }

    public boolean esMayorEdad(Persona persona) {
        return persona.getEdad() >= 18;
    }

    public void mostrarInformacion(Persona persona) {
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad() + " años");
        System.out.println("Género: " + persona.getGenero());
        System.out.println("Peso: " + persona.getPeso() + " kg");
        System.out.println("Altura: " + persona.getAltura() + " m");
        System.out.println("IMC: " + calcularIMC(persona.getPeso(), persona.getAltura()));
        System.out.println("Peso ideal: " + calcularPesoIdeal(persona.getAltura()));
    }

    public int calcularIMC(double peso, double altura) {
        double imc = peso / (altura * altura);
        if (imc < 18.5) {
            return -1; // Por debajo del peso ideal
        } else if (imc >= 18.5 && imc <= 24.9) {
            return 0; // Peso ideal
        } else {
            return 1; // Sobrepeso
        }
    }

    public double calcularPesoIdeal(double altura) {
        return 18.5 * (altura * altura);
    }
}
