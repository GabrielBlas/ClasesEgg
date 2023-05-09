package Objeto;

public class Pelicula {
    private String titulo;
    private String director;
    private int duracionHoras;
    private int duracionMinutos;

    public Pelicula(String titulo, String director, int duracion) {
        this.titulo = titulo;
        this.director = director;
        this.duracionHoras = duracionHoras;
        this.duracionMinutos = duracionMinutos;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDirector() {
        return director;
    }

    public int getDuracionHoras() {
        return duracionHoras;
    }

    public int getDuracionMinutos() {
        return duracionMinutos;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public void setDuracionHoras(int duracionHoras) {
        this.duracionHoras = duracionHoras;
    }

    public void setDuracionMinutos(int duracionMinutos) {
        this.duracionMinutos = duracionMinutos;
    }

    @Override
    public String toString() {
        return "Pelicula{" +
                "titulo='" + titulo + '\'' +
                ", director='" + director + '\'' +
                ", duracionHoras=" + duracionHoras +
                ", duracionMinutos=" + duracionMinutos +
                '}';
    }
}