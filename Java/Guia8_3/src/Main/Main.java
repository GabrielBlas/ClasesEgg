package Main;

import Entidad.Persona;
import java.util.Scanner;
import servicio.PersonaServicio;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        Persona p1 = new Persona();

        
        PersonaServicio persona1 = new PersonaServicio();

        // Obtener información de las personas
        System.out.println("\nIngrese los datos de la Persona 1:");
        p1 = persona1.crearPersona();
        
        System.out.println(persona1.esMayorEdad(p1));
        
        
        System.out.println(persona1.calcularIMC(p1.getPeso(), p1.getAltura()));

        /*System.out.println("\nIngrese los datos de la Persona 2:");
        persona1.mostrarInformacion(p2);

        System.out.println("\nIIngrese los datos de la Persona 3:");
        persona1.mostrarInformacion(p3);

        System.out.println("\nIngrese los datos de la Persona 4:");
        persona1.mostrarInformacion(p4);
*/
    }

}
