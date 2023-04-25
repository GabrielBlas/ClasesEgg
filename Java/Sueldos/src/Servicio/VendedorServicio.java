package Servicio;

import Entidades.Vendedor;
import java.util.Date;
import java.util.Scanner;

public class VendedorServicio {

    public Vendedor altaVendedor() {

        Vendedor v1 = new Vendedor();
        
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese el Nombre del vendedor");
        v1.setNombre(leer.next());
        
        System.out.println("Ingrese el DNI");
        v1.setDni(leer.nextInt());
        
        System.out.println("Ingrese el sueldo basico");
        v1.setSueldoBasico(leer.nextDouble());
        
        System.out.println("Ingrese el dia que comenzo a trabajar");
        int dia = leer.nextInt();
        
        System.out.println("Ingrese el mes que comenzo a trabajar");
        int mes = leer.nextInt();
        
        System.out.println("Ingrese el año que ingreso a trabajar");
        int anio = leer.nextInt();
        
        Date fecha = new Date(anio - 1900, mes - 1, dia);
        v1.setFechaInicio(fecha);
        return v1;
    }

    public void SueldoMensial(Vendedor v1) {
        System.out.println("ingrese el total de ventas del vendedor");
        Double ventas = leer.nextDouble();
        v1.setComisiones(ventas*0.15);
        v1.setSueldoMensual(v1.getSueldoBasico() + v1.getComisiones());
        System.out.println("el sueldo mensual es de: " + v1.getNombre() + "es de $" v1.getSueldoMensual());
    }
    public void vacaciones(Vendedor v1) {
        Date hoy = new Date();
        int antiguedad = hoy.getYear() = v1.getFechaInicio().getYear();

        if (antiguedad < 5) {
            System.out.println("Le Corresponden 14 dias de Vacaciones");
        } else if (antiguedad < 10) {
            System.out.println("Le Corresponden 21 dias de Vacaciones");
        } else if (antiguedad < 20) {
            System.out.println("Le Corresponden 28 dias de Vacaciones");
        } else if (antiguedad > 20) {
            System.out.println("Le Corresponden 35 dias de Vacaciones");
        } else {
            System.out.println("El Empleado tiene vacaciones proporcional");
        }
    }
}
