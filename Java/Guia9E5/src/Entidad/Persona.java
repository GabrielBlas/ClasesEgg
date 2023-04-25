package Entidad;

import java.util.Scanner;
import java.util.Date;

public class Persona {

    private String nombre;
    private Date fechaNac;
            
    public Persona() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }
    
}
