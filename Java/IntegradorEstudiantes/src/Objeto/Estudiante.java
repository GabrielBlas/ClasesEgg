package Objeto;

import java.util.ArrayList;
import java.util.Scanner;

public class Estudiante {
    String nombre;
    double nota;

    public void leerDatos() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el nombre del estudiante: ");
        this.nombre = sc.nextLine();
        System.out.print("Ingrese la nota del estudiante: ");
        this.nota = sc.nextDouble();
    }

    public static Estudiante[] main() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la cantidad de estudiantes que desea crear: ");
        int cantidadEstudiantes = sc.nextInt();

        Estudiante[] estudiantes = new Estudiante[cantidadEstudiantes];
        for (int i = 0; i < cantidadEstudiantes; i++) {
            estudiantes[i] = new Estudiante();
            estudiantes[i].leerDatos();
        }

        return estudiantes;
    }

    public static double promedioNotas(Estudiante[] estudiantes) {
        double sumaNotas = 0;
        for (Estudiante estudiante : estudiantes) {
            sumaNotas += estudiante.nota;
        }
        return sumaNotas / estudiantes.length;
    }
}
