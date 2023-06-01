package objetos;

import java.util.ArrayList;
import java.util.Collections;

public class Baraja {
    private ArrayList<Carta> cartas;
    private ArrayList<Carta> monton;

    public Baraja() {
        cartas = new ArrayList<>();
        monton = new ArrayList<>();

        String[] palos = {"espadas", "bastos", "oros", "copas"};

        for (String palo : palos) {
            for (int numero = 1; numero <= 12; numero++) {
                if (numero != 8 && numero != 9) {
                    cartas.add(new Carta(numero, palo));
                }
            }
        }
    }

    public void barajar() {
        Collections.shuffle(cartas);
    }

    public Carta siguienteCarta() {
        if (cartas.isEmpty()) {
            System.out.println("No hay más cartas en la baraja.");
            return null;
        }

        Carta siguiente = cartas.remove(0);
        monton.add(siguiente);
        return siguiente;
    }

    public int cartasDisponibles() {
        return cartas.size();
    }

    public ArrayList<Carta> darCartas(int numCartas) {
        if (numCartas > cartasDisponibles()) {
            System.out.println("No hay suficientes cartas en la baraja.");
            return null;
        }

        ArrayList<Carta> mano = new ArrayList<>();

        for (int i = 0; i < numCartas; i++) {
            Carta carta = siguienteCarta();
            mano.add(carta);
        }

        return mano;
    }

    public void cartasMonton() {
        if (monton.isEmpty()) {
            System.out.println("Aún no se ha sacado ninguna carta.");
        } else {
            System.out.println("Cartas en el montón:");
            for (Carta carta : monton) {
                System.out.println(carta);
            }
        }
    }

    public void mostrarBaraja() {
        if (cartas.isEmpty()) {
            System.out.println("No hay más cartas en la baraja.");
        } else {
            System.out.println("Cartas en la baraja:");
            for (Carta carta : cartas) {
                System.out.println(carta);
            }
        }
    }
}
