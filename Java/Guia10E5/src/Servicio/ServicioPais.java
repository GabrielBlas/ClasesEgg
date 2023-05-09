package Servicio;

import java.util.*;

public class ServicioPais {
    
    private Set<String> paises;

    public ServicioPais() {
        paises = new HashSet<String>();
    }

    public boolean agregarPais(String pais) {
        if (!paises.contains(pais)) {
            paises.add(pais);
            return true;
        } else {
            return false;
        }
    }

    public void mostrarPaises() {
        System.out.println("Países registrados: ");
        for (String pais : paises) {
            System.out.println(pais);
        }
    }

    public void mostrarPaisesOrdenados() {
        TreeSet<String> paisesOrdenados = new TreeSet<String>(paises);
        System.out.println("Países ordenados alfabéticamente: ");
        for (String pais : paisesOrdenados) {
            System.out.println(pais);
        }
    }

    public void eliminarPais(String pais) {
        Iterator<String> iter = paises.iterator();
        boolean encontrado = false;
        while (iter.hasNext()) {
            String p = iter.next();
            if (p.equalsIgnoreCase(pais)) {
                encontrado = true;
                iter.remove();
                System.out.println("El país ha sido eliminado correctamente.");
                break;
            }
        }
        if (!encontrado) {
            System.out.println("El país no se encuentra registrado.");
        }
    }
}