package Servicio;

import Metodo.CuentaBancaria;
import java.util.Scanner;

public class CuentaBancariaServicio {

    //private CuentaBancaria cuenta;
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    CuentaBancaria cuenta = new CuentaBancaria();

    public CuentaBancaria crearCuenta() {
        System.out.println("Bienvenido al banco");
        System.out.println("Por favor, ingrese los siguientes datos para crear su cuenta:");

        System.out.println("DNI: ");
        cuenta.setDniCliente(scanner.nextLong());

        System.out.println("Numero de cuenta: ");
        cuenta.setNumeroCuenta(scanner.nextInt());

        System.out.println("Nombre completo: ");
        cuenta.setNombre(scanner.next());

        System.out.println("Cuenta creada exitosamente");

        return cuenta;
    }

    public void ingresar(CuentaBancaria cuenta) {
        double cantidad = 0;
        System.out.println("Cuanto Dinero Ingresa?");
        cantidad = scanner.nextDouble();
        cuenta.setSaldoActual(cuenta.getSaldoActual() + cantidad);
        System.out.println("Cantidad ingresada: " + cantidad);
        System.out.println("Saldo actual: " + cuenta.getSaldoActual());

    }

    public void retirar(CuentaBancaria cuenta) {
        double saldoActual = cuenta.getSaldoActual();
        double cantidad = 0;
        System.out.println("Que cantidad desea retirar?");
        cantidad = scanner.nextLong();

        if (saldoActual >= cantidad) {
            cuenta.setSaldoActual(saldoActual - cantidad);
            System.out.println("Cantidad retirada: " + cantidad);
            System.out.println("Saldo actual: " + cuenta.getSaldoActual());
        } else {
            System.out.println("Saldo insuficiente");
        }
    }

    public void extraccionRapida(CuentaBancaria cuenta) {
        double limite = cuenta.getSaldoActual() * 0.2;
        double saldoActual = cuenta.getSaldoActual();
        cuenta.setSaldoActual(saldoActual - limite);
        System.out.println("Su saldo actual es de: " + saldoActual);
    }

    public void consultarSaldo(CuentaBancaria cuenta) {
        double saldoActual = cuenta.getSaldoActual();
        System.out.println("su saldo actual es: " + saldoActual);
    }

    public void consultarDatos(CuentaBancaria cuenta) {
        System.out.println("Nombre de Cuenta: " + cuenta.getNombre());
        System.out.println("Su saldo es: " + cuenta.getSaldoActual());
        System.out.println("Su Numero de cuenta es: " + cuenta.getNumeroCuenta());
    }
}
