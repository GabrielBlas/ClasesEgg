package Servicio;

import java.util.Scanner;
import java.util.Date;

public class FechaServicio {

    public Date fechaNacimiento() {
        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese el dia ");
        int dia = leer.nextInt();
        System.out.print("de que mes? ");
        int mes = leer.nextInt();
        System.out.print("de que año? ");
        int anio = leer.nextInt();

        return new Date(anio - 1900, mes - 1, dia);
    }

    public Date fechaActual() {
        return new Date();
    }

    public int diferencia(Date fechaActual, Date fechaNacimiento) {
        int anios = fechaActual.getYear() - fechaNacimiento.getYear();
        if (fechaNacimiento.getMonth() > fechaActual.getMonth() || (fechaNacimiento.getMonth() == fechaActual.getMonth() && fechaNacimiento.getDate() > fechaActual.getDate())) {
            anios--;
        }
        return anios;
    }
}
