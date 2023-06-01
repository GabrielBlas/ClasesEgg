package Main;

import java.util.ArrayList;
import java.util.Scanner;
import objetos.Baraja;
import objetos.Carta;

public class Main {
    public static void main(String[] args) {
        Baraja baraja = new Baraja();
        baraja.barajar();

        Scanner scanner = new Scanner(System.in);
        int opcion;

        do {
            System.out.println("=== Menú ===");
            System.out.println("1. Mostrar siguiente carta");
            System.out.println("2. Mostrar número de cartas disponibles");
            System.out.println("3. Dar cartas");
            System.out.println("4. Mostrar cartas en el montón");
            System.out.println("5. Mostrar baraja completa");
            System.out.println("0. Salir");
            System.out.print("Ingrese una opción: ");
            opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    Carta siguienteCarta = baraja.siguienteCarta();
                    if (siguienteCarta != null) {
                        System.out.println("Carta: " + siguienteCarta);
                    }
                    break;
                case 2:
                    int cartasDisponibles = baraja.cartasDisponibles();
                    System.out.println("Número de cartas disponibles: " + cartasDisponibles);
                    break;
                case 3:
                    System.out.print("Ingrese el número de cartas a repartir: ");
                    int numCartas = scanner.nextInt();
                    ArrayList<Carta> cartasRepartidas = baraja.darCartas(numCartas);
                    if (cartasRepartidas != null) {
                        System.out.println("Cartas repartidas: ");
                        for (Carta carta : cartasRepartidas) {
                            System.out.println(carta);
                        }
                    }
                    break;
                case 4:
                    baraja.cartasMonton();
                    break;
                case 5:
                    baraja.mostrarBaraja();
                    break;
                case 0:
                    System.out.println("¡Hasta luego!");
                    break;
                default:
                    System.out.println("Opción inválida. Intente nuevamente.");
                    break;
            }

            System.out.println();
        } while (opcion != 0);

        scanner.close();
    }
}