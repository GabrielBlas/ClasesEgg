package servicios;

import objetos.Baraja;
import objetos.Carta;
import java.util.ArrayList;

public class BarajaServicio {
    public static void barajarBaraja(Baraja baraja) {
        baraja.barajar();
        System.out.println("La baraja ha sido barajada.");
    }

    public static void siguienteCarta(Baraja baraja) {
        Carta carta = baraja.siguienteCarta();
        if (carta != null) {
            System.out.println("La siguiente carta es: " + carta.toString());
        }
    }

    public static void cartasDisponibles(Baraja baraja) {
        int numCartas = baraja.cartasDisponibles();
        System.out.println("Número de cartas disponibles: " + numCartas);
    }

    public static void darCartas(Baraja baraja, int numCartas) {
        ArrayList<Carta> mano = baraja.darCartas(numCartas);
        if (mano != null) {
            System.out.println("Se han dado las siguientes cartas:");
            for (Carta carta : mano) {
                System.out.println(carta.toString());
            }
        }
    }

    public static void cartasMonton(Baraja baraja) {
        baraja.cartasMonton();
    }

    public static void mostrarBaraja(Baraja baraja) {
        baraja.mostrarBaraja();
    }
}
