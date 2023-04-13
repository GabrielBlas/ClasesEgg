package servicios;

import Metodo.CuentaBancaria;
import java.util.Scanner;

public class CuentaBancariaServicio {
    
    Scanner scanner = new Scanner(System.in);
    
    public CuentaBancaria crearCuenta() {
        System.out.println("Ingrese su número de DNI:");
        long dni = scanner.nextLong();
        scanner.nextLine();
        
        System.out.println("Ingrese su nombre completo:");
        String nombre = scanner.nextLine();
        
        System.out.println("Ingrese su número de teléfono:");
        String telefono = scanner.nextLine();
        
        System.out.println("Ingrese su clave de ingreso:");
        String clave = scanner.nextLine();
        
        double saldo = 0;
        
        // generamos un número de cuenta alfanumérico
        String numeroCuenta = dni + nombre.substring(0, 3) + telefono.substring(telefono.length()-3) + "CY";
        
        CuentaBancaria cuenta = new CuentaBancaria(numeroCuenta, dni, saldo, nombre, telefono, clave);
        
        System.out.println("¿Desea ingresar dinero en su cuenta? (s/n)");
        String respuesta = scanner.nextLine();
        if(respuesta.equalsIgnoreCase("s")) {
            cuenta = ingresarDinero(cuenta);
        }
        
        return cuenta;
    }
    
    public CuentaBancaria ingresarDinero(CuentaBancaria cuenta) {
        System.out.println("Ingrese la cantidad a ingresar:");
        double cantidad = scanner.nextDouble();
        
        cuenta.setSaldoActual(cuenta.getSaldoActual() + cantidad);
        
        System.out.println("Dinero ingresado con éxito.");
        System.out.println("Saldo actual: " + cuenta.getSaldoActual());
        
        return cuenta;
    }
    
    public CuentaBancaria retirarDinero(CuentaBancaria cuenta) {
        System.out.println("Ingrese la cantidad a retirar:");
        double cantidad = scanner.nextDouble();
        
        if(cantidad > cuenta.getSaldoActual()) {
            cantidad = cuenta.getSaldoActual();
        }
        
        cuenta.setSaldoActual(cuenta.getSaldoActual() - cantidad);
        
        System.out.println("Dinero retirado con éxito.");
        System.out.println("Saldo actual: " + cuenta.getSaldoActual());
        
        return cuenta;
    }
    public CuentaBancaria extraccionRapida(CuentaBancaria cuenta) {
    double cantidadMaxima = cuenta.getSaldoActual() * 0.2;
    double cantidadRetirada = 0;
    Scanner scanner = new Scanner(System.in);
    System.out.print("Introduzca la cantidad a retirar (maximo el 20% del saldo actual): ");
    double cantidad = scanner.nextDouble();
    if (cantidad <= cantidadMaxima) {
        cantidadRetirada = cantidad;
    } else {
        System.out.println("Ha excedido el limite de retiro. Se retirara el monto maximo permitido: " + cantidadMaxima);
        cantidadRetirada = cantidadMaxima;
    }
    double nuevoSaldo = cuenta.getSaldoActual() - cantidadRetirada;
    cuenta.setSaldoActual(nuevoSaldo);
    System.out.println("Se ha retirado " + cantidadRetirada + " de la cuenta.");
    System.out.println("Nuevo saldo disponible: " + cuenta.getSaldoActual());
    return cuenta;
}

public void consultarSaldo(CuentaBancaria cuenta) {
    System.out.println("El saldo actual de la cuenta es: " + cuenta.getSaldoActual());
}

public void consultarDatos(CuentaBancaria cuenta) {
    System.out.println("Datos de la cuenta:");
    System.out.println("Numero de cuenta: " + cuenta.getNumeroCuenta());
    System.out.println("DNI del cliente: " + cuenta.getDniCliente());
    System.out.println("Saldo actual: " + cuenta.getSaldoActual());
}

public void transferirDinero(CuentaBancaria cuentaOrigen, CuentaBancaria cuentaDestino) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Introduzca la cantidad a transferir: ");
    double cantidad = scanner.nextDouble();
    if (cuentaOrigen.getSaldoActual() < cantidad) {
        System.out.println("No tiene suficiente saldo en su cuenta.");
        return;
    }
    double nuevoSaldoOrigen = cuentaOrigen.getSaldoActual() - cantidad;
    double nuevoSaldoDestino = cuentaDestino.getSaldoActual() + cantidad;
    cuentaOrigen.setSaldoActual(nuevoSaldoOrigen);
    cuentaDestino.setSaldoActual(nuevoSaldoDestino);
    System.out.println("Se ha transferido " + cantidad + " de la cuenta " + cuentaOrigen.getNumeroCuenta() + " a la cuenta " + cuentaDestino.getNumeroCuenta());
    System.out.println("Nuevo saldo de la cuenta " + cuentaOrigen.getNumeroCuenta() + ": " + cuentaOrigen.getSaldoActual());
    System.out.println("Nuevo saldo de la cuenta " + cuentaDestino.getNumeroCuenta() + ": " + cuentaDestino.getSaldoActual());
}

public void realizarPagos(CuentaBancaria cuenta) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Introduzca la cantidad a pagar: ");
    double cantidad = scanner.nextDouble();
    if (cuenta.getSaldoActual() < cantidad) {
        System.out.println("No tiene suficiente saldo en su cuenta.");
        return;
    }
    double nuevoSaldo = cuenta.getSaldoActual() - cantidad;
    cuenta.setSaldoActual(nuevoSaldo);
    System.out.println("Se ha realizado el pago de " + cantidad + ".");
    System.out.println("Nuevo saldo disponible: " + cuenta.getSaldoActual());
}
public void cambiarDivisas(CuentaBancaria cuenta) {
    Scanner sc = new Scanner(System.in);
    double saldoActual = cuenta.getSaldoActual();
    System.out.println("Ingrese la cantidad de dinero que desea cambiar: ");
    double cantidad = sc.nextDouble();
    if(cantidad > saldoActual) {
        System.out.println("No tiene suficiente saldo para realizar esta operación.");
    } else {
        System.out.println("Ingrese el tipo de cambio al que desea cambiar (1. Dólares, 2. Euros, 3. Libras): ");
        int opcion = sc.nextInt();
        double tasaCambio = 0.0;
        switch(opcion) {
            case 1:
                tasaCambio = 1.0 / 3.78; // Dólar a pesos argentinos
                break;
            case 2:
                tasaCambio = 1.17; // Euro a dólares
                break;
            case 3:
                tasaCambio = 1.38; // Libra a dólares
                break;
            default:
                System.out.println("Opción inválida.");
                break;
        }
        double cantidadCambiada = cantidad * tasaCambio;
        cuenta.setSaldoActual(saldoActual - cantidad);
        System.out.println("La cantidad de " + cantidad + " pesos argentinos ha sido cambiada a " + cantidadCambiada + " unidades de la divisa seleccionada.");
    }
}

    public CuentaBancaria crearCuenta(long dni, String nombre, String telefono, String clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void ingresar(CuentaBancaria cuenta, double monto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public CuentaBancaria buscarCuenta(long dni, String nombre, String clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}