package Main;

import Servicio.ArregloService;


public class Main {

    public static void main(String[] args) {
        // Crear arreglo A de 50 números enteros
        int[] arregloA = new int[50];
        // Crear arreglo B de 20 números enteros
        int[] arregloB = new int[20];

        // Inicializar arreglo A con números aleatorios
        ArregloService.inicializarA(arregloA);
        // Mostrar arreglo A
        System.out.println("Arreglo A inicializado:");
        ArregloService.mostrar(arregloA);

        // Ordenar arreglo A de mayor a menor
        ArregloService.ordenar(arregloA);
        // Mostrar arreglo A ordenado
        System.out.println("Arreglo A ordenado:");
        ArregloService.mostrar(arregloA);

        // Inicializar arreglo B con los primeros 10 números del arreglo A y 0.5 en las últimas 10 posiciones
        ArregloService.inicializarB(arregloA, arregloB);
        // Mostrar arreglo B
        System.out.println("Arreglo B inicializado:");
        ArregloService.mostrar(arregloB);

        // Ordenar arreglo B de mayor a menor
        ArregloService.ordenarB(arregloB);
        // Mostrar arreglo B ordenado
        System.out.println("Arreglo B ordenado:");
        ArregloService.mostrar(arregloB);
    }
}
