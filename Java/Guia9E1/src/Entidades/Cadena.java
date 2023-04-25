package entidades;

import java.util.Scanner;
import servicio.CadenaServicio;

public class Cadena {

    private String frase;
    private int longitud;

    public void Menu() {

        Scanner scanner = new Scanner(System.in);
        Cadena cadena = new Cadena();
        CadenaServicio cadenaServicio = new CadenaServicio();

        int opcion;

        do {
            System.out.println("----- Ejercicio 1 Guia 9 -----");
            System.out.println("");
            System.out.println("1. Ingresar una nueva frase");
            System.out.println("2. Mostrar cantidad de vocales");
            System.out.println("3. Invertir frase");
            System.out.println("4. Contar veces que se repite una letra");
            System.out.println("5. Comparar longitud con otra frase");
            System.out.println("6. Unir frases");
            System.out.println("7. Reemplazar letra");
            System.out.println("8. Comprobar si contiene una letra");
            System.out.println("9. Salir");
            System.out.print("Ingrese una opción: ");
            opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    System.out.print("Ingrese una frase: ");
                    scanner.nextLine(); // Limpiar el buffer de entrada
                    String frase = scanner.nextLine();
                    cadena.setFrase(frase);
                    break;
                case 2:
                    System.out.println("Cantidad de vocales: " + cadenaServicio.mostrarVocales(cadena));
                    break;
                case 3:
                    System.out.println("Frase invertida: " + cadenaServicio.invertirFrase(cadena));
                    break;
                case 4:
                    System.out.print("Ingrese una letra: ");
                    String letra = scanner.next();
                    int cantidadVeces = cadenaServicio.vecesRepetido(cadena, letra);
                    System.out.println("Cantidad de veces que se repite la letra '" + letra + "': " + cantidadVeces);
                    break;
                case 5:
                    System.out.print("Ingrese otra frase: ");
                    scanner.nextLine(); // Limpiar el buffer de entrada
                    String otraFrase = scanner.nextLine();
                    int comparacion = cadenaServicio.compararLongitud(cadena, otraFrase);
                    if (comparacion < 0) {
                        System.out.println("La frase actual es más corta que la otra frase.");
                    } else if (comparacion > 0) {
                        System.out.println("La frase actual es más larga que la otra frase.");
                    } else {
                        System.out.println("La frase actual tiene la misma longitud que la otra frase.");
                    }
                    break;
                case 6:
                    System.out.print("Ingrese otra frase: ");
                    scanner.nextLine(); // Limpia el buffer de entrada
                    String nuevaFrase = scanner.nextLine();
                    System.out.println("Frase resultante: " + cadenaServicio.unirFrases(cadena, nuevaFrase));
                    break;
                case 7:
                    System.out.print("Ingrese letra a reemplazar: ");
                    String letraReemplazar = scanner.next();
                    System.out.print("Ingrese letra de reemplazo: ");
                    String letraReemplazo = scanner.next();
                    System.out.println("Frase resultante: " + cadenaServicio.reemplazar(cadena, letraReemplazar, letraReemplazo));
                    break;
                case 8:
                    System.out.print("Ingrese letra a comprobar: ");
                    String letraComprobar = scanner.next();
                    boolean contieneLetra = cadenaServicio.contiene(cadena, letraComprobar);
                    if (contieneLetra) {
                        System.out.println("La frase contiene la letra '" + letraComprobar + "'.");
                    } else {
                        System.out.println("La frase no contiene la letra '" + letraComprobar + "'.");
                    }
                    break;
                case 9:
                    System.out.println("¡Hasta luego!");
                    break;
                default:
                    System.out.println("Opción inválida. Por favor, ingrese una opción válida.");
                    break;
            }

            System.out.println(); // Salto de línea para mejorar la legibilidad
        } while (opcion != 9);
    }

    public Cadena() {
        this.frase = "";
        this.longitud = 0;
    }

    public Cadena(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    public String getFrase() {
        return frase;
    }

    public void setFrase(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    public int getLongitud() {
        return longitud;
    }

    public void setLongitud(int longitud) {
        this.longitud = longitud;
    }
}
