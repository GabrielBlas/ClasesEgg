import Clases.Ex3;
import java.util.Scanner;

public class Extra3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Ex3 juego = new Ex3();

        int numJugadores = 2;
        System.out.print("Ingrese el número máximo de intentos permitidos: ");
        int intentosMaximos = sc.nextInt();
        sc.nextLine();

        for (int i = 1; i <= numJugadores; i++) {
            System.out.print("Ingrese el nombre del jugador " + i + ": ");
            String nombre = sc.nextLine();
            juego.agregarJugador(nombre);
        }

        boolean continuarJugando = true;

        while (continuarJugando) {
            juego.iniciarJuego(intentosMaximos);
            System.out.print("¿Desea jugar otra vez? (s/n): ");
            String respuesta = sc.nextLine();
            if (respuesta.equalsIgnoreCase("n")) {
                continuarJugando = false;
            }
        }

        juego.mostrarEstadisticas();
    }
}