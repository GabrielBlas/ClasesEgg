package entidades;

public class ParDeNumeros {
    private double numero1;
    private double numero2;

    // Constructor vacío que genera dos números aleatorios
    public ParDeNumeros() {
        this.numero1 = Math.random();
        this.numero2 = Math.random();
    }

    // Getters y setters
    public double getNumero1() {
        return numero1;
    }

    public void setNumero1(double numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(double numero2) {
        this.numero2 = numero2;
    }
}
