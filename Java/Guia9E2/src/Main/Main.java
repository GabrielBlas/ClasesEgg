package Main;

import entidades.ParDeNumeros;
import servicios.ParDeNumerosService;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        ParDeNumeros par = new ParDeNumeros();
        ParDeNumerosService parService = new ParDeNumerosService();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Valores iniciales:");
        parService.mostrarValores(par);

        System.out.println("Seleccione una opción:");
        System.out.println("1. Mostrar valores");
        System.out.println("2. Devolver mayor valor");
        System.out.println("3. Calcular potencia del mayor valor");
        System.out.println("4. Calcular raíz cuadrada del menor valor absoluto");
        System.out.print("Opción: ");
        int opcion = scanner.nextInt();

        switch (opcion) {
            case 1:
                parService.mostrarValores(par);
                break;
            case 2:
                double mayor = parService.devolverMayor(par);
                System.out.println("El mayor valor es: " + mayor);
                break;
            case 3:
                double potencia = parService.calcularPotencia(par);
                System.out.println("La potencia del mayor valor es: " + potencia);
                break;
            case 4:
                double raiz = parService.calcularRaiz(par);
                System.out.println("La raíz cuadrada del menor valor absoluto es: " + raiz);
                break;
            default:
                System.out.println("Opción no válida.");
                break;
        }
    }
}
