package clases;

import java.util.Scanner;

public class Ex4 {

    private String titular;
    private String dni;
    private double saldoPesos;
    private double saldoDolares;

    public Ex4(String titular, String dni, double saldoPesos, double saldoDolares) {
        this.titular = titular;
        this.dni = dni;
        this.saldoPesos = saldoPesos;
        this.saldoDolares = saldoDolares;
    }

    public double getSaldoPesos() {
        return saldoPesos;
    }

    public double getSaldoDolares() {
        return saldoDolares;
    }

    public double getSaldoTotal() {
        return saldoPesos + (saldoDolares * 170);
    }

    public void retirarDinero(double cantidad, String tipoCuenta, Scanner scanner) {
        if (tipoCuenta.equals("pesos")) {
            if (cantidad <= saldoPesos) {
                saldoPesos -= cantidad;
                System.out.println("Se ha retirado $" + cantidad + " de la cuenta en pesos.");
                System.out.println("Saldo restante en la cuenta en pesos: $" + saldoPesos);
                System.out.println("¿Desea realizar otra operación? (S/N)");
                String opcion = scanner.nextLine();
                if (opcion.equalsIgnoreCase("S")) {
                    menu();
                } else {
                    System.out.println("Muchas gracias por usar nuestros servicios.");
                    System.exit(0);
                }
            } else {
                System.out.println("Saldo insuficiente en la cuenta en pesos.");
            }
        } else if (tipoCuenta.equals("dolares")) {
            if (cantidad <= saldoDolares) {
                saldoDolares -= cantidad;
                System.out.println("Se ha retirado $" + cantidad + " de la cuenta en dólares.");
                System.out.println("Saldo restante en la cuenta en dólares: $" + saldoDolares);
                System.out.println("¿Desea realizar otra operación? (S/N)");
                String opcion = scanner.nextLine();
                if (opcion.equalsIgnoreCase("S")) {
                    menu();
                } else {
                    System.out.println("Muchas gracias por usar nuestros servicios.");
                    System.exit(0);
                }
            } else {
                System.out.println("Saldo insuficiente en la cuenta en dólares.");
            }
        } else {
            System.out.println("Tipo de cuenta inválido.");
        }
    }

    public String getTitular() {
        return titular;
    }

    public String getDni() {
        return dni;
    }

    private void menu() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void retirarDinero(double cantidad, String tipoCuenta) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
