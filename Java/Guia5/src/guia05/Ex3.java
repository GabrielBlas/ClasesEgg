package guia05;
import java.util.Scanner;
public class Ex3 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        boolean salir = false;
        while (!salir) {
            int[] vector = new int[10];
            rellenarVector(vector); 
            imprimirVector(vector);
            System.out.println("¿Desea realizar otra operación? (S/N)");
            char opcion = leer.next().charAt(0);
            if (opcion == 'N' || opcion == 'n') {
                salir = true;
            }
        }
    }
    public static void rellenarVector(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = (int)(Math.random() * 10);
        }
    }
    public static void imprimirVector(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            System.out.print("[ " + vector[i] + " ]");
        }
        System.out.println();
    }
}
