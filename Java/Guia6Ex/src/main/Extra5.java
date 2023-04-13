package main;

import Clases.Empleados;
import java.util.Scanner;

public class Extra5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean realizarOtraOperacion = true;

        while (realizarOtraOperacion) {
            System.out.print("Ingrese el nombre del empleado: ");
            String nombre = sc.nextLine();

            System.out.print("Ingrese la edad del empleado: ");
            int edad = sc.nextInt();

            System.out.print("Ingrese el salario del empleado: ");
            double salario = sc.nextDouble();

            Empleados empleados = new Empleados(nombre, edad, salario);
            empleados.calcular_aumento();

            sc.nextLine(); // para consumir el salto de línea pendiente después de la entrada de salario

            System.out.print("¿Desea realizar otra operación? (s/n): ");
            String opcion = sc.nextLine();

            realizarOtraOperacion = opcion.equalsIgnoreCase("s");
        }

        sc.close();
    }
}
