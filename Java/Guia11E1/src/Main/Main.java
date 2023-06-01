package Main;

import Atributos.Perro;
import Atributos.Persona;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese Datos del Perro 1: ");
        System.out.println("Nombre: ");
        String nombrePerro1 = scanner.nextLine();
        System.out.println("Raza: ");
        String razaPerro1 = scanner.nextLine();
        System.out.println("Edad: ");
        int edadPerro1 = scanner.nextInt();
        System.out.println("Tamaño: ");
        String tamanoPerro1 = scanner.nextLine();
        scanner.nextLine();
        Perro perro1 = new Perro(nombrePerro1, razaPerro1, edadPerro1, tamanoPerro1);

        System.out.println("Ingrese Datos del Perro 1: ");
        System.out.println("Nombre: ");
        String nombrePerro2 = scanner.nextLine();
        System.out.println("Raza: ");
        String razaPerro2 = scanner.nextLine();
        System.out.println("Edad: ");
        int edadPerro2 = scanner.nextInt();
        System.out.println("Tamaño: ");
        String tamanoPerro2 = scanner.nextLine();
        scanner.nextLine();
        Perro perro2 = new Perro(nombrePerro2, razaPerro2, edadPerro2, tamanoPerro2);

        System.out.println("\nIngrese los datos de la Persona 1:");
        System.out.println("Nombre: ");
        String nombrePersona1 = scanner.nextLine();
        System.out.println("Apellido: ");
        String apellidoPersona1 = scanner.nextLine();
        System.out.println("Edad: ");
        int edadPersona1 = scanner.nextInt();
        System.out.println("D.N.I.: ");
        int dniPersona1 = scanner.nextInt();
        scanner.nextLine();
        Persona persona1 = new Persona(nombrePersona1, apellidoPersona1, edadPersona1, dniPersona1, perro1);

        System.out.println("\nIngrese los datos de la Persona 2:");
        System.out.println("Nombre: ");
        String nombrePersona2 = scanner.nextLine();
        System.out.println("Apellido: ");
        String apellidoPersona2 = scanner.nextLine();
        System.out.println("Edad: ");
        int edadPersona2 = scanner.nextInt();
        System.out.println("D.N.I.: ");
        int dniPersona2 = scanner.nextInt();
        scanner.nextLine();
        Persona persona2 = new Persona(nombrePersona2, apellidoPersona2, edadPersona2, dniPersona2, perro2);
    }
}
