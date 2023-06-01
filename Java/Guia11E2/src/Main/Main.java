package Main;

import Objetos.Jugador;
import Objetos.RevolverAgua;
import Servicios.Juego;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese el número de jugadores (entre 1 y 6): ");
        int numJugadores = scanner.nextInt();
        numJugadores = Math.max(1, Math.min(numJugadores, 6));

        ArrayList<Jugador> jugadores = new ArrayList<>();

        for (int i = 1; i <= numJugadores; i++) {
            jugadores.add(new Jugador(i));
        }

        RevolverAgua revolver = new RevolverAgua();
        revolver.llenarRevolver();

        Juego juego = new Juego();
        juego.llenarJuego(jugadores, revolver);
        juego.ronda();
    }
}
