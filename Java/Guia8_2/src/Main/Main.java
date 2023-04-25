package Main;

import Clase.Cafetera;
import Servicio.CafeteraServicio;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Cafetera cafetera = new Cafetera(1000, 500); // capacidadMáxima = 1000, cantidadActual = 500

        CafeteraServicio cafeteraServicio = new CafeteraServicio();

        Scanner scanner = new Scanner(System.in);

        System.out.println("Bienvenido a Nespresso");
        System.out.println("1. Llenar la cafetera");
        System.out.println("2. Servir una taza");
        System.out.println("3. Vaciar la cafetera");
        System.out.println("4. Agregar café");
        System.out.println("5. Salir");

        int opcion;
        do {
            System.out.print("Seleccione una opción: ");
            opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    cafeteraServicio.llenarCafetera(cafetera);
                    System.out.println("La cafetera ha sido llenada.");
                    break;
                case 2:
                    System.out.print("Ingrese el tamaño de la taza en ml: ");
                    int tamanoTaza = scanner.nextInt();
                    cafeteraServicio.servirTaza(tamanoTaza, cafetera);
                    break;
                case 3:
                    cafeteraServicio.vaciarCafetera(cafetera);
                    System.out.println("La cafetera ha sido vaciada.");
                    break;
                case 4:
                    System.out.print("Ingrese la cantidad de café en ml: ");
                    int cantidadCafe = scanner.nextInt();
                    cafeteraServicio.agregarCafe(cantidadCafe, cafetera);
                    System.out.println("Se ha agregado café a la cafetera.");
                    break;
                case 5:
                    System.out.println("Gracias por usar Nespresso. ¡Hasta luego!");
                    break;
                default:
                    System.out.println("Opción inválida. Por favor, seleccione una opción válida.");
                    break;
            }

        } while (opcion != 5);

        // Cerrar el objeto Scanner al finalizar
        scanner.close();
    }
}
