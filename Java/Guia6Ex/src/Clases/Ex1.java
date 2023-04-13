package Clases;

import java.util.Scanner;

public class Ex1 {

    private String titulo;
    private String autor;

    public Ex1() {
        this.titulo = "";
        this.autor = "";
    }

    public Ex1(String titulo, String autor) {
        this.titulo = titulo;
        this.autor = autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
}
