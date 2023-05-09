package Main;

import java.util.Scanner;
import Objeto.Pelicula;
import Servicio.PeliculaServicio;

public class Main {

    public static void main(String[] args) {
        PeliculaServicio peli = new PeliculaServicio();
        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;
        
        while (continuar) {
            System.out.println("Ingrese el título de la película (o 'fin' para salir): ");
            String titulo = scanner.nextLine();
            
            if (titulo.equalsIgnoreCase("fin")) {
                continuar = false;
            } else {
                System.out.println("Ingrese el director de la película: ");
                String director = scanner.nextLine();
                System.out.println("Ingrese la duración de la película (en minutos): ");
                int duracion = scanner.nextInt();
                scanner.nextLine(); // Consumimos la línea en blanco que queda después de nextInt()
                
                Pelicula pelicula = new Pelicula(titulo, director, duracion);
                peli.agregarPelicula(pelicula);
            }
        }
        
        peli.mostrarPeliculas();
        System.out.println();
        peli.mostrarPeliculasMasDeUnaHora();
        peli.ordenarPeliculasPorDuracionDeMayorAMenor();
        peli.ordenarPeliculasPorDuracionDeMenorAMayor();
        peli.ordenarPeliculasPorTitulo();
        peli.ordenarPeliculasPorDirector();
    }
}
