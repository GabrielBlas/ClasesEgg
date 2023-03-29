package guia05;

public class Ej1 {

    public static void main(String[] args) {
        int[] numeros = new int [100];
        for (int i = 0; i < 100; i++){
            numeros[i] = i + 1;
        }
        for (int i = numeros.length - 1; i >= 0; i--) {
            System.out.println(numeros[i] + " ");
        }
    }
    
}