package Servicios;

import Objetos.Jugador;
import Objetos.RevolverAgua;
import java.util.ArrayList;
import java.util.Scanner;

public class Juego {
    private ArrayList<Jugador> jugadores;
    private RevolverAgua revolver;

    public void llenarJuego(ArrayList<Jugador> jugadores, RevolverAgua r) {
        this.jugadores = jugadores;
        this.revolver = r;
    }

    public void ronda() {
        boolean juegoTerminado = false;

        while (!juegoTerminado) {
            for (Jugador jugador : jugadores) {
                System.out.println("Es el turno de " + jugador.getNombre() + ". Presiona enter para disparar.");
                Scanner scanner = new Scanner(System.in);
                scanner.nextLine();

                juegoTerminado = jugador.disparo(revolver);

                if (juegoTerminado || jugador.estaMojado()) {
                    break;
                }
            }
        }

        for (Jugador jugador : jugadores) {
            if (jugador.estaMojado()) {
                System.out.println("¡" + jugador.getNombre() + " se mojó y perdió el juego!");
                break;
            }
        }
    }

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
