package Entidad;

import java.util.Scanner;

public class Ahorcado {
    private String palabraBuscada;
    private int letrasEncontradas;
    private int jugadasMaximas;
    private int oportunidadesRestantes;

    // Constructor
    public Ahorcado() {
        palabraBuscada = "";
        letrasEncontradas = 0;
        jugadasMaximas = 0;
        oportunidadesRestantes = 0;
    }

    // crea el juego
    public void crearJuego() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese la palabra a buscar: ");
        palabraBuscada = scanner.nextLine().toLowerCase();
        System.out.println("Ingrese la cantidad de jugadas máximas: ");
        jugadasMaximas = scanner.nextInt();
        oportunidadesRestantes = jugadasMaximas;
        letrasEncontradas = 0;
        System.out.println("Juego creado con éxito!");
    }

    // muestra la longitud
    public void longitud() {
        System.out.println("Longitud de la palabra: " + palabraBuscada.length());
    }

    // busca la letra ingresada
    public void buscar(char letra) {
        boolean encontrada = false;
        for (int i = 0; i < palabraBuscada.length(); i++) {
            if (palabraBuscada.charAt(i) == letra) {
                encontrada = true;
                letrasEncontradas++;
            }
        }

        if (encontrada) {
            System.out.println("Mensaje: La letra pertenece a la palabra");
        } else {
            System.out.println("Mensaje: La letra no pertenece a la palabra");
            oportunidadesRestantes--;
        }
    }

    // muestra las letras encontradas y
    public void encontradas() {
        System.out.println("Número de letras (encontradas, faltantes): (" + letrasEncontradas + ","
                + (palabraBuscada.length() - letrasEncontradas) + ")");
    }

    // aca muestra los intentos
    public void intentos() {
        System.out.println("Número de oportunidades restantes: " + oportunidadesRestantes);
    }

    // este metodo ejecuta el juego
    public void juego() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("¡Bienvenido al juego del Ahorcado!");
        crearJuego();
        while (oportunidadesRestantes > 0 && letrasEncontradas < palabraBuscada.length()) {
            System.out.println("----------------------------------------------");
            System.out.println("Ingrese una letra: ");
            char letra = scanner.next().toLowerCase().charAt(0);
            buscar(letra);
            encontradas();
            intentos();
        }

        System.out.println("----------------------------------------------");
        if (letrasEncontradas == palabraBuscada.length()) {
            System.out.println("¡Felicitaciones! Has descubierto la palabra: " + palabraBuscada);
        } else {
            System.out.println("Lo sentimos, no hay más oportunidades. La palabra buscada era: " + palabraBuscada);
        }
    }

    public static void main(String[] args) {
        Ahorcado ahorcado = new Ahorcado();
        ahorcado.juego();
    }
}
