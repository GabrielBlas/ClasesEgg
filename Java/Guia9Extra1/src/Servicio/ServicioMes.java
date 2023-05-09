package Servicio;

import java.util.Scanner;

public class ServicioMes {

    public int Juego() {
        String[] meses = {"enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};
        String mesSecreto = meses[9];

        Scanner sc = new Scanner(System.in);
        String mesAdivinado = "";

        while (!mesAdivinado.equals(mesSecreto)) {
            System.out.print("Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: ");
            mesAdivinado = sc.nextLine();

            if (mesAdivinado.equals(mesSecreto)) {
                System.out.println("¡Ha acertado!");
            } else {
                System.out.println("No ha acertado. Intente adivinarlo introduciendo otro mes.");
            }
        }
        return 0;

    }
}
