package guia6;

import Entidades.Mascota;
import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        Mascota m2 = new Mascota();
        System.out.println("Ingrese el nombre de su mascota: ");
        Mascota m1 = new Mascota("chiquito", leer.next(), "perro");
        
        m1.setNombre("pepe chiquito");
        
System.out.println(m1);
        System.out.println("- - - - - - - - -");
        System.out.println(m2);
    }
    
}
