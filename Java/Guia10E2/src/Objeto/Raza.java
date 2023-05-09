package Objeto;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class Raza {

    public void Raza() {
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

        System.out.print("\nIngrese un perro para buscar y eliminar de la lista: ");
        String perroBuscado = scanner.nextLine();
        Iterator<String> iterator = razasPerros.iterator();
        boolean encontrado = false;
        while (iterator.hasNext()) {
            String razaPerro = iterator.next();
            if (razaPerro.equalsIgnoreCase(perroBuscado)) {
                iterator.remove();
                encontrado = true;
                break;
            }
        }
        razasPerros.sort(String.CASE_INSENSITIVE_ORDER);
        System.out.println("\nLista de razas de perros ordenadas:");
        for (String razaPerro : razasPerros) {
            System.out.println(razaPerro);
        }

        if (encontrado) {
            System.out.println("\nEl perro fue eliminado de la lista.");
        } else {
            System.out.println("\nEl perro no se encontró en la lista.");
        }
    }
}
