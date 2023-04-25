package guia9e4;

import Servicio.FechaServicio;

public class Guia9E4 {

    public static void main(String[] args) {
        FechaServicio f = new FechaServicio();
        
        System.out.println("Fecha Actual" + f.fechaActual());
        System.out.println("La Edad es: " + f.diferencia(f.fechaActual(), f.fechaNacimiento()));
    }
    
}
