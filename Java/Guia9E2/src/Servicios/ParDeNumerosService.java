package servicios;

import entidades.ParDeNumeros;

public class ParDeNumerosService {

    // Método para mostrar los valores de los números
    public void mostrarValores(ParDeNumeros par) {
        System.out.println("Número 1: " + par.getNumero1());
        System.out.println("Número 2: " + par.getNumero2());
    }

    // Método para devolver el mayor valor
    public double devolverMayor(ParDeNumeros par) {
        return Math.max(par.getNumero1(), par.getNumero2());
    }

    // Método para calcular la potencia del mayor valor
    public double calcularPotencia(ParDeNumeros par) {
        double mayor = devolverMayor(par);
        double menor = Math.min(par.getNumero1(), par.getNumero2());
        return Math.pow(mayor, menor);
    }

    // Método para calcular la raíz cuadrada del menor valor absoluto
    public double calcularRaiz(ParDeNumeros par) {
        double menorAbsoluto = Math.min(Math.abs(par.getNumero1()), Math.abs(par.getNumero2()));
        return Math.sqrt(menorAbsoluto);
    }
}
