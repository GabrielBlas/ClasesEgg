package Objeto;

import java.util.ArrayList;
import java.util.Scanner;

public class Raza {
    
    public void leerRazas() {
        ArrayList<String> razasPerros = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        String raza;
    
        do {
            System.out.print("Ingrese una raza de perro (o 'salir' para terminar): ");
            raza = scanner.nextLine();
            if (!raza.equalsIgnoreCase("salir")) {
                razasPerros.add(raza);
            }
        } while (!raza.equalsIgnoreCase("salir"));
    
        System.out.println("\nLas razas de perros guardadas son:");
        for (String razaPerro : razasPerros) {
            System.out.println(razaPerro);
        }
    
        scanner.close();
    }
}