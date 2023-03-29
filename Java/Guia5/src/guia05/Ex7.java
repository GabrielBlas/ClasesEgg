
package guia05;

import java.util.Arrays;
public class Ex7 {
    public static void main(String[] args) {
        int n = 10; // Número de términos que queremos calcular
        int[] fibonacciArray = fibonacci(n); // Calculamos la sucesión de Fibonacci
        System.out.println(Arrays.toString(fibonacciArray)); // Imprimimos el arreglo con los N primeros términos
    }
    
    public static int[] fibonacci(int n) {
        int[] fib = new int[n]; // Inicializamos el arreglo con capacidad para n términos
        fib[0] = 1;
        if (n > 1) {
            fib[1] = 1;
            for (int i = 2; i < n; i++) {
                // Calculamos cada término de la sucesión y lo agregamos al arreglo
                fib[i] = fib[i-1] + fib[i-2];
            }
        }
        return fib;
    }
}