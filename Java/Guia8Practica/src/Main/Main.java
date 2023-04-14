package Main;

import java.util.Scanner;
import Metodo.CuentaBancaria;
import Servicio.CuentaBancariaServicio;

public class Main {

    public static void main(String[] args) {
        CuentaBancariaServicio servicio = new CuentaBancariaServicio();

        Scanner leer = new Scanner(System.in);

        CuentaBancaria c1 = servicio.crearCuenta();

        boolean salir = false;

        while (!salir) {
            System.out.println("\nMenú de opciones:");
            System.out.println("1. Ver datos usuario");
            System.out.println("2. Ver saldo cuenta");
            System.out.println("3. Extraccion rapida");
            System.out.println("4. Ingresar dinero");
            System.out.println("5. Extraer dinero");
            System.out.println("6. Salir");

            System.out.print("Seleccione una opción: ");

            int opcion = leer.nextInt();

            switch (opcion) {
                case 1:
                    System.out.println("Sus datos son: " + servicio.toString());
                    break;

                case 2:
                    System.out.println("Su saldo es de; ");
                    servicio.consultarSaldo(c1);
                    break;

                case 3:
//                   cuenta = cuentaServicio.extraccionRapida(cuenta);
   //                 System.out.println("Se ha extraido el 20% del saldo actual.");
       //             cuentaServicio.consultarDatos(cuenta);
                    break;

                case 4:
                    servicio.ingresar(c1);
                    break;

                case 5:

                    break;

                case 6:
                    salir = true;
                    break;

                default:
                    System.out.println("Opción inválida.");
                    break;
            }
        }
    }
}
