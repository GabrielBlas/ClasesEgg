package servicios;

import objetos.Carta;

public class CartaServicio {
    public String toString(Carta carta) {
        return carta.getNumero() + " de " + carta.getPalo();
    }
}
