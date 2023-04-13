package main;

import java.util.Scanner;
import Metodo.CuentaBancaria;
import servicios.CuentaBancariaServicio;

public class Principal {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        CuentaBancariaServicio servicio = new CuentaBancariaServicio();
        boolean salir = false;
        String respuesta;
        CuentaBancaria cuenta;

        System.out.println("Bienvenido al sistema de CashYa!");
        System.out.print("¿Ya es usuario? s/n: ");
        respuesta = sc.nextLine();

        if (respuesta.equalsIgnoreCase("n")) {
            System.out.print("Ingrese su DNI: ");
            long dni = sc.nextLong();
            sc.nextLine();
            System.out.print("Ingrese su nombre completo: ");
            String nombre = sc.nextLine();
            System.out.print("Ingrese su número de teléfono: ");
            String telefono = sc.nextLine();
            System.out.print("Ingrese su clave de ingreso: ");
            String clave = sc.nextLine();

            cuenta = servicio.crearCuenta(dni, nombre, telefono, clave);

            System.out.println("\n¡Cuenta creada exitosamente! Tu número de cuenta es: " + cuenta.getNumeroCuenta());

            System.out.print("¿Desea ingresar dinero? s/n: ");
            respuesta = sc.nextLine();

            if (respuesta.equalsIgnoreCase("s")) {
                System.out.print("Ingrese la cantidad de dinero a ingresar: ");
                double monto = sc.nextDouble();
                servicio.ingresar(cuenta, monto);
                System.out.println("\nIngreso exitoso. Datos de la cuenta:");
                servicio.consultarDatos(cuenta);
            }

        } else if (respuesta.equalsIgnoreCase("s")) {
            System.out.print("Ingrese su nombre completo: ");
            String nombre = sc.nextLine();
            System.out.print("Ingrese su DNI: ");
            long dni = sc.nextLong();
            sc.nextLine();
            System.out.print("Ingrese su clave de ingreso: ");
            String clave = sc.nextLine();

            cuenta = servicio.buscarCuenta(dni, nombre, clave);

            if (cuenta != null) {
                System.out.println("\n¡Bienvenido de nuevo, " + cuenta.getNombreCompleto() + "!");
                servicio.consultarDatos(cuenta);
            } else {
                System.out.println("\n¡Cuenta no encontrada! Intente nuevamente.");
            }

        } else {
            System.out.println("Respuesta incorrecta. Saliendo del programa...");
            salir = true;
        }

        while (!salir) {
            System.out.println("\nMenú de opciones:");
            System.out.println("1. Transferir dinero");
            System.out.println("2. Extracción rápida");
            System.out.println("3. Pagos");
            System.out.println("4. Ingresar dinero");
            System.out.println("5. Extraer dinero");
            System.out.println("6. Cambiar divisas");
            System.out.println("7. Salir");

            System.out.print("Seleccione una opción: ");
            int opcion = sc.nextInt();
            sc.nextLine();

            switch (opcion) {
                case 1:
                    switch (opcion) {
                        case 1:
                            System.out.println("Ingrese el DNI del destinatario:");
                            long dniDestinatario = scanner.nextLong();
                            scanner.nextLine(); // Consumir el salto de línea pendiente

                            System.out.println("Ingrese el número de cuenta del destinatario:");
                            String numeroCuentaDestinatario = scanner.nextLine();

                            System.out.println("Ingrese el monto a transferir:");
                            double montoTransferencia = scanner.nextDouble();

                            cuentaServicio.transferir(cuenta, dniDestinatario, numeroCuentaDestinatario, montoTransferencia);
                            System.out.println("Transferencia realizada con éxito.");
                            break;

                        case 2:
                            cuenta = cuentaServicio.extraccionRapida(cuenta);
                            System.out.println("Se ha extraido el 20% del saldo actual.");
                            cuentaServicio.consultarDatos(cuenta);
                            break;

                        case 3:
                            System.out.println("Ingrese el monto a pagar:");
                            double montoPago = scanner.nextDouble();
                            cuentaServicio.pagar(cuenta, montoPago);
                            System.out.println("Pago realizado con éxito.");
                            cuentaServicio.consultarDatos(cuenta);
                            break;

                        case 4:
                            System.out.println("Ingrese el monto a ingresar:");
                            double montoIngreso = scanner.nextDouble();
                            cuentaServicio.ingresar(cuenta, montoIngreso);
                            System.out.println("Ingreso realizado con éxito.");
                            cuentaServicio.consultarDatos(cuenta);
                            break;

                        case 5:
                            System.out.println("Ingrese el monto a extraer:");
                            double montoExtraccion = scanner.nextDouble();
                            cuentaServicio.retirar(cuenta, montoExtraccion);
                            System.out.println("Extracción realizada con éxito.");
                            cuentaServicio.consultarDatos(cuenta);
                            break;

                        case 6:
                            cuentaServicio.cambiarDivisas(cuenta);
                            cuentaServicio.consultarDatos(cuenta);
                            break;

                        case 7:
                            salir = true;
                            break;

                        default:
                            System.out.println("Opción inválida.");
                            break;
                    }
                    return false;
            }
        }
    }
}
