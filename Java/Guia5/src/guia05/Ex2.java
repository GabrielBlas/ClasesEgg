package guia05;
import java.util.Scanner;
public class Ex2 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        boolean salir = false; // variable para salir del loop

        while (!salir) {
            System.out.println("Ingrese el tamaño de los vectores: ");
            int tamanoVector = leer.nextInt();
            int[] vector1 = new int[tamanoVector];
            int[] vector2 = new int[tamanoVector];
            
            // Rellenamos los vectores con números aleatorios
            for (int i=0; i < tamanoVector; i++) {
                vector1[i]= (int)(Math.random ()*5);
                vector2[i]= (int)(Math.random ()*5);
            }
            
            // Mostramos los vectores ingresados
            for (int i = 0; i < tamanoVector; i++) {
                System.out.print("[ " + vector1[i] + " ]");
            }
            System.out.println();
            for (int i = 0; i < tamanoVector; i++) {
                System.out.print("[ " + vector2[i] + " ]");
            }
            System.out.println();
            
            // Verificamos si los vectores son iguales
            boolean bandera = true;
            for (int i = 0; i < tamanoVector; i++) {
                if (vector1[i] != vector2[i]) {
                    bandera = false;
                    break;
                }
            }
            if (bandera) {
                System.out.println("Los vectores son iguales");
            } else {
                System.out.println("Los vectores no son iguales");
            }
            
            // Preguntar al usuario si desea hacer otra operación
            System.out.println("¿Desea hacer otra operación? (S/N)");
            char opcion = leer.next().charAt(0);
            if (opcion == 'N' || opcion == 'n') {
                salir = true;
            }
        }
    }
}
