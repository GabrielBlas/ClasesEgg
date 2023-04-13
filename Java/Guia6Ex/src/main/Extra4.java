package main;

import clases.Ex4;
import java.util.Scanner;

public class Extra4 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Ex4 extra4 = new Ex4("Gabriel Blas", "26720720", 10000, 500);
        Ex4 ex4 = new Ex4("Maria Gomez", "87654321", 5000, 1000);

        System.out.println("Ingrese su nombre:");
        String nombre = scanner.nextLine();
        System.out.println("Ingrese su DNI:");
        String dni = scanner.next();

        scanner.nextLine();

        if (extra4.getTitular().equals(nombre) && extra4.getDni().equals(dni)) {
            System.out.println("Bienvenido/a " + nombre + "!");
            System.out.println("Saldo en pesos: $" + extra4.getSaldoPesos());
            System.out.println("Saldo en dólares: $" + extra4.getSaldoDolares());
            System.out.println("Saldo total: $" + extra4.getSaldoTotal());

            System.out.println("¿Desea retirar dinero? (s/n)");
            String respuesta = scanner.nextLine();
            if (respuesta.equals("s")) {
                System.out.println("¿Qué tipo de cuenta desea utilizar? (pesos/dólares)");
                String tipoCuenta = scanner.nextLine();
                System.out.println("¿Qué cantidad desea retirar?");
                double cantidad = scanner.nextDouble();
                extra4.retirarDinero(cantidad, tipoCuenta, scanner);
            }
        } else if (ex4.getTitular().equals(nombre) && ex4.getDni().equals(dni)) {
            System.out.println("Bienvenido/a " + nombre + "!");
            System.out.println("Saldo en pesos: $" + ex4.getSaldoPesos());
            System.out.println("Saldo en dólares: $" + ex4.getSaldoDolares());
            System.out.println("Saldo total: $" + ex4.getSaldoTotal());

            System.out.println("¿Desea retirar dinero? (s/n)");
            String respuesta = scanner.nextLine();
            if (respuesta.equals("s")) {
                System.out.println("¿Qué tipo de cuenta desea utilizar? (pesos/dólares)");
                String tipoCuenta = scanner.nextLine();
                System.out.println("¿Qué cantidad desea retirar?");
                double cantidad = scanner.nextDouble();
                ex4.retirarDinero(cantidad, tipoCuenta, scanner);
            }
        } else {
            System.out.println("Usuario no registrado en el sistema.");
        }
    }
}
