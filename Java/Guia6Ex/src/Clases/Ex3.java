package Clases;

import java.util.Scanner;

public class Ex3 {

    private int numeroJugador1;
    private final int intentos;
    private int numVictoriasJugador1;
    private int numVictoriasJugador2;
    private String nombreJugador1;
    private String nombreJugador2;

    public Ex3() {
        this.numeroJugador1 = 0;
        this.intentos = 0;
        this.numVictoriasJugador1 = 0;
        this.numVictoriasJugador2 = 0;
        this.nombreJugador1 = "";
        this.nombreJugador2 = "";
    }

    public void agregarJugador(String nombre) {
        if (this.nombreJugador1.equals("")) {
            this.nombreJugador1 = nombre;
        } else if (this.nombreJugador2.equals("")) {
            this.nombreJugador2 = nombre;
        } else {
            System.out.println("Ya se han agregado los dos jugadores.");
        }
    }

    public void iniciarJuego(int intentosMaximos) {
        Scanner sc = new Scanner(System.in);
        boolean seguirJugando = true;

        while (seguirJugando) {
            System.out.print("Jugador 1: Ingresa un número para adivinar: ");
            this.numeroJugador1 = sc.nextInt();

            boolean haGanado = false;
            int intentosJugador2 = 0;

            while (!haGanado && intentosJugador2 < intentosMaximos) {
                System.out.print("Jugador 2: Ingresa un número: ");
                int numeroJugador2 = sc.nextInt();

                if (numeroJugador2 == this.numeroJugador1) {
                    haGanado = true;
                    System.out.println("¡Has adivinado el número! Felicidades, ganaste.");
                    this.numVictoriasJugador2++;
                } else if (numeroJugador2 < this.numeroJugador1) {
                    System.out.println("El número es más alto.");
                } else {
                    System.out.println("El número es más bajo.");
                }

                intentosJugador2++;

                if (!haGanado && intentosJugador2 == intentosMaximos) {
                    System.out.println("Lo siento, se te han acabado los intentos.");
                    this.numVictoriasJugador1++;
                }
            }

            System.out.print("¿Quieres seguir jugando? (s/n): ");
            String respuesta = sc.next();

            if (respuesta.equals("n")) {
                seguirJugando = false;
            } else {
                intentosJugador2 = 0;
            }
        }

    }

    public void mostrarEstadisticas() {
        System.out.println("Número de victorias del jugador 1: " + this.numVictoriasJugador1);
        System.out.println("Número de victorias del jugador 2: " + this.numVictoriasJugador2);
    }

}
