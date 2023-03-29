package guia05;
import java.util.Random;
import java.util.Scanner;
public class Ex5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random rnd = new Random();

        boolean continuar = true;
        while (continuar) {

            System.out.print("Ingresa el número de filas: ");
            int n = sc.nextInt();
            System.out.print("Ingresa el número de columnas: ");
            int m = sc.nextInt();

            int[][] matriz = new int[n][m];
            int suma = 0;

            System.out.println("Matriz aleatoria:");
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < m; j++) {
                    matriz[i][j] = rnd.nextInt(10);
                    System.out.print(matriz[i][j] + "  ");
                    suma += matriz[i][j];
                }
                System.out.println();
            }

            System.out.println("La suma de los elementos es: " + suma);

            System.out.println("¿Deseas crear otra matriz aleatoria? (si/no)");
            String respuesta = sc.next();
            if (respuesta.equalsIgnoreCase("no")) {
                continuar = false;
            }
        }
        System.out.println("Gracias, Vuelvas prontos!");
    }
}