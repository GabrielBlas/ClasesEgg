package servicio;

import entidades.Cadena;
import java.util.Scanner;

public class CadenaServicio {

    public int mostrarVocales(Cadena cadena) {
        String frase = cadena.getFrase();
        int cantidadVocales = 0;
        for (int i = 0; i < frase.length(); i++) {
            char c = Character.toLowerCase(frase.charAt(i));
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                cantidadVocales++;
            }
        }
        return cantidadVocales;
    }

    public String invertirFrase(Cadena cadena) {
        String frase = cadena.getFrase();
        StringBuilder fraseInvertida = new StringBuilder();
        for (int i = frase.length() - 1; i >= 0; i--) {
            fraseInvertida.append(frase.charAt(i));
        }
        return fraseInvertida.toString();
    }

    public int vecesRepetido(Cadena cadena, String letra) {
        String frase = cadena.getFrase();
        char letraBuscada = letra.charAt(0);
        int cantidadVeces = 0;
        for (int i = 0; i < frase.length(); i++) {
            if (Character.toLowerCase(frase.charAt(i)) == Character.toLowerCase(letraBuscada)) {
                cantidadVeces++;
            }
        }
        return cantidadVeces;
    }

    public int compararLongitud(Cadena cadena, String otraFrase) {
        int longitudFraseActual = cadena.getLongitud();
        int longitudOtraFrase = otraFrase.length();
        return Integer.compare(longitudFraseActual, longitudOtraFrase);
    }

    public String unirFrases(Cadena cadena, String nuevaFrase) {
        String fraseActual = cadena.getFrase();
        return fraseActual.concat(" " + nuevaFrase);
    }

    public String reemplazar(Cadena cadena, String letra, String reemplazo) {
        String frase = cadena.getFrase();
        char letraBuscada = letra.charAt(0);
        return frase.replace(letraBuscada, reemplazo.charAt(0));
    }

    public boolean contiene(Cadena cadena, String letra) {
        String frase = cadena.getFrase();
        char letraBuscada = letra.charAt(0);
        return frase.indexOf(letraBuscada) >= 0;
    }
}
