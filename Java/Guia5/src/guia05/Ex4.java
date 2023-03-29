package guia05;
import java.util.Scanner;
public class Ex4 {
    public static void main(String[] args) {
       
      Scanner sc = new Scanner(System.in);

        // Declaración de variables
        int n = 10; // número de estudiantes
        double[][] notas = new double[n][4]; // arreglo bidimensional para las notas de los estudiantes
        double[] promedios = new double[n]; // para almacenar el promedio de cada estudiante
        int aprobados = 0;
        int desaprobados = 0;

        // Ingreso de notas
        for (int i = 0; i < n; i++) {
            // Ingreso de notas de trabajos prácticos evaluativos
            System.out.println("Estudiante " + (i+1));
            System.out.println("Ingrese la nota del primer trabajo práctico evaluativo (10%): ");
            notas[i][0] = sc.nextDouble();
            System.out.println("Ingrese la nota del segundo trabajo práctico evaluativo (15%): ");
            notas[i][1] = sc.nextDouble();

            // Ingreso de notas de integradores
            System.out.println("Ingrese la nota del primer integrador (25%): ");
            notas[i][2] = sc.nextDouble();
            System.out.println("Ingrese la nota del segundo integrador (50%): ");
            notas[i][3] = sc.nextDouble();

            // Cálculo del promedio
            promedios[i] = notas[i][0]*0.1 + notas[i][1]*0.15 + notas[i][2]*0.25 + notas[i][3]*0.5;
        }

        // Cálculo de la cantidad de aprobados y desaprobados
        for (int i = 0; i < n; i++) {
            if (promedios[i] >= 7) {
                aprobados++;
            } else {
                desaprobados++;
            }
        }

        // Mostrar resultados
        System.out.println("Cantidad de aprobados: " + aprobados);
        System.out.println("Cantidad de desaprobados: " + desaprobados);
    }
}
