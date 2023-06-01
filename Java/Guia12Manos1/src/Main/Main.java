package Main;

import java.util.ArrayList;
import java.util.Scanner;
import Objetos.Animal;
import Objetos.Gato;
import Objetos.Perro;

public class Main {
    public static void main(String[] args) {
        ArrayList<Animal> animales = new ArrayList<>();

        Scanner scanner = new Scanner(System.in);
        System.out.print("¿Cuántos animales quieres crear? ");
        int cantidadAnimales = scanner.nextInt();
        scanner.nextLine(); // Limpiar el buffer de entrada

        for (int i = 0; i < cantidadAnimales; i++) {
            System.out.println("Animal " + (i+1) + ":");
            System.out.print("Ingrese el tipo de animal (perro/gato): ");
            String tipo = scanner.nextLine();

            Animal animal;
            if (tipo.equalsIgnoreCase("perro")) {
                animal = new Perro();
            } else if (tipo.equalsIgnoreCase("gato")) {
                animal = new Gato();
            } else {
                System.out.println("Tipo de animal inválido. Se creará un animal genérico.");
                animal = new Animal();
            }

            animales.add(animal);
        }

        System.out.println("Los animales hacen ruido:");
        for (Animal animal : animales) {
            animal.hacerRuido();
        }
    }
}
