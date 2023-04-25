package Servicio;

import Clase.Cafetera;

public class CafeteraServicio {
    public void llenarCafetera(Cafetera cafetera) {
        cafetera.setCantidadActual(cafetera.getCapacidadMaxima());
    }

    public void servirTaza(int tamanoTaza, Cafetera cafetera) {
        if (cafetera.getCantidadActual() >= tamanoTaza) {
            System.out.println("Se ha llenado la taza.");
            cafetera.setCantidadActual(cafetera.getCantidadActual() - tamanoTaza);
        } else {
            System.out.println("No se ha llenado la taza. Queda: " + cafetera.getCantidadActual() + " ml de café.");
        }
    }

    public void vaciarCafetera(Cafetera cafetera) {
        cafetera.setCantidadActual(0);
    }

    public void agregarCafe(int cantidad, Cafetera cafetera) {
        cafetera.setCantidadActual(cafetera.getCantidadActual() + cantidad);
    }
}
