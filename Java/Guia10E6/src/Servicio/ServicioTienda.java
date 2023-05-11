package Servicio;

import java.util.HashMap;
import java.util.Scanner;

public class ServicioTienda {
    private static HashMap<String, Double> productos = new HashMap<String, Double>();
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int opcion = 0;
        do {
            System.out.println("\nMenú de opciones:");
            System.out.println("1. Agregar producto");
            System.out.println("2. Modificar precio de producto");
            System.out.println("3. Eliminar producto");
            System.out.println("4. Mostrar productos y precios");
            System.out.println("5. Salir");
            System.out.print("Ingrese una opción: ");
            opcion = scanner.nextInt();
            scanner.nextLine(); // Limpia el buffer 

            switch (opcion) {
                case 1:
                    agregarProducto();
                    break;
                case 2:
                    modificarPrecio();
                    break;
                case 3:
                    eliminarProducto();
                    break;
                case 4:
                    mostrarProductos();
                    break;
                case 5:
                    System.out.println("¡Gracias por utilizar nuestra aplicación de tienda!");
                    break;
                default:
                    System.out.println("Opción inválida, por favor intente de nuevo.");
            }
        } while (opcion != 5);
    }

    private static void agregarProducto() {
        System.out.print("Ingrese el nombre del producto: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingrese el precio del producto: ");
        double precio = scanner.nextDouble();
        scanner.nextLine(); 
        productos.put(nombre, precio);
        System.out.println("Producto agregado exitosamente.");
    }

    private static void modificarPrecio() {
        System.out.print("Ingrese el nombre del producto: ");
        String nombre = scanner.nextLine();
        if (productos.containsKey(nombre)) {
            System.out.print("Ingrese el nuevo precio del producto: ");
            double precio = scanner.nextDouble();
            scanner.nextLine(); // Limpia el buffer
            productos.put(nombre, precio);
            System.out.println("Precio modificado exitosamente.");
        } else {
            System.out.println("El producto no se encontró en la tienda.");
        }
    }

    private static void eliminarProducto() {
        System.out.print("Ingrese el nombre del producto: ");
        String nombre = scanner.nextLine();
        if (productos.containsKey(nombre)) {
            productos.remove(nombre);
            System.out.println("Producto eliminado exitosamente.");
        } else {
            System.out.println("El producto no se encontró en la tienda.");
        }
    }

    private static void mostrarProductos() {
        if (productos.isEmpty()) {
            System.out.println("La tienda no tiene productos en este momento.");
        } else {
            System.out.println("Productos en la tienda:");
            for (String nombre : productos.keySet()) {
                System.out.println(nombre + " - $" + productos.get(nombre));
            }
        }
    }
}
