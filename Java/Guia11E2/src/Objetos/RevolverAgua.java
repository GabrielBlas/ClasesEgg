package Objetos;

import java.util.Random;

public class RevolverAgua {
    private int posicionActual;
    private int posicionAgua;
    
    public void llenarRevolver() {
        Random random = new Random();
        posicionActual = random.nextInt(6) + 1;
        posicionAgua = random.nextInt(6) + 1;
    }
    
    public boolean mojar() {
        return posicionActual == posicionAgua;
    }
    
    public void siguienteChorro() {
        if (posicionActual == 6) {
            posicionActual = 1;
        } else {
            posicionActual++;
        }
    }
    
    public String toString() {
        return "Posición actual: " + posicionActual + ", Posición del agua: " + posicionAgua;
    }
    
    public static void main(String[] args) {
        RevolverAgua revolver = new RevolverAgua();
        revolver.llenarRevolver();
        System.out.println(revolver.toString());
    }
}