package Main;

import java.util.Scanner;
import Servicio.ServicioPais;

public class Main {
    public static void main(String[] args) {
        ServicioPais servicio = new ServicioPais();
        Scanner scanner = new Scanner(System.in);
        String pais;
        boolean continuar = true;
        
        while (continuar) {
            System.out.println("Ingrese un país:");
            pais = scanner.nextLine();
            
            if (servicio.agregarPais(pais)) {
                System.out.println("País agregado con éxito.");
            } else {
                System.out.println("El país ya existe en el conjunto.");
            }
            
            System.out.println("¿Desea agregar otro país? (s/n)");
            String respuesta = scanner.nextLine();
            continuar = respuesta.equalsIgnoreCase("s");
        }
        
        servicio.mostrarPaises();
        
        System.out.println("Ingrese un país para eliminar:");
        pais = scanner.nextLine();
        servicio.eliminarPais(pais);
        servicio.mostrarPaises();
        
        servicio.mostrarPaisesOrdenados();
    }
}