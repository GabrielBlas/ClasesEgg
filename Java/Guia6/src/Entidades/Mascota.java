package Entidades;

public class Mascota {
    
    private String nombre;
    private String apodo;
    private String tipo;
    private String color;
    private int edad;
    private Boolean cola;
    private String raza;
    
    public Mascota (String nombre, String apodo, String tipo){
        this.nombre = nombre;
        this.apodo = apodo;
        if (tipo.equals("perro") || tipo.equals("gato") || tipo.equals("loro") || tipo.equals("conejo")) {
        this.tipo = tipo;
    }
    }

    public Mascota() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public void setNombre(String nombre) {
        if (nombre.length() > 0) {
            this.nombre = nombre;
        }
    }

    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setCola(Boolean cola) {
        this.cola = cola;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }
    
    public String getNombre() {
        return nombre;
    }
    }
