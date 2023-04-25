package Servicio;

import Entidad.Persona;
import java.util.Date;
import java.util.Scanner;

public class PersonaServicio {

    Persona p1 = new Persona();

    public void crearPersona() {
        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese su nombre: ");
        p1.setNombre(leer.next());
        System.out.println("Ingrese su fecha de nacimiento (en formato dd/mm/aaaa): ");
        String fechaStr = leer.nextLine();
        String[] partes = fechaStr.split("/");
        int dia = Integer.parseInt(partes[0]);
        int mes = Integer.parseInt(partes[1]) - 1;
        int anio = Integer.parseInt(partes[2]) - 1900;
        Date fechaNac = new Date(anio, mes, dia);
        p1.setFechaNac(fechaNac);
    }

    public Date fechaActual() {
        return new Date();
    }

    public int calcularEdad() {
        return new Date().getYear() - p1.getFechaNac().getYear();
    }
}
