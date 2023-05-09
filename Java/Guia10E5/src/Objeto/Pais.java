package Objeto;

public class Pais implements Comparable<Pais> {

    private String nombre;

    public Pais(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || getClass() != obj.getClass())
            return false;
        Pais pais = (Pais) obj;
        return nombre.equals(pais.nombre);
    }

    @Override
    public int hashCode() {
        return nombre.hashCode();
    }

    @Override
    public int compareTo(Pais otroPais) {
        return nombre.compareTo(otroPais.getNombre());
    }

    @Override
    public String toString() {
        return nombre;
    }
}
