package Servicio;

import Objeto.Pelicula;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class PeliculaServicio {
    private List<Pelicula> listaPeliculas;

    public PeliculaServicio() {
        listaPeliculas = new ArrayList<>();
    }

    public void agregarPelicula(Pelicula pelicula) {
        listaPeliculas.add(pelicula);
    }

    public void mostrarPeliculas() {
        System.out.println("Lista de películas: ");
        for (Pelicula pelicula : listaPeliculas) {
            System.out.println(pelicula);
        }
    }

    public void mostrarPeliculasMasDeUnaHora() {
        System.out.println("Películas con duración de más de una hora: ");
        for (Pelicula pelicula : listaPeliculas) {
            if (pelicula.getDuracionMinutos() > 60) {
                System.out.println(pelicula);
            }
        }
    }

    public void ordenarPeliculasPorDuracionDeMayorAMenor() {
        Collections.sort(listaPeliculas, new Comparator<Pelicula>() {
            @Override
            public int compare(Pelicula pelicula1, Pelicula pelicula2) {
                return pelicula2.getDuracionMinutos() - pelicula1.getDuracionMinutos();
            }
        });

        System.out.println("Películas ordenadas por duración de mayor a menor: ");
        for (Pelicula pelicula : listaPeliculas) {
            System.out.println(pelicula);
        }
    }

    public void ordenarPeliculasPorDuracionDeMenorAMayor() {
        Collections.sort(listaPeliculas, new Comparator<Pelicula>() {
            @Override
            public int compare(Pelicula pelicula1, Pelicula pelicula2) {
                return pelicula1.getDuracionMinutos() - pelicula2.getDuracionMinutos();
            }
        });

        System.out.println("Películas ordenadas por duración de menor a mayor: ");
        for (Pelicula pelicula : listaPeliculas) {
            System.out.println(pelicula);
        }
    }

    public void ordenarPeliculasPorTitulo() {
        Collections.sort(listaPeliculas, new Comparator<Pelicula>() {
            @Override
            public int compare(Pelicula pelicula1, Pelicula pelicula2) {
                return pelicula1.getTitulo().compareToIgnoreCase(pelicula2.getTitulo());
            }
        });

        System.out.println("Películas ordenadas por título: ");
        for (Pelicula pelicula : listaPeliculas) {
            System.out.println(pelicula);
        }
    }

    public void ordenarPeliculasPorDirector() {
        Collections.sort(listaPeliculas, new Comparator<Pelicula>() {
            @Override
            public int compare(Pelicula pelicula1, Pelicula pelicula2) {
                return pelicula1.getDirector().compareToIgnoreCase(pelicula2.getDirector());
            }
        });

        System.out.println("Películas ordenadas por director: ");
        for (Pelicula pelicula : listaPeliculas) {
            System.out.println(pelicula);
        }
    }
}
