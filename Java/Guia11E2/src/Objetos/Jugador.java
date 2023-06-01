package Objetos;

public class Jugador {
    private int id;
    private String nombre;
    private boolean mojado;

    public Jugador(int id) {
        this.id = id;
        this.nombre = "Jugador " + id;
        this.mojado = false;
    }

    public boolean disparo(RevolverAgua r) {
        System.out.println(nombre + " se apunta con el revolver de agua.");
        System.out.println("¡Click!");

        if (r.mojar()) {
            mojado = true;
            System.out.println(nombre + " se ha mojado. ¡Perdió!");
            return true;
        } else {
            r.siguienteChorro();
            System.out.println("¡Parece que no salió agua!");
            return false;
        }
    }

    public boolean estaMojado() {
        return mojado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}